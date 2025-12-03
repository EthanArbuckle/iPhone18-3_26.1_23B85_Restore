@interface EKExpandingTextView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (EKExpandingTextView)initWithFrame:(CGRect)frame;
- (void)_updatePlaceholder;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAttributedText:(id)text;
- (void)setBackgroundColor:(id)color;
- (void)setContentSize:(CGSize)size;
- (void)setFont:(id)font;
- (void)setTextAlignment:(int64_t)alignment;
@end

@implementation EKExpandingTextView

- (EKExpandingTextView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = EKExpandingTextView;
  v3 = [(EKExpandingTextView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    textLayoutManager = [(EKExpandingTextView *)v3 textLayoutManager];
    textContainer = [textLayoutManager textContainer];
    layoutManager = [textContainer layoutManager];
    [layoutManager setLimitsLayoutForSuspiciousContents:1];

    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    placeholderLabel = v4->_placeholderLabel;
    v4->_placeholderLabel = v9;

    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    [(UILabel *)v4->_placeholderLabel setTextColor:lightGrayColor];

    [(EKExpandingTextView *)v4 addSubview:v4->_placeholderLabel];
    [(EKExpandingTextView *)v4 setScrollEnabled:0];
    [(EKExpandingTextView *)v4 setShowsVerticalScrollIndicator:0];
    v4->_allowEnclosingViewScroll = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__updatePlaceholder name:*MEMORY[0x1E69DE750] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE750] object:0];

  v4.receiver = self;
  v4.super_class = EKExpandingTextView;
  [(EKExpandingTextView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = EKExpandingTextView;
  [(EKExpandingTextView *)&v14 layoutSubviews];
  [(EKExpandingTextView *)self visibleTextRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(EKExpandingTextView *)self textAlignment])
  {
    v4 = v4 + 10.0;
  }

  font = [(EKExpandingTextView *)self font];
  [font pointSize];
  *&v12 = v12 * 0.5;
  v13 = roundf(*&v12);

  [(UILabel *)self->_placeholderLabel setFrame:v4, v6 + v13, v8 + -10.0, v10 - v13];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if (-[EKExpandingTextView isFirstResponder](self, "isFirstResponder") && ![eventCopy type])
  {
    [(EKExpandingTextView *)self bounds];
    v14 = CGRectInset(v13, 0.0, -20.0);
    v12.x = x;
    v12.y = y;
    v8 = CGRectContainsPoint(v14, v12);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = EKExpandingTextView;
    v8 = [(EKExpandingTextView *)&v11 pointInside:eventCopy withEvent:x, y];
  }

  v9 = v8;

  return v9;
}

- (void)_updatePlaceholder
{
  hasText = [(EKExpandingTextView *)self hasText];
  placeholderLabel = self->_placeholderLabel;

  [(UILabel *)placeholderLabel setHidden:hasText];
}

- (void)setAttributedText:(id)text
{
  v4.receiver = self;
  v4.super_class = EKExpandingTextView;
  [(EKExpandingTextView *)&v4 setAttributedText:text];
  [(EKExpandingTextView *)self _updatePlaceholder];
}

- (void)setFont:(id)font
{
  v5.receiver = self;
  v5.super_class = EKExpandingTextView;
  fontCopy = font;
  [(EKExpandingTextView *)&v5 setFont:fontCopy];
  [(UILabel *)self->_placeholderLabel setFont:fontCopy, v5.receiver, v5.super_class];
}

- (void)setTextAlignment:(int64_t)alignment
{
  v5.receiver = self;
  v5.super_class = EKExpandingTextView;
  [(EKExpandingTextView *)&v5 setTextAlignment:?];
  [(UILabel *)self->_placeholderLabel setTextAlignment:alignment];
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = EKExpandingTextView;
  colorCopy = color;
  [(EKExpandingTextView *)&v5 setBackgroundColor:colorCopy];
  [(UILabel *)self->_placeholderLabel setBackgroundColor:colorCopy, v5.receiver, v5.super_class];
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(EKExpandingTextView *)self contentSize];
  v7 = v6;
  v17.receiver = self;
  v17.super_class = EKExpandingTextView;
  [(EKExpandingTextView *)&v17 setContentSize:width, height];
  delegate = [(EKExpandingTextView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(EKExpandingTextView *)self delegate];
    v11 = [delegate2 textViewShouldSignalContentSizeChange:self];

    if (v11)
    {
      v12 = vabdd_f64(v7, height);
      font = [(EKExpandingTextView *)self font];
      [font lineHeight];
      v15 = v14;

      if (v12 > v15)
      {
        delegate3 = [(EKExpandingTextView *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate3 textViewDidChangeContentHeight:self];
        }
      }
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v14.receiver = self;
  v14.super_class = EKExpandingTextView;
  [(EKExpandingTextView *)&v14 intrinsicContentSize];
  v5 = v4;
  v6 = v3;
  height = self->_previousIntrinsicContentSize.height;
  if (v5 != self->_previousIntrinsicContentSize.width || v3 != height)
  {
    v9 = height;
    v10 = v3;
    if (vabds_f32(v9, v10) >= 0.00000011921)
    {
      delegate = [(EKExpandingTextView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate textViewDidChangeContentHeight:self];
      }
    }

    self->_previousIntrinsicContentSize.width = v5;
    self->_previousIntrinsicContentSize.height = v6;
  }

  v12 = v5;
  v13 = v6;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v18.receiver = self;
  v18.super_class = EKExpandingTextView;
  [(EKExpandingTextView *)&v18 sizeThatFits:?];
  if (v6 > width)
  {
    v17.receiver = self;
    v17.super_class = EKExpandingTextView;
    [(EKExpandingTextView *)&v17 sizeThatFits:width + -5.0, height];
  }

  v8 = v6;
  v9 = v7;
  v10 = self->_previousSizeThatFits.height;
  if (v8 != self->_previousSizeThatFits.width || v7 != v10)
  {
    v12 = v10;
    v13 = v7;
    if (vabds_f32(v12, v13) >= 0.00000011921)
    {
      delegate = [(EKExpandingTextView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate textViewDidChangeContentHeight:self];
      }
    }

    self->_previousSizeThatFits.width = v8;
    self->_previousSizeThatFits.height = v9;
  }

  v15 = v8;
  v16 = v9;
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_toggleItalics_ == action)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = EKExpandingTextView;
  return [EKExpandingTextView canPerformAction:sel_canPerformAction_withSender_ withSender:?];
}

@end