@interface AVMobileGlassBackgroundView
- (AVMobileGlassBackgroundView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)setActive:(BOOL)active;
- (void)setEmphasized:(BOOL)emphasized;
@end

@implementation AVMobileGlassBackgroundView

- (void)setActive:(BOOL)active
{
  selfCopy = self;
  sub_18B4AAAA0(active);
}

- (void)setEmphasized:(BOOL)emphasized
{
  selfCopy = self;
  sub_18B4AABB4(emphasized);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_18B4AAD4C();
}

- (AVMobileGlassBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVMobileGlassBackgroundView_active) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVMobileGlassBackgroundView_activeColorAlpha) = 0x3FD999999999999ALL;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVMobileGlassBackgroundView_emphasized) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVMobileGlassBackgroundView_emphasizedColorAlpha) = 0x3FA999999999999ALL;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVMobileGlassBackgroundView_wantsCapsuleShape) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AVMobileGlassBackgroundView();
  height = [(AVView *)&v9 initWithFrame:x, y, width, height];
  [(AVView *)height setIgnoresTouches:1];
  return height;
}

@end