@interface FMSubtitleLabel
- (NSString)accessibilityLabel;
- (_TtC6FindMy15FMSubtitleLabel)initWithCoder:(id)coder;
- (_TtC6FindMy15FMSubtitleLabel)initWithFrame:(CGRect)frame;
@end

@implementation FMSubtitleLabel

- (_TtC6FindMy15FMSubtitleLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMSubtitleLabel();
  return [(FMSubtitleLabel *)&v8 initWithFrame:x, y, width, height];
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
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

- (_TtC6FindMy15FMSubtitleLabel)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMSubtitleLabel();
  coderCopy = coder;
  v5 = [(FMSubtitleLabel *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end