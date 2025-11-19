@interface AVTAttributeLabeledCollectionViewCell
- (AVTAttributeLabeledCollectionViewCell)initWithFrame:(CGRect)a3;
- (CGRect)frameForAttributeView;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setLabelString:(id)a3;
- (void)setShouldHideLabelBackground:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLabelBackgroundAppearance;
@end

@implementation AVTAttributeLabeledCollectionViewCell

- (AVTAttributeLabeledCollectionViewCell)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = AVTAttributeLabeledCollectionViewCell;
  v3 = [(AVTAttributeLabeledCollectionViewCell *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    label = v3->_label;
    v3->_label = v9;

    v11 = +[AVTUIFontRepository attributeViewLabelFont];
    [(UILabel *)v3->_label setFont:v11];

    LODWORD(v12) = 1.0;
    [(UILabel *)v3->_label _setHyphenationFactor:v12];
    [(UILabel *)v3->_label setNumberOfLines:2];
    [(UILabel *)v3->_label setTextAlignment:1];
    v13 = [objc_alloc(MEMORY[0x1E69DD298]) initWithFrame:{v5, v6, v7, v8}];
    labelBackgroundView = v3->_labelBackgroundView;
    v3->_labelBackgroundView = v13;

    [(AVTAttributeLabeledCollectionViewCell *)v3 updateLabelBackgroundAppearance];
    v15 = [(UIVisualEffectView *)v3->_labelBackgroundView layer];
    [v15 setCornerRadius:3.0];

    [(UIVisualEffectView *)v3->_labelBackgroundView setClipsToBounds:1];
    v16 = [(UIVisualEffectView *)v3->_labelBackgroundView contentView];
    [v16 addSubview:v3->_label];

    v17 = [(AVTAttributeLabeledCollectionViewCell *)v3 contentView];
    [v17 addSubview:v3->_labelBackgroundView];
  }

  return v3;
}

- (void)setShouldHideLabelBackground:(BOOL)a3
{
  if (self->_shouldHideLabelBackground != a3)
  {
    self->_shouldHideLabelBackground = a3;
    [(AVTAttributeLabeledCollectionViewCell *)self updateLabelBackgroundAppearance];
  }
}

- (CGRect)frameForAttributeView
{
  v3 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v6 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [v6 bounds];
  v8 = v7;
  [(AVTAttributeLabeledCollectionViewCell *)self labelVerticalSpace];
  v10 = v8 - v9;

  v11 = 0.0;
  v12 = 0.0;
  v13 = v5;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  [(AVTAttributeLabeledCollectionViewCell *)self updateLabelBackgroundAppearance];
  v5.receiver = self;
  v5.super_class = AVTAttributeLabeledCollectionViewCell;
  [(AVTAttributeLabeledCollectionViewCell *)&v5 traitCollectionDidChange:v4];
}

- (void)updateLabelBackgroundAppearance
{
  if ([(AVTAttributeLabeledCollectionViewCell *)self shouldHideLabelBackground])
  {
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(UIVisualEffectView *)self->_labelBackgroundView setBackgroundColor:?];
  }

  else
  {
    v3 = [(AVTAttributeLabeledCollectionViewCell *)self traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      v6 = [MEMORY[0x1E69DC730] effectWithStyle:2];
      [(UIVisualEffectView *)self->_labelBackgroundView setEffect:?];
      [MEMORY[0x1E69DC888] systemGrayColor];
    }

    else
    {
      v6 = [MEMORY[0x1E69DC730] effectWithStyle:1];
      [(UIVisualEffectView *)self->_labelBackgroundView setEffect:?];
      [MEMORY[0x1E69DC888] systemGray6Color];
    }
    v5 = ;
    [(UIVisualEffectView *)self->_labelBackgroundView setBackgroundColor:v5];
  }
}

