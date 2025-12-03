@interface BSUIEmojiLabelView
- (BSUIEmojiLabelView)initWithFrame:(CGRect)frame;
@end

@implementation BSUIEmojiLabelView

- (BSUIEmojiLabelView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(BSUIPartialStylingLabelView *)self initWithTokenType:0];
  v8 = v7;
  if (v7)
  {
    [(BSUIEmojiLabelView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

@end