@interface MFUnsubscribeTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 icloudMailCleanupService:(id)a6;
+ (id)interactionWithReferenceMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5;
+ (id)interactionWithReferenceMessageListItemsAndConfirmation:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 shouldAskForConfirmation:(BOOL)a6 icloudMailCleanupService:(id)a7;
+ (id)log;
- (id)senderForMessageList:(id)a3;
- (id)triageAction;
- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4;
- (void)dealloc;
@end

@implementation MFUnsubscribeTriageInteraction

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002306FC;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD728 != -1)
  {
    dispatch_once(&qword_1006DD728, block);
  }

  v2 = qword_1006DD720;

  return v2;
}

+ (id)interactionWithMessageListItemSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 icloudMailCleanupService:(id)a6
{
  v9 = a3;
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___MFUnsubscribeTriageInteraction;
  v10 = objc_msgSendSuper2(&v16, "interactionWithMessageListItemSelection:undoManager:origin:actor:", v9, 0, a4, a5);
  v11 = [v9 messageListItems];
  v12 = [v11 firstObject];
  v13 = [v12 groupedSenderMessageListItems];
  v14 = [v10 senderForMessageList:v13];

  [v10 setSender:v14];

  return v10;
}

+ (id)interactionWithReferenceMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5
{
  v8 = a3;
  v9 = [[MSMessageListItemSelection alloc] initWithMessageListItems:v8];
  v10 = [a1 interactionWithMessageListItemSelection:v9 origin:a4 actor:a5 icloudMailCleanupService:0];

  return v10;
}

+ (id)interactionWithReferenceMessageListItemsAndConfirmation:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 shouldAskForConfirmation:(BOOL)a6 icloudMailCleanupService:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a7;
  v14 = [[MSMessageListItemSelection alloc] initWithMessageListItems:v12];
  v15 = [a1 interactionWithMessageListItemSelection:v14 origin:a4 actor:a5 icloudMailCleanupService:v13];
  [v15 setShouldAskForConfirmation:v8];

  return v15;
}

- (id)senderForMessageList:(id)a3
{
  v20 = a3;
  v3 = objc_alloc_init(NSMutableSet);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v20;
  v21 = [obj countByEnumeratingWithState:&v46 objects:v53 count:{16, v20}];
  if (v21)
  {
    v23 = *v47;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v46 + 1) + 8 * i);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v31 = v4;
        v25 = [v4 mailboxes];
        v22 = [v25 countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v22)
        {
          v24 = *v43;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v43 != v24)
              {
                objc_enumerationMutation(v25);
              }

              v5 = *(*(&v42 + 1) + 8 * j);
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v6 = [v5 account];
              v29 = [v6 emailAddresses];

              v32 = [v29 countByEnumeratingWithState:&v38 objects:v51 count:16];
              if (v32)
              {
                v30 = *v39;
                do
                {
                  for (k = 0; k != v32; k = k + 1)
                  {
                    if (*v39 != v30)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v7 = *(*(&v38 + 1) + 8 * k);
                    v34 = 0u;
                    v35 = 0u;
                    v36 = 0u;
                    v37 = 0u;
                    v8 = [v31 toList];
                    v9 = [v8 countByEnumeratingWithState:&v34 objects:v50 count:16];
                    if (v9)
                    {
                      v10 = *v35;
                      do
                      {
                        for (m = 0; m != v9; m = m + 1)
                        {
                          if (*v35 != v10)
                          {
                            objc_enumerationMutation(v8);
                          }

                          v12 = [*(*(&v34 + 1) + 8 * m) emailAddressValue];
                          v13 = [v12 simpleAddress];
                          v14 = [v7 simpleAddress];
                          v15 = [v13 isEqualToString:v14];

                          if (v15)
                          {
                            v16 = [v7 simpleAddress];
                            [v3 addObject:v16];
                          }
                        }

                        v9 = [v8 countByEnumeratingWithState:&v34 objects:v50 count:16];
                      }

                      while (v9);
                    }
                  }

                  v32 = [v29 countByEnumeratingWithState:&v38 objects:v51 count:16];
                }

                while (v32);
              }
            }

            v22 = [v25 countByEnumeratingWithState:&v42 objects:v52 count:16];
          }

          while (v22);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v21);
  }

  v17 = [v3 allObjects];
  v18 = [v17 componentsJoinedByString:{@", "}];

  return v18;
}

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSUnsubscribeTriageAction alloc];
    v5 = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:v5 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:{-[MFTriageInteraction actor](self, "actor"), self}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

- (void)dealloc
{
  NSLog(@"Deallocating", a2);
  v3.receiver = self;
  v3.super_class = MFUnsubscribeTriageInteraction;
  [(MFUnsubscribeTriageInteraction *)&v3 dealloc];
}

- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MFTriageInteraction *)self shouldAskForConfirmation])
  {
    v8 = +[MFUnsubscribeTriageInteraction log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "shouldAskForConfirmation = true, presenting UIAlert to confirm MFUnsubscribeTriageInteraction", buf, 2u);
    }

    v21 = [(MFTriageInteraction *)self delegate];
    v9 = [v21 presentingViewControllerForTriageInteraction:self];
    v10 = [(MFUnsubscribeTriageInteraction *)self unsubscribeAlertTitle];
    v11 = [(MFUnsubscribeTriageInteraction *)self unsubscribeMessageAlertFormat];
    v12 = [(MFUnsubscribeTriageInteraction *)self sender];
    v13 = [NSString stringWithFormat:v11, v12];

    v14 = [UIAlertController alertControllerWithTitle:v10 message:v13 preferredStyle:1];
    v15 = _EFLocalizedString();
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];

    v17 = [(MFUnsubscribeTriageInteraction *)self unsubscribeAlertButtonText];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1002314F4;
    v23[3] = &unk_100656120;
    v23[4] = self;
    v24 = v6;
    v25 = v7;
    v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:v23];

    [v14 addAction:v16];
    [v14 addAction:v18];
    [v14 setModalPresentationStyle:7];
    v19 = [(MFTriageInteraction *)self presentationSource];
    [v14 mf_presentFromViewController:v9 withSource:v19];
  }

  else
  {
    v20 = +[MFUnsubscribeTriageInteraction log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "shouldAskForConfirmation = false, performing MFUnsubscribeTriageInteraction directly without confirmation", buf, 2u);
    }

    v22.receiver = self;
    v22.super_class = MFUnsubscribeTriageInteraction;
    [(MFTriageInteraction *)&v22 _performInteractionAfterPreparation:v6 completion:v7];
  }
}

@end