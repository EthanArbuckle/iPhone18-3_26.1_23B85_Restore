@interface ContainerDetail.NavigationTitleView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCV5Music15ContainerDetail19NavigationTitleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ContainerDetail.NavigationTitleView

- (void)layoutSubviews
{
  v2 = self;
  sub_1003C41C4();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self->isContentVisible[OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_contentView] == 255)
  {
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_contentView) sizeThatFits:{a3.width, a3.height, v3, v4}];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (_TtCV5Music15ContainerDetail19NavigationTitleView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end