@interface AXTwiceWatchCrownButton
- (_TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton)initWithCoder:(id)coder;
- (_TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton)initWithFrame:(CGRect)frame;
- (void)accessibilityElementDidLoseFocus;
@end

@implementation AXTwiceWatchCrownButton

- (void)accessibilityElementDidLoseFocus
{
  selfCopy = self;
  sub_23D6D4CA0();
}

- (_TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchInterval) = 0x3FF0000000000000;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AXTwiceWatchCrownButton();
  return [(AXTwiceWatchCrownButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchInterval) = 0x3FF0000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AXTwiceWatchCrownButton();
  coderCopy = coder;
  v5 = [(AXTwiceWatchCrownButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end