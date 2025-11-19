@interface EKCalendarChooserCell
- (EKCalendarChooserCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)selectionCheckmarkCheckedSystemImageName;
- (NSString)selectionCheckmarkUncheckedSystemImageName;
- (double)textLeadingIndent;
- (void)_updateTextLabelTextWithColorDot;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryType:(int64_t)a3;
- (void)setChecked:(BOOL)a3;
- (void)setColorDotHighlightedImage:(id)a3;
- (void)setColorDotImage:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowCheckmarksOnLeft:(BOOL)a3;
- (void)setTextLabelText:(id)a3;
- (void)updateSelectionCheckmark;
@end

@implementation EKCalendarChooserCell

- (EKCalendarChooserCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = EKCalendarChooserCell;
  v4 = [(EKUITableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(EKCalendarChooserCell *)v4 setShowCheckmarksOnLeft:1];
  }

  return v5;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = EKCalendarChooserCell;
  [(EKCalendarChooserCell *)&v5 prepareForReuse];
  self->_shouldAnimate = 0;
  self->_showsColorDot = 0;
  selectionCheckmarkCheckedSystemImageName = self->_selectionCheckmarkCheckedSystemImageName;
  self->_selectionCheckmarkCheckedSystemImageName = 0;

  selectionCheckmarkUncheckedSystemImageName = self->_selectionCheckmarkUncheckedSystemImageName;
  self->_selectionCheckmarkUncheckedSystemImageName = 0;
}

- (NSString)selectionCheckmarkCheckedSystemImageName
{
  if (self->_selectionCheckmarkCheckedSystemImageName)
  {
    return self->_selectionCheckmarkCheckedSystemImageName;
  }

  else
  {
    return @"checkmark.circle.fill";
  }
}

- (NSString)selectionCheckmarkUncheckedSystemImageName
{
  if (self->_selectionCheckmarkUncheckedSystemImageName)
  {
    return self->_selectionCheckmarkUncheckedSystemImageName;
  }

  else
  {
    return @"circle";
  }
}

- (void)setAccessoryType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = EKCalendarChooserCell;
  [(EKCalendarChooserCell *)&v5 setAccessoryType:?];
  [(EKCalendarChooserCell *)self setEditingAccessoryType:a3];
}

- (void)setShowCheckmarksOnLeft:(BOOL)a3
{
  self->_showCheckmarksOnLeft = a3;
  checkmarkView = self->_checkmarkView;
  if (a3)
  {
    if (checkmarkView)
    {
      goto LABEL_7;
    }

    v5 = [(EKCalendarChooserCell *)self traitCollection];
    v6 = TableViewCheckmarkImage(v5);

    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    v8 = self->_checkmarkView;
    self->_checkmarkView = v7;

    v9 = [(EKCalendarChooserCell *)self contentView];
    [v9 addSubview:self->_checkmarkView];

    [(UIImageView *)self->_checkmarkView setAlpha:0.0];
  }

  else
  {
    if (!checkmarkView)
    {
      goto LABEL_7;
    }

    [(UIImageView *)checkmarkView removeFromSuperview];
    v6 = self->_checkmarkView;
    self->_checkmarkView = 0;
  }

LABEL_7:

  [(EKCalendarChooserCell *)self setNeedsLayout];
}

- (void)_updateTextLabelTextWithColorDot
{
  v23 = objc_alloc_init(MEMORY[0x1E696AD40]);
  colorDot = self->_colorDot;
  if (colorDot)
  {
    colorDotAttachment = self->_colorDotAttachment;
    if (!colorDotAttachment)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      v6 = self->_colorDotAttachment;
      self->_colorDotAttachment = v5;

      colorDot = self->_colorDot;
      colorDotAttachment = self->_colorDotAttachment;
    }

    [(NSTextAttachment *)colorDotAttachment setImage:colorDot];
    if (![(UIImage *)self->_colorDot isSymbolImage])
    {
      v7 = [(EKCalendarChooserCell *)self textLabel];
      v8 = [v7 font];
      [v8 capHeight];
      v10 = v9;

      [(UIImage *)self->_colorDot size];
      CalRoundToScreenScale((v10 - v11) * 0.5);
      v13 = v12;
      [(UIImage *)self->_colorDot size];
      v15 = v14;
      [(UIImage *)self->_colorDot size];
      [(NSTextAttachment *)self->_colorDotAttachment setBounds:0.0, v13, v15, v16];
    }

    v17 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:self->_colorDotAttachment];
    [v23 appendAttributedString:v17];

    v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v23 appendAttributedString:v18];
  }

  v19 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (self->_textLabelText)
  {
    textLabelText = self->_textLabelText;
  }

  else
  {
    textLabelText = &stru_1F4EF6790;
  }

  v21 = [v19 initWithString:textLabelText];
  [v23 appendAttributedString:v21];

  v22 = [(EKCalendarChooserCell *)self textLabel];
  [v22 setAttributedText:v23];
}

