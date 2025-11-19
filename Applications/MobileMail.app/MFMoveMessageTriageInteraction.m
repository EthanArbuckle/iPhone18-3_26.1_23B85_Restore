@interface MFMoveMessageTriageInteraction
- (BOOL)isPermittedWithTargetAccount:(id)a3;
- (id)cardTitle;
- (id)shortTitle;
- (id)title;
- (id)triageAction;
- (void)_dispatchInteractionWithCompletion:(id)a3;
@end

@implementation MFMoveMessageTriageInteraction

- (id)triageAction
{
  if (!self->_triageAction)
  {
    v3 = [(MFMoveMessageTriageInteraction *)self targetMailboxType];
    v4 = [MSMoveTriageAction alloc];
    v5 = [(MFTriageInteraction *)self messageListItemSelection];
    if (v3)
    {
      LOBYTE(v14) = 0;
      v6 = [v4 initWithMessageListSelection:v5 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self destinationMailboxType:"actor") flagChange:self copyMessages:{v3, 0, v14}];
      triageAction = self->_triageAction;
      self->_triageAction = v6;
    }

    else
    {
      v8 = [(MFTriageInteraction *)self origin];
      v9 = [(MFTriageInteraction *)self actor];
      triageAction = [(MFMoveMessageTriageInteraction *)self targetMailbox];
      LOBYTE(v14) = 0;
      v10 = [v4 initWithMessageListSelection:v5 origin:v8 actor:v9 delegate:self destinationMailbox:triageAction flagChange:0 copyMessages:v14];
      v11 = self->_triageAction;
      self->_triageAction = v10;
    }
  }

  v12 = self->_triageAction;

  return v12;
}

- (BOOL)isPermittedWithTargetAccount:(id)a3
{
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [(MFTriageInteraction *)self messageListItemSelection];
  v6 = [v5 messageListItems];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
        v9 = [v8 mailboxes];
        v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v10)
        {
          v11 = *v27;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v26 + 1) + 8 * j);
              v14 = +[UIApplication sharedApplication];
              v15 = [v14 accountsProvider];
              v16 = [v13 accountIdentifier];
              v17 = [v15 legacyMailAccountForObjectID:v16];

              if (v17)
              {
                v18 = +[MCProfileConnection sharedConnection];
                v19 = [MailAccount canMoveMessagesFromAccount:v17 toAccount:v4 profileConnection:v18];

                if (!v19)
                {

                  v20 = 0;
                  goto LABEL_20;
                }
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
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

- (void)_dispatchInteractionWithCompletion:(id)a3
{
  v4 = a3;
  sub_1001FE7B0(self);
  v5.receiver = self;
  v5.super_class = MFMoveMessageTriageInteraction;
  [(MFTriageInteraction *)&v5 _dispatchInteractionWithCompletion:v4];
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