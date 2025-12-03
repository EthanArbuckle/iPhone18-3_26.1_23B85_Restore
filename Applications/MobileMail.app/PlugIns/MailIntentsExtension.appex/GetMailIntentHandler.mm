@interface GetMailIntentHandler
+ (id)log;
- (BOOL)search:(id)search didFindResults:(id)results;
- (void)confirmGetMail:(id)mail completion:(id)completion;
- (void)handleGetMail:(id)mail completion:(id)completion;
- (void)search:(id)search didFinishWithError:(id)error;
@end

@implementation GetMailIntentHandler

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D88;
  block[3] = &unk_10000C3A0;
  block[4] = self;
  if (qword_100011EE0 != -1)
  {
    dispatch_once(&qword_100011EE0, block);
  }

  v2 = qword_100011ED8;

  return v2;
}

- (void)confirmGetMail:(id)mail completion:(id)completion
{
  completionCopy = completion;
  v4 = [[MSGetMailIntentResponse alloc] initWithCode:1 userActivity:0];
  completionCopy[2](completionCopy, v4);
}

- (void)handleGetMail:(id)mail completion:(id)completion
{
  mailCopy = mail;
  completionCopy = completion;
  v7 = objc_alloc_init(NSMutableArray);
  if ([mailCopy readStatus])
  {
    v8 = [MSCriterion alloc];
    readStatus = [mailCopy readStatus];
    v10 = &MSCriterionExpressionRead;
    if (readStatus != 2)
    {
      v10 = &MSCriterionExpressionUnread;
    }

    v11 = [v8 initWithType:MSCriterionTypeReadStatus qualifier:MSCriterionQualifierContains expression:*v10];
    [v7 addObject:v11];
  }

  sender = [mailCopy sender];
  personHandle = [sender personHandle];
  value = [personHandle value];
  if (value)
  {
    sender2 = [mailCopy sender];
    personHandle2 = [sender2 personHandle];
    type = [personHandle2 type];

    if (type != 1)
    {
      goto LABEL_9;
    }

    v18 = [MSCriterion alloc];
    sender = [mailCopy sender];
    personHandle = [sender personHandle];
    value2 = [personHandle value];
    v20 = [v18 initWithType:MSCriterionTypeSender qualifier:MSCriterionQualifierContains expression:value2];
    [v7 addObject:v20];
  }

LABEL_9:
  recipient = [mailCopy recipient];
  personHandle3 = [recipient personHandle];
  value3 = [personHandle3 value];
  if (value3)
  {
    recipient2 = [mailCopy recipient];
    personHandle4 = [recipient2 personHandle];
    type2 = [personHandle4 type];

    if (type2 != 1)
    {
      goto LABEL_13;
    }

    v27 = [MSCriterion alloc];
    recipient = [mailCopy recipient];
    personHandle3 = [recipient personHandle];
    value4 = [personHandle3 value];
    v29 = [v27 initWithType:MSCriterionTypeAnyRecipient qualifier:MSCriterionQualifierContains expression:value4];
    [v7 addObject:v29];
  }

LABEL_13:
  subject = [mailCopy subject];
  v31 = [subject length];

  if (v31)
  {
    v32 = [MSCriterion alloc];
    subject2 = [mailCopy subject];
    v34 = [v32 initWithType:MSCriterionTypeSubject qualifier:MSCriterionQualifierContains expression:subject2];
    [v7 addObject:v34];
  }

  if ([v7 count] == 1)
  {
    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = [[MSCriterion alloc] initWithCriteria:v7 allRequired:1];
  }

  v36 = firstObject;
  v37 = [NSArray arrayWithObjects:MSResultsKeyMessageReference, MSResultsKeyDateSent, MSResultsKeySender, MSResultsKeyRecipientTo, MSResultsKeyRecipientCc, MSResultsKeyRecipientBcc, MSResultsKeySubject, MSResultsKeyBodySummary, 0];
  v38 = [MSSearch findMessageData:v37 matchingCriterion:v36 options:4 delegate:self];

  if (v38)
  {
    objc_storeStrong(&self->_currentSearch, v38);
    v39 = objc_retainBlock(completionCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v39;
  }

  else
  {
    completionHandler = [[MSGetMailIntentResponse alloc] initWithCode:5 userActivity:0];
    (*(completionCopy + 2))(completionCopy, completionHandler);
  }
}

- (BOOL)search:(id)search didFindResults:(id)results
{
  searchCopy = search;
  resultsCopy = results;
  if (!self->_results)
  {
    v8 = objc_alloc_init(NSMutableArray);
    results = self->_results;
    self->_results = v8;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = resultsCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [(NSMutableArray *)self->_results ef_insertObject:*(*(&v17 + 1) + 8 * i) usingComparator:&stru_10000C678 allowDuplicates:1, v17];
      }

      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  results = [(GetMailIntentHandler *)self results];
  v15 = [results count] < 0x1A;

  return v15;
}

- (void)search:(id)search didFinishWithError:(id)error
{
  searchCopy = search;
  errorCopy = error;
  if (errorCopy)
  {
    completionHandler = self->_completionHandler;
    v8 = [[MSGetMailIntentResponse alloc] initWithCode:5 userActivity:0];
    completionHandler[2](completionHandler, v8);
  }

  else
  {
    v8 = [[MSGetMailIntentResponse alloc] initWithCode:4 userActivity:0];
    results = [(GetMailIntentHandler *)self results];
    v10 = results;
    if (results)
    {
      v11 = [results ef_map:&stru_10000C6B8];
      [v8 setMails:v11];
    }

    (*(self->_completionHandler + 2))();
  }

  currentSearch = self->_currentSearch;
  self->_currentSearch = 0;

  v13 = self->_completionHandler;
  self->_completionHandler = 0;

  results = self->_results;
  self->_results = 0;
}

@end