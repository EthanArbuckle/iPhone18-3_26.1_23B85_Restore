@interface FullSheetOverlayPageView
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FullSheetOverlayPageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_A1C04();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_A5BA0(change);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_A6360();
}

@end