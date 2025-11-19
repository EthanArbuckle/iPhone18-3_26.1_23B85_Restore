@interface EmergencyActionButtonsWaitingView
- (void)cancelButtonTapped;
- (void)continueButtonTapped;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation EmergencyActionButtonsWaitingView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001E4A00(a3);
}

- (void)continueButtonTapped
{
  v2 = self;
  sub_1001E4BB0();
}

- (void)cancelButtonTapped
{
  v2 = self;
  sub_1001E4FE4();
}

@end