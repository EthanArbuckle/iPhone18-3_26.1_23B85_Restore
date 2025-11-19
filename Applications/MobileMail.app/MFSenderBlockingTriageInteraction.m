@interface MFSenderBlockingTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 blockSender:(BOOL)a7;
+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 blockSender:(BOOL)a7;
- (BOOL)_requiresConfirmationPrompt;
- (BOOL)isDestructive;
- (id)sendersForMessageListItems:(id)a3;
- (id)shortTitle;
- (id)title;
- (id)triageAction;
- (void)_dispatchInteractionWithCompletion:(id)a3;
- (void)_performContinuation:(id)a3 withAlertController:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation MFSenderBlockingTriageInteraction

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSSenderBlockingTriageAction alloc];
    v5 = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:v5 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self blockSender:{"actor"), self, self->_blockSender}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 blockSender:(BOOL)a7
{
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___MFSenderBlockingTriageInteraction;
  v8 = objc_msgSendSuper2(&v13, "interactionWithMessageListItemSelection:undoManager:origin:actor:", a3, a4, a5, a6);
  v9 = [v8 messageListItemSelection];
  v10 = [v9 messageListItems];
  v11 = [v8 sendersForMessageListItems:v10];
  [v8 setSenders:v11];

  if (v8)
  {
    v8[88] = a7;
  }

  return v8;
}

+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 blockSender:(BOOL)a7
{
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___MFSenderBlockingTriageInteraction;
  v8 = objc_msgSendSuper2(&v13, "interactionWithMessageListItems:undoManager:origin:actor:", a3, a4, a5, a6);
  v9 = [v8 messageListItemSelection];
  v10 = [v9 messageListItems];
  v11 = [v8 sendersForMessageListItems:v10];
  [v8 setSenders:v11];

  if (v8)
  {
    v8[88] = a7;
  }

  return v8;
}

- (id)sendersForMessageListItems:(id)a3
{
  v15 = a3;
  v3 = objc_alloc_init(NSMutableSet);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v15;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [v8 senderList];
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = *v17;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = [*(*(&v16 + 1) + 8 * j) emailAddressValue];
              if (v13)
              {
                [v3 addObject:v13];
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)title
{
  blockSender = self->_blockSender;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (blockSender)
  {
    [v4 localizedStringForKey:@"BLOCK_SENDER" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v4 localizedStringForKey:@"UNBLOCK_SENDER" value:&stru_100662A88 table:@"Main"];
  }
  v6 = ;

  v7 = [(MFSenderBlockingTriageInteraction *)self senders];
  v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v7 count]);

  return v8;
}

- (id)shortTitle
{
  blockSender = self->_blockSender;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (blockSender)
  {
    [v4 localizedStringForKey:@"BLOCK_SENDER" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v4 localizedStringForKey:@"UNBLOCK_SENDER" value:&stru_100662A88 table:@"Main"];
  }
  v6 = ;

  v7 = [(MFSenderBlockingTriageInteraction *)self senders];
  v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v7 count]);

  return v8;
}

- (void)_performContinuation:(id)a3 withAlertController:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = +[_TtC10MobileMail25MFSafetyCheckWhenBlocking shared];
  [v7 prefetchSharing];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"BLOCK_SENDER_CONFIRMATION" value:&stru_100662A88 table:@"Main"];

  [(MFTriageInteraction *)self _performContinuation:v10 withAlertController:v6 title:v9 shouldDismissPresentingViewController:1];
}

- (void)_dispatchInteractionWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MFSenderBlockingTriageInteraction *)self triageAction];
  v6 = [(MFTriageInteraction *)self undoManager];
  v7 = [(MFTriageInteraction *)self undoTitle];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100216590;
  v9[3] = &unk_10064D130;
  objc_copyWeak(&v11, &location);
  v8 = v4;
  v10 = v8;
  [v5 performWithUndoManager:v6 actionName:v7 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(MFSenderBlockingTriageInteraction *)self interactionCompletion];

  if (v4)
  {
    v5 = [(MFSenderBlockingTriageInteraction *)self interactionCompletion];
    v5[2]();
  }
}

- (BOOL)isDestructive
{
  if (self)
  {
    return sub_1000079A0(self->_blockSender);
  }

  else
  {
    return sub_1000079A0(0);
  }
}

- (BOOL)_requiresConfirmationPrompt
{
  if (self)
  {
    return sub_1000079A0(self->_blockSender);
  }

  else
  {
    return sub_1000079A0(0);
  }
}

@end