@interface _SFSettingsAlertButton
- (NSArray)componentsArrangement;
- (UIView)trailingView;
- (_SFSettingsAlertButton)initWithFrame:(CGRect)a3;
- (id)_arrangedSubviews;
- (id)attributedDetailText;
- (id)attributedText;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)text;
- (void)_didChangeContents;
- (void)_hover:(id)a3;
- (void)_updateHasDetailText;
- (void)_updateTintColor;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)setAccessoryView:(id)a3;
- (void)setAttributedDetailText:(id)a3;
- (void)setAttributedText:(id)a3;
- (void)setComponentsArrangement:(id)a3;
- (void)setDetailText:(id)a3;
- (void)setImage:(id)a3;
- (void)setLimitToSingleLine:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShowsIndicatorDot:(BOOL)a3;
- (void)setStatusImageView:(id)a3;
- (void)setText:(id)a3;
- (void)updateConstraints;
@end

@implementation _SFSettingsAlertButton

- (_SFSettingsAlertButton)initWithFrame:(CGRect)a3
{
  v37[4] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = _SFSettingsAlertButton;
  v3 = [(_SFSettingsAlertControl *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    textGuide = v3->_textGuide;
    v3->_textGuide = v4;

    [(_SFSettingsAlertButton *)v3 addLayoutGuide:v3->_textGuide];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v3->_textLabel;
    v3->_textLabel = v6;

    [(UILabel *)v3->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_textLabel setNumberOfLines:v3->_limitToSingleLine];
    LODWORD(v8) = 1132003328;
    [(UILabel *)v3->_textLabel setContentHuggingPriority:0 forAxis:v8];
    LODWORD(v9) = 1144733696;
    [(UILabel *)v3->_textLabel setContentCompressionResistancePriority:0 forAxis:v9];
    v10 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v10;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    v12 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UIImageView *)v3->_imageView setPreferredSymbolConfiguration:v12];

    LODWORD(v13) = 1147207680;
    [(UIImageView *)v3->_imageView setContentHuggingPriority:0 forAxis:v13];
    v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
    dotView = v3->_dotView;
    v3->_dotView = v14;

    v16 = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UIView *)v3->_dotView setBackgroundColor:v16];

    [(UIView *)v3->_dotView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_dotView _setContinuousCornerRadius:2.0];
    v17 = [(_SFSettingsAlertButton *)v3 heightAnchor];
    v18 = [v17 constraintEqualToConstant:44.0];

    LODWORD(v19) = 1111752704;
    [v18 setPriority:v19];
    v20 = MEMORY[0x1E696ACD8];
    v21 = [(_SFSettingsAlertButton *)v3 heightAnchor];
    v22 = [v21 constraintGreaterThanOrEqualToConstant:44.0];
    v37[0] = v22;
    v37[1] = v18;
    v34 = v18;
    v23 = [(UIView *)v3->_dotView heightAnchor];
    v24 = [v23 constraintEqualToConstant:4.0];
    v37[2] = v24;
    v25 = [(UIView *)v3->_dotView widthAnchor];
    v26 = [(UIView *)v3->_dotView heightAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v37[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v20 activateConstraints:v28];

    if (([MEMORY[0x1E69C8880] isBrowsingAssistantEnabled] & 1) == 0)
    {
      v29 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v3 action:sel__hover_];
      [(_SFSettingsAlertButton *)v3 addGestureRecognizer:v29];
    }

    [(_SFSettingsAlertButton *)v3 setFocusEffect:0];
    v36 = objc_opt_class();
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v31 = [(_SFSettingsAlertButton *)v3 registerForTraitChanges:v30 withTarget:v3 action:sel_setNeedsLayout];

    v32 = v3;
  }

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  text = self->_text;
  if (text != v4)
  {
    v11 = v4;
    v6 = [(NSString *)text isEqualToString:v4];
    v4 = v11;
    if (!v6)
    {
      v7 = [(NSString *)v11 copy];
      v8 = self->_text;
      self->_text = v7;

      [(UILabel *)self->_textLabel setText:v11];
      [(UILabel *)self->_textLabel _setTextColorFollowsTintColor:1];
      v9 = [(NSString *)self->_text length];
      v10 = [(UILabel *)self->_textLabel superview];

      if (v9)
      {
        if (!v10)
        {
          [(_SFSettingsAlertButton *)self addSubview:self->_textLabel];
        }
      }

      else if (v10)
      {
        [(UILabel *)self->_textLabel removeFromSuperview];
      }

      [(_SFSettingsAlertButton *)self _didChangeContents];
      v4 = v11;
    }
  }
}

