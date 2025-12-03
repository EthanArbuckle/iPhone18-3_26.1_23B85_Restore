@interface ShadowView
- (_TtC23ShelfKitCollectionViews10ShadowView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ShadowView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2BF7D4();
}

- (_TtC23ShelfKitCollectionViews10ShadowView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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