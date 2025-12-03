@interface EKCalendarChooserCell
- (EKCalendarChooserCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)selectionCheckmarkCheckedSystemImageName;
- (NSString)selectionCheckmarkUncheckedSystemImageName;
- (double)textLeadingIndent;
- (void)_updateTextLabelTextWithColorDot;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryType:(int64_t)type;
- (void)setChecked:(BOOL)checked;
- (void)setColorDotHighlightedImage:(id)image;
- (void)setColorDotImage:(id)image;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setShowCheckmarksOnLeft:(BOOL)left;
- (void)setTextLabelText:(id)text;
- (void)updateSelectionCheckmark;
@end

@implementation EKCalendarChooserCell

- (EKCalendarChooserCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = EKCalendarChooserCell;
  v4 = [(EKUITableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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

- (void)setAccessoryType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = EKCalendarChooserCell;
  [(EKCalendarChooserCell *)&v5 setAccessoryType:?];
  [(EKCalendarChooserCell *)self setEditingAccessoryType:type];
}

- (void)setShowCheckmarksOnLeft:(BOOL)left
{
  self->_showCheckmarksOnLeft = left;
  checkmarkView = self->_checkmarkView;
  if (left)
  {
    if (checkmarkView)
    {
      goto LABEL_7;
    }

    traitCollection = [(EKCalendarChooserCell *)self traitCollection];
    v6 = TableViewCheckmarkImage(traitCollection);

    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    v8 = self->_checkmarkView;
    self->_checkmarkView = v7;

    contentView = [(EKCalendarChooserCell *)self contentView];
    [contentView addSubview:self->_checkmarkView];

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
      textLabel = [(EKCalendarChooserCell *)self textLabel];
      font = [textLabel font];
      [font capHeight];
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

  textLabel2 = [(EKCalendarChooserCell *)self textLabel];
  [textLabel2 setAttributedText:v23];
}

- (void)setTextLabelText:(id)text
{
  textCopy = text;
  if (self->_textLabelText != textCopy)
  {
    objc_storeStrong(&self->_textLabelText, text);
  }

  if (self->_colorDot)
  {
    traitCollection = [(EKCalendarChooserCell *)self traitCollection];
    if (EKUIUsesLargeTextLayout(traitCollection))
    {

LABEL_7:
      [(EKCalendarChooserCell *)self _updateTextLabelTextWithColorDot];
      goto LABEL_9;
    }

    multiSelectStyle = [(EKCalendarChooserCell *)self multiSelectStyle];

    if (multiSelectStyle)
    {
      goto LABEL_7;
    }
  }

  textLabel = [(EKCalendarChooserCell *)self textLabel];
  [textLabel setText:self->_textLabelText];

LABEL_9:
}

- (void)setColorDotImage:(id)image
{
  imageCopy = image;
  if (self->_colorDot != imageCopy)
  {
    objc_storeStrong(&self->_colorDot, image);
  }

  traitCollection = [(EKCalendarChooserCell *)self traitCollection];
  if (EKUIUsesLargeTextLayout(traitCollection))
  {

LABEL_6:
    [(UIImageView *)self->_colorDotView removeFromSuperview];
    colorDotView = self->_colorDotView;
    self->_colorDotView = 0;

    [(EKCalendarChooserCell *)self _updateTextLabelTextWithColorDot];
    goto LABEL_7;
  }

  multiSelectStyle = [(EKCalendarChooserCell *)self multiSelectStyle];

  if (multiSelectStyle)
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
    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
    v16 = self->_colorDotView;
    self->_colorDotView = v15;

    [(UIImageView *)self->_colorDotView frame];
    v18 = v17;
    v20 = v19;
    [(UIImage *)self->_colorDot size];
    [(UIImageView *)self->_colorDotView setFrame:v18, v20, v21, v22];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)self->_colorDotView setTintColor:labelColor];

    contentView = [(EKCalendarChooserCell *)self contentView];
    [contentView addSubview:self->_colorDotView];
  }

LABEL_7:
  [(EKCalendarChooserCell *)self setNeedsLayout];
}

- (void)setColorDotHighlightedImage:(id)image
{
  imageCopy = image;
  if (self->_colorDotHighlighted != imageCopy)
  {
    objc_storeStrong(&self->_colorDotHighlighted, image);
  }

  [(EKCalendarChooserCell *)self setNeedsLayout];
}