- (id)text
{
  text = self->_text;
  if (text)
  {
    v3 = text;
  }

  else
  {
    v3 = [(NSAttributedString *)self->_attributedText string];
  }

  return v3;
}

- (void)setDetailText:(id)a3
{
  v4 = a3;
  detailText = self->_detailText;
  if (detailText != v4)
  {
    v10 = v4;
    v6 = [(NSString *)detailText isEqualToString:v4];
    v4 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_detailText;
      self->_detailText = v7;

      attributedDetailText = self->_attributedDetailText;
      self->_attributedDetailText = 0;

      [(_SFSettingsAlertButton *)self _updateHasDetailText];
      [(UILabel *)self->_detailTextLabel setText:self->_detailText];
      [(_SFSettingsAlertButton *)self _didChangeContents];
      v4 = v10;
    }
  }
}

- (void)_updateHasDetailText
{
  v3 = [(NSString *)self->_detailText length];
  v4 = [(UILabel *)self->_detailTextLabel superview];

  if (v3)
  {
    if (!v4)
    {
      detailTextLabel = self->_detailTextLabel;
      if (!detailTextLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v7 = self->_detailTextLabel;
        self->_detailTextLabel = v6;

        [(UILabel *)self->_detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
        v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
        [(UILabel *)self->_detailTextLabel setFont:v8];

        [(UILabel *)self->_detailTextLabel setAdjustsFontForContentSizeCategory:1];
        v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(UILabel *)self->_detailTextLabel setTextColor:v9];

        [(UILabel *)self->_detailTextLabel setNumberOfLines:self->_limitToSingleLine];
        detailTextLabel = self->_detailTextLabel;
      }

      [(_SFSettingsAlertButton *)self addSubview:detailTextLabel];
    }
  }

  else if (v4)
  {
    [(UILabel *)self->_detailTextLabel removeFromSuperview];
    v10 = self->_detailTextLabel;
    self->_detailTextLabel = 0;
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = _SFSettingsAlertButton;
  [(_SFSettingsAlertButton *)&v9 layoutSubviews];
  v3 = [(_SFSettingsAlertButton *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = 9.0;
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v6 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v6 scaledValueForValue:11.0];
    v5 = v7;
  }

  [(_SFSettingsAlertButton *)self setLayoutMargins:v5, 16.0, v5, 16.0];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:self->_textStyle];
  [(UILabel *)self->_textLabel setFont:v8];

  if (self->_attributedText)
  {
    [(UILabel *)self->_textLabel setAttributedText:?];
  }
}

- (void)_didChangeContents
{
  [(_SFSettingsAlertButton *)self setNeedsUpdateConstraints];
  v3 = [(_SFSettingsAlertControl *)self delegate];
  [v3 alertItemViewContentSizeDidChange:self];
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  attributedText = self->_attributedText;
  if (attributedText != v4)
  {
    v11 = v4;
    v6 = [(NSAttributedString *)attributedText isEqualToAttributedString:v4];
    v4 = v11;
    if (!v6)
    {
      v7 = [(NSAttributedString *)v11 copy];
      v8 = self->_attributedText;
      self->_attributedText = v7;

      [(UILabel *)self->_textLabel setAttributedText:v11];
      [(UILabel *)self->_textLabel _setTextColorFollowsTintColor:0];
      v9 = [(NSAttributedString *)self->_attributedText length];
      v10 = [(UILabel *)self->_textLabel superview];

      if (v9)
      {
        if (!v10)
        {
          [(_SFSettingsAlertButton *)self addSubview:self->_textLabel];
        }
      }

      else if (v10)
      {
        [(UILabel *)self->_textLabel removeFromSuperview];
      }

      [(_SFSettingsAlertButton *)self _didChangeContents];
      v4 = v11;
    }
  }
}

- (id)attributedText
{
  attributedText = self->_attributedText;
  if (attributedText || !self->_text)
  {
    v3 = attributedText;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_text];
  }

  return v3;
}

