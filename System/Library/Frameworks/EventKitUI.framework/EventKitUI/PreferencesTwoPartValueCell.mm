@interface PreferencesTwoPartValueCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (EKCellShortener)shortener;
- (TwoPartTextLabel)twoPartTextLabel;
- (UILabel)largePart2TextLabel;
- (id)description;
- (void)_layoutSubviewsCore;
- (void)checkValueWidths;
- (void)layoutSubviews;
- (void)layoutText:(id)text andValue:(id)value;
- (void)setStrikeThroughLargeDetailTextLabel:(BOOL)label;
- (void)setStrikeThroughLargePart2TextLabel:(BOOL)label;
- (void)shorten;
@end

@implementation PreferencesTwoPartValueCell

- (TwoPartTextLabel)twoPartTextLabel
{
  twoPartLabel = self->_twoPartLabel;
  if (!twoPartLabel)
  {
    v4 = objc_alloc_init(TwoPartTextLabel);
    v5 = self->_twoPartLabel;
    self->_twoPartLabel = v4;

    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(TwoPartTextLabel *)self->_twoPartLabel setFont:v6];

    valueColor = [(PreferencesTwoPartValueCell *)self valueColor];
    [(TwoPartTextLabel *)self->_twoPartLabel setTextColor:valueColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(TwoPartTextLabel *)self->_twoPartLabel setBackgroundColor:clearColor];

    contentView = [(PreferencesTwoPartValueCell *)self contentView];
    [contentView addSubview:self->_twoPartLabel];

    twoPartLabel = self->_twoPartLabel;
  }

  return twoPartLabel;
}

- (UILabel)largePart2TextLabel
{
  largePart2TextLabel = self->_largePart2TextLabel;
  if (!largePart2TextLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = self->_largePart2TextLabel;
    self->_largePart2TextLabel = v4;

    tableCellBlueTextColor = [MEMORY[0x1E69DC888] tableCellBlueTextColor];
    [(UILabel *)self->_largePart2TextLabel setTextColor:tableCellBlueTextColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_largePart2TextLabel setBackgroundColor:clearColor];

    contentView = [(PreferencesTwoPartValueCell *)self contentView];
    [contentView addSubview:self->_largePart2TextLabel];

    largePart2TextLabel = self->_largePart2TextLabel;
  }

  return largePart2TextLabel;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PreferencesTwoPartValueCell;
  v4 = [(PreferencesTwoPartValueCell *)&v9 description];
  twoPartTextLabel = [(PreferencesTwoPartValueCell *)self twoPartTextLabel];
  v6 = [twoPartTextLabel description];
  v7 = [v3 stringWithFormat:@"%@\t%@", v4, v6];

  return v7;
}

