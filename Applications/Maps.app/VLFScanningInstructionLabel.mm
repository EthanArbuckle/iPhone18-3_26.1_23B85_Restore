@interface VLFScanningInstructionLabel
- (NSString)text;
- (UIColor)textColor;
- (UIFont)font;
- (double)_minimumLinesOverridePointSizeThreshold;
- (double)contentHeight;
- (id)_defaultFont;
- (id)initForSizing:(BOOL)sizing;
- (unint64_t)_maximumNumberOfLinesWithMinimumOverride:(BOOL)override;
- (void)_updateContentHeight;
- (void)_updateFontWithMinimumOverride:(BOOL)override;
- (void)addFontObserver:(id)observer;
- (void)layoutSubviews;
- (void)removeFontObserver:(id)observer;
- (void)setCurrentLayout:(unint64_t)layout;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFont:(id)font;
@end

@implementation VLFScanningInstructionLabel

- (void)_updateContentHeight
{
  if ([(VLFScanningInstructionLabel *)self isForSizing])
  {
    [(VLFScanningInstructionLabel *)self _updateFont];
    [(VLFScanningInstructionLabel *)self contentHeight];
    v4 = v3;
    heightConstraint = [(VLFScanningInstructionLabel *)self heightConstraint];
    [heightConstraint setConstant:v4];

    fontObservers = [(VLFScanningInstructionLabel *)self fontObservers];
    label = [(VLFScanningInstructionLabel *)self label];
    font = [label font];
    [fontObservers updateFont:font];
  }
}

- (void)_updateFontWithMinimumOverride:(BOOL)override
{
  overrideCopy = override;
  _defaultFont = [(VLFScanningInstructionLabel *)self _defaultFont];
  label = [(VLFScanningInstructionLabel *)self label];
  [label setFont:_defaultFont];

  label2 = [(VLFScanningInstructionLabel *)self label];
  [(VLFScanningInstructionLabel *)self bounds];
  [label2 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0}];
  v9 = v8;

  label3 = [(VLFScanningInstructionLabel *)self label];
  font = [label3 font];
  [font leading];
  v13 = v12 + v9;
  label4 = [(VLFScanningInstructionLabel *)self label];
  font2 = [label4 font];
  [font2 lineHeight];
  v17 = v16;
  label5 = [(VLFScanningInstructionLabel *)self label];
  font3 = [label5 font];
  [font3 leading];
  v21 = v13 / (v20 + v17);

  v22 = v21;
  if ([(VLFScanningInstructionLabel *)self _maximumNumberOfLinesWithMinimumOverride:overrideCopy]< v21)
  {
    v23 = @"NO";
    if (overrideCopy)
    {
      v23 = @"YES";
    }

    v73 = v23;
    while (1)
    {
      v24 = sub_100CCB3A4();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        label6 = [(VLFScanningInstructionLabel *)self label];
        [label6 text];
        v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        label7 = [(VLFScanningInstructionLabel *)self label];
        font4 = [label7 font];
        label8 = [(VLFScanningInstructionLabel *)self label];
        font5 = [label8 font];
        [font5 pointSize];
        v28 = v27;
        label9 = [(VLFScanningInstructionLabel *)self label];
        font6 = [label9 font];
        [font6 lineHeight];
        v30 = v29;
        label10 = [(VLFScanningInstructionLabel *)self label];
        font7 = [label10 font];
        [font7 leading];
        v34 = v33;
        v35 = overrideCopy;
        v36 = [(VLFScanningInstructionLabel *)self _maximumNumberOfLinesWithMinimumOverride:overrideCopy];
        v75 = v73;
        *buf = 138414338;
        v82 = v25;
        v83 = 2112;
        v84 = font4;
        v85 = 2048;
        v86 = v28;
        v87 = 2048;
        v88 = v30;
        v89 = 2048;
        v90 = v34;
        v91 = 2048;
        v92 = v22;
        v93 = 2048;
        v94 = v9;
        v95 = 2048;
        v96 = v36;
        overrideCopy = v35;
        v97 = 2112;
        v98 = v73;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Text: (%@) with font: (%@), pointSize: (%f), line height: (%f), and leading: (%f) renders as: (%lu) lines in: (%f) height which is higher than the limit: (%lu) with minimumOverride: %@", buf, 0x5Cu);
      }

      label11 = [(VLFScanningInstructionLabel *)self label];
      font8 = [label11 font];
      [font8 pointSize];
      v40 = 0.0;
      if (v39 + -1.0 > 0.0)
      {
        label12 = [(VLFScanningInstructionLabel *)self label];
        font9 = [label12 font];
        [font9 pointSize];
        v40 = v43 + -1.0;
      }

      [(VLFScanningInstructionLabel *)self _minimumLinesOverridePointSizeThreshold];
      if (v40 < v44 && !overrideCopy)
      {
        break;
      }

      v45 = sub_100CCB3A4();
      v46 = v45;
      if (fabs(v40) <= 2.22044605e-16)
      {
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          label13 = [(VLFScanningInstructionLabel *)self label];
          [label13 text];
          v69 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v70 = [(VLFScanningInstructionLabel *)self _maximumNumberOfLinesWithMinimumOverride:overrideCopy];
          *buf = 138412546;
          v82 = v69;
          v83 = 2048;
          v84 = v70;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Text (%@) was too large to shrink to fit on (%lu) lines; using default font", buf, 0x16u);
        }

        _defaultFont2 = [(VLFScanningInstructionLabel *)self _defaultFont];
        label14 = [(VLFScanningInstructionLabel *)self label];
        [label14 setFont:_defaultFont2];

        return;
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v82 = v40;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Trying again with pointSize: %f", buf, 0xCu);
      }

      label15 = [(VLFScanningInstructionLabel *)self label];
      font10 = [label15 font];
      fontDescriptor = [font10 fontDescriptor];
      v50 = [UIFont fontWithDescriptor:fontDescriptor size:v40];
      label16 = [(VLFScanningInstructionLabel *)self label];
      [label16 setFont:v50];

      label17 = [(VLFScanningInstructionLabel *)self label];
      [(VLFScanningInstructionLabel *)self bounds];
      [label17 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0}];
      v9 = v53;

      label18 = [(VLFScanningInstructionLabel *)self label];
      font11 = [label18 font];
      [font11 leading];
      v57 = v56 + v9;
      label19 = [(VLFScanningInstructionLabel *)self label];
      font12 = [label19 font];
      [font12 lineHeight];
      v61 = v60;
      label20 = [(VLFScanningInstructionLabel *)self label];
      font13 = [label20 font];
      [font13 leading];
      v65 = v57 / (v64 + v61);

      v22 = v65;
      if ([(VLFScanningInstructionLabel *)self _maximumNumberOfLinesWithMinimumOverride:overrideCopy]>= v65)
      {
        return;
      }
    }

    v66 = sub_100CCB3A4();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      [(VLFScanningInstructionLabel *)self _minimumLinesOverridePointSizeThreshold];
      *buf = 134217984;
      v82 = v67;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "Detected pointSize going below the threshold %f. Trying again with number of lines override.", buf, 0xCu);
    }

    [(VLFScanningInstructionLabel *)self _updateFontWithMinimumOverride:1];
  }
}