- (void)setAttributedDetailText:(id)a3
{
  v8 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [v8 copy];
    attributedDetailText = self->_attributedDetailText;
    self->_attributedDetailText = v4;

    v6 = [v8 string];
    detailText = self->_detailText;
    self->_detailText = v6;

    [(_SFSettingsAlertButton *)self _updateHasDetailText];
    [(UILabel *)self->_detailTextLabel setAttributedText:self->_attributedDetailText];
    [(_SFSettingsAlertButton *)self _didChangeContents];
  }
}

- (id)attributedDetailText
{
  attributedDetailText = self->_attributedDetailText;
  if (attributedDetailText)
  {
    v3 = attributedDetailText;
  }

  else if (self->_detailText)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_detailText];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setImage:(id)a3
{
  v5 = a3;
  image = self->_image;
  if (image != v5)
  {
    v10 = v5;
    v7 = [(UIImage *)image isEqual:v5];
    v5 = v10;
    if ((v7 & 1) == 0)
    {
      v8 = self->_image;
      objc_storeStrong(&self->_image, a3);
      [(UIImageView *)self->_imageView setImage:self->_image];
      v5 = v10;
      v9 = self->_image;
      if ((v8 == 0) == (v9 != 0))
      {
        if (v9)
        {
          [(_SFSettingsAlertButton *)self addSubview:self->_imageView];
        }

        else
        {
          [(UIImageView *)self->_imageView removeFromSuperview];
        }

        [(_SFSettingsAlertButton *)self _didChangeContents];
        v5 = v10;
      }
    }
  }
}

- (void)setShowsIndicatorDot:(BOOL)a3
{
  if (self->_showsIndicatorDot != a3)
  {
    if (a3 && self->_image)
    {
      [(_SFSettingsAlertButton *)self addSubview:self->_dotView];
    }

    else
    {
      [(UIView *)self->_dotView removeFromSuperview];
    }
  }
}

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  accessoryView = self->_accessoryView;
  if (accessoryView != v5)
  {
    v8 = v5;
    [(UIView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, a3);
    v7 = self->_accessoryView;
    if (v7)
    {
      [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(_SFSettingsAlertButton *)self addSubview:self->_accessoryView];
    }

    [(_SFSettingsAlertButton *)self _didChangeContents];
    v5 = v8;
  }
}

- (void)setStatusImageView:(id)a3
{
  v5 = a3;
  statusImageView = self->_statusImageView;
  if (statusImageView != v5)
  {
    v7 = v5;
    [(UIImageView *)statusImageView removeFromSuperview];
    objc_storeStrong(&self->_statusImageView, a3);
    if (self->_statusImageView)
    {
      [(_SFSettingsAlertButton *)self addSubview:?];
    }

    [(_SFSettingsAlertButton *)self _didChangeContents];
    v5 = v7;
  }
}

- (void)setComponentsArrangement:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_componentsArrangement != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      componentsArrangement = self->_componentsArrangement;
      self->_componentsArrangement = v7;

      [(_SFSettingsAlertButton *)self setNeedsUpdateConstraints];
      v5 = v9;
    }
  }
}

- (NSArray)componentsArrangement
{
  componentsArrangement = self->_componentsArrangement;
  if (componentsArrangement)
  {
    v4 = componentsArrangement;
  }

  else
  {
    v4 = &unk_1F5023EC0;
  }

  return v4;
}

- (UIView)trailingView
{
  v2 = [(_SFSettingsAlertButton *)self _arrangedSubviews];
  if ([v2 count] == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 lastObject];
  }

  return v3;
}

- (void)setLimitToSingleLine:(BOOL)a3
{
  if (self->_limitToSingleLine != a3)
  {
    self->_limitToSingleLine = a3;
    v5 = a3;
    [(UILabel *)self->_textLabel setNumberOfLines:a3];
    [(UILabel *)self->_detailTextLabel setNumberOfLines:v5];

    [(_SFSettingsAlertButton *)self _didChangeContents];
  }
}

