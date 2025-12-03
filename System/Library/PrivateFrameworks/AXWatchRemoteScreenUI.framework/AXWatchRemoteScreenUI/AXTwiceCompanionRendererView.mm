@interface AXTwiceCompanionRendererView
- (_TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AXTwiceCompanionRendererView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_23D6D2AE0();
}

- (_TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer) = 0;
  swift_unknownObjectWeakInit();
  sub_23D6EE5E0();
  v8 = sub_23D6EE560();
  v9 = MEMORY[0x23EEE8CF0]();

  v10 = 0.23;
  if (v9)
  {
    v10 = 0.29;
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_cornerRadiusRatio) = v10;
  v12.receiver = self;
  v12.super_class = type metadata accessor for AXTwiceCompanionRendererView();
  return [(AXTwiceCompanionRendererView *)&v12 initWithFrame:x, y, width, height];
}

@end