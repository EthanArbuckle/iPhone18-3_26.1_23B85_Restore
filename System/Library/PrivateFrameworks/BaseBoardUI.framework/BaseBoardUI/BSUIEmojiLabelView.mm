@interface BSUIEmojiLabelView
- (BSUIEmojiLabelView)initWithFrame:(CGRect)a3;
@end

@implementation BSUIEmojiLabelView

- (BSUIEmojiLabelView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(BSUIPartialStylingLabelView *)self initWithTokenType:0];
  v8 = v7;
  if (v7)
  {
    [(BSUIEmojiLabelView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

@end