- (void)setChecked:(BOOL)checked
{
  checkedCopy = checked;
  self->_checked = checked;
  if ([(EKCalendarChooserCell *)self showCheckmarksOnLeft])
  {
    v5 = 0.0;
    if (checkedCopy)
    {
      v5 = 1.0;
    }

    checkmarkView = self->_checkmarkView;

    [(UIImageView *)checkmarkView setAlpha:v5];
  }

  else
  {
    if ([(EKCalendarChooserCell *)self accessoryType]!= 3 || checkedCopy)
    {
      if ([(EKCalendarChooserCell *)self accessoryType]|| !checkedCopy)
      {
        return;
      }

      selfCopy2 = self;
      v8 = 3;
    }

    else
    {
      selfCopy2 = self;
      v8 = 0;
    }

    [(EKCalendarChooserCell *)selfCopy2 setAccessoryType:v8];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  LODWORD(v5) = highlighted;
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
  [(EKCalendarChooserCell *)&v8 setHighlighted:v5 animated:animatedCopy];
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

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  if ([(EKCalendarChooserCell *)self selectionStyle])
  {
    v7 = selectedCopy;
  }

  else
  {
    v7 = 0;
  }

  v8.receiver = self;
  v8.super_class = EKCalendarChooserCell;
  [(EKCalendarChooserCell *)&v8 setSelected:v7 animated:animatedCopy];
  if ([(EKCalendarChooserCell *)self multiSelectStyle])
  {
    [(EKCalendarChooserCell *)self updateSelectionCheckmark];
  }
}

- (void)updateSelectionCheckmark
{
  isSelected = [(EKCalendarChooserCell *)self isSelected];
  v4 = isSelected ^ [(EKCalendarChooserCell *)self isHighlighted];
  imageView = [(EKCalendarChooserCell *)self imageView];
  image = [imageView image];
  v7 = image;
  if (image && self->_showingSelectionCheckmark == v4)
  {
    checkMarkColor = self->_checkMarkColor;
    selectionCheckmarkColor = [(EKCalendarChooserCell *)self selectionCheckmarkColor];

    if (checkMarkColor == selectionCheckmarkColor)
    {
      return;
    }
  }

  else
  {
  }

  traitCollection = [(EKCalendarChooserCell *)self traitCollection];
  v11 = [EKUIConstrainedFontUtilities tableViewCellCappedSymbolImageScaleWithScale:0 traitCollection:traitCollection];

  v12 = MEMORY[0x1E69DCAD8];
  textLabel = [(EKCalendarChooserCell *)self textLabel];
  font = [textLabel font];
  v15 = [v12 configurationWithFont:font scale:v11];

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
  imageView2 = [(EKCalendarChooserCell *)self imageView];
  [imageView2 setImage:v24];

  selectionCheckmarkColor2 = [(EKCalendarChooserCell *)self selectionCheckmarkColor];
  traitCollection2 = [(EKCalendarChooserCell *)self traitCollection];
  [traitCollection2 userInterfaceStyle];
  v20 = CUIKAdjustedColorForColor();
  imageView3 = [(EKCalendarChooserCell *)self imageView];
  [imageView3 setTintColor:v20];

  selectionCheckmarkColor3 = [(EKCalendarChooserCell *)self selectionCheckmarkColor];
  v23 = self->_checkMarkColor;
  self->_checkMarkColor = selectionCheckmarkColor3;

  self->_showingSelectionCheckmark = v4;
}

- (double)textLeadingIndent
{
  traitCollection = [(EKCalendarChooserCell *)self traitCollection];
  v4 = EKUIUsesLargeTextLayout(traitCollection);

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
  imageView = [(EKCalendarChooserCell *)self imageView];
  image = [imageView image];

  if (image)
  {
    if (CalInterfaceIsLeftToRight())
    {
      imageView2 = [(EKCalendarChooserCell *)self imageView];
      [imageView2 frame];
      v14 = v13;
    }

    else
    {
      [(EKCalendarChooserCell *)self bounds];
      v16 = v15;
      imageView2 = [(EKCalendarChooserCell *)self imageView];
      [imageView2 frame];
      v14 = v16 - CGRectGetMaxX(v21);
    }

    imageView3 = [(EKCalendarChooserCell *)self imageView];
    [imageView3 bounds];
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