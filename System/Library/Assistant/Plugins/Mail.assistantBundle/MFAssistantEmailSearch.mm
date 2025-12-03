@interface MFAssistantEmailSearch
- (BOOL)search:(id)search didFindResults:(id)results;
- (id)_generateAceResults;
- (id)_generateMSCriterion;
- (id)_perform;
- (id)_validate;
- (void)_populateResults:(id)results;
- (void)_searchFinished:(id)finished;
- (void)performWithCompletion:(id)completion;
@end

@implementation MFAssistantEmailSearch

- (id)_validate
{
  if (MSCanSendMail())
  {
    startDate = [(MFAssistantEmailSearch *)self startDate];
    if (startDate)
    {
      goto LABEL_7;
    }

    startDate = [(MFAssistantEmailSearch *)self endDate];
    if (startDate || ([(MFAssistantEmailSearch *)self fromEmail], (startDate = objc_claimAutoreleasedReturnValue()) != 0) || ([(MFAssistantEmailSearch *)self subject], (startDate = objc_claimAutoreleasedReturnValue()) != 0) || ([(MFAssistantEmailSearch *)self toEmail], (startDate = objc_claimAutoreleasedReturnValue()) != 0))
    {
LABEL_7:
    }

    else if (![(MFAssistantEmailSearch *)self status])
    {
      v10 = [SACommandFailed alloc];
      v11 = @"No criteria specified for email search.";
      goto LABEL_12;
    }

    startDate2 = [(MFAssistantEmailSearch *)self startDate];
    if (!startDate2)
    {
      goto LABEL_16;
    }

    v5 = startDate2;
    endDate = [(MFAssistantEmailSearch *)self endDate];
    if (endDate)
    {
      startDate3 = [(MFAssistantEmailSearch *)self startDate];
      endDate2 = [(MFAssistantEmailSearch *)self endDate];
      v9 = [startDate3 compare:endDate2];

      if (v9 == &dword_0 + 1)
      {
        v10 = [SACommandFailed alloc];
        v11 = @"End date is before start date.";
LABEL_12:
        startDate2 = [v10 initWithReason:v11];
        goto LABEL_16;
      }
    }

    else
    {
    }

    startDate2 = 0;
  }

  else
  {
    v12 = [SACommandFailed alloc];
    startDate2 = [v12 initWithErrorCode:SAEmailNoAccountErrorCode];
  }

LABEL_16:

  return startDate2;
}

- (id)_generateMSCriterion
{
  v3 = objc_alloc_init(NSMutableArray);
  fromEmail = [(MFAssistantEmailSearch *)self fromEmail];
  v5 = [fromEmail length];

  if (v5)
  {
    v6 = [MSCriterion alloc];
    fromEmail2 = [(MFAssistantEmailSearch *)self fromEmail];
    v8 = [v6 initWithType:MSCriterionTypeSender qualifier:MSCriterionQualifierContains expression:fromEmail2];

    [v3 addObject:v8];
  }

  subject = [(MFAssistantEmailSearch *)self subject];
  v10 = [subject length];

  if (v10)
  {
    v11 = [MSCriterion alloc];
    subject2 = [(MFAssistantEmailSearch *)self subject];
    v13 = [v11 initWithType:MSCriterionTypeSubject qualifier:MSCriterionQualifierContains expression:subject2];

    [v3 addObject:v13];
  }

  toEmail = [(MFAssistantEmailSearch *)self toEmail];
  v15 = [toEmail length];

  if (v15)
  {
    v16 = [MSCriterion alloc];
    toEmail2 = [(MFAssistantEmailSearch *)self toEmail];
    v18 = [v16 initWithType:MSCriterionTypeAnyRecipient qualifier:MSCriterionQualifierContains expression:toEmail2];

    [v3 addObject:v18];
  }

  startDate = [(MFAssistantEmailSearch *)self startDate];

  if (startDate)
  {
    v20 = [MSCriterion alloc];
    startDate2 = [(MFAssistantEmailSearch *)self startDate];
    v22 = [v20 initWithType:MSCriterionTypeReceivedDate qualifier:MSCriterionQualifierGreaterThan expression:startDate2];

    [v3 addObject:v22];
  }

  endDate = [(MFAssistantEmailSearch *)self endDate];

  if (endDate)
  {
    v24 = [MSCriterion alloc];
    endDate2 = [(MFAssistantEmailSearch *)self endDate];
    v26 = [v24 initWithType:MSCriterionTypeReceivedDate qualifier:MSCriterionQualifierLessThan expression:endDate2];

    [v3 addObject:v26];
  }

  if ([(MFAssistantEmailSearch *)self status])
  {
    v27 = [MSCriterion alloc];
    status = [(MFAssistantEmailSearch *)self status];
    v29 = &MSCriterionExpressionRead;
    if (status != 1)
    {
      v29 = &MSCriterionExpressionUnread;
    }

    v30 = [v27 initWithType:MSCriterionTypeReadStatus qualifier:MSCriterionQualifierContains expression:*v29];
    [v3 addObject:v30];
  }

  if ([v3 count] >= 2)
  {
    v31 = [[MSCriterion alloc] initWithCriteria:v3 allRequired:1];
LABEL_19:
    v32 = v31;
    goto LABEL_21;
  }

  if ([v3 count] == &dword_0 + 1)
  {
    v31 = [v3 objectAtIndexedSubscript:0];
    goto LABEL_19;
  }

  v32 = 0;
LABEL_21:

  return v32;
}

