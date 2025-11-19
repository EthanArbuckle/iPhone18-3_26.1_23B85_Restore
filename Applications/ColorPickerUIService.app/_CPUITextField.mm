@interface _CPUITextField
- (_TtC20ColorPickerUIServiceP33_B2FE14F7DB151A9888581FFCE687814914_CPUITextField)initWithCoder:(id)a3;
- (_TtC20ColorPickerUIServiceP33_B2FE14F7DB151A9888581FFCE687814914_CPUITextField)initWithFrame:(CGRect)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)tintColorDidChange;
@end

@implementation _CPUITextField

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for _CPUITextField();
  v2 = v6.receiver;
  [(_CPUITextField *)&v6 tintColorDidChange];
  v3 = [v2 inputAccessoryView];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 tintColor];
    [v4 setTintColor:v5];
  }
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100003494(a3);
  swift_unknownObjectRelease();
}

- (_TtC20ColorPickerUIServiceP33_B2FE14F7DB151A9888581FFCE687814914_CPUITextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _CPUITextField();
  return [(_CPUITextField *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20ColorPickerUIServiceP33_B2FE14F7DB151A9888581FFCE687814914_CPUITextField)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _CPUITextField();
  v4 = a3;
  v5 = [(_CPUITextField *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end