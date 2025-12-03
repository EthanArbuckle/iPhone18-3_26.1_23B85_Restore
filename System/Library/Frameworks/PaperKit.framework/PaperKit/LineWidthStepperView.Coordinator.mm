@interface LineWidthStepperView.Coordinator
- (void)didChange:(id)change;
@end

@implementation LineWidthStepperView.Coordinator

- (void)didChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  LineWidthStepperView.Coordinator.didChange(_:)();
}

@end