@interface BadgeLabel
- (UIColor)textColor;
- (_TtC16MusicApplication10BadgeLabel)initWithCoder:(id)coder;
- (_TtC16MusicApplication10BadgeLabel)initWithFrame:(CGRect)frame;
- (void)setTextColor:(id)color;
@end

@implementation BadgeLabel

- (_TtC16MusicApplication10BadgeLabel)initWithCoder:(id)coder
{
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (UIColor)textColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BadgeLabel();
  textColor = [(BadgeLabel *)&v4 textColor];

  return textColor;
}

- (void)setTextColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BadgeLabel();
  colorCopy = color;
  v5 = v6.receiver;
  [(BadgeLabel *)&v6 setTextColor:colorCopy];
  sub_272AC0();
}

- (_TtC16MusicApplication10BadgeLabel)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end