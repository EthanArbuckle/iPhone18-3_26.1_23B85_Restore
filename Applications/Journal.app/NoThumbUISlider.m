@interface NoThumbUISlider
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (_TtC7Journal15NoThumbUISlider)initWithCoder:(id)a3;
- (_TtC7Journal15NoThumbUISlider)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation NoThumbUISlider

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v30.receiver = self;
  v30.super_class = type metadata accessor for NoThumbUISlider();
  v12 = v30.receiver;
  [(NoThumbUISlider *)&v30 thumbRectForBounds:v11 trackRect:v10 value:v9, v8, x, y, width, height, LODWORD(a5)];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v29 = v19;
  v20 = v17 * 0.5;
  [v12 maximumValue];
  LODWORD(v8) = v21;
  [v12 minimumValue];
  LODWORD(v9) = v22;

  v23 = v14 + (v20 + v20) * (a5 / (*&v8 - *&v9)) - v20;
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
  v2 = self;
  sub_10080CB0C();
}

- (_TtC7Journal15NoThumbUISlider)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NoThumbUISlider();
  return [(NoThumbUISlider *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal15NoThumbUISlider)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoThumbUISlider();
  v4 = a3;
  v5 = [(NoThumbUISlider *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end