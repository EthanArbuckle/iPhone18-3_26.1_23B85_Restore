@interface ShadowView
- (_TtC23ShelfKitCollectionViews10ShadowView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ShadowView

- (void)layoutSubviews
{
  v2 = self;
  sub_2BF7D4();
}

- (_TtC23ShelfKitCollectionViews10ShadowView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerRadius) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerStyle) = 1;
  v8 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow);
  v9 = type metadata accessor for ShadowView();
  *v8 = 0u;
  v8[1] = 0u;
  v11.receiver = self;
  v11.super_class = v9;
  return [(ShadowView *)&v11 initWithFrame:x, y, width, height];
}

@end