@interface MFAssistantEmailRetrieve
- (BOOL)search:(id)search didFindResults:(id)results;
- (id)_convertMSEmailToSAEmail:(id)email;
- (id)_retrieveEmails:(id)emails;
- (id)_validateEmails:(id)emails;
- (void)_populateResults:(id)results;
- (void)performWithCompletion:(id)completion;
- (void)search:(id)search didFinishWithError:(id)error;
@end

@implementation MFAssistantEmailRetrieve

- (id)_validateEmails:(id)emails
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  emailsCopy = emails;
  v4 = [emailsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(emailsCopy);
        }

        identifier = [*(*(&v9 + 1) + 8 * i) identifier];
        if (([identifier em_isInternalMessageURL] & 1) == 0)
        {
          v4 = [[SACommandFailed alloc] initWithReason:@"Can only retrieve messages that are in our database."];

          goto LABEL_11;
        }
      }

      v4 = [emailsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_retrieveEmails:(id)emails
{
  emailsCopy = emails;
  if (!self->_resultsQueue)
  {
    v4 = dispatch_queue_create("com.apple.mobilemail.assistant-email-retrieve", 0);
    resultsQueue = self->_resultsQueue;
    self->_resultsQueue = v4;
  }

  v6 = objc_alloc_init(NSMutableArray);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = emailsCopy;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = *v35;
    v10 = MSCriterionTypeMessageReference;
    v11 = MSCriterionQualifierContains;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [MSCriterion alloc];
        identifier = [v13 identifier];
        v16 = [v14 initWithType:v10 qualifier:v11 expression:identifier];

        [v6 addObject:v16];
      }

      v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  if ([v6 count] < 2)
  {
    lastObject = [v6 lastObject];
  }

  else
  {
    lastObject = [[MSCriterion alloc] initWithCriteria:v6 allRequired:0];
  }

  v18 = lastObject;
  v19 = dispatch_semaphore_create(0);
  searchCompleted = self->_searchCompleted;
  self->_searchCompleted = v19;

  v21 = [NSArray arrayWithObjects:MSResultsKeyMessageReference, MSResultsKeyRecipientBcc, MSResultsKeyRecipientCc, MSResultsKeyRecipientTo, MSResultsKeySender, MSResultsKeyReceivingAddresses, 0];
  v22 = [MSSearch findMessageData:v21 matchingCriterion:v18 options:4 delegate:self];

  if (v22)
  {
    v23 = self->_searchCompleted;
    v24 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v23, v24))
    {
      v25 = [[SACommandFailed alloc] initWithReason:@"Search timed out."];
    }

    else
    {
      v26 = objc_alloc_init(SADomainObjectRetrieveCompleted);
      v27 = self->_resultsQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_24F0;
      block[3] = &unk_C3B0;
      v28 = v26;
      v32 = v28;
      selfCopy = self;
      dispatch_sync(v27, block);
      v25 = v28;
    }

    [v22 cancel];
  }

  else
  {
    v25 = [[SACommandFailed alloc] initWithReason:@"Could not generate a search command."];
  }

  return v25;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  identifiers = [(MFAssistantEmailRetrieve *)self identifiers];
  v5 = [(MFAssistantEmailRetrieve *)self _validateEmails:identifiers];

  if (!v5)
  {
    identifiers2 = [(MFAssistantEmailRetrieve *)self identifiers];
    v5 = [(MFAssistantEmailRetrieve *)self _retrieveEmails:identifiers2];
  }

  dictionary = [v5 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

- (id)_convertMSEmailToSAEmail:(id)email
{
  emailCopy = email;
  v4 = objc_alloc_init(SAEmailEmail);
  v5 = [emailCopy objectForKey:MSResultsKeyMessageReference];
  v6 = [NSURL URLWithString:v5];
  [v4 setIdentifier:v6];

  v7 = [emailCopy objectForKey:MSResultsKeyRecipientTo];
  v8 = MFSAPersonAttributesFromEmails(v7);
  [v4 setRecipientsTo:v8];

  v9 = [emailCopy objectForKey:MSResultsKeyRecipientCc];
  v10 = MFSAPersonAttributesFromEmails(v9);
  [v4 setRecipientsCc:v10];

  v11 = [emailCopy objectForKey:MSResultsKeyRecipientBcc];
  v12 = MFSAPersonAttributesFromEmails(v11);
  [v4 setRecipientsBcc:v12];

  v13 = [emailCopy objectForKey:MSResultsKeySender];
  v14 = MFSAPersonAttributeFromEmail(v13);
  [v4 setFromEmail:v14];

  v15 = [emailCopy objectForKey:MSResultsKeyReceivingAddresses];
  [v4 setReceivingAddresses:v15];

  return v4;
}

- (void)_populateResults:(id)results
{
  resultsCopy = results;
  if (!self->_results)
  {
    v5 = objc_alloc_init(NSMutableArray);
    results = self->_results;
    self->_results = v5;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = resultsCopy;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(MFAssistantEmailRetrieve *)self _convertMSEmailToSAEmail:*(*(&v12 + 1) + 8 * v10), v12];
        if (v11)
        {
          [(NSMutableArray *)self->_results addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)search:(id)search didFindResults:(id)results
{
  resultsCopy = results;
  resultsQueue = self->_resultsQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2A60;
  v9[3] = &unk_C3B0;
  v9[4] = self;
  v10 = resultsCopy;
  v7 = resultsCopy;
  dispatch_async(resultsQueue, v9);

  return 1;
}

- (void)search:(id)search didFinishWithError:(id)error
{
  errorCopy = error;
  resultsQueue = self->_resultsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2B0C;
  v8[3] = &unk_C3B0;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(resultsQueue, v8);
}

@end