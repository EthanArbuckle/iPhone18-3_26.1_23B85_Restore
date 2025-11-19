@interface FullSheetOverlayPageView
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FullSheetOverlayPageView

- (void)layoutSubviews
{
  v2 = self;
  sub_A1C04();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_A5BA0(a3);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_A6360();
}

@end