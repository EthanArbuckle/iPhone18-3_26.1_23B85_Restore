@interface MFReplyTriageInteraction
- (BOOL)includeAttachmentsWithoutPrompting;
- (MFReplyTriageInteraction)init;
- (id)title;
- (unint64_t)includeAttachmentsByDefault;
- (void)_performInteraction_Internal;
@end

@implementation MFReplyTriageInteraction

- (MFReplyTriageInteraction)init
{
  v6.receiver = self;
  v6.super_class = MFReplyTriageInteraction;
  v2 = [(MFMessageCompositionTriageInteraction *)&v6 init];
  if (v2)
  {
    v3 = sub_10024BAB8(0);
    v4 = [v3 isEqualToString:IncludeAttachmentRepliesWhenAdding];

    if (v4)
    {
      [(MFMessageCompositionTriageInteraction *)v2 setAttachmentPolicy:0];
    }
  }

  return v2;
}

- (void)_performInteraction_Internal
{
  v8 = [(MFMessageCompositionTriageInteraction *)self emailMessage];
  v3 = [(MFMessageCompositionTriageInteraction *)self daemonInterface];
  v4 = [v3 interactionLogger];
  [v4 composeReplyStartedForMessage:v8];

  v5 = [_MFMailCompositionContext alloc];
  v6 = [(MFMessageCompositionTriageInteraction *)self message];
  v7 = [v5 initReplyToMessage:v8 legacyMessage:v6 isEML:{-[MFMessageCompositionTriageInteraction isActingOnEML](self, "isActingOnEML")}];

  [(MFMessageCompositionTriageInteraction *)self presentComposeWithContext:v7];
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"REPLY" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (unint64_t)includeAttachmentsByDefault
{
  v2 = sub_10024BAB8(0);
  if ([v2 isEqualToString:IncludeAttachmentRepliesAlways])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:IncludeAttachmentRepliesNever])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:IncludeAttachmentRepliesWhenAdding];
  }

  return v3;
}

- (BOOL)includeAttachmentsWithoutPrompting
{
  v2 = sub_10024BAB8(0);
  if ([v2 isEqualToString:IncludeAttachmentRepliesAlways])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:IncludeAttachmentRepliesAsk];
  }

  return v3;
}

@end