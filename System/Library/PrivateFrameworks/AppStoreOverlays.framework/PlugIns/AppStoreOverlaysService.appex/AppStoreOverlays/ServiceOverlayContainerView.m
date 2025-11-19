@interface ServiceOverlayContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC23AppStoreOverlaysService27ServiceOverlayContainerView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
@end

@implementation ServiceOverlayContainerView

- (_TtC23AppStoreOverlaysService27ServiceOverlayContainerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_contentView) = 0;
  result = sub_100018588();
  __break(1u);
  return result;
}

- (void)setContentView:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_100011404(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100010FF0();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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