@interface MFMoveMessageTriageInteraction
- (BOOL)isPermittedWithTargetAccount:(id)account;
- (id)cardTitle;
- (id)shortTitle;
- (id)title;
- (id)triageAction;
- (void)_dispatchInteractionWithCompletion:(id)completion;
@end

@implementation MFMoveMessageTriageInteraction

- (id)triageAction
{
  if (!self->_triageAction)
  {
    targetMailboxType = [(MFMoveMessageTriageInteraction *)self targetMailboxType];
    v4 = [MSMoveTriageAction alloc];
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    if (targetMailboxType)
    {
      LOBYTE(v14) = 0;
      v6 = [v4 initWithMessageListSelection:messageListItemSelection origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self destinationMailboxType:"actor") flagChange:self copyMessages:{targetMailboxType, 0, v14}];
      triageAction = self->_triageAction;
      self->_triageAction = v6;
    }

    else
    {
      origin = [(MFTriageInteraction *)self origin];
      actor = [(MFTriageInteraction *)self actor];
      triageAction = [(MFMoveMessageTriageInteraction *)self targetMailbox];
      LOBYTE(v14) = 0;
      v10 = [v4 initWithMessageListSelection:messageListItemSelection origin:origin actor:actor delegate:self destinationMailbox:triageAction flagChange:0 copyMessages:v14];
      v11 = self->_triageAction;
      self->_triageAction = v10;
    }
  }

  v12 = self->_triageAction;

  return v12;
}

- (BOOL)isPermittedWithTargetAccount:(id)account
{
  accountCopy = account;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];

  obj = messageListItems;
  v7 = [messageListItems countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v22 = v7;
    v23 = *v31;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        mailboxes = [v8 mailboxes];
        v10 = [mailboxes countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v10)
        {
          v11 = *v27;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(mailboxes);
              }

              v13 = *(*(&v26 + 1) + 8 * j);
              v14 = +[UIApplication sharedApplication];
              accountsProvider = [v14 accountsProvider];
              accountIdentifier = [v13 accountIdentifier];
              v17 = [accountsProvider legacyMailAccountForObjectID:accountIdentifier];

              if (v17)
              {
                v18 = +[MCProfileConnection sharedConnection];
                v19 = [MailAccount canMoveMessagesFromAccount:v17 toAccount:accountCopy profileConnection:v18];

                if (!v19)
                {

                  v20 = 0;
                  goto LABEL_20;
                }
              }
            }

            v10 = [mailboxes countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v20 = 1;
      v22 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v22);
  }

  else
  {
    v20 = 1;
  }

LABEL_20:

  return v20;
}

- (void)_dispatchInteractionWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_1001FE7B0(self);
  v5.receiver = self;
  v5.super_class = MFMoveMessageTriageInteraction;
  [(MFTriageInteraction *)&v5 _dispatchInteractionWithCompletion:completionCopy];
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"MOVE_MESSAGE" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)shortTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SWIPE_MOVE" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)cardTitle
{
  if ([(MFTriageInteraction *)self messageCount]< 2)
  {
    v3 = +[NSBundle mainBundle];
    v5 = [v3 localizedStringForKey:@"MOVE_MESSAGE" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"MOVE_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
    v5 = [NSString localizedStringWithFormat:v4, [(MFTriageInteraction *)self messageCount]];
  }

  return v5;
}

@end