- (void)layoutSubviews
{
  v86[1] = *MEMORY[0x1E69E9840];
  v80.receiver = self;
  v80.super_class = AVTAttributeLabeledCollectionViewCell;
  [(AVTAttributeLabeledCollectionViewCell *)&v80 layoutSubviews];
  v3 = [(AVTAttributeCollectionViewCell *)self attributeView];
  [v3 bounds];
  v5 = v4;
  v6 = [(AVTAttributeCollectionViewCell *)self attributeView];
  [v6 bounds];
  v8 = (v5 - v7) * 0.5;

  [(AVTAttributeLabeledCollectionViewCell *)self labelVerticalSpace];
  v10 = ceil(v9 + v8 + -7.0 + -4.0);
  v11 = [(AVTAttributeLabeledCollectionViewCell *)self label];
  v12 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [v12 bounds];
  [v11 sizeThatFits:{v13, v10}];
  v15 = v14;
  v17 = v16;

  v18 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [v18 bounds];
  v20 = v19;

  v21 = ceil(v15);
  if (v20 >= v21)
  {
    v20 = v21;
  }

  v22 = ceil(v17);
  if (v10 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v10;
  }

  v24 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [v24 bounds];
  v26 = v25 + -10.0;

  v27 = 10.0;
  if (v20 >= v26)
  {
    v28 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
    [v28 bounds];
    v30 = v29 + -4.0;

    v27 = 0.0;
    if (v20 < v30)
    {
      v27 = 4.0;
    }
  }

  v31 = [(AVTAttributeLabeledCollectionViewCell *)self label];
  v32 = [v31 font];
  [v32 lineHeight];
  v34 = ceil(v33) + 3.0;

  if (v23 > v34)
  {
    v35 = [(AVTAttributeLabeledCollectionViewCell *)self label];
    v36 = [v35 text];
    v37 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
    [v37 bounds];
    v39 = v38 + -10.0 + -1.0;
    v40 = *MEMORY[0x1E69DB648];
    v85 = *MEMORY[0x1E69DB648];
    v41 = [(AVTAttributeLabeledCollectionViewCell *)self label];
    v42 = [v41 font];
    v86[0] = v42;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
    [v36 boundingRectWithSize:1 options:v43 attributes:0 context:{v39, 1.79769313e308}];
    v45 = v44;

    v46 = [(AVTAttributeLabeledCollectionViewCell *)self label];
    v47 = [v46 text];
    if (ceil(v45) <= v10)
    {
      v83 = v40;
      v61 = [(AVTAttributeLabeledCollectionViewCell *)self label];
      v62 = [v61 font];
      v84 = v62;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      [v47 boundingRectWithSize:1 options:v63 attributes:0 context:{1.79769313e308, v34}];
      v65 = v64;

      v66 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
      [v66 bounds];
      v68 = v67 + -10.0 + -1.0;

      v69 = ceil(v65) * 0.6;
      if (v68 >= v69)
      {
        v20 = v69;
      }

      else
      {
        v20 = v68;
      }

      v27 = 10.0;
    }

    else
    {
      v48 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
      [v48 bounds];
      v50 = v49 + -4.0 + -1.0;
      v81 = v40;
      v51 = [(AVTAttributeLabeledCollectionViewCell *)self label];
      v52 = [v51 font];
      v82 = v52;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      [v47 boundingRectWithSize:1 options:v53 attributes:0 context:{v50, 1.79769313e308}];
      v55 = v54;
      v57 = v56;

      v27 = 0.0;
      if (ceil(v57) <= v10)
      {
        v58 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
        [v58 bounds];
        v20 = v59 + -4.0 + -1.0;

        v60 = ceil(v55);
        if (v20 >= v60)
        {
          v20 = v60;
        }

        v27 = 4.0;
      }
    }
  }

  v70 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [v70 bounds];
  v72 = (v71 - (v27 + v20)) * 0.5;

  v73 = [(AVTAttributeCollectionViewCell *)self attributeView];
  [v73 bounds];
  v75 = v74 - v8 + 7.0;

  v76 = [(AVTAttributeLabeledCollectionViewCell *)self label];
  [v76 setFrame:{v27 * 0.5, 2.0, v20, v23}];

  v77 = [(AVTAttributeLabeledCollectionViewCell *)self labelBackgroundView];
  [v77 setFrame:{v72, v75, v27 + v20, v23 + 4.0}];

  v78 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  v79 = [(AVTAttributeLabeledCollectionViewCell *)self labelBackgroundView];
  [v78 bringSubviewToFront:v79];
}

- (void)setLabelString:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_labelString isEqualToString:?])
  {
    v4 = [v8 copy];
    labelString = self->_labelString;
    self->_labelString = v4;

    v6 = self->_labelString;
    v7 = [(AVTAttributeLabeledCollectionViewCell *)self label];
    [v7 setText:v6];

    [(AVTAttributeLabeledCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  [(AVTAttributeLabeledCollectionViewCell *)self setLabelString:0];
  v3 = [(AVTAttributeLabeledCollectionViewCell *)self label];
  [v3 setText:0];

  [(AVTAttributeLabeledCollectionViewCell *)self setNeedsLayout];
  v4.receiver = self;
  v4.super_class = AVTAttributeLabeledCollectionViewCell;
  [(AVTAttributeCollectionViewCell *)&v4 prepareForReuse];
}

@end