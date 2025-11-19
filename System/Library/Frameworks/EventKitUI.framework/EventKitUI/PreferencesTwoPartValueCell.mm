@interface PreferencesTwoPartValueCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (EKCellShortener)shortener;
- (TwoPartTextLabel)twoPartTextLabel;
- (UILabel)largePart2TextLabel;
- (id)description;
- (void)_layoutSubviewsCore;
- (void)checkValueWidths;
- (void)layoutSubviews;
- (void)layoutText:(id)a3 andValue:(id)a4;
- (void)setStrikeThroughLargeDetailTextLabel:(BOOL)a3;
- (void)setStrikeThroughLargePart2TextLabel:(BOOL)a3;
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

    v7 = [(PreferencesTwoPartValueCell *)self valueColor];
    [(TwoPartTextLabel *)self->_twoPartLabel setTextColor:v7];

    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(TwoPartTextLabel *)self->_twoPartLabel setBackgroundColor:v8];

    v9 = [(PreferencesTwoPartValueCell *)self contentView];
    [v9 addSubview:self->_twoPartLabel];

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

    v6 = [MEMORY[0x1E69DC888] tableCellBlueTextColor];
    [(UILabel *)self->_largePart2TextLabel setTextColor:v6];

    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_largePart2TextLabel setBackgroundColor:v7];

    v8 = [(PreferencesTwoPartValueCell *)self contentView];
    [v8 addSubview:self->_largePart2TextLabel];

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
  v5 = [(PreferencesTwoPartValueCell *)self twoPartTextLabel];
  v6 = [v5 description];
  v7 = [v3 stringWithFormat:@"%@\t%@", v4, v6];

  return v7;
}

- (void)layoutText:(id)a3 andValue:(id)a4
{
  v94 = a3;
  v6 = a4;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  [(PreferencesTwoPartValueCell *)self directionalLayoutMargins];
  v9 = v8;
  v10 = [(PreferencesTwoPartValueCell *)self contentView];
  [v10 bounds];
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
  [v94 sizeThatFits:{width - v22, height}];
  v27 = v26;
  v28 = [v94 text];
  v29 = v28;
  if (v28 && [v28 length])
  {
    v30 = [v94 superview];

    if (!v30)
    {
      v31 = [(PreferencesTwoPartValueCell *)self contentView];
      [v31 addSubview:v94];
    }
  }

  else
  {
    [v94 removeFromSuperview];
  }

  v32 = *v25;
  v33 = *v25;
  if (v6)
  {
    [v6 sizeThatFits:{v24, height}];
    v33 = v34;
    v35 = [v6 text];
    v36 = v35;
    if (v35 && [v35 length])
    {
      v37 = [v6 superview];

      if (!v37)
      {
        v38 = [(PreferencesTwoPartValueCell *)self contentView];
        [v38 addSubview:v6];
      }
    }

    else
    {
      [v6 removeFromSuperview];
    }
  }

  v39 = [v94 numberOfLines];
  v40 = ceil(v24 * (v27 / (v27 + v33 + 6.0)));
  [v94 setNumberOfLines:1];
  [v94 sizeThatFits:{v40, height}];
  v42 = v41;
  [v94 setNumberOfLines:0];
  [v94 sizeThatFits:{v40, height}];
  v45 = v42 * v39;
  if (v39 <= 0)
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

  [v94 setNumberOfLines:v39];
  v47 = [v6 numberOfLines];
  v48 = v24;
  v91 = v40;
  v49 = v24 - v40;
  v50 = v24 - v40 + -6.0;
  [v6 setNumberOfLines:1];
  if (v6)
  {
    [v6 sizeThatFits:{v50, height}];
    v52 = v51;
    [v6 setNumberOfLines:0];
    [v6 sizeThatFits:{v50, height}];
    v32 = v54;
  }

  else
  {
    v52 = v25[1];
    [0 setNumberOfLines:0];
    v53 = v52;
  }

  v55 = v52 * v47;
  if (v47 <= 0)
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

  [v6 setNumberOfLines:v47];
  v58 = [v94 font];
  [v58 ascender];
  v60 = v59;
  v61 = [v6 font];
  [v61 ascender];
  v63 = v62;

  if (v60 >= v63)
  {
    v64 = [v94 font];
    [v64 ascender];
    v73 = v72;
    v67 = [v6 font];
    [v67 ascender];
    CalRoundToScreenScale(v73 - v74);
    v71 = v75;
    v70 = 0.0;
  }

  else
  {
    v64 = [v6 font];
    [v64 ascender];
    v66 = v65;
    v67 = [v94 font];
    [v67 ascender];
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
  v85 = [v94 superview];

  if (v85)
  {
    [v94 setFrame:{v92, y, v80, v90}];
  }

  v86 = [v6 superview];

  if (v86)
  {
    [v6 setFrame:{v81, v82, v83, v84}];
  }
}

- (void)_layoutSubviewsCore
{
  v4.receiver = self;
  v4.super_class = PreferencesTwoPartValueCell;
  [(EKUITableViewCell *)&v4 layoutSubviews];
  v3 = [(PreferencesTwoPartValueCell *)self textLabel];
  [(PreferencesTwoPartValueCell *)self layoutText:v3 andValue:self->_twoPartLabel];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PreferencesTwoPartValueCell *)self traitCollection];
  if (EKUIUsesLargeTextLayout(v6))
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
  v14 = [(UILabel *)self->_largePart2TextLabel font];
  [v14 _bodyLeading];
  CalRoundToScreenScale((v13 + v15) * 0.5);
  v17 = v11 + v16;

