@interface SLSheetTextComposeView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (SLSheetTextComposeView)initWithFrame:(CGRect)frame;
- (void)_assembleView;
- (void)layoutSubviews;
- (void)restoreKeyboard;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SLSheetTextComposeView

- (SLSheetTextComposeView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SLSheetTextComposeView;
  v3 = [(SLSheetTextComposeView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SLSheetTextComposeView *)v3 _assembleView];
  }

  return v4;
}

- (void)_assembleView
{
  [(SLSheetTextComposeView *)self setClipsToBounds:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(SLSheetTextComposeView *)self setBackgroundColor:clearColor];

  [(SLSheetTextComposeView *)self setOpaque:0];
  v4 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(SLSheetTextComposeView *)self setTextView:v4];

  textView = [(SLSheetTextComposeView *)self textView];
  [textView setClipsToBounds:0];

  textView2 = [(SLSheetTextComposeView *)self textView];
  [textView2 setAutoresizingMask:18];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  textView3 = [(SLSheetTextComposeView *)self textView];
  [textView3 setBackgroundColor:clearColor2];

  textView4 = [(SLSheetTextComposeView *)self textView];
  [textView4 setOpaque:0];

  textView5 = [(SLSheetTextComposeView *)self textView];
  [textView5 setContentMode:3];

  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  textView6 = [(SLSheetTextComposeView *)self textView];
  [textView6 setFont:v11];

  textView7 = [(SLSheetTextComposeView *)self textView];
  [textView7 setBounces:1];

  textView8 = [(SLSheetTextComposeView *)self textView];
  [textView8 setAlwaysBounceVertical:1];

  v15 = objc_opt_new();
  placeholderLabel = self->_placeholderLabel;
  self->_placeholderLabel = v15;

  [(UILabel *)self->_placeholderLabel setNumberOfLines:0];
  v17 = self->_placeholderLabel;
  textView9 = [(SLSheetTextComposeView *)self textView];
  font = [textView9 font];
  [(UILabel *)v17 setFont:font];

  v20 = self->_placeholderLabel;
  placeholderTextColor = [MEMORY[0x1E69DC888] placeholderTextColor];
  [(UILabel *)v20 setTextColor:placeholderTextColor];

  [(SLSheetTextComposeView *)self addSubview:self->_placeholderLabel];
  textView10 = [(SLSheetTextComposeView *)self textView];
  [(SLSheetTextComposeView *)self addSubview:textView10];
}

- (BOOL)becomeFirstResponder
{
  textView = [(SLSheetTextComposeView *)self textView];
  becomeFirstResponder = [textView becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  textView = [(SLSheetTextComposeView *)self textView];
  resignFirstResponder = [textView resignFirstResponder];

  return resignFirstResponder;
}

- (void)layoutSubviews
{
  _shouldReverseLayoutDirection = [(SLSheetTextComposeView *)self _shouldReverseLayoutDirection];
  [(SLSheetTextComposeView *)self textRightInset];
  v5 = -v4;
  textView = [(SLSheetTextComposeView *)self textView];
  [textView setScrollIndicatorInsets:{0.0, 0.0, 0.0, v5}];

  [(SLSheetTextComposeView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SLSheetTextComposeView *)self textRightInset];
  v16 = v12 - v15;
  if (_shouldReverseLayoutDirection)
  {
    [(SLSheetTextComposeView *)self textRightInset];
    v8 = v8 + v17;
  }

  textView2 = [(SLSheetTextComposeView *)self textView];
  [textView2 setFrame:{v8, v10, v16, v14}];

  if (_shouldReverseLayoutDirection)
  {
    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v16;
    v26.size.height = v14;
    MaxX = CGRectGetMaxX(v26);
    [(UILabel *)self->_placeholderLabel frame];
    v8 = MaxX - v20;
    v21 = -5.0;
  }

  else
  {
    v21 = 5.0;
  }

  [(UILabel *)self->_placeholderLabel frame];
  [(UILabel *)self->_placeholderLabel sizeThatFits:v16, 1.79769313e308];
  v27.size.width = v22;
  v27.size.height = v23;
  placeholderLabel = self->_placeholderLabel;
  v27.origin.x = v8;
  v27.origin.y = v10;
  v28 = CGRectOffset(v27, v21, 8.0);

  [(UILabel *)placeholderLabel setFrame:v28.origin.x, v28.origin.y, v28.size.width, v28.size.height];
}

- (void)restoreKeyboard
{
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard setShowsCandidatesInline:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v13.receiver = self;
  v13.super_class = SLSheetTextComposeView;
  changeCopy = change;
  [(SLSheetTextComposeView *)&v13 traitCollectionDidChange:changeCopy];
  v5 = [(SLSheetTextComposeView *)self traitCollection:v13.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    textView = [(SLSheetTextComposeView *)self textView];
    [textView setFont:v8];

    placeholderLabel = self->_placeholderLabel;
    textView2 = [(SLSheetTextComposeView *)self textView];
    font = [textView2 font];
    [(UILabel *)placeholderLabel setFont:font];

    [(SLSheetTextComposeView *)self setNeedsLayout];
    [(SLSheetTextComposeView *)self layoutIfNeeded];
  }
}

@end