- (id)_defaultFont
{
  traitCollection = [(VLFScanningInstructionLabel *)self traitCollection];
  currentLayout = [(VLFScanningInstructionLabel *)self currentLayout];
  v5 = &UIContentSizeCategoryAccessibilityMedium;
  if (currentLayout != 2)
  {
    v5 = &UIContentSizeCategoryLarge;
  }

  v6 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:*v5];

  v7 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:v6];
  v16 = UIFontDescriptorTraitsAttribute;
  v14 = UIFontWeightTrait;
  v8 = [NSNumber numberWithDouble:UIFontWeightBold];
  v15 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [UIFont fontWithDescriptor:v11 size:0.0];

  return v12;
}

- (unint64_t)_maximumNumberOfLinesWithMinimumOverride:(BOOL)override
{
  overrideCopy = override;
  if ([(VLFScanningInstructionLabel *)self currentLayout]== 2)
  {
    traitCollection = [(VLFScanningInstructionLabel *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v7 = sub_10008FB5C(preferredContentSizeCategory, UIContentSizeCategoryLarge);

    if (v7 == 1)
    {
      traitCollection2 = [(VLFScanningInstructionLabel *)self traitCollection];
      preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
      v10 = sub_10008FB5C(preferredContentSizeCategory2, UIContentSizeCategoryExtraExtraExtraLarge);

      if (v10 == 1)
      {
        return 5;
      }

      else
      {
        return 4;
      }
    }

    else if (overrideCopy)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    isRunningOnBigPhone = [(VLFScanningInstructionLabel *)self isRunningOnBigPhone];
    v13 = 3;
    if (overrideCopy)
    {
      v13 = 4;
    }

    if (isRunningOnBigPhone)
    {
      return v13;
    }

    else
    {
      return 4;
    }
  }
}

- (double)_minimumLinesOverridePointSizeThreshold
{
  currentLayout = [(VLFScanningInstructionLabel *)self currentLayout];
  result = 20.0;
  if (currentLayout == 2)
  {
    return 25.0;
  }

  return result;
}

- (void)removeFontObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "[VLFScanningInstructionLabel removeFontObserver:]";
      v11 = 2080;
      v12 = "VLFScanningInstructionLabel.m";
      v13 = 1024;
      v14 = 172;
      v15 = 2080;
      v16 = "fontObserver != nil";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v9, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }
  }

  fontObservers = [(VLFScanningInstructionLabel *)self fontObservers];
  [fontObservers unregisterObserver:observerCopy];
}

- (void)addFontObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "[VLFScanningInstructionLabel addFontObserver:]";
      v11 = 2080;
      v12 = "VLFScanningInstructionLabel.m";
      v13 = 1024;
      v14 = 166;
      v15 = 2080;
      v16 = "fontObserver != nil";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v9, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }
  }

  fontObservers = [(VLFScanningInstructionLabel *)self fontObservers];
  [fontObservers registerObserver:observerCopy];
}

