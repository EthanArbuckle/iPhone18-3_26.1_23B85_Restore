@interface SAUIDialogPunchout(ClientFeedbackPresented)
- (id)_af_dialogIdentifier;
@end

@implementation SAUIDialogPunchout(ClientFeedbackPresented)

- (id)_af_dialogIdentifier
{
  v1 = [a1 utteranceView];
  v2 = [v1 dialogIdentifier];

  return v2;
}

@end