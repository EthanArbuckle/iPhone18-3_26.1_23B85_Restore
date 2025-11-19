@interface MFReplyAllTriageInteraction
- (BOOL)isPermitted;
- (MFReplyAllTriageInteraction)init;
- (id)title;
- (void)_performInteraction_Internal;
@end

@implementation MFReplyAllTriageInteraction

- (MFReplyAllTriageInteraction)init
{
  v3.receiver = self;
  v3.super_class = MFReplyAllTriageInteraction;
  return [(MFReplyTriageInteraction *)&v3 init];
}

- (void)_performInteraction_Internal
{
  v8 = [(MFMessageCompositionTriageInteraction *)self emailMessage];
  v3 = [(MFMessageCompositionTriageInteraction *)self daemonInterface];
  v4 = [v3 interactionLogger];
  [v4 composeReplyStartedForMessage:v8];

  v5 = [_MFMailCompositionContext alloc];
  v6 = [(MFMessageCompositionTriageInteraction *)self message];
  v7 = [v5 initReplyAllToMessage:v8 legacyMessage:v6 isEML:{-[MFMessageCompositionTriageInteraction isActingOnEML](self, "isActingOnEML")}];

  [(MFMessageCompositionTriageInteraction *)self presentComposeWithContext:v7];
}

- (BOOL)isPermitted
{
  v3 = [(MFMessageCompositionTriageInteraction *)self emailMessage];

  if (v3)
  {
    v4 = [(MFMessageCompositionTriageInteraction *)self emailMessage];
    v5 = +[MFEmailSet set];
    v6 = [v4 toList];
    v7 = [v6 ef_map:&stru_1006555B0];
    [v5 addObjectsFromArray:v7];

    v8 = [v4 ccList];
    v9 = [v8 ef_map:&stru_1006555D0];
    [v5 addObjectsFromArray:v9];

    v10 = [v4 senderList];
    v11 = [v10 ef_map:&stru_1006555F0];
    [v5 addObjectsFromArray:v11];

    v12 = +[UIApplication sharedApplication];
    v13 = [v12 accountsProvider];
    v14 = [v4 mailboxes];
    v15 = [v14 firstObject];
    v16 = [v15 account];
    v17 = [v16 objectID];
    v18 = [v13 legacyMailAccountForObjectID:v17];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = +[MailAccount defaultMailAccountForDelivery];
    }

    v23 = v20;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = [v23 emailAddressesAndAliasesList];
    v25 = [v24 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v25)
    {
      v26 = *v30;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v24);
          }

          [v5 removeObject:*(*(&v29 + 1) + 8 * i)];
        }

        v25 = [v24 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v25);
    }

    v22 = [v5 count] != 0;
  }

  else
  {
    v21 = [(MFMessageCompositionTriageInteraction *)self message];
    v22 = [v21 canReplyAll];
  }

  return v22;
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"REPLY_ALL" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end