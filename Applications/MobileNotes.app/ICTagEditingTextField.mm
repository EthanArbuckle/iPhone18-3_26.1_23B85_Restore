@interface ICTagEditingTextField
- (ICTagEditingTextField)initWithCoder:(id)a3;
- (ICTagEditingTextField)initWithFrame:(CGRect)a3;
@end

@implementation ICTagEditingTextField

- (ICTagEditingTextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TagEditingTextField();
  return [(ICTagEditingTextField *)&v8 initWithFrame:x, y, width, height];
}

- (ICTagEditingTextField)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TagEditingTextField();
  v4 = a3;
  v5 = [(ICTagEditingTextField *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end