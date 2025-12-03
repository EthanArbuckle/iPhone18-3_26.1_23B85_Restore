@interface MFComposeSubjectTextView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (MFComposeSubjectTextView)initWithFrame:(CGRect)frame;
- (void)setContentOffset:(CGPoint)offset;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
@end

@implementation MFComposeSubjectTextView

- (MFComposeSubjectTextView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MFComposeSubjectTextView;
  v3 = [(MFComposeSubjectTextView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFComposeSubjectTextView *)v3 setSupportsAdaptiveImageGlyph:0];
  }

  return v4;
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    v8.receiver = self;
    v8.super_class = MFComposeSubjectTextView;
    [(MFComposeSubjectTextView *)&v8 setContentOffset:x, y];
  }
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v8 = cleanupSubjectString(textCopy, 0);

  v9.receiver = self;
  v9.super_class = MFComposeSubjectTextView;
  [(MFComposeSubjectTextView *)&v9 setMarkedText:v8 selectedRange:location, length];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_selectAll_ == action)
  {
    text = [(MFComposeSubjectTextView *)self text];
    v9 = [text length];

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
    v7 = [(MFComposeSubjectTextView *)&v12 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

@end