- (id)_generateAceResults
{
  v26 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_results;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v3)
  {
    v25 = *v28;
    v24 = MSResultsKeyMessageReference;
    v23 = MSResultsKeyDateSent;
    v22 = MSResultsKeySender;
    v4 = MSResultsKeyRecipientTo;
    v5 = MSResultsKeyRecipientCc;
    v6 = MSResultsKeySubject;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = objc_alloc_init(SAEmailEmail);
        v10 = [v8 objectForKey:v24];
        v11 = [NSURL URLWithString:v10];

        [v9 setIdentifier:v11];
        v12 = [v8 objectForKey:v23];
        [v9 setDateSent:v12];

        v13 = [v8 objectForKey:v22];
        v14 = MFSAPersonAttributeFromEmail(v13);
        [v9 setFromEmail:v14];

        v15 = [v8 objectForKey:v4];
        v16 = MFSAPersonAttributesFromEmails(v15);
        [v9 setRecipientsTo:v16];

        v17 = [v8 objectForKey:v5];
        v18 = MFSAPersonAttributesFromEmails(v17);
        [v9 setRecipientsCc:v18];

        v19 = [v8 objectForKey:v6];
        [v9 setSubject:v19];

        [v26 addObject:v9];
      }

      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v3);
  }

  return v26;
}

- (id)_perform
{
  _generateMSCriterion = [(MFAssistantEmailSearch *)self _generateMSCriterion];
  self->_currentResultCount = 0;
  v4 = dispatch_semaphore_create(0);
  searchCompleted = self->_searchCompleted;
  self->_searchCompleted = v4;

  v6 = [NSArray arrayWithObjects:MSResultsKeyMessageReference, MSResultsKeyDateSent, MSResultsKeySender, MSResultsKeyRecipientTo, MSResultsKeyRecipientCc, MSResultsKeySubject, 0];
  v7 = [MSSearch findMessageData:v6 matchingCriterion:_generateMSCriterion options:4 delegate:self];

  if (v7)
  {
    v8 = self->_searchCompleted;
    v9 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v8, v9))
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_4C84(v10);
      }
    }

    [v7 cancel];
    v11 = self->_searchCompleted;
    self->_searchCompleted = 0;

    v12 = [SAEmailSearchCompleted alloc];
    _generateAceResults = [(MFAssistantEmailSearch *)self _generateAceResults];
    v14 = [v12 initWithEmailResults:_generateAceResults];
  }

  else
  {
    v14 = [[SACommandFailed alloc] initWithReason:@"Could not generate a search command."];
  }

  return v14;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  _validate = [(MFAssistantEmailSearch *)self _validate];
  if (!_validate)
  {
    _validate = [(MFAssistantEmailSearch *)self _perform];
  }

  dictionary = [_validate dictionary];
  completionCopy[2](completionCopy, dictionary);
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

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = resultsCopy;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(NSMutableArray *)self->_results ef_insertObject:*(*(&v11 + 1) + 8 * v10) usingSortFunction:sub_38B4 context:0 allowDuplicates:0, v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_searchFinished:(id)finished
{
  v3 = *(self + 32) & 0xFE;
  if (finished)
  {
    ++v3;
  }

  *(self + 32) = v3;
  dispatch_semaphore_signal(self->_searchCompleted);
}

- (BOOL)search:(id)search didFindResults:(id)results
{
  resultsCopy = results;
  v6 = self->_currentResultCount + [resultsCopy count];
  self->_currentResultCount = v6;
  [(MFAssistantEmailSearch *)self _populateResults:resultsCopy];

  return v6 < 0x1A;
}

@end