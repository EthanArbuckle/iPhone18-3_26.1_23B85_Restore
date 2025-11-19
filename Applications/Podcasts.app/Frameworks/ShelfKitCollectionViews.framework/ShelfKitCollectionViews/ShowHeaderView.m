@interface ShowHeaderView
- (void)preferredContentSizeChanged:(id)a3;
- (void)secondaryButtonSubtitleLabelTapped;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ShowHeaderView

- (void)preferredContentSizeChanged:(id)a3
{
  v4 = sub_3019D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3019C8();
  v8 = self;
  sub_2C6828();

  (*(v5 + 8))(v7, v4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  ShowHeaderView.traitCollectionDidChange(_:)(v9);
}

- (void)secondaryButtonSubtitleLabelTapped
{
  v2 = self;
  sub_2C6D3C();
}

@end