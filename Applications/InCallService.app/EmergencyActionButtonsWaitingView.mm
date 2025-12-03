@interface EmergencyActionButtonsWaitingView
- (void)cancelButtonTapped;
- (void)continueButtonTapped;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation EmergencyActionButtonsWaitingView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1001E4A00(change);
}

- (void)continueButtonTapped
{
  selfCopy = self;
  sub_1001E4BB0();
}

- (void)cancelButtonTapped
{
  selfCopy = self;
  sub_1001E4FE4();
}

@end