@interface SecondaryLabelStackLabel
- (_TtC7Measure24SecondaryLabelStackLabel)initWithFrame:(CGRect)frame;
@end

@implementation SecondaryLabelStackLabel

- (_TtC7Measure24SecondaryLabelStackLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  height = [(ViewWithInteractiveLabel *)&v14 initWithFrame:x, y, width, height];
  sub_1000ECDC0();
  v9 = v8;
  v11 = v10;
  v12 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
  [*(&height->super.super.super.super.isa + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setFont:v8];
  [*(&height->super.super.super.super.isa + v12) setTextColor:v11];

  return height;
}

@end