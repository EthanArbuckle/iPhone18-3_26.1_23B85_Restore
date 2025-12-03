@interface HalfSheetPageView
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HalfSheetPageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_AE80C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_B08D4(change);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_B0C6C();
}

@end