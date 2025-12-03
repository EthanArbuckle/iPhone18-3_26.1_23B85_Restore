@interface ContainerDetail.NavigationTitleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCV5Music15ContainerDetail19NavigationTitleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ContainerDetail.NavigationTitleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003C41C4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (self->isContentVisible[OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_contentView] == 255)
  {
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_contentView) sizeThatFits:{fits.width, fits.height, v3, v4}];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (_TtCV5Music15ContainerDetail19NavigationTitleView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end