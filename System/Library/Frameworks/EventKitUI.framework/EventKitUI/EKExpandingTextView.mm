@interface EKExpandingTextView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (EKExpandingTextView)initWithFrame:(CGRect)a3;
- (void)_updatePlaceholder;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setFont:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
@end

@implementation EKExpandingTextView

- (EKExpandingTextView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = EKExpandingTextView;
  v3 = [(EKExpandingTextView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(EKExpandingTextView *)v3 textLayoutManager];
    v6 = [v5 textContainer];
    v7 = [v6 layoutManager];
    [v7 setLimitsLayoutForSuspiciousContents:1];

    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    placeholderLabel = v4->_placeholderLabel;
    v4->_placeholderLabel = v9;

    v11 = [MEMORY[0x1E69DC888] lightGrayColor];
    [(UILabel *)v4->_placeholderLabel setTextColor:v11];

    [(EKExpandingTextView *)v4 addSubview:v4->_placeholderLabel];
    [(EKExpandingTextView *)v4 setScrollEnabled:0];
    [(EKExpandingTextView *)v4 setShowsVerticalScrollIndicator:0];
    v4->_allowEnclosingViewScroll = 1;
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v4 selector:sel__updatePlaceholder name:*MEMORY[0x1E69DE750] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE750] object:0];

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

  v11 = [(EKExpandingTextView *)self font];
  [v11 pointSize];
  *&v12 = v12 * 0.5;
  v13 = roundf(*&v12);

  [(UILabel *)self->_placeholderLabel setFrame:v4, v6 + v13, v8 + -10.0, v10 - v13];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (-[EKExpandingTextView isFirstResponder](self, "isFirstResponder") && ![v7 type])
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
    v8 = [(EKExpandingTextView *)&v11 pointInside:v7 withEvent:x, y];
  }

  v9 = v8;

  return v9;
}

- (void)_updatePlaceholder
{
  v3 = [(EKExpandingTextView *)self hasText];
  placeholderLabel = self->_placeholderLabel;

  [(UILabel *)placeholderLabel setHidden:v3];
}

- (void)setAttributedText:(id)a3
{
  v4.receiver = self;
  v4.super_class = EKExpandingTextView;
  [(EKExpandingTextView *)&v4 setAttributedText:a3];
  [(EKExpandingTextView *)self _updatePlaceholder];
}

- (void)setFont:(id)a3
{
  v5.receiver = self;
  v5.super_class = EKExpandingTextView;
  v4 = a3;
  [(EKExpandingTextView *)&v5 setFont:v4];
  [(UILabel *)self->_placeholderLabel setFont:v4, v5.receiver, v5.super_class];
}

- (void)setTextAlignment:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = EKExpandingTextView;
  [(EKExpandingTextView *)&v5 setTextAlignment:?];
  [(UILabel *)self->_placeholderLabel setTextAlignment:a3];
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = EKExpandingTextView;
  v4 = a3;
  [(EKExpandingTextView *)&v5 setBackgroundColor:v4];
  [(UILabel *)self->_placeholderLabel setBackgroundColor:v4, v5.receiver, v5.super_class];
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(EKExpandingTextView *)self contentSize];
  v7 = v6;
  v17.receiver = self;
  v17.super_class = EKExpandingTextView;
  [(EKExpandingTextView *)&v17 setContentSize:width, height];
  v8 = [(EKExpandingTextView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(EKExpandingTextView *)self delegate];
    v11 = [v10 textViewShouldSignalContentSizeChange:self];

    if (v11)
    {
      v12 = vabdd_f64(v7, height);
      v13 = [(EKExpandingTextView *)self font];
      [v13 lineHeight];
      v15 = v14;

      if (v12 > v15)
      {
        v16 = [(EKExpandingTextView *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v16 textViewDidChangeContentHeight:self];
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
      v11 = [(EKExpandingTextView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v11 textViewDidChangeContentHeight:self];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
      v14 = [(EKExpandingTextView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v14 textViewDidChangeContentHeight:self];
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_toggleItalics_ == a3)
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