@interface BadgeLabel
- (UIColor)textColor;
- (_TtC16MusicApplication10BadgeLabel)initWithCoder:(id)a3;
- (_TtC16MusicApplication10BadgeLabel)initWithFrame:(CGRect)a3;
- (void)setTextColor:(id)a3;
@end

@implementation BadgeLabel

- (_TtC16MusicApplication10BadgeLabel)initWithCoder:(id)a3
{
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (UIColor)textColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BadgeLabel();
  v2 = [(BadgeLabel *)&v4 textColor];

  return v2;
}

- (void)setTextColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BadgeLabel();
  v4 = a3;
  v5 = v6.receiver;
  [(BadgeLabel *)&v6 setTextColor:v4];
  sub_272AC0();
}

- (_TtC16MusicApplication10BadgeLabel)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end