- (void)layoutText:(id)text andValue:(id)value
{
  textCopy = text;
  valueCopy = value;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  [(PreferencesTwoPartValueCell *)self directionalLayoutMargins];
  v9 = v8;
  contentView = [(PreferencesTwoPartValueCell *)self contentView];
  [contentView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v96.origin.x = v12;
  v96.origin.y = v14;
  v96.size.width = v16;
  v96.size.height = v18;
  v97 = CGRectInset(v96, v9, 0.0);
  x = v97.origin.x;
  width = v97.size.width;
  height = v97.size.height;
  v22 = v9 * [(PreferencesTwoPartValueCell *)self indentationLevel];
  v23 = x + v22;
  if (!IsLeftToRight)
  {
    v23 = x;
  }

  v93 = v23;
  v24 = width - v22;
  v25 = MEMORY[0x1E695F060];
  [textCopy sizeThatFits:{width - v22, height}];
  v27 = v26;
  text = [textCopy text];
  v29 = text;
  if (text && [text length])
  {
    superview = [textCopy superview];

    if (!superview)
    {
      contentView2 = [(PreferencesTwoPartValueCell *)self contentView];
      [contentView2 addSubview:textCopy];
    }
  }

  else
  {
    [textCopy removeFromSuperview];
  }

  v32 = *v25;
  v33 = *v25;
  if (valueCopy)
  {
    [valueCopy sizeThatFits:{v24, height}];
    v33 = v34;
    text2 = [valueCopy text];
    v36 = text2;
    if (text2 && [text2 length])
    {
      superview2 = [valueCopy superview];

      if (!superview2)
      {
        contentView3 = [(PreferencesTwoPartValueCell *)self contentView];
        [contentView3 addSubview:valueCopy];
      }
    }

    else
    {
      [valueCopy removeFromSuperview];
    }
  }

  numberOfLines = [textCopy numberOfLines];
  v40 = ceil(v24 * (v27 / (v27 + v33 + 6.0)));
  [textCopy setNumberOfLines:1];
  [textCopy sizeThatFits:{v40, height}];
  v42 = v41;
  [textCopy setNumberOfLines:0];
  [textCopy sizeThatFits:{v40, height}];
  v45 = v42 * numberOfLines;
  if (numberOfLines <= 0)
  {
    v45 = 3.40282347e38;
  }

  if (v44 < v45)
  {
    v45 = v44;
  }

  v88 = v45;
  if (v44 <= v45 && v45 <= height)
  {
    v40 = v43;
  }

  [textCopy setNumberOfLines:numberOfLines];
  numberOfLines2 = [valueCopy numberOfLines];
  v48 = v24;
  v91 = v40;
  v49 = v24 - v40;
  v50 = v24 - v40 + -6.0;
  [valueCopy setNumberOfLines:1];
  if (valueCopy)
  {
    [valueCopy sizeThatFits:{v50, height}];
    v52 = v51;
    [valueCopy setNumberOfLines:0];
    [valueCopy sizeThatFits:{v50, height}];
    v32 = v54;
  }

  else
  {
    v52 = v25[1];
    [0 setNumberOfLines:0];
    v53 = v52;
  }

  v55 = v52 * numberOfLines2;
  if (numberOfLines2 <= 0)
  {
    v55 = 3.40282347e38;
  }

  if (v53 < v55)
  {
    v55 = v53;
  }

  v87 = v55;
  v89 = height;
  if (v53 > v55 || v55 > height)
  {
    v57 = v50;
  }

  else
  {
    v57 = v32;
  }

  [valueCopy setNumberOfLines:numberOfLines2];
  font = [textCopy font];
  [font ascender];
  v60 = v59;
  font2 = [valueCopy font];
  [font2 ascender];
  v63 = v62;

  if (v60 >= v63)
  {
    font3 = [textCopy font];
    [font3 ascender];
    v73 = v72;
    font4 = [valueCopy font];
    [font4 ascender];
    CalRoundToScreenScale(v73 - v74);
    v71 = v75;
    v70 = 0.0;
  }

  else
  {
    font3 = [valueCopy font];
    [font3 ascender];
    v66 = v65;
    font4 = [textCopy font];
    [font4 ascender];
    CalRoundToScreenScale(v66 - v68);
    v70 = v69;
    v71 = 0.0;
  }

  if (IsLeftToRight)
  {
    v76 = 0.0;
  }

  else
  {
    v76 = v49;
  }

  if (IsLeftToRight)
  {
    v77 = v48 - v57;
  }

  else
  {
    v77 = 0.0;
  }

  v98.origin.x = v76;
  v98.origin.y = v70;
  v98.size.width = v91;
  v98.size.height = v88;
  v103.origin.x = v77;
  v103.origin.y = v71;
  v103.size.width = v57;
  v103.size.height = v87;
  v99 = CGRectUnion(v98, v103);
  v78 = CalCeilToScreenScale((v89 - v99.size.height) * 0.5);
  v100.origin.x = v76;
  v100.origin.y = v70;
  v100.size.width = v91;
  v100.size.height = v88;
  v101 = CGRectOffset(v100, v93, v78);
  v90 = v101.size.height;
  v92 = v101.origin.x;
  y = v101.origin.y;
  v80 = v101.size.width;
  v101.origin.x = v77;
  v101.origin.y = v71;
  v101.size.width = v57;
  v101.size.height = v87;
  v102 = CGRectOffset(v101, v93, v78);
  v81 = v102.origin.x;
  v82 = v102.origin.y;
  v83 = v102.size.width;
  v84 = v102.size.height;
  superview3 = [textCopy superview];

  if (superview3)
  {
    [textCopy setFrame:{v92, y, v80, v90}];
  }

  superview4 = [valueCopy superview];

  if (superview4)
  {
    [valueCopy setFrame:{v81, v82, v83, v84}];
  }
}

- (void)_layoutSubviewsCore
{
  v4.receiver = self;
  v4.super_class = PreferencesTwoPartValueCell;
  [(EKUITableViewCell *)&v4 layoutSubviews];
  textLabel = [(PreferencesTwoPartValueCell *)self textLabel];
  [(PreferencesTwoPartValueCell *)self layoutText:textLabel andValue:self->_twoPartLabel];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  traitCollection = [(PreferencesTwoPartValueCell *)self traitCollection];
  if (EKUIUsesLargeTextLayout(traitCollection))
  {
  }

  else
  {
    largePart2TextLabel = self->_largePart2TextLabel;

    if (!largePart2TextLabel)
    {
      v23.receiver = self;
      v23.super_class = PreferencesTwoPartValueCell;
      [(PreferencesTwoPartValueCell *)&v23 sizeThatFits:width, height];
      v9 = v20;
      v17 = v21;
      goto LABEL_5;
    }
  }

  [(PreferencesTwoPartValueCell *)self setNeedsLayout];
  [(PreferencesTwoPartValueCell *)self layoutIfNeeded];
  v22.receiver = self;
  v22.super_class = PreferencesTwoPartValueCell;
  [(PreferencesTwoPartValueCell *)&v22 sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;
  [(UILabel *)self->_largePart2TextLabel frame];
  v13 = v12;
  font = [(UILabel *)self->_largePart2TextLabel font];
  [font _bodyLeading];
  CalRoundToScreenScale((v13 + v15) * 0.5);
  v17 = v11 + v16;

LABEL_5:
  v18 = v9;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)setStrikeThroughLargeDetailTextLabel:(BOOL)label
{
  if (self->_strikeThroughLargeDetailTextLabel != label)
  {
    self->_strikeThroughLargeDetailTextLabel = label;
  }

  [(PreferencesTwoPartValueCell *)self setNeedsLayout];
}

- (void)setStrikeThroughLargePart2TextLabel:(BOOL)label
{
  if (self->_strikeThroughLargePart2TextLabel != label)
  {
    self->_strikeThroughLargePart2TextLabel = label;
  }

  [(PreferencesTwoPartValueCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  *&v54.size.width = self;
  *&v54.size.height = PreferencesTwoPartValueCell;
  [(CGSize *)&v54.size layoutSubviews];
  traitCollection = [(PreferencesTwoPartValueCell *)self traitCollection];
  v4 = EKUIUsesLargeTextLayout(traitCollection);

  if (v4)
  {
    detailTextLabel = [(PreferencesTwoPartValueCell *)self detailTextLabel];
    text = [detailTextLabel text];

    largePart2TextLabel = [(PreferencesTwoPartValueCell *)self largePart2TextLabel];
    text2 = [largePart2TextLabel text];

    v9 = MEMORY[0x1E69DB6B8];
    if (text)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:text];
      v11 = *v9;
      v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_strikeThroughLargeDetailTextLabel];
      [v10 addAttribute:v11 value:v12 range:{0, objc_msgSend(v10, "length")}];

      detailTextLabel2 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
      [detailTextLabel2 setAttributedText:v10];
    }

    if (text2)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:text2];
      v15 = *v9;
      v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_strikeThroughLargePart2TextLabel];
      [v14 addAttribute:v15 value:v16 range:{0, objc_msgSend(v14, "length")}];

      largePart2TextLabel2 = [(PreferencesTwoPartValueCell *)self largePart2TextLabel];
      [largePart2TextLabel2 setAttributedText:v14];
    }

    if (self->_largePart2TextLabel)
    {
      textLabel = [(PreferencesTwoPartValueCell *)self textLabel];
      [textLabel sizeToFit];

      detailTextLabel3 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
      [detailTextLabel3 sizeToFit];

      [(UILabel *)self->_largePart2TextLabel sizeToFit];
      textLabel2 = [(PreferencesTwoPartValueCell *)self textLabel];
      [textLabel2 frame];
      v54.origin.y = v21;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      detailTextLabel4 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
      [detailTextLabel4 frame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      text3 = [(UILabel *)self->_largePart2TextLabel text];
      v38 = [text3 length];

      if (v38)
      {
        font = [(UILabel *)self->_largePart2TextLabel font];
        [font _bodyLeading];
        CalRoundToScreenScale(v40 * 0.5);
        v42 = v41;

        v43 = v23 - v42;
        textLabel3 = [(PreferencesTwoPartValueCell *)self textLabel];
        [textLabel3 setFrame:{v54.origin.y, v43, v25, v27}];

        v45 = v32 - v42;
        detailTextLabel5 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
        v54.origin.x = v30;
        [detailTextLabel5 setFrame:{v30, v45, v34, v36}];

        [(UILabel *)self->_largePart2TextLabel frame];
        v48 = v47;
        v50 = v49;
        if (CalInterfaceIsLeftToRight())
        {
          v55.origin.x = v54.origin.y;
          v55.origin.y = v43;
          v55.size.width = v25;
          v55.size.height = v27;
          MinX = CGRectGetMinX(v55);
        }

        else
        {
          v56.origin.x = v54.origin.y;
          v56.origin.y = v43;
          v56.size.width = v25;
          v56.size.height = v27;
          MinX = CGRectGetMaxX(v56) - v48;
        }

        v57.origin.x = v54.origin.x;
        v57.origin.y = v45;
        v57.size.width = v34;
        v57.size.height = v36;
        [(UILabel *)self->_largePart2TextLabel setFrame:MinX, CGRectGetMaxY(v57), v48, v50];
        contentView = [(PreferencesTwoPartValueCell *)self contentView];
        [contentView addSubview:self->_largePart2TextLabel];
      }
    }

    else
    {
      [0 removeFromSuperview];
    }
  }

  else
  {
    textLabel4 = [(PreferencesTwoPartValueCell *)self textLabel];
    [(PreferencesTwoPartValueCell *)self layoutText:textLabel4 andValue:self->_twoPartLabel];

    [(PreferencesTwoPartValueCell *)self checkValueWidths];
  }
}

- (void)shorten
{
  WeakRetained = objc_loadWeakRetained(&self->_shortener);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_shortener);
    [v4 shortenCell:self];

    [(PreferencesTwoPartValueCell *)self _layoutSubviewsCore];
  }
}

- (void)checkValueWidths
{
  if ([(TwoPartTextLabel *)self->_twoPartLabel hasTwoParts])
  {
    [(TwoPartTextLabel *)self->_twoPartLabel frame];
    v4 = v3;
    [(TwoPartTextLabel *)self->_twoPartLabel idealSize];
    if (v4 < v5)
    {

      [(PreferencesTwoPartValueCell *)self shorten];
    }
  }
}

- (EKCellShortener)shortener
{
  WeakRetained = objc_loadWeakRetained(&self->_shortener);

  return WeakRetained;
}

@end