@interface MFUnsubscribeTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor icloudMailCleanupService:(id)service;
+ (id)interactionWithReferenceMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor;
+ (id)interactionWithReferenceMessageListItemsAndConfirmation:(id)confirmation origin:(int64_t)origin actor:(int64_t)actor shouldAskForConfirmation:(BOOL)forConfirmation icloudMailCleanupService:(id)service;
+ (id)log;
- (id)senderForMessageList:(id)list;
- (id)triageAction;
- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion;
- (void)dealloc;
@end

@implementation MFUnsubscribeTriageInteraction

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002306FC;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD728 != -1)
  {
    dispatch_once(&qword_1006DD728, block);
  }

  v2 = qword_1006DD720;

  return v2;
}

+ (id)interactionWithMessageListItemSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor icloudMailCleanupService:(id)service
{
  selectionCopy = selection;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___MFUnsubscribeTriageInteraction;
  v10 = objc_msgSendSuper2(&v16, "interactionWithMessageListItemSelection:undoManager:origin:actor:", selectionCopy, 0, origin, actor);
  messageListItems = [selectionCopy messageListItems];
  firstObject = [messageListItems firstObject];
  groupedSenderMessageListItems = [firstObject groupedSenderMessageListItems];
  v14 = [v10 senderForMessageList:groupedSenderMessageListItems];

  [v10 setSender:v14];

  return v10;
}

+ (id)interactionWithReferenceMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor
{
  itemsCopy = items;
  v9 = [[MSMessageListItemSelection alloc] initWithMessageListItems:itemsCopy];
  v10 = [self interactionWithMessageListItemSelection:v9 origin:origin actor:actor icloudMailCleanupService:0];

  return v10;
}

+ (id)interactionWithReferenceMessageListItemsAndConfirmation:(id)confirmation origin:(int64_t)origin actor:(int64_t)actor shouldAskForConfirmation:(BOOL)forConfirmation icloudMailCleanupService:(id)service
{
  forConfirmationCopy = forConfirmation;
  confirmationCopy = confirmation;
  serviceCopy = service;
  v14 = [[MSMessageListItemSelection alloc] initWithMessageListItems:confirmationCopy];
  v15 = [self interactionWithMessageListItemSelection:v14 origin:origin actor:actor icloudMailCleanupService:serviceCopy];
  [v15 setShouldAskForConfirmation:forConfirmationCopy];

  return v15;
}

- (id)senderForMessageList:(id)list
{
  listCopy = list;
  v3 = objc_alloc_init(NSMutableSet);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = listCopy;
  v21 = [obj countByEnumeratingWithState:&v46 objects:v53 count:{16, listCopy}];
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
        mailboxes = [v4 mailboxes];
        v22 = [mailboxes countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v22)
        {
          v24 = *v43;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v43 != v24)
              {
                objc_enumerationMutation(mailboxes);
              }

              v5 = *(*(&v42 + 1) + 8 * j);
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              account = [v5 account];
              emailAddresses = [account emailAddresses];

              v32 = [emailAddresses countByEnumeratingWithState:&v38 objects:v51 count:16];
              if (v32)
              {
                v30 = *v39;
                do
                {
                  for (k = 0; k != v32; k = k + 1)
                  {
                    if (*v39 != v30)
                    {
                      objc_enumerationMutation(emailAddresses);
                    }

                    v7 = *(*(&v38 + 1) + 8 * k);
                    v34 = 0u;
                    v35 = 0u;
                    v36 = 0u;
                    v37 = 0u;
                    toList = [v31 toList];
                    v9 = [toList countByEnumeratingWithState:&v34 objects:v50 count:16];
                    if (v9)
                    {
                      v10 = *v35;
                      do
                      {
                        for (m = 0; m != v9; m = m + 1)
                        {
                          if (*v35 != v10)
                          {
                            objc_enumerationMutation(toList);
                          }

                          emailAddressValue = [*(*(&v34 + 1) + 8 * m) emailAddressValue];
                          simpleAddress = [emailAddressValue simpleAddress];
                          simpleAddress2 = [v7 simpleAddress];
                          v15 = [simpleAddress isEqualToString:simpleAddress2];

                          if (v15)
                          {
                            simpleAddress3 = [v7 simpleAddress];
                            [v3 addObject:simpleAddress3];
                          }
                        }

                        v9 = [toList countByEnumeratingWithState:&v34 objects:v50 count:16];
                      }

                      while (v9);
                    }
                  }

                  v32 = [emailAddresses countByEnumeratingWithState:&v38 objects:v51 count:16];
                }

                while (v32);
              }
            }

            v22 = [mailboxes countByEnumeratingWithState:&v42 objects:v52 count:16];
          }

          while (v22);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v21);
  }

  allObjects = [v3 allObjects];
  v18 = [allObjects componentsJoinedByString:{@", "}];

  return v18;
}

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSUnsubscribeTriageAction alloc];
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:messageListItemSelection origin:-[MFTriageInteraction origin](self actor:"origin") delegate:{-[MFTriageInteraction actor](self, "actor"), self}];
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

- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  completionCopy = completion;
  if ([(MFTriageInteraction *)self shouldAskForConfirmation])
  {
    v8 = +[MFUnsubscribeTriageInteraction log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "shouldAskForConfirmation = true, presenting UIAlert to confirm MFUnsubscribeTriageInteraction", buf, 2u);
    }

    delegate = [(MFTriageInteraction *)self delegate];
    v9 = [delegate presentingViewControllerForTriageInteraction:self];
    unsubscribeAlertTitle = [(MFUnsubscribeTriageInteraction *)self unsubscribeAlertTitle];
    unsubscribeMessageAlertFormat = [(MFUnsubscribeTriageInteraction *)self unsubscribeMessageAlertFormat];
    sender = [(MFUnsubscribeTriageInteraction *)self sender];
    v13 = [NSString stringWithFormat:unsubscribeMessageAlertFormat, sender];

    v14 = [UIAlertController alertControllerWithTitle:unsubscribeAlertTitle message:v13 preferredStyle:1];
    v15 = _EFLocalizedString();
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];

    unsubscribeAlertButtonText = [(MFUnsubscribeTriageInteraction *)self unsubscribeAlertButtonText];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1002314F4;
    v23[3] = &unk_100656120;
    v23[4] = self;
    v24 = preparationCopy;
    v25 = completionCopy;
    v18 = [UIAlertAction actionWithTitle:unsubscribeAlertButtonText style:0 handler:v23];

    [v14 addAction:v16];
    [v14 addAction:v18];
    [v14 setModalPresentationStyle:7];
    presentationSource = [(MFTriageInteraction *)self presentationSource];
    [v14 mf_presentFromViewController:v9 withSource:presentationSource];
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
    [(MFTriageInteraction *)&v22 _performInteractionAfterPreparation:preparationCopy completion:completionCopy];
  }
}

@end