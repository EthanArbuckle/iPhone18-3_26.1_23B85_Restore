@interface AVTAttributeLabeledCollectionViewCell
- (AVTAttributeLabeledCollectionViewCell)initWithFrame:(CGRect)frame;
- (CGRect)frameForAttributeView;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setLabelString:(id)string;
- (void)setShouldHideLabelBackground:(BOOL)background;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLabelBackgroundAppearance;
@end

@implementation AVTAttributeLabeledCollectionViewCell

- (AVTAttributeLabeledCollectionViewCell)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = AVTAttributeLabeledCollectionViewCell;
  v3 = [(AVTAttributeLabeledCollectionViewCell *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    layer = [(UIVisualEffectView *)v3->_labelBackgroundView layer];
    [layer setCornerRadius:3.0];

    [(UIVisualEffectView *)v3->_labelBackgroundView setClipsToBounds:1];
    contentView = [(UIVisualEffectView *)v3->_labelBackgroundView contentView];
    [contentView addSubview:v3->_label];

    contentView2 = [(AVTAttributeLabeledCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_labelBackgroundView];
  }

  return v3;
}

- (void)setShouldHideLabelBackground:(BOOL)background
{
  if (self->_shouldHideLabelBackground != background)
  {
    self->_shouldHideLabelBackground = background;
    [(AVTAttributeLabeledCollectionViewCell *)self updateLabelBackgroundAppearance];
  }
}

- (CGRect)frameForAttributeView
{
  contentView = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  contentView2 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [contentView2 bounds];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  [(AVTAttributeLabeledCollectionViewCell *)self updateLabelBackgroundAppearance];
  v5.receiver = self;
  v5.super_class = AVTAttributeLabeledCollectionViewCell;
  [(AVTAttributeLabeledCollectionViewCell *)&v5 traitCollectionDidChange:changeCopy];
}

- (void)updateLabelBackgroundAppearance
{
  if ([(AVTAttributeLabeledCollectionViewCell *)self shouldHideLabelBackground])
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIVisualEffectView *)self->_labelBackgroundView setBackgroundColor:?];
  }

  else
  {
    traitCollection = [(AVTAttributeLabeledCollectionViewCell *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      clearColor = [MEMORY[0x1E69DC730] effectWithStyle:2];
      [(UIVisualEffectView *)self->_labelBackgroundView setEffect:?];
      [MEMORY[0x1E69DC888] systemGrayColor];
    }

    else
    {
      clearColor = [MEMORY[0x1E69DC730] effectWithStyle:1];
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
  attributeView = [(AVTAttributeCollectionViewCell *)self attributeView];
  [attributeView bounds];
  v5 = v4;
  attributeView2 = [(AVTAttributeCollectionViewCell *)self attributeView];
  [attributeView2 bounds];
  v8 = (v5 - v7) * 0.5;

  [(AVTAttributeLabeledCollectionViewCell *)self labelVerticalSpace];
  v10 = ceil(v9 + v8 + -7.0 + -4.0);
  label = [(AVTAttributeLabeledCollectionViewCell *)self label];
  contentView = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [contentView bounds];
  [label sizeThatFits:{v13, v10}];
  v15 = v14;
  v17 = v16;

  contentView2 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [contentView2 bounds];
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

  contentView3 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [contentView3 bounds];
  v26 = v25 + -10.0;

  v27 = 10.0;
  if (v20 >= v26)
  {
    contentView4 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
    [contentView4 bounds];
    v30 = v29 + -4.0;

    v27 = 0.0;
    if (v20 < v30)
    {
      v27 = 4.0;
    }
  }

  label2 = [(AVTAttributeLabeledCollectionViewCell *)self label];
  font = [label2 font];
  [font lineHeight];
  v34 = ceil(v33) + 3.0;

  if (v23 > v34)
  {
    label3 = [(AVTAttributeLabeledCollectionViewCell *)self label];
    text = [label3 text];
    contentView5 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
    [contentView5 bounds];
    v39 = v38 + -10.0 + -1.0;
    v40 = *MEMORY[0x1E69DB648];
    v85 = *MEMORY[0x1E69DB648];
    label4 = [(AVTAttributeLabeledCollectionViewCell *)self label];
    font2 = [label4 font];
    v86[0] = font2;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
    [text boundingRectWithSize:1 options:v43 attributes:0 context:{v39, 1.79769313e308}];
    v45 = v44;

    label5 = [(AVTAttributeLabeledCollectionViewCell *)self label];
    text2 = [label5 text];
    if (ceil(v45) <= v10)
    {
      v83 = v40;
      label6 = [(AVTAttributeLabeledCollectionViewCell *)self label];
      font3 = [label6 font];
      v84 = font3;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      [text2 boundingRectWithSize:1 options:v63 attributes:0 context:{1.79769313e308, v34}];
      v65 = v64;

      contentView6 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
      [contentView6 bounds];
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
      contentView7 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
      [contentView7 bounds];
      v50 = v49 + -4.0 + -1.0;
      v81 = v40;
      label7 = [(AVTAttributeLabeledCollectionViewCell *)self label];
      font4 = [label7 font];
      v82 = font4;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      [text2 boundingRectWithSize:1 options:v53 attributes:0 context:{v50, 1.79769313e308}];
      v55 = v54;
      v57 = v56;

      v27 = 0.0;
      if (ceil(v57) <= v10)
      {
        contentView8 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
        [contentView8 bounds];
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

  contentView9 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  [contentView9 bounds];
  v72 = (v71 - (v27 + v20)) * 0.5;

  attributeView3 = [(AVTAttributeCollectionViewCell *)self attributeView];
  [attributeView3 bounds];
  v75 = v74 - v8 + 7.0;

  label8 = [(AVTAttributeLabeledCollectionViewCell *)self label];
  [label8 setFrame:{v27 * 0.5, 2.0, v20, v23}];

  labelBackgroundView = [(AVTAttributeLabeledCollectionViewCell *)self labelBackgroundView];
  [labelBackgroundView setFrame:{v72, v75, v27 + v20, v23 + 4.0}];

  contentView10 = [(AVTAttributeLabeledCollectionViewCell *)self contentView];
  labelBackgroundView2 = [(AVTAttributeLabeledCollectionViewCell *)self labelBackgroundView];
  [contentView10 bringSubviewToFront:labelBackgroundView2];
}

- (void)setLabelString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_labelString isEqualToString:?])
  {
    v4 = [stringCopy copy];
    labelString = self->_labelString;
    self->_labelString = v4;

    v6 = self->_labelString;
    label = [(AVTAttributeLabeledCollectionViewCell *)self label];
    [label setText:v6];

    [(AVTAttributeLabeledCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  [(AVTAttributeLabeledCollectionViewCell *)self setLabelString:0];
  label = [(AVTAttributeLabeledCollectionViewCell *)self label];
  [label setText:0];

  [(AVTAttributeLabeledCollectionViewCell *)self setNeedsLayout];
  v4.receiver = self;
  v4.super_class = AVTAttributeLabeledCollectionViewCell;
  [(AVTAttributeCollectionViewCell *)&v4 prepareForReuse];
}

@end