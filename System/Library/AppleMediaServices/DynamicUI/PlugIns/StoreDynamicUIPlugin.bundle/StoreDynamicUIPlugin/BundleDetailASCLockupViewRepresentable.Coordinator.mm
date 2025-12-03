@interface BundleDetailASCLockupViewRepresentable.Coordinator
- (void)lockupView:(id)view appStateDidChange:(id)change;
@end

@implementation BundleDetailASCLockupViewRepresentable.Coordinator

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  selfCopy = self;
  sub_3B6B8(viewCopy);
}

@end