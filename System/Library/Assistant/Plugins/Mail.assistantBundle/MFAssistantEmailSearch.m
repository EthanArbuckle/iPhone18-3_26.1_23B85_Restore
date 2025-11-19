@interface MFAssistantEmailSearch
- (BOOL)search:(id)a3 didFindResults:(id)a4;
- (id)_generateAceResults;
- (id)_generateMSCriterion;
- (id)_perform;
- (id)_validate;
- (void)_populateResults:(id)a3;
- (void)_searchFinished:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MFAssistantEmailSearch

- (id)_validate
{
  if (MSCanSendMail())
  {
    v3 = [(MFAssistantEmailSearch *)self startDate];
    if (v3)
    {
      goto LABEL_7;
    }

    v3 = [(MFAssistantEmailSearch *)self endDate];
    if (v3 || ([(MFAssistantEmailSearch *)self fromEmail], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MFAssistantEmailSearch *)self subject], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MFAssistantEmailSearch *)self toEmail], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
LABEL_7:
    }

    else if (![(MFAssistantEmailSearch *)self status])
    {
      v10 = [SACommandFailed alloc];
      v11 = @"No criteria specified for email search.";
      goto LABEL_12;
    }

    v4 = [(MFAssistantEmailSearch *)self startDate];
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = v4;
    v6 = [(MFAssistantEmailSearch *)self endDate];
    if (v6)
    {
      v7 = [(MFAssistantEmailSearch *)self startDate];
      v8 = [(MFAssistantEmailSearch *)self endDate];
      v9 = [v7 compare:v8];

      if (v9 == &dword_0 + 1)
      {
        v10 = [SACommandFailed alloc];
        v11 = @"End date is before start date.";
LABEL_12:
        v4 = [v10 initWithReason:v11];
        goto LABEL_16;
      }
    }

    else
    {
    }

    v4 = 0;
  }

  else
  {
    v12 = [SACommandFailed alloc];
    v4 = [v12 initWithErrorCode:SAEmailNoAccountErrorCode];
  }

LABEL_16:

  return v4;
}

- (id)_generateMSCriterion
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(MFAssistantEmailSearch *)self fromEmail];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [MSCriterion alloc];
    v7 = [(MFAssistantEmailSearch *)self fromEmail];
    v8 = [v6 initWithType:MSCriterionTypeSender qualifier:MSCriterionQualifierContains expression:v7];

    [v3 addObject:v8];
  }

  v9 = [(MFAssistantEmailSearch *)self subject];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [MSCriterion alloc];
    v12 = [(MFAssistantEmailSearch *)self subject];
    v13 = [v11 initWithType:MSCriterionTypeSubject qualifier:MSCriterionQualifierContains expression:v12];

    [v3 addObject:v13];
  }

  v14 = [(MFAssistantEmailSearch *)self toEmail];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [MSCriterion alloc];
    v17 = [(MFAssistantEmailSearch *)self toEmail];
    v18 = [v16 initWithType:MSCriterionTypeAnyRecipient qualifier:MSCriterionQualifierContains expression:v17];

    [v3 addObject:v18];
  }

  v19 = [(MFAssistantEmailSearch *)self startDate];

  if (v19)
  {
    v20 = [MSCriterion alloc];
    v21 = [(MFAssistantEmailSearch *)self startDate];
    v22 = [v20 initWithType:MSCriterionTypeReceivedDate qualifier:MSCriterionQualifierGreaterThan expression:v21];

    [v3 addObject:v22];
  }

  v23 = [(MFAssistantEmailSearch *)self endDate];

  if (v23)
  {
    v24 = [MSCriterion alloc];
    v25 = [(MFAssistantEmailSearch *)self endDate];
    v26 = [v24 initWithType:MSCriterionTypeReceivedDate qualifier:MSCriterionQualifierLessThan expression:v25];

    [v3 addObject:v26];
  }

  if ([(MFAssistantEmailSearch *)self status])
  {
    v27 = [MSCriterion alloc];
    v28 = [(MFAssistantEmailSearch *)self status];
    v29 = &MSCriterionExpressionRead;
    if (v28 != 1)
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
  v3 = [(MFAssistantEmailSearch *)self _generateMSCriterion];
  self->_currentResultCount = 0;
  v4 = dispatch_semaphore_create(0);
  searchCompleted = self->_searchCompleted;
  self->_searchCompleted = v4;

  v6 = [NSArray arrayWithObjects:MSResultsKeyMessageReference, MSResultsKeyDateSent, MSResultsKeySender, MSResultsKeyRecipientTo, MSResultsKeyRecipientCc, MSResultsKeySubject, 0];
  v7 = [MSSearch findMessageData:v6 matchingCriterion:v3 options:4 delegate:self];

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
    v13 = [(MFAssistantEmailSearch *)self _generateAceResults];
    v14 = [v12 initWithEmailResults:v13];
  }

  else
  {
    v14 = [[SACommandFailed alloc] initWithReason:@"Could not generate a search command."];
  }

  return v14;
}

- (void)performWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(MFAssistantEmailSearch *)self _validate];
  if (!v4)
  {
    v4 = [(MFAssistantEmailSearch *)self _perform];
  }

  v5 = [v4 dictionary];
  v6[2](v6, v5);
}

- (void)_populateResults:(id)a3
{
  v4 = a3;
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
  v7 = v4;
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

- (void)_searchFinished:(id)a3
{
  v3 = *(self + 32) & 0xFE;
  if (a3)
  {
    ++v3;
  }

  *(self + 32) = v3;
  dispatch_semaphore_signal(self->_searchCompleted);
}

- (BOOL)search:(id)a3 didFindResults:(id)a4
{
  v5 = a4;
  v6 = self->_currentResultCount + [v5 count];
  self->_currentResultCount = v6;
  [(MFAssistantEmailSearch *)self _populateResults:v5];

  return v6 < 0x1A;
}

@end