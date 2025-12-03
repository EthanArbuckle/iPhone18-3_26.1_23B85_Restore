@interface BaseLockupView
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BaseLockupView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1003ED3A4(change);
}

@end