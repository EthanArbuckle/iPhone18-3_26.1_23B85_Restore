@interface AEHighlightedTextLabelTextView
- (AEHighlightedTextLabelTextView)initWithFrame:(CGRect)frame;
- (AEHighlightedTextLabelTextViewDelegate)delegate;
- (void)drawRect:(CGRect)rect;
- (void)setFrame:(CGRect)frame;
@end

@implementation AEHighlightedTextLabelTextView

- (AEHighlightedTextLabelTextView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AEHighlightedTextLabelTextView;
  v3 = [(AEHighlightedTextLabelTextView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AEHighlightedTextLabelTextView *)v3 setContentMode:3];
  }

  return v4;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  areAnimationsEnabled = [objc_opt_class() areAnimationsEnabled];
  [objc_opt_class() setAnimationsEnabled:0];
  v9.receiver = self;
  v9.super_class = AEHighlightedTextLabelTextView;
  [(AEHighlightedTextLabelTextView *)&v9 setFrame:x, y, width, height];
  [objc_opt_class() setAnimationsEnabled:areAnimationsEnabled];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9.receiver = self;
  v9.super_class = AEHighlightedTextLabelTextView;
  [(AEHighlightedTextLabelTextView *)&v9 drawRect:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained drawLabelInRect:{x, y, width, height}];
}

- (AEHighlightedTextLabelTextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end