- (void)setTextLabelText:(id)a3
{
  v8 = a3;
  if (self->_textLabelText != v8)
  {
    objc_storeStrong(&self->_textLabelText, a3);
  }

  if (self->_colorDot)
  {
    v5 = [(EKCalendarChooserCell *)self traitCollection];
    if (EKUIUsesLargeTextLayout(v5))
    {

LABEL_7:
      [(EKCalendarChooserCell *)self _updateTextLabelTextWithColorDot];
      goto LABEL_9;
    }

    v6 = [(EKCalendarChooserCell *)self multiSelectStyle];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v7 = [(EKCalendarChooserCell *)self textLabel];
  [v7 setText:self->_textLabelText];

LABEL_9:
}

- (void)setColorDotImage:(id)a3
{
  v25 = a3;
  if (self->_colorDot != v25)
  {
    objc_storeStrong(&self->_colorDot, a3);
  }

  v5 = [(EKCalendarChooserCell *)self traitCollection];
  if (EKUIUsesLargeTextLayout(v5))
  {

LABEL_6:
    [(UIImageView *)self->_colorDotView removeFromSuperview];
    colorDotView = self->_colorDotView;
    self->_colorDotView = 0;

    [(EKCalendarChooserCell *)self _updateTextLabelTextWithColorDot];
    goto LABEL_7;
  }

  v6 = [(EKCalendarChooserCell *)self multiSelectStyle];

  if (v6)
  {
    goto LABEL_6;
  }

  v8 = self->_colorDotView;
  if (v8)
  {
    [(UIImageView *)v8 setImage:self->_colorDot];
    [(UIImageView *)self->_colorDotView frame];
    v10 = v9;
    v12 = v11;
    [(UIImage *)self->_colorDot size];
    [(UIImageView *)self->_colorDotView setFrame:v10, v12, v13, v14];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v25];
    v16 = self->_colorDotView;
    self->_colorDotView = v15;

    [(UIImageView *)self->_colorDotView frame];
    v18 = v17;
    v20 = v19;
    [(UIImage *)self->_colorDot size];
    [(UIImageView *)self->_colorDotView setFrame:v18, v20, v21, v22];
    v23 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)self->_colorDotView setTintColor:v23];

    v24 = [(EKCalendarChooserCell *)self contentView];
    [v24 addSubview:self->_colorDotView];
  }

LABEL_7:
  [(EKCalendarChooserCell *)self setNeedsLayout];
}

- (void)setColorDotHighlightedImage:(id)a3
{
  v5 = a3;
  if (self->_colorDotHighlighted != v5)
  {
    objc_storeStrong(&self->_colorDotHighlighted, a3);
  }

  [(EKCalendarChooserCell *)self setNeedsLayout];
}

