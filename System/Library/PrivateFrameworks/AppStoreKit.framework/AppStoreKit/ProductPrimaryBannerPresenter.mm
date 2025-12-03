@interface ProductPrimaryBannerPresenter
- (void)bannerHideCriteriaDidChange:(id)change;
@end

@implementation ProductPrimaryBannerPresenter

- (void)bannerHideCriteriaDidChange:(id)change
{
  v3 = sub_1E1AEF55C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();

  sub_1E19D9F40(v6);

  (*(v4 + 8))(v6, v3);
}

@end