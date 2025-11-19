@interface EmptyActivityPlaceholderView
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC17SequoiaTranslator28EmptyActivityPlaceholderView)initWithCoder:(id)a3;
- (_TtC17SequoiaTranslator28EmptyActivityPlaceholderView)initWithFrame:(CGRect)a3;
@end

@implementation EmptyActivityPlaceholderView

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_TtC17SequoiaTranslator28EmptyActivityPlaceholderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmptyActivityPlaceholderView();
  return [(EmptyActivityPlaceholderView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC17SequoiaTranslator28EmptyActivityPlaceholderView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmptyActivityPlaceholderView();
  v4 = a3;
  v5 = [(EmptyActivityPlaceholderView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end