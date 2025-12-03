@interface MacLeftButton
- (_TtC8BusinessP33_5C9C658DE8F7DD0151CD16655D6CBEF813MacLeftButton)initWithCoder:(id)coder;
- (_TtC8BusinessP33_5C9C658DE8F7DD0151CD16655D6CBEF813MacLeftButton)initWithFrame:(CGRect)frame;
@end

@implementation MacLeftButton

- (_TtC8BusinessP33_5C9C658DE8F7DD0151CD16655D6CBEF813MacLeftButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MacLeftButton();
  return [(MacLeftButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8BusinessP33_5C9C658DE8F7DD0151CD16655D6CBEF813MacLeftButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MacLeftButton();
  coderCopy = coder;
  v5 = [(MacLeftButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end