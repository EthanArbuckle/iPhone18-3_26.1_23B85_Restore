@interface SecondaryLabelStackLabel
- (_TtC7Measure24SecondaryLabelStackLabel)initWithFrame:(CGRect)a3;
@end

@implementation SecondaryLabelStackLabel

- (_TtC7Measure24SecondaryLabelStackLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v7 = [(ViewWithInteractiveLabel *)&v14 initWithFrame:x, y, width, height];
  sub_1000ECDC0();
  v9 = v8;
  v11 = v10;
  v12 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
  [*(&v7->super.super.super.super.isa + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setFont:v8];
  [*(&v7->super.super.super.super.isa + v12) setTextColor:v11];

  return v7;
}

@end