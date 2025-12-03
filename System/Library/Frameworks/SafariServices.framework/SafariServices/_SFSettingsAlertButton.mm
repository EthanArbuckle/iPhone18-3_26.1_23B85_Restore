@interface _SFSettingsAlertButton
- (NSArray)componentsArrangement;
- (UIView)trailingView;
- (_SFSettingsAlertButton)initWithFrame:(CGRect)frame;
- (id)_arrangedSubviews;
- (id)attributedDetailText;
- (id)attributedText;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)text;
- (void)_didChangeContents;
- (void)_hover:(id)_hover;
- (void)_updateHasDetailText;
- (void)_updateTintColor;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)setAccessoryView:(id)view;
- (void)setAttributedDetailText:(id)text;
- (void)setAttributedText:(id)text;
- (void)setComponentsArrangement:(id)arrangement;
- (void)setDetailText:(id)text;
- (void)setImage:(id)image;
- (void)setLimitToSingleLine:(BOOL)line;
- (void)setSelected:(BOOL)selected;
- (void)setShowsIndicatorDot:(BOOL)dot;
- (void)setStatusImageView:(id)view;
- (void)setText:(id)text;
- (void)updateConstraints;
@end

@implementation _SFSettingsAlertButton

- (_SFSettingsAlertButton)initWithFrame:(CGRect)frame
{
  v37[4] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = _SFSettingsAlertButton;
  v3 = [(_SFSettingsAlertControl *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UIView *)v3->_dotView setBackgroundColor:systemBlueColor];

    [(UIView *)v3->_dotView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_dotView _setContinuousCornerRadius:2.0];
    heightAnchor = [(_SFSettingsAlertButton *)v3 heightAnchor];
    v18 = [heightAnchor constraintEqualToConstant:44.0];

    LODWORD(v19) = 1111752704;
    [v18 setPriority:v19];
    v20 = MEMORY[0x1E696ACD8];
    heightAnchor2 = [(_SFSettingsAlertButton *)v3 heightAnchor];
    v22 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:44.0];
    v37[0] = v22;
    v37[1] = v18;
    v34 = v18;
    heightAnchor3 = [(UIView *)v3->_dotView heightAnchor];
    v24 = [heightAnchor3 constraintEqualToConstant:4.0];
    v37[2] = v24;
    widthAnchor = [(UIView *)v3->_dotView widthAnchor];
    heightAnchor4 = [(UIView *)v3->_dotView heightAnchor];
    v27 = [widthAnchor constraintEqualToAnchor:heightAnchor4];
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

- (void)setText:(id)text
{
  textCopy = text;
  text = self->_text;
  if (text != textCopy)
  {
    v11 = textCopy;
    v6 = [(NSString *)text isEqualToString:textCopy];
    textCopy = v11;
    if (!v6)
    {
      v7 = [(NSString *)v11 copy];
      v8 = self->_text;
      self->_text = v7;

      [(UILabel *)self->_textLabel setText:v11];
      [(UILabel *)self->_textLabel _setTextColorFollowsTintColor:1];
      v9 = [(NSString *)self->_text length];
      superview = [(UILabel *)self->_textLabel superview];

      if (v9)
      {
        if (!superview)
        {
          [(_SFSettingsAlertButton *)self addSubview:self->_textLabel];
        }
      }

      else if (superview)
      {
        [(UILabel *)self->_textLabel removeFromSuperview];
      }

      [(_SFSettingsAlertButton *)self _didChangeContents];
      textCopy = v11;
    }
  }
}

- (id)text
{
  text = self->_text;
  if (text)
  {
    string = text;
  }

  else
  {
    string = [(NSAttributedString *)self->_attributedText string];
  }

  return string;
}

- (void)setDetailText:(id)text
{
  textCopy = text;
  detailText = self->_detailText;
  if (detailText != textCopy)
  {
    v10 = textCopy;
    v6 = [(NSString *)detailText isEqualToString:textCopy];
    textCopy = v10;
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
      textCopy = v10;
    }
  }
}

