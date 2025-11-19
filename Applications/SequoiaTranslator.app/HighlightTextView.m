@interface HighlightTextView
- (_TtC17SequoiaTranslator17HighlightTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation HighlightTextView

- (_TtC17SequoiaTranslator17HighlightTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = sub_100110940(a4, x, y, width, height);

  return v10;
}

@end