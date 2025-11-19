@interface AEHighlightedTextLabelTextView
- (AEHighlightedTextLabelTextView)initWithFrame:(CGRect)a3;
- (AEHighlightedTextLabelTextViewDelegate)delegate;
- (void)drawRect:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation AEHighlightedTextLabelTextView

- (AEHighlightedTextLabelTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AEHighlightedTextLabelTextView;
  v3 = [(AEHighlightedTextLabelTextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AEHighlightedTextLabelTextView *)v3 setContentMode:3];
  }

  return v4;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [objc_opt_class() areAnimationsEnabled];
  [objc_opt_class() setAnimationsEnabled:0];
  v9.receiver = self;
  v9.super_class = AEHighlightedTextLabelTextView;
  [(AEHighlightedTextLabelTextView *)&v9 setFrame:x, y, width, height];
  [objc_opt_class() setAnimationsEnabled:v8];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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