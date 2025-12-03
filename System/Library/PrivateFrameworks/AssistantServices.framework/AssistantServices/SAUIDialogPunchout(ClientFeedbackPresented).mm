@interface SAUIDialogPunchout(ClientFeedbackPresented)
- (id)_af_dialogIdentifier;
@end

@implementation SAUIDialogPunchout(ClientFeedbackPresented)

- (id)_af_dialogIdentifier
{
  utteranceView = [self utteranceView];
  dialogIdentifier = [utteranceView dialogIdentifier];

  return dialogIdentifier;
}

@end