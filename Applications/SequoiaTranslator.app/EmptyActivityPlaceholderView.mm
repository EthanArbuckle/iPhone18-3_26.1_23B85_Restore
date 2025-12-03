@interface EmptyActivityPlaceholderView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC17SequoiaTranslator28EmptyActivityPlaceholderView)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator28EmptyActivityPlaceholderView)initWithFrame:(CGRect)frame;
@end

@implementation EmptyActivityPlaceholderView

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_TtC17SequoiaTranslator28EmptyActivityPlaceholderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmptyActivityPlaceholderView();
  return [(EmptyActivityPlaceholderView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC17SequoiaTranslator28EmptyActivityPlaceholderView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmptyActivityPlaceholderView();
  coderCopy = coder;
  v5 = [(EmptyActivityPlaceholderView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end