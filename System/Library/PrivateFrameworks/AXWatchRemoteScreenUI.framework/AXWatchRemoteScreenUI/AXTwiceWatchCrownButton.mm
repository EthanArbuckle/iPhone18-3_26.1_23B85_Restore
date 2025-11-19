@interface AXTwiceWatchCrownButton
- (_TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton)initWithCoder:(id)a3;
- (_TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton)initWithFrame:(CGRect)a3;
- (void)accessibilityElementDidLoseFocus;
@end

@implementation AXTwiceWatchCrownButton

- (void)accessibilityElementDidLoseFocus
{
  v2 = self;
  sub_23D6D4CA0();
}

- (_TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchInterval) = 0x3FF0000000000000;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AXTwiceWatchCrownButton();
  return [(AXTwiceWatchCrownButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchInterval) = 0x3FF0000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AXTwiceWatchCrownButton();
  v4 = a3;
  v5 = [(AXTwiceWatchCrownButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end