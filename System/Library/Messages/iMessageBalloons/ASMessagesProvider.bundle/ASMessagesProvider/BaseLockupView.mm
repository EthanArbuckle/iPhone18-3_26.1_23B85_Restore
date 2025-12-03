@interface BaseLockupView
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BaseLockupView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_3E4CA4(change);
}

@end