- (void)updateConstraints
{
  v71.receiver = self;
  v71.super_class = _SFSettingsAlertButton;
  [(_SFSettingsAlertButton *)&v71 updateConstraints];
  if (self->_contentConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    contentConstraints = self->_contentConstraints;
    self->_contentConstraints = 0;
  }

  v4 = [(_SFSettingsAlertButton *)self _arrangedSubviews];
  if ([v4 count])
  {
    v5 = [(_SFSettingsAlertButton *)self layoutMarginsGuide];
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [v4 count];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __43___SFSettingsAlertButton_updateConstraints__block_invoke;
    v65[3] = &unk_1E8494360;
    v8 = v6;
    v66 = v8;
    v64 = v5;
    v67 = v64;
    v9 = v4;
    v68 = v9;
    v69 = self;
    v70 = v7;
    [v9 enumerateObjectsUsingBlock:v65];
    if ([(UIImage *)self->_image hasBaseline]&& ([(UILabel *)self->_textLabel superview], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [(UIImageView *)self->_imageView firstBaselineAnchor];
      v12 = [(UILabel *)self->_textLabel firstBaselineAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      [(NSArray *)v8 addObject:v13];

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    p_detailTextLabel = &self->_detailTextLabel;
    v16 = [(UILabel *)self->_detailTextLabel superview];
    if (v16)
    {
      v17 = v16;
      v18 = [v9 containsObject:*p_detailTextLabel];

      if ((v18 & 1) == 0)
      {
        v19 = [(UILabel *)*p_detailTextLabel leadingAnchor];
        v20 = [(UILabel *)self->_textLabel leadingAnchor];
        v21 = [v19 constraintEqualToAnchor:v20];
        [(NSArray *)v8 addObject:v21];

        if (v14 && (v22 = [v9 indexOfObject:self->_imageView], v22 == objc_msgSend(v9, "indexOfObject:", self->_textLabel) + 1))
        {
          v23 = [(UILabel *)*p_detailTextLabel trailingAnchor];
          v24 = [(UIImageView *)self->_imageView trailingAnchor];
          v25 = [v23 constraintLessThanOrEqualToAnchor:v24];
        }

        else
        {
          v23 = [(UILabel *)*p_detailTextLabel trailingAnchor];
          v24 = [(UILabel *)self->_textLabel trailingAnchor];
          v25 = [v23 constraintEqualToAnchor:v24];
        }

        v26 = v25;
        [(NSArray *)v8 addObject:v25];

        v27 = [(UILabel *)*p_detailTextLabel topAnchor];
        v28 = [(UILabel *)self->_textLabel bottomAnchor];
        v29 = [v27 constraintEqualToAnchor:v28];
        [(NSArray *)v8 addObject:v29];

        v30 = [(UILabel *)*p_detailTextLabel bottomAnchor];
        v31 = [v64 bottomAnchor];
        v32 = [v30 constraintLessThanOrEqualToAnchor:v31];
        [(NSArray *)v8 addObject:v32];
      }
    }

    p_textLabel = &self->_textLabel;
    v34 = [(UILabel *)self->_textLabel superview];

    if (v34)
    {
      v35 = [(UILabel *)*p_textLabel widthAnchor];
      v36 = [v64 widthAnchor];
      v37 = [v35 constraintEqualToAnchor:v36 multiplier:1.0];

      LODWORD(v38) = 1132068864;
      [v37 setPriority:v38];
      [(NSArray *)v8 addObject:v37];
    }

    v39 = [(UILabel *)*p_textLabel superview];
    if (v39)
    {
    }

    else
    {
      v40 = [(UILabel *)*p_detailTextLabel superview];

      if (!v40)
      {
        goto LABEL_27;
      }
    }

    v41 = [(UILabel *)*p_textLabel superview];
    if (v41)
    {
      v42 = &self->_textLabel;
    }

    else
    {
      v42 = &self->_detailTextLabel;
    }

    v43 = *v42;

    v44 = [(UILabel *)*p_detailTextLabel superview];
    if (v44)
    {
      v45 = &self->_detailTextLabel;
    }

    else
    {
      v45 = &self->_textLabel;
    }

    v46 = *v45;

    v47 = [(UILayoutGuide *)self->_textGuide topAnchor];
    v48 = [(UILabel *)v43 topAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [(NSArray *)v8 addObject:v49];

    v50 = [(UILayoutGuide *)self->_textGuide bottomAnchor];
    v51 = [(UILabel *)v46 bottomAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [(NSArray *)v8 addObject:v52];

LABEL_27:
    v53 = [(UIView *)self->_dotView superview];
    if (v53)
    {
      v54 = v53;
      v55 = [(UIImageView *)self->_imageView superview];

      if (v55)
      {
        v56 = [(UIView *)self->_dotView leadingAnchor];
        v57 = [(UIImageView *)self->_imageView trailingAnchor];
        v58 = [v56 constraintEqualToAnchor:v57 constant:-1.0];
        [(NSArray *)v8 addObject:v58];

        v59 = [(UIView *)self->_dotView topAnchor];
        v60 = [(UIImageView *)self->_imageView topAnchor];
        v61 = [v59 constraintEqualToAnchor:v60];
        [(NSArray *)v8 addObject:v61];
      }
    }

    v62 = self->_contentConstraints;
    self->_contentConstraints = v8;
    v63 = v8;

    [MEMORY[0x1E696ACD8] activateConstraints:self->_contentConstraints];
  }
}

- (id)_arrangedSubviews
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43___SFSettingsAlertButton__arrangedSubviews__block_invoke;
  aBlock[3] = &unk_1E8494388;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(_SFSettingsAlertButton *)self componentsArrangement];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43___SFSettingsAlertButton__arrangedSubviews__block_invoke_2;
  v8[3] = &unk_1E84943B0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 safari_mapAndFilterObjectsUsingBlock:v8];

  return v6;
}

- (void)_hover:(id)a3
{
  v4 = ([a3 state] - 1) < 2;

  [(_SFSettingsAlertControl *)self setHighlighted:v4];
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v19.receiver = self;
  v19.super_class = _SFSettingsAlertButton;
  v6 = a3;
  [(_SFSettingsAlertButton *)&v19 endTrackingWithTouch:v6 withEvent:a4];
  [(_SFSettingsAlertButton *)self bounds:v19.receiver];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 locationInView:self];
  v16 = v15;
  v18 = v17;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  v20.x = v16;
  v20.y = v18;
  if (CGRectContainsPoint(v21, v20))
  {
    [(_SFSettingsAlertButton *)self sendActionsForControlEvents:0x2000];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  self->_selected = a3;
  v5 = [(_SFSettingsAlertControl *)self item];
  v6 = [v5 type];

  if (v6 == 4)
  {
    v7 = [(_SFSettingsAlertButton *)self imageView];
    [v7 setAlpha:v3];
  }
}

- (void)_updateTintColor
{
  if (-[_SFSettingsAlertButton isEnabled](self, "isEnabled") || ([MEMORY[0x1E69DC888] secondaryLabelColor], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = 0;
    v4 = self->_attributedText == 0;
  }

  else
  {
    v5 = v3;
    v4 = 1;
  }

  [(UILabel *)self->_textLabel _setTextColorFollowsTintColor:v4];
  [(UILabel *)self->_textLabel setTintColor:v5];
  [(UIImageView *)self->_imageView setTintColor:v5];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(UIView *)self->_accessoryView convertPoint:self fromView:x, y];
  v9 = v8;
  v11 = v10;
  if ([(UIView *)self->_accessoryView isUserInteractionEnabled]&& [(UIView *)self->_accessoryView pointInside:v7 withEvent:v9, v11])
  {
    v12 = [(UIView *)self->_accessoryView hitTest:v7 withEvent:v9, v11];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = _SFSettingsAlertButton;
    v12 = [(_SFSettingsAlertButton *)&v15 hitTest:v7 withEvent:x, y];
  }

  v13 = v12;

  return v13;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8 = a3;
  v5 = [v8 previouslyFocusedView];
  v6 = v5;
  if (v5 == self)
  {
  }

  else
  {
    v7 = [v8 nextFocusedView];

    if (v7 != self)
    {
      goto LABEL_6;
    }
  }

  [(_SFSettingsAlertControl *)self _updateBackgroundView];
LABEL_6:
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (SFShouldHandleSelectionForPresses())
  {
    [(_SFSettingsAlertButton *)self sendActionsForControlEvents:0x2000];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SFSettingsAlertButton;
    [(_SFSettingsAlertButton *)&v8 pressesBegan:v6 withEvent:v7];
  }
}

@end