- (void)_updateHasDetailText
{
  v3 = [(NSString *)self->_detailText length];
  superview = [(UILabel *)self->_detailTextLabel superview];

  if (v3)
  {
    if (!superview)
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
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(UILabel *)self->_detailTextLabel setTextColor:secondaryLabelColor];

        [(UILabel *)self->_detailTextLabel setNumberOfLines:self->_limitToSingleLine];
        detailTextLabel = self->_detailTextLabel;
      }

      [(_SFSettingsAlertButton *)self addSubview:detailTextLabel];
    }
  }

  else if (superview)
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
  traitCollection = [(_SFSettingsAlertButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = 9.0;
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
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
  delegate = [(_SFSettingsAlertControl *)self delegate];
  [delegate alertItemViewContentSizeDidChange:self];
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  attributedText = self->_attributedText;
  if (attributedText != textCopy)
  {
    v11 = textCopy;
    v6 = [(NSAttributedString *)attributedText isEqualToAttributedString:textCopy];
    textCopy = v11;
    if (!v6)
    {
      v7 = [(NSAttributedString *)v11 copy];
      v8 = self->_attributedText;
      self->_attributedText = v7;

      [(UILabel *)self->_textLabel setAttributedText:v11];
      [(UILabel *)self->_textLabel _setTextColorFollowsTintColor:0];
      v9 = [(NSAttributedString *)self->_attributedText length];
      superview = [(UILabel *)self->_textLabel superview];

      if (v9)
      {
        if (!superview)
        {
          [(_SFSettingsAlertButton *)self addSubview:self->_textLabel];
        }
      }

      else if (superview)
      {
        [(UILabel *)self->_textLabel removeFromSuperview];
      }

      [(_SFSettingsAlertButton *)self _didChangeContents];
      textCopy = v11;
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

- (void)setAttributedDetailText:(id)text
{
  textCopy = text;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [textCopy copy];
    attributedDetailText = self->_attributedDetailText;
    self->_attributedDetailText = v4;

    string = [textCopy string];
    detailText = self->_detailText;
    self->_detailText = string;

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

- (void)setImage:(id)image
{
  imageCopy = image;
  image = self->_image;
  if (image != imageCopy)
  {
    v10 = imageCopy;
    v7 = [(UIImage *)image isEqual:imageCopy];
    imageCopy = v10;
    if ((v7 & 1) == 0)
    {
      v8 = self->_image;
      objc_storeStrong(&self->_image, image);
      [(UIImageView *)self->_imageView setImage:self->_image];
      imageCopy = v10;
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
        imageCopy = v10;
      }
    }
  }
}

- (void)setShowsIndicatorDot:(BOOL)dot
{
  if (self->_showsIndicatorDot != dot)
  {
    if (dot && self->_image)
    {
      [(_SFSettingsAlertButton *)self addSubview:self->_dotView];
    }

    else
    {
      [(UIView *)self->_dotView removeFromSuperview];
    }
  }
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  accessoryView = self->_accessoryView;
  if (accessoryView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, view);
    v7 = self->_accessoryView;
    if (v7)
    {
      [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(_SFSettingsAlertButton *)self addSubview:self->_accessoryView];
    }

    [(_SFSettingsAlertButton *)self _didChangeContents];
    viewCopy = v8;
  }
}

- (void)setStatusImageView:(id)view
{
  viewCopy = view;
  statusImageView = self->_statusImageView;
  if (statusImageView != viewCopy)
  {
    v7 = viewCopy;
    [(UIImageView *)statusImageView removeFromSuperview];
    objc_storeStrong(&self->_statusImageView, view);
    if (self->_statusImageView)
    {
      [(_SFSettingsAlertButton *)self addSubview:?];
    }

    [(_SFSettingsAlertButton *)self _didChangeContents];
    viewCopy = v7;
  }
}

- (void)setComponentsArrangement:(id)arrangement
{
  arrangementCopy = arrangement;
  v5 = arrangementCopy;
  if (self->_componentsArrangement != arrangementCopy)
  {
    v9 = arrangementCopy;
    v6 = [(NSArray *)arrangementCopy isEqual:?];
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
  _arrangedSubviews = [(_SFSettingsAlertButton *)self _arrangedSubviews];
  if ([_arrangedSubviews count] == 1)
  {
    lastObject = 0;
  }

  else
  {
    lastObject = [_arrangedSubviews lastObject];
  }

  return lastObject;
}

- (void)setLimitToSingleLine:(BOOL)line
{
  if (self->_limitToSingleLine != line)
  {
    self->_limitToSingleLine = line;
    lineCopy = line;
    [(UILabel *)self->_textLabel setNumberOfLines:line];
    [(UILabel *)self->_detailTextLabel setNumberOfLines:lineCopy];

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

  _arrangedSubviews = [(_SFSettingsAlertButton *)self _arrangedSubviews];
  if ([_arrangedSubviews count])
  {
    layoutMarginsGuide = [(_SFSettingsAlertButton *)self layoutMarginsGuide];
    array = [MEMORY[0x1E695DF70] array];
    v7 = [_arrangedSubviews count];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __43___SFSettingsAlertButton_updateConstraints__block_invoke;
    v65[3] = &unk_1E8494360;
    v8 = array;
    v66 = v8;
    v64 = layoutMarginsGuide;
    v67 = v64;
    v9 = _arrangedSubviews;
    v68 = v9;
    selfCopy = self;
    v70 = v7;
    [v9 enumerateObjectsUsingBlock:v65];
    if ([(UIImage *)self->_image hasBaseline]&& ([(UILabel *)self->_textLabel superview], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      firstBaselineAnchor = [(UIImageView *)self->_imageView firstBaselineAnchor];
      firstBaselineAnchor2 = [(UILabel *)self->_textLabel firstBaselineAnchor];
      v13 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
      [(NSArray *)v8 addObject:v13];

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    p_detailTextLabel = &self->_detailTextLabel;
    superview = [(UILabel *)self->_detailTextLabel superview];
    if (superview)
    {
      v17 = superview;
      v18 = [v9 containsObject:*p_detailTextLabel];

      if ((v18 & 1) == 0)
      {
        leadingAnchor = [(UILabel *)*p_detailTextLabel leadingAnchor];
        leadingAnchor2 = [(UILabel *)self->_textLabel leadingAnchor];
        v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        [(NSArray *)v8 addObject:v21];

        if (v14 && (v22 = [v9 indexOfObject:self->_imageView], v22 == objc_msgSend(v9, "indexOfObject:", self->_textLabel) + 1))
        {
          trailingAnchor = [(UILabel *)*p_detailTextLabel trailingAnchor];
          trailingAnchor2 = [(UIImageView *)self->_imageView trailingAnchor];
          v25 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
        }

        else
        {
          trailingAnchor = [(UILabel *)*p_detailTextLabel trailingAnchor];
          trailingAnchor2 = [(UILabel *)self->_textLabel trailingAnchor];
          v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        }

        v26 = v25;
        [(NSArray *)v8 addObject:v25];

        topAnchor = [(UILabel *)*p_detailTextLabel topAnchor];
        bottomAnchor = [(UILabel *)self->_textLabel bottomAnchor];
        v29 = [topAnchor constraintEqualToAnchor:bottomAnchor];
        [(NSArray *)v8 addObject:v29];

        bottomAnchor2 = [(UILabel *)*p_detailTextLabel bottomAnchor];
        bottomAnchor3 = [v64 bottomAnchor];
        v32 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
        [(NSArray *)v8 addObject:v32];
      }
    }

    p_textLabel = &self->_textLabel;
    superview2 = [(UILabel *)self->_textLabel superview];

    if (superview2)
    {
      widthAnchor = [(UILabel *)*p_textLabel widthAnchor];
      widthAnchor2 = [v64 widthAnchor];
      v37 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];

      LODWORD(v38) = 1132068864;
      [v37 setPriority:v38];
      [(NSArray *)v8 addObject:v37];
    }

    superview3 = [(UILabel *)*p_textLabel superview];
    if (superview3)
    {
    }

    else
    {
      superview4 = [(UILabel *)*p_detailTextLabel superview];

      if (!superview4)
      {
        goto LABEL_27;
      }
    }

    superview5 = [(UILabel *)*p_textLabel superview];
    if (superview5)
    {
      v42 = &self->_textLabel;
    }

    else
    {
      v42 = &self->_detailTextLabel;
    }

    v43 = *v42;

    superview6 = [(UILabel *)*p_detailTextLabel superview];
    if (superview6)
    {
      v45 = &self->_detailTextLabel;
    }

    else
    {
      v45 = &self->_textLabel;
    }

    v46 = *v45;

    topAnchor2 = [(UILayoutGuide *)self->_textGuide topAnchor];
    topAnchor3 = [(UILabel *)v43 topAnchor];
    v49 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    [(NSArray *)v8 addObject:v49];

    bottomAnchor4 = [(UILayoutGuide *)self->_textGuide bottomAnchor];
    bottomAnchor5 = [(UILabel *)v46 bottomAnchor];
    v52 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [(NSArray *)v8 addObject:v52];

LABEL_27:
    superview7 = [(UIView *)self->_dotView superview];
    if (superview7)
    {
      v54 = superview7;
      superview8 = [(UIImageView *)self->_imageView superview];

      if (superview8)
      {
        leadingAnchor3 = [(UIView *)self->_dotView leadingAnchor];
        trailingAnchor3 = [(UIImageView *)self->_imageView trailingAnchor];
        v58 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:-1.0];
        [(NSArray *)v8 addObject:v58];

        topAnchor4 = [(UIView *)self->_dotView topAnchor];
        topAnchor5 = [(UIImageView *)self->_imageView topAnchor];
        v61 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
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
  componentsArrangement = [(_SFSettingsAlertButton *)self componentsArrangement];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43___SFSettingsAlertButton__arrangedSubviews__block_invoke_2;
  v8[3] = &unk_1E84943B0;
  v9 = v3;
  v5 = v3;
  v6 = [componentsArrangement safari_mapAndFilterObjectsUsingBlock:v8];

  return v6;
}

- (void)_hover:(id)_hover
{
  v4 = ([_hover state] - 1) < 2;

  [(_SFSettingsAlertControl *)self setHighlighted:v4];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v19.receiver = self;
  v19.super_class = _SFSettingsAlertButton;
  touchCopy = touch;
  [(_SFSettingsAlertButton *)&v19 endTrackingWithTouch:touchCopy withEvent:event];
  [(_SFSettingsAlertButton *)self bounds:v19.receiver];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [touchCopy locationInView:self];
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

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  self->_selected = selected;
  item = [(_SFSettingsAlertControl *)self item];
  type = [item type];

  if (type == 4)
  {
    imageView = [(_SFSettingsAlertButton *)self imageView];
    [imageView setAlpha:selectedCopy];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  [(UIView *)self->_accessoryView convertPoint:self fromView:x, y];
  v9 = v8;
  v11 = v10;
  if ([(UIView *)self->_accessoryView isUserInteractionEnabled]&& [(UIView *)self->_accessoryView pointInside:eventCopy withEvent:v9, v11])
  {
    v12 = [(UIView *)self->_accessoryView hitTest:eventCopy withEvent:v9, v11];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = _SFSettingsAlertButton;
    v12 = [(_SFSettingsAlertButton *)&v15 hitTest:eventCopy withEvent:x, y];
  }

  v13 = v12;

  return v13;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  previouslyFocusedView = [contextCopy previouslyFocusedView];
  v6 = previouslyFocusedView;
  if (previouslyFocusedView == self)
  {
  }

  else
  {
    nextFocusedView = [contextCopy nextFocusedView];

    if (nextFocusedView != self)
    {
      goto LABEL_6;
    }
  }

  [(_SFSettingsAlertControl *)self _updateBackgroundView];
LABEL_6:
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (SFShouldHandleSelectionForPresses())
  {
    [(_SFSettingsAlertButton *)self sendActionsForControlEvents:0x2000];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SFSettingsAlertButton;
    [(_SFSettingsAlertButton *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

@end