- (void)updateFont:(id)font
{
  fontCopy = font;
  if ([(VLFScanningInstructionLabel *)self isForSizing])
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "[VLFScanningInstructionLabel updateFont:]";
      v11 = 2080;
      v12 = "VLFScanningInstructionLabel.m";
      v13 = 1024;
      v14 = 153;
      v15 = 2080;
      v16 = "!self.isForSizing";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v9, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }
  }

  if ([(VLFScanningInstructionLabel *)self isForSizing])
  {
    label = sub_100CCB3A4();
    if (os_log_type_enabled(label, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, label, OS_LOG_TYPE_ERROR, "Only non-sizing labels can be font providers", &v9, 2u);
    }
  }

  else
  {
    label = [(VLFScanningInstructionLabel *)self label];
    [label setFont:fontCopy];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  label = [(VLFScanningInstructionLabel *)self label];
  [label setTextColor:colorCopy];
}

- (UIColor)textColor
{
  label = [(VLFScanningInstructionLabel *)self label];
  textColor = [label textColor];

  return textColor;
}

- (UIFont)font
{
  label = [(VLFScanningInstructionLabel *)self label];
  font = [label font];

  return font;
}

- (void)setCurrentLayout:(unint64_t)layout
{
  if (self->_currentLayout != layout)
  {
    self->_currentLayout = layout;
    [(VLFScanningInstructionLabel *)self _updateContentHeight];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  label = [(VLFScanningInstructionLabel *)self label];
  [label setText:textCopy];

  [(VLFScanningInstructionLabel *)self _updateContentHeight];
}

- (NSString)text
{
  label = [(VLFScanningInstructionLabel *)self label];
  text = [label text];

  return text;
}

- (double)contentHeight
{
  label = [(VLFScanningInstructionLabel *)self label];
  [(VLFScanningInstructionLabel *)self bounds];
  [label textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0}];
  v5 = v4;

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = VLFScanningInstructionLabel;
  [(VLFScanningInstructionLabel *)&v4 traitCollectionDidChange:change];
  [(VLFScanningInstructionLabel *)self _updateContentHeight];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = VLFScanningInstructionLabel;
  [(VLFScanningInstructionLabel *)&v6 layoutSubviews];
  [(VLFScanningInstructionLabel *)self bounds];
  v4 = v3;
  label = [(VLFScanningInstructionLabel *)self label];
  [label setPreferredMaxLayoutWidth:v4];

  [(VLFScanningInstructionLabel *)self _updateContentHeight];
}

- (id)initForSizing:(BOOL)sizing
{
  v34.receiver = self;
  v34.super_class = VLFScanningInstructionLabel;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(VLFScanningInstructionLabel *)&v34 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = height;
  if (height)
  {
    height->_currentLayout = 2;
    height->_forSizing = sizing;
    v9 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___VLFLabelFontObserver queue:&_dispatch_main_q];
    fontObservers = v8->_fontObservers;
    v8->_fontObservers = v9;

    LODWORD(v11) = 1148846080;
    [(VLFScanningInstructionLabel *)v8 setContentCompressionResistancePriority:1 forAxis:v11];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    label = v8->_label;
    v8->_label = v12;

    [(UILabel *)v8->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148846080;
    [(UILabel *)v8->_label setContentCompressionResistancePriority:1 forAxis:v14];
    v15 = +[UIColor labelColor];
    [(UILabel *)v8->_label setTextColor:v15];

    [(UILabel *)v8->_label setLineBreakStrategy:0];
    [(UILabel *)v8->_label setLineBreakMode:2];
    [(UILabel *)v8->_label setNumberOfLines:0];
    [(UILabel *)v8->_label _setDrawsDebugBaselines:v8->_forSizing];
    _defaultFont = [(VLFScanningInstructionLabel *)v8 _defaultFont];
    [(UILabel *)v8->_label setFont:_defaultFont];

    [(VLFScanningInstructionLabel *)v8 addSubview:v8->_label];
    leadingAnchor = [(UILabel *)v8->_label leadingAnchor];
    leadingAnchor2 = [(VLFScanningInstructionLabel *)v8 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[0] = v31;
    trailingAnchor = [(UILabel *)v8->_label trailingAnchor];
    trailingAnchor2 = [(VLFScanningInstructionLabel *)v8 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[1] = v17;
    topAnchor = [(UILabel *)v8->_label topAnchor];
    topAnchor2 = [(VLFScanningInstructionLabel *)v8 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[2] = v20;
    bottomAnchor = [(UILabel *)v8->_label bottomAnchor];
    bottomAnchor2 = [(VLFScanningInstructionLabel *)v8 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[3] = v23;
    v24 = [NSArray arrayWithObjects:v35 count:4];
    [NSLayoutConstraint activateConstraints:v24];

    if (v8->_forSizing)
    {
      heightAnchor = [(UILabel *)v8->_label heightAnchor];
      v26 = [heightAnchor constraintEqualToConstant:0.0];
      heightConstraint = v8->_heightConstraint;
      v8->_heightConstraint = v26;

      [(NSLayoutConstraint *)v8->_heightConstraint setActive:1];
    }
  }

  return v8;
}

@end