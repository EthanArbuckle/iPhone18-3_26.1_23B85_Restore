@interface MFSendAgainTriageInteraction
- (BOOL)isPermitted;
- (MFSendAgainTriageInteraction)init;
- (id)title;
- (void)_performInteraction_Internal;
@end

@implementation MFSendAgainTriageInteraction

- (MFSendAgainTriageInteraction)init
{
  v5.receiver = self;
  v5.super_class = MFSendAgainTriageInteraction;
  v2 = [(MFMessageCompositionTriageInteraction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MFMessageCompositionTriageInteraction *)v2 setAttachmentPolicy:1];
  }

  return v3;
}

- (void)_performInteraction_Internal
{
  v3 = [_MFMailCompositionContext alloc];
  v4 = [(MFMessageCompositionTriageInteraction *)self emailMessage];
  v5 = [(MFMessageCompositionTriageInteraction *)self message];
  v6 = [v3 initSendAgainDraftOfMessage:v4 legacyMessage:v5];

  [(MFMessageCompositionTriageInteraction *)self presentComposeWithContext:v6];
}

- (BOOL)isPermitted
{
  v2 = [(MFMessageCompositionTriageInteraction *)self emailMessage];
  v3 = [v2 mailboxes];
  v4 = [v3 ef_any:&stru_100655A30];

  return v4;
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SEND_AGAIN" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end