@interface ICTagEditingTextField
- (ICTagEditingTextField)initWithCoder:(id)coder;
- (ICTagEditingTextField)initWithFrame:(CGRect)frame;
@end

@implementation ICTagEditingTextField

- (ICTagEditingTextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TagEditingTextField();
  return [(ICTagEditingTextField *)&v8 initWithFrame:x, y, width, height];
}

- (ICTagEditingTextField)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TagEditingTextField();
  coderCopy = coder;
  v5 = [(ICTagEditingTextField *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end