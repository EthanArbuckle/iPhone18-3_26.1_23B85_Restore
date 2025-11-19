@interface PrefixedLabel
- (NSString)text;
- (_TtC7Measure13PrefixedLabel)init;
- (_TtC7Measure13PrefixedLabel)initWithCoder:(id)a3;
- (_TtC7Measure13PrefixedLabel)initWithFrame:(CGRect)a3;
- (void)setText:(id)a3;
@end

@implementation PrefixedLabel

- (NSString)text
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setText:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_10006EC50(v4, v6);
}

- (_TtC7Measure13PrefixedLabel)init
{
  v2 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure13PrefixedLabel_prefix);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v4.receiver = self;
  v4.super_class = type metadata accessor for PrefixedLabel();
  return [(PrefixedLabel *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC7Measure13PrefixedLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure13PrefixedLabel_prefix);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PrefixedLabel();
  return [(PrefixedLabel *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC7Measure13PrefixedLabel)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure13PrefixedLabel_prefix);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PrefixedLabel();
  v5 = a3;
  v6 = [(PrefixedLabel *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end