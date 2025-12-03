@interface _CPUITextField
- (_TtC20ColorPickerUIServiceP33_B2FE14F7DB151A9888581FFCE687814914_CPUITextField)initWithCoder:(id)coder;
- (_TtC20ColorPickerUIServiceP33_B2FE14F7DB151A9888581FFCE687814914_CPUITextField)initWithFrame:(CGRect)frame;
- (void)buildMenuWithBuilder:(id)builder;
- (void)tintColorDidChange;
@end

@implementation _CPUITextField

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for _CPUITextField();
  v2 = v6.receiver;
  [(_CPUITextField *)&v6 tintColorDidChange];
  inputAccessoryView = [v2 inputAccessoryView];
  if (inputAccessoryView)
  {
    v4 = inputAccessoryView;
    tintColor = [v2 tintColor];
    [v4 setTintColor:tintColor];
  }
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100003494(builder);
  swift_unknownObjectRelease();
}

- (_TtC20ColorPickerUIServiceP33_B2FE14F7DB151A9888581FFCE687814914_CPUITextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _CPUITextField();
  return [(_CPUITextField *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20ColorPickerUIServiceP33_B2FE14F7DB151A9888581FFCE687814914_CPUITextField)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _CPUITextField();
  coderCopy = coder;
  v5 = [(_CPUITextField *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end