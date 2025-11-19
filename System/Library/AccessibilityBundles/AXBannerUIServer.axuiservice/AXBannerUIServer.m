void sub_E10(id a1)
{
  qword_8690 = [[AXBannerUIServer alloc] _init];

  _objc_release_x1();
}

void sub_FB0(uint64_t a1)
{
  v5 = [*(a1 + 32) bannerPresenter];
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"title"];
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"message"];
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"duration"];
  [v4 doubleValue];
  [v5 presentBannerViewWithText:v2 secondaryText:v3 duration:0 fromUserAction:?];
}

void sub_1070(uint64_t a1)
{
  v1 = [*(a1 + 32) bannerPresenter];
  [v1 dismissFloatingView];
}