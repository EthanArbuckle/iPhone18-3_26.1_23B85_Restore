@interface AVMobileGlassBackgroundView
- (AVMobileGlassBackgroundView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)setActive:(BOOL)a3;
- (void)setEmphasized:(BOOL)a3;
@end

@implementation AVMobileGlassBackgroundView

- (void)setActive:(BOOL)a3
{
  v4 = self;
  sub_18B4AAAA0(a3);
}

- (void)setEmphasized:(BOOL)a3
{
  v4 = self;
  sub_18B4AABB4(a3);
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_18B4AAD4C();
}

- (AVMobileGlassBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVMobileGlassBackgroundView_active) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVMobileGlassBackgroundView_activeColorAlpha) = 0x3FD999999999999ALL;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVMobileGlassBackgroundView_emphasized) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVMobileGlassBackgroundView_emphasizedColorAlpha) = 0x3FA999999999999ALL;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVMobileGlassBackgroundView_wantsCapsuleShape) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AVMobileGlassBackgroundView();
  v7 = [(AVView *)&v9 initWithFrame:x, y, width, height];
  [(AVView *)v7 setIgnoresTouches:1];
  return v7;
}

@end