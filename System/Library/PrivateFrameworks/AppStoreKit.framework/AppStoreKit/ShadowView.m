@interface ShadowView
- (_TtC11AppStoreKit10ShadowView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ShadowView

- (void)layoutSubviews
{
  v2 = self;
  sub_1E18B63D4();
}

- (_TtC11AppStoreKit10ShadowView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerRadius) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerStyle) = 1;
  v7 = self + OBJC_IVAR____TtC11AppStoreKit10ShadowView_previousBounds;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = (self + OBJC_IVAR____TtC11AppStoreKit10ShadowView_shadow);
  *v8 = 0u;
  v8[1] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit10ShadowView_shouldAnimateBoundsChange) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ShadowView();
  return [(ShadowView *)&v10 initWithFrame:x, y, width, height];
}

@end