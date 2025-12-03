@interface AISAppleIDMicaView
- (_TtC14AppleIDSetupUI18AISAppleIDMicaView)initWithCoder:(id)coder;
- (_TtC14AppleIDSetupUI18AISAppleIDMicaView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AISAppleIDMicaView

- (_TtC14AppleIDSetupUI18AISAppleIDMicaView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUI18AISAppleIDMicaView_micaPlayer) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AISAppleIDMicaView();
  coderCopy = coder;
  v5 = [(AISAppleIDMicaView *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_24091E5A4();
  }

  return v6;
}

- (_TtC14AppleIDSetupUI18AISAppleIDMicaView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUI18AISAppleIDMicaView_micaPlayer) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AISAppleIDMicaView();
  height = [(AISAppleIDMicaView *)&v9 initWithFrame:x, y, width, height];
  sub_24091E5A4();

  return height;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AISAppleIDMicaView();
  v2 = v6.receiver;
  [(AISAppleIDMicaView *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC14AppleIDSetupUI18AISAppleIDMicaView_micaPlayer];
  if (v3)
  {
    v4 = v3;
    layer = [v2 layer];
    [v4 moveAndResizeWithinParentLayer:layer usingGravity:*MEMORY[0x277CDA710] animate:0];

    v2 = layer;
  }
}

@end