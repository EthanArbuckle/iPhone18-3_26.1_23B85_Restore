@interface MFSecureMIMEPersonHeaderView
+ (id)_explanationLabelDefaultAttributes;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MFSecureMIMEPersonHeaderView)initWithFrame:(CGRect)frame warningLabelTextColor:(id)color;
- (NSString)secureLabelText;
- (NSString)signedLabelText;
- (NSString)warningLabelText;
- (double)heightOfBottomMargin;
- (double)heightThatFitsButtons;
- (double)heightThatFitsMainLabel:(CGSize)label;
- (double)heightThatFitsSubview:(id)subview padding:(double)padding;
- (double)widthForSizingToFitSize:(CGSize)size;
- (void)_insert:(BOOL)_insert subview:(id)subview;
- (void)_setText:(id)text forLabel:(id)label;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setButtons:(id)buttons;
- (void)setExplanationText:(id)text;
- (void)setSecureLabelText:(id)text;
- (void)setSignedLabelText:(id)text;
- (void)setWarningLabelText:(id)text;
@end

@implementation MFSecureMIMEPersonHeaderView

+ (id)_explanationLabelDefaultAttributes
{
  if (_explanationLabelDefaultAttributes_onceToken != -1)
  {
    +[MFSecureMIMEPersonHeaderView _explanationLabelDefaultAttributes];
  }

  v3 = _explanationLabelDefaultAttributes_defaultAttributes;

  return v3;
}

void __66__MFSecureMIMEPersonHeaderView__explanationLabelDefaultAttributes__block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v0 setLineBreakMode:0];
  v5[0] = *MEMORY[0x1E69DB648];
  v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD90]];
  v6[0] = v1;
  v5[1] = *MEMORY[0x1E69DB650];
  v2 = [MEMORY[0x1E69DC888] mailSecureMIMERegularTextColor];
  v5[2] = *MEMORY[0x1E69DB688];
  v6[1] = v2;
  v6[2] = v0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = _explanationLabelDefaultAttributes_defaultAttributes;
  _explanationLabelDefaultAttributes_defaultAttributes = v3;
}

- (MFSecureMIMEPersonHeaderView)initWithFrame:(CGRect)frame warningLabelTextColor:(id)color
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v33.receiver = self;
  v33.super_class = MFSecureMIMEPersonHeaderView;
  height = [(MFSecureMIMEPersonHeaderView *)&v33 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(MFSecureMIMEPersonHeaderView *)height setAutoresizesSubviews:1];
    [(MFSecureMIMEPersonHeaderView *)v11 setAutoresizingMask:2];
    v12 = objc_alloc(MEMORY[0x1E69DCC10]);
    v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v11->_label;
    v11->_label = v13;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v11->_label setBackgroundColor:clearColor];

    [(UILabel *)v11->_label setNumberOfLines:0];
    v16 = [_MFSecureMIMEPersonHeaderLabel alloc];
    v17 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:@"checkmark.circle.fill" forView:21];
    mailSecureMIMERegularTextColor = [MEMORY[0x1E69DC888] mailSecureMIMERegularTextColor];
    v19 = [(_MFSecureMIMEPersonHeaderLabel *)v16 initWithImage:v17 text:0 textColor:mailSecureMIMERegularTextColor];
    signedLabel = v11->_signedLabel;
    v11->_signedLabel = v19;

    v21 = [_MFSecureMIMEPersonHeaderLabel alloc];
    v22 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:@"lock.fill" forView:21];
    mailSecureMIMERegularTextColor2 = [MEMORY[0x1E69DC888] mailSecureMIMERegularTextColor];
    v24 = [(_MFSecureMIMEPersonHeaderLabel *)v21 initWithImage:v22 text:0 textColor:mailSecureMIMERegularTextColor2];
    secureLabel = v11->_secureLabel;
    v11->_secureLabel = v24;

    if (colorCopy)
    {
      mailSecureMIMEWarningColor = colorCopy;
    }

    else
    {
      mailSecureMIMEWarningColor = [MEMORY[0x1E69DC888] mailSecureMIMEWarningColor];
    }

    v27 = mailSecureMIMEWarningColor;
    v28 = [_MFSecureMIMEPersonHeaderLabel alloc];
    v29 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:@"questionmark.circle.fill" forView:21];
    v30 = [(_MFSecureMIMEPersonHeaderLabel *)v28 initWithImage:v29 text:0 textColor:v27];
    warningLabel = v11->_warningLabel;
    v11->_warningLabel = v30;
  }

  return v11;
}

- (void)setSignedLabelText:(id)text
{
  textCopy = text;
  _signedLabel = [(MFSecureMIMEPersonHeaderView *)self _signedLabel];
  [(MFSecureMIMEPersonHeaderView *)self _setText:textCopy forLabel:_signedLabel];
}

- (NSString)signedLabelText
{
  _signedLabel = [(MFSecureMIMEPersonHeaderView *)self _signedLabel];
  text = [_signedLabel text];

  return text;
}

