@interface AISAppleIDMicaView
- (_TtC14AppleIDSetupUI18AISAppleIDMicaView)initWithCoder:(id)a3;
- (_TtC14AppleIDSetupUI18AISAppleIDMicaView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AISAppleIDMicaView

- (_TtC14AppleIDSetupUI18AISAppleIDMicaView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUI18AISAppleIDMicaView_micaPlayer) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AISAppleIDMicaView();
  v4 = a3;
  v5 = [(AISAppleIDMicaView *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_24091E5A4();
  }

  return v6;
}

- (_TtC14AppleIDSetupUI18AISAppleIDMicaView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUI18AISAppleIDMicaView_micaPlayer) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AISAppleIDMicaView();
  v7 = [(AISAppleIDMicaView *)&v9 initWithFrame:x, y, width, height];
  sub_24091E5A4();

  return v7;
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
    v5 = [v2 layer];
    [v4 moveAndResizeWithinParentLayer:v5 usingGravity:*MEMORY[0x277CDA710] animate:0];

    v2 = v5;
  }
}

@end