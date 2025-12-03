@interface NoThumbUISlider
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (_TtC7Journal15NoThumbUISlider)initWithCoder:(id)coder;
- (_TtC7Journal15NoThumbUISlider)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation NoThumbUISlider

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = bounds.size.height;
  v9 = bounds.size.width;
  v10 = bounds.origin.y;
  v11 = bounds.origin.x;
  v30.receiver = self;
  v30.super_class = type metadata accessor for NoThumbUISlider();
  v12 = v30.receiver;
  [(NoThumbUISlider *)&v30 thumbRectForBounds:v11 trackRect:v10 value:v9, v8, x, y, width, height, LODWORD(value)];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v29 = v19;
  v20 = v17 * 0.5;
  [v12 maximumValue];
  LODWORD(v8) = v21;
  [v12 minimumValue];
  LODWORD(v9) = v22;

  v23 = v14 + (v20 + v20) * (value / (*&v8 - *&v9)) - v20;
  v24 = v16;
  v25 = v18;
  v26 = v29;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10080CB0C();
}

- (_TtC7Journal15NoThumbUISlider)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NoThumbUISlider();
  return [(NoThumbUISlider *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal15NoThumbUISlider)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoThumbUISlider();
  coderCopy = coder;
  v5 = [(NoThumbUISlider *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end