@interface BaseLockupView
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BaseLockupView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10003F3D4(change);
}

@end