LABEL_5:
  v18 = v9;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)setStrikeThroughLargeDetailTextLabel:(BOOL)a3
{
  if (self->_strikeThroughLargeDetailTextLabel != a3)
  {
    self->_strikeThroughLargeDetailTextLabel = a3;
  }

  [(PreferencesTwoPartValueCell *)self setNeedsLayout];
}

- (void)setStrikeThroughLargePart2TextLabel:(BOOL)a3
{
  if (self->_strikeThroughLargePart2TextLabel != a3)
  {
    self->_strikeThroughLargePart2TextLabel = a3;
  }

  [(PreferencesTwoPartValueCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  *&v54.size.width = self;
  *&v54.size.height = PreferencesTwoPartValueCell;
  [(CGSize *)&v54.size layoutSubviews];
  v3 = [(PreferencesTwoPartValueCell *)self traitCollection];
  v4 = EKUIUsesLargeTextLayout(v3);

  if (v4)
  {
    v5 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
    v6 = [v5 text];

    v7 = [(PreferencesTwoPartValueCell *)self largePart2TextLabel];
    v8 = [v7 text];

    v9 = MEMORY[0x1E69DB6B8];
    if (v6)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v6];
      v11 = *v9;
      v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_strikeThroughLargeDetailTextLabel];
      [v10 addAttribute:v11 value:v12 range:{0, objc_msgSend(v10, "length")}];

      v13 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
      [v13 setAttributedText:v10];
    }

    if (v8)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8];
      v15 = *v9;
      v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_strikeThroughLargePart2TextLabel];
      [v14 addAttribute:v15 value:v16 range:{0, objc_msgSend(v14, "length")}];

      v17 = [(PreferencesTwoPartValueCell *)self largePart2TextLabel];
      [v17 setAttributedText:v14];
    }

    if (self->_largePart2TextLabel)
    {
      v18 = [(PreferencesTwoPartValueCell *)self textLabel];
      [v18 sizeToFit];

      v19 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
      [v19 sizeToFit];

      [(UILabel *)self->_largePart2TextLabel sizeToFit];
      v20 = [(PreferencesTwoPartValueCell *)self textLabel];
      [v20 frame];
      v54.origin.y = v21;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v28 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
      [v28 frame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v37 = [(UILabel *)self->_largePart2TextLabel text];
      v38 = [v37 length];

      if (v38)
      {
        v39 = [(UILabel *)self->_largePart2TextLabel font];
        [v39 _bodyLeading];
        CalRoundToScreenScale(v40 * 0.5);
        v42 = v41;

        v43 = v23 - v42;
        v44 = [(PreferencesTwoPartValueCell *)self textLabel];
        [v44 setFrame:{v54.origin.y, v43, v25, v27}];

        v45 = v32 - v42;
        v46 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
        v54.origin.x = v30;
        [v46 setFrame:{v30, v45, v34, v36}];

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
        v53 = [(PreferencesTwoPartValueCell *)self contentView];
        [v53 addSubview:self->_largePart2TextLabel];
      }
    }

    else
    {
      [0 removeFromSuperview];
    }
  }

  else
  {
    v52 = [(PreferencesTwoPartValueCell *)self textLabel];
    [(PreferencesTwoPartValueCell *)self layoutText:v52 andValue:self->_twoPartLabel];

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