- (void)setChecked:(BOOL)a3
{
  v3 = a3;
  self->_checked = a3;
  if ([(EKCalendarChooserCell *)self showCheckmarksOnLeft])
  {
    v5 = 0.0;
    if (v3)
    {
      v5 = 1.0;
    }

    checkmarkView = self->_checkmarkView;

    [(UIImageView *)checkmarkView setAlpha:v5];
  }

  else
  {
    if ([(EKCalendarChooserCell *)self accessoryType]!= 3 || v3)
    {
      if ([(EKCalendarChooserCell *)self accessoryType]|| !v3)
      {
        return;
      }

      v7 = self;
      v8 = 3;
    }

    else
    {
      v7 = self;
      v8 = 0;
    }

    [(EKCalendarChooserCell *)v7 setAccessoryType:v8];
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  LODWORD(v5) = a3;
  if ([(EKCalendarChooserCell *)self selectionStyle])
  {
    v5 = v5;
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = self;
  v8.super_class = EKCalendarChooserCell;
  [(EKCalendarChooserCell *)&v8 setHighlighted:v5 animated:v4];
  if (!v5 || (colorDot = self->_colorDotHighlighted) == 0)
  {
    colorDot = self->_colorDot;
  }

  [(UIImageView *)self->_colorDotView setImage:colorDot];
  if ([(EKCalendarChooserCell *)self multiSelectStyle])
  {
    [(EKCalendarChooserCell *)self updateSelectionCheckmark];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(EKCalendarChooserCell *)self selectionStyle])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8.receiver = self;
  v8.super_class = EKCalendarChooserCell;
  [(EKCalendarChooserCell *)&v8 setSelected:v7 animated:v4];
  if ([(EKCalendarChooserCell *)self multiSelectStyle])
  {
    [(EKCalendarChooserCell *)self updateSelectionCheckmark];
  }
}

- (void)updateSelectionCheckmark
{
  v3 = [(EKCalendarChooserCell *)self isSelected];
  v4 = v3 ^ [(EKCalendarChooserCell *)self isHighlighted];
  v5 = [(EKCalendarChooserCell *)self imageView];
  v6 = [v5 image];
  v7 = v6;
  if (v6 && self->_showingSelectionCheckmark == v4)
  {
    checkMarkColor = self->_checkMarkColor;
    v9 = [(EKCalendarChooserCell *)self selectionCheckmarkColor];

    if (checkMarkColor == v9)
    {
      return;
    }
  }

  else
  {
  }

  v10 = [(EKCalendarChooserCell *)self traitCollection];
  v11 = [EKUIConstrainedFontUtilities tableViewCellCappedSymbolImageScaleWithScale:0 traitCollection:v10];

  v12 = MEMORY[0x1E69DCAD8];
  v13 = [(EKCalendarChooserCell *)self textLabel];
  v14 = [v13 font];
  v15 = [v12 configurationWithFont:v14 scale:v11];

  if (v4)
  {
    [(EKCalendarChooserCell *)self selectionCheckmarkCheckedSystemImageName];
  }

  else
  {
    [(EKCalendarChooserCell *)self selectionCheckmarkUncheckedSystemImageName];
  }
  v16 = ;
  v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:v16 withConfiguration:v15];
  v17 = [(EKCalendarChooserCell *)self imageView];
  [v17 setImage:v24];

  v18 = [(EKCalendarChooserCell *)self selectionCheckmarkColor];
  v19 = [(EKCalendarChooserCell *)self traitCollection];
  [v19 userInterfaceStyle];
  v20 = CUIKAdjustedColorForColor();
  v21 = [(EKCalendarChooserCell *)self imageView];
  [v21 setTintColor:v20];

  v22 = [(EKCalendarChooserCell *)self selectionCheckmarkColor];
  v23 = self->_checkMarkColor;
  self->_checkMarkColor = v22;

  self->_showingSelectionCheckmark = v4;
}

- (double)textLeadingIndent
{
  v3 = [(EKCalendarChooserCell *)self traitCollection];
  v4 = EKUIUsesLargeTextLayout(v3);

  v5 = 0.0;
  if (![(EKCalendarChooserCell *)self multiSelectStyle])
  {
    if ([(EKCalendarChooserCell *)self showCheckmarksOnLeft])
    {
      [(UIImageView *)self->_checkmarkView frame];
      v5 = v6 + 11.0 + 10.0;
    }

    else
    {
      v5 = 16.0;
      if (v4)
      {
        IsLeftToRight = CalInterfaceIsLeftToRight();
        [(EKCalendarChooserCell *)self layoutMargins];
        if (IsLeftToRight)
        {
          v5 = v8;
        }

        else
        {
          v5 = v9;
        }

        [(EKCalendarChooserCell *)self showsColorDot];
        goto LABEL_11;
      }
    }
  }

  if (!(v4 | ![(EKCalendarChooserCell *)self showsColorDot]) && ![(EKCalendarChooserCell *)self multiSelectStyle])
  {
    [(UIImage *)self->_colorDot size];
    v5 = v5 + v18 + 10.0;
    goto LABEL_17;
  }

LABEL_11:
  v10 = [(EKCalendarChooserCell *)self imageView];
  v11 = [v10 image];

  if (v11)
  {
    if (CalInterfaceIsLeftToRight())
    {
      v12 = [(EKCalendarChooserCell *)self imageView];
      [v12 frame];
      v14 = v13;
    }

    else
    {
      [(EKCalendarChooserCell *)self bounds];
      v16 = v15;
      v12 = [(EKCalendarChooserCell *)self imageView];
      [v12 frame];
      v14 = v16 - CGRectGetMaxX(v21);
    }

    v17 = [(EKCalendarChooserCell *)self imageView];
    [v17 bounds];
    v5 = v14 + CGRectGetWidth(v22) + 10.0;
  }

LABEL_17:

  CalRoundToScreenScale(v5);
  return result;
}

