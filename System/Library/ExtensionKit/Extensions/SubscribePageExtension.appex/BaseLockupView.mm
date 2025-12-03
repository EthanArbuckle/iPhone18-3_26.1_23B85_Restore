@interface BaseLockupView
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BaseLockupView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1005A5048(change);
}

@end