@interface MFForwardTriageInteraction
- (MFForwardTriageInteraction)init;
- (id)title;
- (void)_performInteraction_Internal;
@end

@implementation MFForwardTriageInteraction

- (MFForwardTriageInteraction)init
{
  v5.receiver = self;
  v5.super_class = MFForwardTriageInteraction;
  v2 = [(MFMessageCompositionTriageInteraction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MFMessageCompositionTriageInteraction *)v2 setAttachmentPolicy:2];
  }

  return v3;
}

- (void)_performInteraction_Internal
{
  emailMessage = [(MFMessageCompositionTriageInteraction *)self emailMessage];
  daemonInterface = [(MFMessageCompositionTriageInteraction *)self daemonInterface];
  interactionLogger = [daemonInterface interactionLogger];
  [interactionLogger composeFowardStartedForMessage:emailMessage];

  v5 = [_MFMailCompositionContext alloc];
  message = [(MFMessageCompositionTriageInteraction *)self message];
  v7 = [v5 initForwardOfMessage:emailMessage legacyMessage:message isEML:{-[MFMessageCompositionTriageInteraction isActingOnEML](self, "isActingOnEML")}];

  [v7 setPrefersFirstLineSelection:1];
  [(MFMessageCompositionTriageInteraction *)self presentComposeWithContext:v7];
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"FORWARD" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end