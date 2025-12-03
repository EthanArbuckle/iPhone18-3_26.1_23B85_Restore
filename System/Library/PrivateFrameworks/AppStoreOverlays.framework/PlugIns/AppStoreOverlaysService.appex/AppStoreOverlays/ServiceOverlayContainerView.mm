@interface ServiceOverlayContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23AppStoreOverlaysService27ServiceOverlayContainerView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
@end

@implementation ServiceOverlayContainerView

- (_TtC23AppStoreOverlaysService27ServiceOverlayContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_contentView) = 0;
  result = sub_100018588();
  __break(1u);
  return result;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_100011404(view);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100010FF0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_100011230(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end