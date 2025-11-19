@interface GetMailIntentHandler
+ (id)log;
- (BOOL)search:(id)a3 didFindResults:(id)a4;
- (void)confirmGetMail:(id)a3 completion:(id)a4;
- (void)handleGetMail:(id)a3 completion:(id)a4;
- (void)search:(id)a3 didFinishWithError:(id)a4;
@end

@implementation GetMailIntentHandler

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D88;
  block[3] = &unk_10000C3A0;
  block[4] = a1;
  if (qword_100011EE0 != -1)
  {
    dispatch_once(&qword_100011EE0, block);
  }

  v2 = qword_100011ED8;

  return v2;
}

- (void)confirmGetMail:(id)a3 completion:(id)a4
{
  v5 = a4;
  v4 = [[MSGetMailIntentResponse alloc] initWithCode:1 userActivity:0];
  v5[2](v5, v4);
}

- (void)handleGetMail:(id)a3 completion:(id)a4
{
  v41 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  if ([v41 readStatus])
  {
    v8 = [MSCriterion alloc];
    v9 = [v41 readStatus];
    v10 = &MSCriterionExpressionRead;
    if (v9 != 2)
    {
      v10 = &MSCriterionExpressionUnread;
    }

    v11 = [v8 initWithType:MSCriterionTypeReadStatus qualifier:MSCriterionQualifierContains expression:*v10];
    [v7 addObject:v11];
  }

  v12 = [v41 sender];
  v13 = [v12 personHandle];
  v14 = [v13 value];
  if (v14)
  {
    v15 = [v41 sender];
    v16 = [v15 personHandle];
    v17 = [v16 type];

    if (v17 != 1)
    {
      goto LABEL_9;
    }

    v18 = [MSCriterion alloc];
    v12 = [v41 sender];
    v13 = [v12 personHandle];
    v19 = [v13 value];
    v20 = [v18 initWithType:MSCriterionTypeSender qualifier:MSCriterionQualifierContains expression:v19];
    [v7 addObject:v20];
  }

LABEL_9:
  v21 = [v41 recipient];
  v22 = [v21 personHandle];
  v23 = [v22 value];
  if (v23)
  {
    v24 = [v41 recipient];
    v25 = [v24 personHandle];
    v26 = [v25 type];

    if (v26 != 1)
    {
      goto LABEL_13;
    }

    v27 = [MSCriterion alloc];
    v21 = [v41 recipient];
    v22 = [v21 personHandle];
    v28 = [v22 value];
    v29 = [v27 initWithType:MSCriterionTypeAnyRecipient qualifier:MSCriterionQualifierContains expression:v28];
    [v7 addObject:v29];
  }

LABEL_13:
  v30 = [v41 subject];
  v31 = [v30 length];

  if (v31)
  {
    v32 = [MSCriterion alloc];
    v33 = [v41 subject];
    v34 = [v32 initWithType:MSCriterionTypeSubject qualifier:MSCriterionQualifierContains expression:v33];
    [v7 addObject:v34];
  }

  if ([v7 count] == 1)
  {
    v35 = [v7 firstObject];
  }

  else
  {
    v35 = [[MSCriterion alloc] initWithCriteria:v7 allRequired:1];
  }

  v36 = v35;
  v37 = [NSArray arrayWithObjects:MSResultsKeyMessageReference, MSResultsKeyDateSent, MSResultsKeySender, MSResultsKeyRecipientTo, MSResultsKeyRecipientCc, MSResultsKeyRecipientBcc, MSResultsKeySubject, MSResultsKeyBodySummary, 0];
  v38 = [MSSearch findMessageData:v37 matchingCriterion:v36 options:4 delegate:self];

  if (v38)
  {
    objc_storeStrong(&self->_currentSearch, v38);
    v39 = objc_retainBlock(v6);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v39;
  }

  else
  {
    completionHandler = [[MSGetMailIntentResponse alloc] initWithCode:5 userActivity:0];
    (*(v6 + 2))(v6, completionHandler);
  }
}

- (BOOL)search:(id)a3 didFindResults:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v10 = v7;
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

  v14 = [(GetMailIntentHandler *)self results];
  v15 = [v14 count] < 0x1A;

  return v15;
}

- (void)search:(id)a3 didFinishWithError:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (v6)
  {
    completionHandler = self->_completionHandler;
    v8 = [[MSGetMailIntentResponse alloc] initWithCode:5 userActivity:0];
    completionHandler[2](completionHandler, v8);
  }

  else
  {
    v8 = [[MSGetMailIntentResponse alloc] initWithCode:4 userActivity:0];
    v9 = [(GetMailIntentHandler *)self results];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 ef_map:&stru_10000C6B8];
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