- (void)layoutSubviews
{
  if (![(EKCalendarChooserCell *)self multiSelectStyle]&& ([(EKCalendarChooserCell *)self showCheckmarksOnLeft]|| [(EKCalendarChooserCell *)self showsColorDot]))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__EKCalendarChooserCell_layoutSubviews__block_invoke;
    aBlock[3] = &unk_1E843EC60;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    v4 = v3;
    if (self->_shouldAnimate)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v3 options:0 animations:0.300000012 completion:0.0];
    }

    else
    {
      (*(v3 + 2))(v3);
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = EKCalendarChooserCell;
    [(EKUITableViewCell *)&v5 layoutSubviews];
  }
}

uint64_t __39__EKCalendarChooserCell_layoutSubviews__block_invoke(uint64_t a1)
{
  v40.receiver = *(a1 + 32);
  v40.super_class = EKCalendarChooserCell;
  objc_msgSendSuper2(&v40, sel_layoutSubviews);
  IsLeftToRight = CalInterfaceIsLeftToRight();
  v3 = [*(a1 + 32) textLabel];
  [v3 frame];
  v5 = v4;
  v6 = [*(a1 + 32) textLabel];
  [v6 _capOffsetFromBoundsTop];
  v8 = v5 + v7;
  v9 = [*(a1 + 32) textLabel];
  v10 = [v9 font];
  [v10 capHeight];
  CalRoundToScreenScale(v8 + v11 * 0.5);
  v13 = v12;

  [*(*(a1 + 32) + 1120) sizeToFit];
  [*(*(a1 + 32) + 1120) bounds];
  Height = CGRectGetHeight(v41);
  CalRoundToScreenScale(v13 - Height * 0.5);
  v16 = v15;
  v17 = 11.0;
  if ((IsLeftToRight & 1) == 0)
  {
    v18 = [*(a1 + 32) contentView];
    [v18 bounds];
    v20 = v19;
    [*(*(a1 + 32) + 1120) frame];
    v17 = v20 - v21 + -11.0;
  }

  [*(*(a1 + 32) + 1120) frame];
  [*(*(a1 + 32) + 1120) setFrame:{v17, v16}];
  if ([*(a1 + 32) showCheckmarksOnLeft])
  {
    [*(*(a1 + 32) + 1120) frame];
    if (IsLeftToRight)
    {
      v26 = CGRectGetMaxX(*&v22) + 10.0;
LABEL_7:
      [*(a1 + 32) safeAreaInsets];
      v28 = v26 + v27;
      goto LABEL_11;
    }

    v26 = CGRectGetMinX(*&v22) + -10.0;
  }

  else
  {
    v26 = 16.0;
    if (IsLeftToRight)
    {
      goto LABEL_7;
    }

    v29 = [*(a1 + 32) contentView];
    [v29 bounds];
    v26 = v30 + -16.0;
  }

  v31 = [*(a1 + 32) contentView];
  [v31 bounds];
  v33 = v32 - v26;
  [*(a1 + 32) safeAreaInsets];
  v28 = v33 + v34;

LABEL_11:
  [*(a1 + 32) setSeparatorInset:{0.0, v28, 0.0, 0.0}];
  result = [*(a1 + 32) showsColorDot];
  if (result)
  {
    if (!IsLeftToRight)
    {
      [*(*(a1 + 32) + 1112) frame];
      v26 = v26 - v36;
    }

    [*(*(a1 + 32) + 1112) bounds];
    v37 = CGRectGetHeight(v42);
    CalRoundToScreenScale(v13 + v37 * -0.5);
    v39 = v38;
    [*(*(a1 + 32) + 1112) frame];
    return [*(*(a1 + 32) + 1112) setFrame:{v26, v39}];
  }

  return result;
}

@end