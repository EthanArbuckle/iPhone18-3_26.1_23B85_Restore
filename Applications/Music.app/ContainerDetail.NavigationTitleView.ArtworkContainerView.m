@interface ContainerDetail.NavigationTitleView.ArtworkContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ContainerDetail.NavigationTitleView.ArtworkContainerView

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = _s19NavigationTitleViewC20ArtworkContainerViewCMa(0);
  v2 = v10.receiver;
  [(ContainerDetail.NavigationTitleView.ArtworkContainerView *)&v10 layoutSubviews];
  v3 = &v2[OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_specs];
  CGRect.centeringAlong(axes:in:)();
  v4 = OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkView;
  [*&v2[OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkView] setFrame:{v10.receiver, v10.super_class}];
  v5 = *&v2[OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkShadowView];
  [*&v2[v4] frame];
  [v5 setFrame:{sub_100058728(v6, v7, v8, v9, v3[8], v3[9])}];
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_specs);
  v3 = *&self->artworkView[OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_specs];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(ContainerDetail.NavigationTitleView.ArtworkContainerView *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end