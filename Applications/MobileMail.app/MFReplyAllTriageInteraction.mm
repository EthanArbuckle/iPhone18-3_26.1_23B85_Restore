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
  emailMessage = [(MFMessageCompositionTriageInteraction *)self emailMessage];
  daemonInterface = [(MFMessageCompositionTriageInteraction *)self daemonInterface];
  interactionLogger = [daemonInterface interactionLogger];
  [interactionLogger composeReplyStartedForMessage:emailMessage];

  v5 = [_MFMailCompositionContext alloc];
  message = [(MFMessageCompositionTriageInteraction *)self message];
  v7 = [v5 initReplyAllToMessage:emailMessage legacyMessage:message isEML:{-[MFMessageCompositionTriageInteraction isActingOnEML](self, "isActingOnEML")}];

  [(MFMessageCompositionTriageInteraction *)self presentComposeWithContext:v7];
}

- (BOOL)isPermitted
{
  emailMessage = [(MFMessageCompositionTriageInteraction *)self emailMessage];

  if (emailMessage)
  {
    emailMessage2 = [(MFMessageCompositionTriageInteraction *)self emailMessage];
    v5 = +[MFEmailSet set];
    toList = [emailMessage2 toList];
    v7 = [toList ef_map:&stru_1006555B0];
    [v5 addObjectsFromArray:v7];

    ccList = [emailMessage2 ccList];
    v9 = [ccList ef_map:&stru_1006555D0];
    [v5 addObjectsFromArray:v9];

    senderList = [emailMessage2 senderList];
    v11 = [senderList ef_map:&stru_1006555F0];
    [v5 addObjectsFromArray:v11];

    v12 = +[UIApplication sharedApplication];
    accountsProvider = [v12 accountsProvider];
    mailboxes = [emailMessage2 mailboxes];
    firstObject = [mailboxes firstObject];
    account = [firstObject account];
    objectID = [account objectID];
    v18 = [accountsProvider legacyMailAccountForObjectID:objectID];
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
    emailAddressesAndAliasesList = [v23 emailAddressesAndAliasesList];
    v25 = [emailAddressesAndAliasesList countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v25)
    {
      v26 = *v30;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(emailAddressesAndAliasesList);
          }

          [v5 removeObject:*(*(&v29 + 1) + 8 * i)];
        }

        v25 = [emailAddressesAndAliasesList countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v25);
    }

    canReplyAll = [v5 count] != 0;
  }

  else
  {
    message = [(MFMessageCompositionTriageInteraction *)self message];
    canReplyAll = [message canReplyAll];
  }

  return canReplyAll;
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"REPLY_ALL" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end