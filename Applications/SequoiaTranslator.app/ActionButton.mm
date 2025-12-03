@interface ActionButton
- (_TtC17SequoiaTranslator12ActionButton)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator12ActionButton)initWithFrame:(CGRect)frame;
@end

@implementation ActionButton

- (_TtC17SequoiaTranslator12ActionButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ActionButton();
  return [(ActionButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC17SequoiaTranslator12ActionButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActionButton();
  coderCopy = coder;
  v5 = [(ActionButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end