@interface UITextView
- (double)firstBaselineFromTop;
- (double)lastBaselineFromBottom;
@end

@implementation UITextView

- (double)firstBaselineFromTop
{
  v2 = self;
  v3 = [(UITextView *)v2 layoutManager];
  [(NSLayoutManager *)v3 baselineOffsetForGlyphAtIndex:0];
  v5 = v4;

  return v5;
}

- (double)lastBaselineFromBottom
{
  v2 = self;
  v3 = [(UITextView *)v2 layoutManager];
  v4 = [(UITextView *)v2 textContainer];
  [(NSLayoutManager *)v3 usedRectForTextContainer:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  MaxY = CGRectGetMaxY(v15);

  return MaxY;
}

@end