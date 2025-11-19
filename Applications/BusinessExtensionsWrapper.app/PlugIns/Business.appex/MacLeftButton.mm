@interface MacLeftButton
- (_TtC8BusinessP33_5C9C658DE8F7DD0151CD16655D6CBEF813MacLeftButton)initWithCoder:(id)a3;
- (_TtC8BusinessP33_5C9C658DE8F7DD0151CD16655D6CBEF813MacLeftButton)initWithFrame:(CGRect)a3;
@end

@implementation MacLeftButton

- (_TtC8BusinessP33_5C9C658DE8F7DD0151CD16655D6CBEF813MacLeftButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MacLeftButton();
  return [(MacLeftButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8BusinessP33_5C9C658DE8F7DD0151CD16655D6CBEF813MacLeftButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MacLeftButton();
  v4 = a3;
  v5 = [(MacLeftButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end