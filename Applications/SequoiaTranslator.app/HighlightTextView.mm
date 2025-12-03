@interface HighlightTextView
- (_TtC17SequoiaTranslator17HighlightTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation HighlightTextView

- (_TtC17SequoiaTranslator17HighlightTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  v10 = sub_100110940(container, x, y, width, height);

  return v10;
}

@end