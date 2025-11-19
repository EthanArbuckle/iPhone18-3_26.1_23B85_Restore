@interface SLSheetTextComposeView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (SLSheetTextComposeView)initWithFrame:(CGRect)a3;
- (void)_assembleView;
- (void)layoutSubviews;
- (void)restoreKeyboard;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SLSheetTextComposeView

- (SLSheetTextComposeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SLSheetTextComposeView;
  v3 = [(SLSheetTextComposeView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(SLSheetTextComposeView *)self setBackgroundColor:v3];

  [(SLSheetTextComposeView *)self setOpaque:0];
  v4 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(SLSheetTextComposeView *)self setTextView:v4];

  v5 = [(SLSheetTextComposeView *)self textView];
  [v5 setClipsToBounds:0];

  v6 = [(SLSheetTextComposeView *)self textView];
  [v6 setAutoresizingMask:18];

  v7 = [MEMORY[0x1E69DC888] clearColor];
  v8 = [(SLSheetTextComposeView *)self textView];
  [v8 setBackgroundColor:v7];

  v9 = [(SLSheetTextComposeView *)self textView];
  [v9 setOpaque:0];

  v10 = [(SLSheetTextComposeView *)self textView];
  [v10 setContentMode:3];

  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v12 = [(SLSheetTextComposeView *)self textView];
  [v12 setFont:v11];

  v13 = [(SLSheetTextComposeView *)self textView];
  [v13 setBounces:1];

  v14 = [(SLSheetTextComposeView *)self textView];
  [v14 setAlwaysBounceVertical:1];

  v15 = objc_opt_new();
  placeholderLabel = self->_placeholderLabel;
  self->_placeholderLabel = v15;

  [(UILabel *)self->_placeholderLabel setNumberOfLines:0];
  v17 = self->_placeholderLabel;
  v18 = [(SLSheetTextComposeView *)self textView];
  v19 = [v18 font];
  [(UILabel *)v17 setFont:v19];

  v20 = self->_placeholderLabel;
  v21 = [MEMORY[0x1E69DC888] placeholderTextColor];
  [(UILabel *)v20 setTextColor:v21];

  [(SLSheetTextComposeView *)self addSubview:self->_placeholderLabel];
  v22 = [(SLSheetTextComposeView *)self textView];
  [(SLSheetTextComposeView *)self addSubview:v22];
}

- (BOOL)becomeFirstResponder
{
  v2 = [(SLSheetTextComposeView *)self textView];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = [(SLSheetTextComposeView *)self textView];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (void)layoutSubviews
{
  v3 = [(SLSheetTextComposeView *)self _shouldReverseLayoutDirection];
  [(SLSheetTextComposeView *)self textRightInset];
  v5 = -v4;
  v6 = [(SLSheetTextComposeView *)self textView];
  [v6 setScrollIndicatorInsets:{0.0, 0.0, 0.0, v5}];

  [(SLSheetTextComposeView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SLSheetTextComposeView *)self textRightInset];
  v16 = v12 - v15;
  if (v3)
  {
    [(SLSheetTextComposeView *)self textRightInset];
    v8 = v8 + v17;
  }

  v18 = [(SLSheetTextComposeView *)self textView];
  [v18 setFrame:{v8, v10, v16, v14}];

  if (v3)
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
  v2 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [v2 setShowsCandidatesInline:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v13.receiver = self;
  v13.super_class = SLSheetTextComposeView;
  v4 = a3;
  [(SLSheetTextComposeView *)&v13 traitCollectionDidChange:v4];
  v5 = [(SLSheetTextComposeView *)self traitCollection:v13.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v9 = [(SLSheetTextComposeView *)self textView];
    [v9 setFont:v8];

    placeholderLabel = self->_placeholderLabel;
    v11 = [(SLSheetTextComposeView *)self textView];
    v12 = [v11 font];
    [(UILabel *)placeholderLabel setFont:v12];

    [(SLSheetTextComposeView *)self setNeedsLayout];
    [(SLSheetTextComposeView *)self layoutIfNeeded];
  }
}

@end