- (void)setSecureLabelText:(id)text
{
  textCopy = text;
  _secureLabel = [(MFSecureMIMEPersonHeaderView *)self _secureLabel];
  [(MFSecureMIMEPersonHeaderView *)self _setText:textCopy forLabel:_secureLabel];
}

- (NSString)secureLabelText
{
  _secureLabel = [(MFSecureMIMEPersonHeaderView *)self _secureLabel];
  text = [_secureLabel text];

  return text;
}

- (void)setWarningLabelText:(id)text
{
  textCopy = text;
  _warningLabel = [(MFSecureMIMEPersonHeaderView *)self _warningLabel];
  [(MFSecureMIMEPersonHeaderView *)self _setText:textCopy forLabel:_warningLabel];
}

- (NSString)warningLabelText
{
  _warningLabel = [(MFSecureMIMEPersonHeaderView *)self _warningLabel];
  text = [_warningLabel text];

  return text;
}

- (void)setExplanationText:(id)text
{
  textCopy = text;
  [(MFSecureMIMEPersonHeaderView *)self _insert:textCopy != 0 subview:self->_label];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (textCopy)
  {
    v5 = textCopy;
  }

  else
  {
    v5 = &stru_1F3CF3758;
  }

  _explanationLabelDefaultAttributes = [objc_opt_class() _explanationLabelDefaultAttributes];
  v7 = [v4 initWithString:v5 attributes:_explanationLabelDefaultAttributes];

  [(UILabel *)self->_label setAttributedText:v7];
  [(MFSecureMIMEPersonHeaderView *)self invalidateIntrinsicContentSize];
  [(MFSecureMIMEPersonHeaderView *)self setNeedsLayout];
}

- (void)setButtons:(id)buttons
{
  v18 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  v5 = buttonsCopy;
  buttons = self->_buttons;
  if (buttons == buttonsCopy)
  {
    if (([(NSArray *)buttonsCopy isEqual:self->_buttons]& 1) != 0)
    {
      goto LABEL_12;
    }

    buttons = self->_buttons;
  }

  [(NSArray *)buttons makeObjectsPerformSelector:sel_removeFromSuperview];
  v7 = [(NSArray *)v5 copy];
  v8 = self->_buttons;
  self->_buttons = v7;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = v5;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [(MFSecureMIMEPersonHeaderView *)self addSubview:*(*(&v13 + 1) + 8 * v12++), v13];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [(MFSecureMIMEPersonHeaderView *)self setNeedsLayout];
LABEL_12:
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(MFSecureMIMEPersonHeaderView *)self heightThatFitsSubview:self->_signedLabel padding:5.0];
  v7 = v6 + 10.0;
  [(MFSecureMIMEPersonHeaderView *)self heightThatFitsSubview:self->_secureLabel padding:5.0];
  v9 = v7 + v8;
  [(MFSecureMIMEPersonHeaderView *)self heightThatFitsSubview:self->_warningLabel padding:5.0];
  v11 = v9 + v10;
  [(MFSecureMIMEPersonHeaderView *)self heightThatFitsMainLabel:width, height];
  v13 = v11 + v12;
  [(MFSecureMIMEPersonHeaderView *)self heightThatFitsButtons];
  v15 = v13 + v14;
  [(MFSecureMIMEPersonHeaderView *)self heightOfBottomMargin];
  v17 = v15 + v16;
  v18 = width;
  result.height = v17;
  result.width = v18;
  return result;
}

