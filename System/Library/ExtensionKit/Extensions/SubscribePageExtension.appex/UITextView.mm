@interface UITextView
- (double)firstBaselineFromTop;
- (double)lastBaselineFromBottom;
@end

@implementation UITextView

- (double)firstBaselineFromTop
{
  selfCopy = self;
  layoutManager = [(UITextView *)selfCopy layoutManager];
  [(NSLayoutManager *)layoutManager baselineOffsetForGlyphAtIndex:0];
  v5 = v4;

  return v5;
}

- (double)lastBaselineFromBottom
{
  selfCopy = self;
  layoutManager = [(UITextView *)selfCopy layoutManager];
  textContainer = [(UITextView *)selfCopy textContainer];
  [(NSLayoutManager *)layoutManager usedRectForTextContainer:textContainer];
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