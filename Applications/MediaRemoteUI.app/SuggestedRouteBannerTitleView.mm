@interface SuggestedRouteBannerTitleView
- (CGSize)intrinsicContentSize;
- (_TtC13MediaRemoteUI29SuggestedRouteBannerTitleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SuggestedRouteBannerTitleView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_100003418();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SuggestedRouteBannerTitleView();
  v2 = v3.receiver;
  [(SuggestedRouteBannerTitleView *)&v3 layoutSubviews];
  [*&v2[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabel] bounds];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
}

- (_TtC13MediaRemoteUI29SuggestedRouteBannerTitleView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end