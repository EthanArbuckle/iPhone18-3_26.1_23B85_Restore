@interface ASTButtonCell
- (ASTButtonCell)initWithLocation:(id)location iconKey:(id)key;
- (CGRect)accessibilityFrame;
- (id)accessibilityValue;
- (void)_activate:(id)_activate;
- (void)_traitCollectionDidChange:(id)change;
- (void)_updateBorderConstraints;
- (void)_updateFont;
- (void)_updateImage;
- (void)setIconKey:(id)key;
@end

@implementation ASTButtonCell

- (ASTButtonCell)initWithLocation:(id)location iconKey:(id)key
{
  locationCopy = location;
  keyCopy = key;
  v77.receiver = self;
  v77.super_class = ASTButtonCell;
  v6 = [(ASTButtonCell *)&v77 init];
  if (v6)
  {
    v7 = [AXDynamicTypeImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v6->_imageView;
    v6->_imageView = v11;

    [(AXDynamicTypeImageView *)v6->_imageView setAccessibilityIdentifier:@"ASTButton"];
    [(AXDynamicTypeImageView *)v6->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = +[AXAssistiveTouchLayoutView fontMetrics];
    [(AXDynamicTypeImageView *)v6->_imageView setFontMetrics:v13];

    v14 = +[AXAssistiveTouchLayoutView imageMinimumContentSizeCategory];
    [(AXDynamicTypeImageView *)v6->_imageView setMinimumContentSizeCategory:v14];

    v15 = +[AXAssistiveTouchLayoutView imageMaximumContentSizeCategory];
    [(AXDynamicTypeImageView *)v6->_imageView setMaximumContentSizeCategory:v15];

    [(ASTButtonCell *)v6 _updateImage];
    [(ASTButtonCell *)v6 addSubview:v6->_imageView];
    v16 = [objc_allocWithZone(UILabel) initWithFrame:{CGRectZero.origin.x, y, width, height}];
    label = v6->_label;
    v6->_label = v16;

    v18 = +[UIColor clearColor];
    [(UILabel *)v6->_label setBackgroundColor:v18];

    [(UILabel *)v6->_label setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v6->_label setMinimumScaleFactor:0.5];
    [(UILabel *)v6->_label setClipsToBounds:0];
    [(UILabel *)v6->_label setTextAlignment:1];
    [(UILabel *)v6->_label setLineBreakMode:4];
    [(ASTButtonCell *)v6 _updateFont];
    _iconColor = [(ASTButtonCell *)v6 _iconColor];
    [(UILabel *)v6->_label setTextColor:_iconColor];

    [(UILabel *)v6->_label setNumberOfLines:0];
    [(UILabel *)v6->_label setIsAccessibilityElement:0];
    [(UILabel *)v6->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v20) = 981668463;
    [(UILabel *)v6->_label _setHyphenationFactor:v20];
    [(ASTButtonCell *)v6 addSubview:v6->_label];
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [UIImage imageNamed:@"ASTCustomization_Selector" inBundle:v21];
    v71 = [v22 imageWithRenderingMode:2];

    v23 = [[UIImageView alloc] initWithImage:v71];
    borderView = v6->_borderView;
    v6->_borderView = v23;

    [(UIImageView *)v6->_borderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = +[UIColor secondaryLabelColor];
    borderColor = v6->_borderColor;
    v6->_borderColor = v25;

    [(UIImageView *)v6->_borderView setTintColor:v6->_borderColor];
    [(ASTButtonCell *)v6 addSubview:v6->_borderView];
    [(ASTButtonCell *)v6 setLocation:locationCopy];
    [(ASTButtonCell *)v6 setIconKey:keyCopy];
    widthAnchor = [(UIImageView *)v6->_borderView widthAnchor];
    v28 = [widthAnchor constraintEqualToConstant:0.0];
    borderWidthConstraint = v6->_borderWidthConstraint;
    v6->_borderWidthConstraint = v28;

    heightAnchor = [(UIImageView *)v6->_borderView heightAnchor];
    v31 = [heightAnchor constraintEqualToConstant:0.0];
    borderHeightConstraint = v6->_borderHeightConstraint;
    v6->_borderHeightConstraint = v31;

    [(ASTButtonCell *)v6 _updateBorderConstraints];
    topAnchor = [(UIImageView *)v6->_borderView topAnchor];
    topAnchor2 = [(ASTButtonCell *)v6 topAnchor];
    v68 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v79[0] = v68;
    v79[1] = v6->_borderHeightConstraint;
    centerYAnchor = [(AXDynamicTypeImageView *)v6->_imageView centerYAnchor];
    centerYAnchor2 = [(UIImageView *)v6->_borderView centerYAnchor];
    v65 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v79[2] = v65;
    topAnchor3 = [(UILabel *)v6->_label topAnchor];
    bottomAnchor = [(UIImageView *)v6->_borderView bottomAnchor];
    v62 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:3.0];
    v79[3] = v62;
    bottomAnchor2 = [(UILabel *)v6->_label bottomAnchor];
    bottomAnchor3 = [(ASTButtonCell *)v6 bottomAnchor];
    v59 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v79[4] = v59;
    centerXAnchor = [(UILabel *)v6->_label centerXAnchor];
    centerXAnchor2 = [(AXDynamicTypeImageView *)v6->_imageView centerXAnchor];
    v56 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v79[5] = v56;
    centerXAnchor3 = [(AXDynamicTypeImageView *)v6->_imageView centerXAnchor];
    centerXAnchor4 = [(UIImageView *)v6->_borderView centerXAnchor];
    v53 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v79[6] = v53;
    v79[7] = v6->_borderWidthConstraint;
    centerXAnchor5 = [(UIImageView *)v6->_borderView centerXAnchor];
    centerXAnchor6 = [(ASTButtonCell *)v6 centerXAnchor];
    v50 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v79[8] = v50;
    leadingAnchor = [(UIImageView *)v6->_borderView leadingAnchor];
    leadingAnchor2 = [(ASTButtonCell *)v6 leadingAnchor];
    v47 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v79[9] = v47;
    leadingAnchor3 = [(UILabel *)v6->_label leadingAnchor];
    leadingAnchor4 = [(ASTButtonCell *)v6 leadingAnchor];
    v34 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
    v79[10] = v34;
    trailingAnchor = [(UIImageView *)v6->_borderView trailingAnchor];
    trailingAnchor2 = [(ASTButtonCell *)v6 trailingAnchor];
    v37 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v79[11] = v37;
    trailingAnchor3 = [(UILabel *)v6->_label trailingAnchor];
    trailingAnchor4 = [(ASTButtonCell *)v6 trailingAnchor];
    v40 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    v79[12] = v40;
    v41 = [NSArray arrayWithObjects:v79 count:13];
    [NSLayoutConstraint activateConstraints:v41];

    objc_initWeak(&location, v6);
    v78[0] = objc_opt_class();
    v78[1] = objc_opt_class();
    v42 = [NSArray arrayWithObjects:v78 count:2];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = __42__ASTButtonCell_initWithLocation_iconKey___block_invoke;
    v74[3] = &unk_255658;
    objc_copyWeak(&v75, &location);
    v43 = [(ASTButtonCell *)v6 registerForTraitChanges:v42 withHandler:v74];

    v44 = v6;
    objc_destroyWeak(&v75);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __42__ASTButtonCell_initWithLocation_iconKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _traitCollectionDidChange:v4];
}

- (void)setIconKey:(id)key
{
  keyCopy = key;
  if (self->_iconKey != keyCopy)
  {
    v10 = keyCopy;
    objc_storeStrong(&self->_iconKey, key);
    [(ASTButtonCell *)self _updateImage];
    iconKey = [(ASTButtonCell *)self iconKey];
    v7 = AXUIAssistiveTouchStringForName();

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &stru_25D420;
    }

    if ([(__CFString *)v8 containsString:@"\\n"])
    {
      v9 = [(__CFString *)v8 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

      v8 = v9;
    }

    [(UILabel *)self->_label setText:v8];

    keyCopy = v10;
  }
}

- (CGRect)accessibilityFrame
{
  [(UIImageView *)self->_borderView accessibilityFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)accessibilityValue
{
  location = [(ASTButtonCell *)self location];
  v4 = [location isEqualToString:AXAssistiveTouchIconLocationTopLeft];

  if (v4)
  {
    v5 = @"top.left.accessibility.description";
LABEL_19:
    v22 = settingsLocString(v5, @"HandSettings");
    goto LABEL_20;
  }

  location2 = [(ASTButtonCell *)self location];
  v7 = [location2 isEqualToString:AXAssistiveTouchIconLocationTopMiddle];

  if (v7)
  {
    v5 = @"top.middle.accessibility.description";
    goto LABEL_19;
  }

  location3 = [(ASTButtonCell *)self location];
  v9 = [location3 isEqualToString:AXAssistiveTouchIconLocationTopRight];

  if (v9)
  {
    v5 = @"top.right.accessibility.description";
    goto LABEL_19;
  }

  location4 = [(ASTButtonCell *)self location];
  v11 = [location4 isEqualToString:AXAssistiveTouchIconLocationMidLeft];

  if (v11)
  {
    v5 = @"mid.left.accessibility.description";
    goto LABEL_19;
  }

  location5 = [(ASTButtonCell *)self location];
  v13 = [location5 isEqualToString:AXAssistiveTouchIconLocationMidMiddle];

  if (v13)
  {
    v5 = @"mid.middle.accessibility.description";
    goto LABEL_19;
  }

  location6 = [(ASTButtonCell *)self location];
  v15 = [location6 isEqualToString:AXAssistiveTouchIconLocationMidRight];

  if (v15)
  {
    v5 = @"mid.right.accessibility.description";
    goto LABEL_19;
  }

  location7 = [(ASTButtonCell *)self location];
  v17 = [location7 isEqualToString:AXAssistiveTouchIconLocationBottomLeft];

  if (v17)
  {
    v5 = @"bottom.left.accessibility.description";
    goto LABEL_19;
  }

  location8 = [(ASTButtonCell *)self location];
  v19 = [location8 isEqualToString:AXAssistiveTouchIconLocationBottomMiddle];

  if (v19)
  {
    v5 = @"bottom.center.accessibility.description";
    goto LABEL_19;
  }

  location9 = [(ASTButtonCell *)self location];
  v21 = [location9 isEqualToString:AXAssistiveTouchIconLocationBottomRight];

  if (v21)
  {
    v5 = @"bottom.right.accessibility.description";
    goto LABEL_19;
  }

  v22 = 0;
LABEL_20:

  return v22;
}

- (void)_traitCollectionDidChange:(id)change
{
  [(ASTButtonCell *)self _updateFont];
  [(ASTButtonCell *)self _updateImage];
  [(ASTButtonCell *)self _updateBorderConstraints];
  _iconColor = [(ASTButtonCell *)self _iconColor];
  [(UILabel *)self->_label setTextColor:_iconColor];

  borderColor = self->_borderColor;
  borderView = self->_borderView;

  [(UIImageView *)borderView setTintColor:borderColor];
}

- (void)_activate:(id)_activate
{
  activateCellBlock = [(ASTButtonCell *)self activateCellBlock];
  activateCellBlock[2](activateCellBlock, self);
}

- (void)_updateFont
{
  v3 = +[AXAssistiveTouchLayoutView labelFont];
  [(UILabel *)self->_label setFont:v3];
}

- (void)_updateImage
{
  iconKey = [(ASTButtonCell *)self iconKey];
  v4 = [iconKey hasPrefix:@"__empty"];

  if (!v4 || (+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), v5 = objc_claimAutoreleasedReturnValue(), +[UIImage imageNamed:inBundle:](UIImage, "imageNamed:inBundle:", @"ASTCustomization_Add", v5), v6 = objc_claimAutoreleasedReturnValue(), -[ASTButtonCell _iconColor](self, "_iconColor"), v7 = objc_claimAutoreleasedReturnValue(), [v6 imageWithTintColor:v7 renderingMode:1], v17 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, !v17))
  {
    iconKey2 = [(ASTButtonCell *)self iconKey];
    v9 = [iconKey2 length];

    if (v9)
    {
      iconKey3 = [(ASTButtonCell *)self iconKey];
      v11 = AXUIAssistiveTouchImageForName();
      _iconColor = [(ASTButtonCell *)self _iconColor];
      v17 = [v11 imageWithTintColor:_iconColor renderingMode:1];
    }

    else
    {
      v17 = 0;
    }
  }

  if ([(ASTButtonCell *)self effectiveUserInterfaceLayoutDirection]== &dword_0 + 1)
  {
    iconKey4 = [(ASTButtonCell *)self iconKey];
    v14 = AXUIAssistiveTouchImageNameForName();
    v15 = AXUIAssistiveTouchIconRequiresRTLFlipping();

    if (v15)
    {
      imageWithHorizontallyFlippedOrientation = [v17 imageWithHorizontallyFlippedOrientation];

      v17 = imageWithHorizontallyFlippedOrientation;
    }
  }

  [(AXDynamicTypeImageView *)self->_imageView setImage:v17];
}

- (void)_updateBorderConstraints
{
  v3 = +[AXAssistiveTouchLayoutView fontMetrics];
  v4 = +[AXAssistiveTouchLayoutView traitCollectionForImagePreferredContentSizeCategory];
  [v3 scaledValueForValue:v4 compatibleWithTraitCollection:65.0];
  v6 = v5;

  borderWidthConstraint = [(ASTButtonCell *)self borderWidthConstraint];
  [borderWidthConstraint setConstant:v6];

  borderHeightConstraint = [(ASTButtonCell *)self borderHeightConstraint];
  [borderHeightConstraint setConstant:v6];
}

@end