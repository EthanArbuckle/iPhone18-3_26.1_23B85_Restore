@interface MFComposeSubjectTextView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (MFComposeSubjectTextView)initWithFrame:(CGRect)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
@end

@implementation MFComposeSubjectTextView

- (MFComposeSubjectTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MFComposeSubjectTextView;
  v3 = [(MFComposeSubjectTextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFComposeSubjectTextView *)v3 setSupportsAdaptiveImageGlyph:0];
  }

  return v4;
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  if (!IsAccessibilityCategory)
  {
    v8.receiver = self;
    v8.super_class = MFComposeSubjectTextView;
    [(MFComposeSubjectTextView *)&v8 setContentOffset:x, y];
  }
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = cleanupSubjectString(v7, 0);

  v9.receiver = self;
  v9.super_class = MFComposeSubjectTextView;
  [(MFComposeSubjectTextView *)&v9 setMarkedText:v8 selectedRange:location, length];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_selectAll_ == a3)
  {
    v8 = [(MFComposeSubjectTextView *)self text];
    v9 = [v8 length];

    if (v9)
    {
      [(MFComposeSubjectTextView *)self selectedRange];
      v7 = v10 < v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MFComposeSubjectTextView;
    v7 = [(MFComposeSubjectTextView *)&v12 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

@end