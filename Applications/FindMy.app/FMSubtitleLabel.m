@interface FMSubtitleLabel
- (NSString)accessibilityLabel;
- (_TtC6FindMy15FMSubtitleLabel)initWithCoder:(id)a3;
- (_TtC6FindMy15FMSubtitleLabel)initWithFrame:(CGRect)a3;
@end

@implementation FMSubtitleLabel

- (_TtC6FindMy15FMSubtitleLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMSubtitleLabel();
  return [(FMSubtitleLabel *)&v8 initWithFrame:x, y, width, height];
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_1003E5204();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC6FindMy15FMSubtitleLabel)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMSubtitleLabel();
  v4 = a3;
  v5 = [(FMSubtitleLabel *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end