- (double)heightThatFitsSubview:(id)subview padding:(double)padding
{
  subviewCopy = subview;
  superview = [subviewCopy superview];

  if (superview)
  {
    [subviewCopy bounds];
    [subviewCopy sizeThatFits:{v7, v8}];
    v10 = v9 + padding;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)heightThatFitsMainLabel:(CGSize)label
{
  height = label.height;
  width = label.width;
  superview = [(UILabel *)self->_label superview];

  if (!superview)
  {
    return 0.0;
  }

  [(MFSecureMIMEPersonHeaderView *)self widthForSizingToFitSize:width, height];
  v8 = v7;
  superview2 = [(MFSecureMIMEPersonHeaderView *)self superview];
  [superview2 layoutMargins];
  v11 = v8 - v10;

  attributedText = [(UILabel *)self->_label attributedText];
  [attributedText boundingRectWithSize:1 options:0 context:{v11, 0.0}];

  UICeilToViewScale();
  return v13 + 12.0;
}

- (double)widthForSizingToFitSize:(CGSize)size
{
  if (size.width >= 0.0)
  {
    width = size.width;
  }

  else
  {
    width = 0.0;
  }

  if (width == 0.0)
  {
    superview = [(MFSecureMIMEPersonHeaderView *)self superview];

    if (superview)
    {
      superview2 = [(MFSecureMIMEPersonHeaderView *)self superview];
      [superview2 bounds];
      v8 = v7;
      superview3 = [(MFSecureMIMEPersonHeaderView *)self superview];
      [superview3 layoutMargins];
      width = v8 - v10;

      if (width < 0.0)
      {
        width = 0.0;
      }
    }
  }

  result = 320.0;
  if (width != 0.0)
  {
    return width;
  }

  return result;
}

- (double)heightThatFitsButtons
{
  showsButtons = [(MFSecureMIMEPersonHeaderView *)self showsButtons];
  result = 0.0;
  if (showsButtons)
  {
    return ([(NSArray *)self->_buttons count]* 49.0);
  }

  return result;
}

- (double)heightOfBottomMargin
{
  showsButtons = [(MFSecureMIMEPersonHeaderView *)self showsButtons];
  result = 10.0;
  if (showsButtons)
  {
    return 6.0;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  [(MFSecureMIMEPersonHeaderView *)self bounds];

  [(MFSecureMIMEPersonHeaderView *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v37 = *MEMORY[0x1E69E9840];
  [(MFSecureMIMEPersonHeaderView *)self bounds];
  v4 = v3;
  superview = [(UIView *)self->_signedLabel superview];

  if (superview)
  {
    v6 = self->_signedLabel;
    [(UIView *)v6 sizeToFit];
    [(UIView *)v6 frame];
    [(UIView *)v6 setFrame:0.0, 10.0, v4];
    UIRoundToViewScale();
    MaxY = v7;

    v9 = 5.0;
  }

  else
  {
    MaxY = 0.0;
    v9 = 10.0;
  }

  superview2 = [(UIView *)self->_secureLabel superview];

  if (superview2)
  {
    v11 = self->_secureLabel;
    [(UIView *)v11 sizeToFit];
    [(UIView *)v11 frame];
    [(UIView *)v11 setFrame:0.0, v9 + MaxY, v4];
    UIRoundToViewScale();
    MaxY = v12;

    v9 = 5.0;
  }

  superview3 = [(UIView *)self->_warningLabel superview];

  if (superview3)
  {
    v14 = self->_warningLabel;
    [(UIView *)v14 sizeToFit];
    [(UIView *)v14 frame];
    [(UIView *)v14 setFrame:0.0, v9 + MaxY, v4];
    UIRoundToViewScale();
    MaxY = v15;
  }

  superview4 = [(UILabel *)self->_label superview];

  if (superview4)
  {
    superview5 = [(MFSecureMIMEPersonHeaderView *)self superview];
    [superview5 layoutMargins];
    v19 = v18;

    attributedText = [(UILabel *)self->_label attributedText];
    v21 = v4 - v19;
    [attributedText boundingRectWithSize:1 options:0 context:{v21, 0.0}];

    [(UILabel *)self->_label frame];
    v22 = MaxY + 12.0;
    UICeilToViewScale();
    v24 = v23;
    [(UILabel *)self->_label setFrame:0.0, v22, v21, v23];
    v38.origin.x = 0.0;
    v38.origin.y = v22;
    v38.size.width = v21;
    v38.size.height = v24;
    MaxY = CGRectGetMaxY(v38);
  }

  if ([(NSArray *)self->_buttons count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = self->_buttons;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v26)
    {
      v27 = *v33;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v32 + 1) + 8 * i);
          [v29 frame];
          v30 = MaxY + 6.0;
          [v29 setFrame:{0.0, v30, v4, 43.0}];
          v39.origin.x = 0.0;
          v39.origin.y = v30;
          v39.size.width = v4;
          v39.size.height = 43.0;
          MaxY = CGRectGetMaxY(v39);
          if (*(self + 448))
          {
            v31 = 0.0;
          }

          else
          {
            v31 = 1.0;
          }

          [v29 setAlpha:v31];
          [v29 setUserInteractionEnabled:(*(self + 448) & 1) == 0];
        }

        v26 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v26);
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MFSecureMIMEPersonHeaderView *)self bounds];
  if (width != v8)
  {
    [(MFSecureMIMEPersonHeaderView *)self invalidateIntrinsicContentSize];
  }

  v9.receiver = self;
  v9.super_class = MFSecureMIMEPersonHeaderView;
  [(MFSecureMIMEPersonHeaderView *)&v9 setBounds:x, y, width, height];
}

- (void)_setText:(id)text forLabel:(id)label
{
  textCopy = text;
  labelCopy = label;
  [(MFSecureMIMEPersonHeaderView *)self _insert:textCopy != 0 subview:labelCopy];
  [labelCopy setText:textCopy];
  [(MFSecureMIMEPersonHeaderView *)self setNeedsLayout];
}

- (void)_insert:(BOOL)_insert subview:(id)subview
{
  _insertCopy = _insert;
  subviewCopy = subview;
  superview = [subviewCopy superview];
  v7 = superview;
  if (_insertCopy)
  {
    if (superview != self)
    {
      [(MFSecureMIMEPersonHeaderView *)self addSubview:subviewCopy];
    }
  }

  else if (superview)
  {
    [subviewCopy removeFromSuperview];
  }
}

@end