@interface VLFScanningInstructionLabel
- (NSString)text;
- (UIColor)textColor;
- (UIFont)font;
- (double)_minimumLinesOverridePointSizeThreshold;
- (double)contentHeight;
- (id)_defaultFont;
- (id)initForSizing:(BOOL)a3;
- (unint64_t)_maximumNumberOfLinesWithMinimumOverride:(BOOL)a3;
- (void)_updateContentHeight;
- (void)_updateFontWithMinimumOverride:(BOOL)a3;
- (void)addFontObserver:(id)a3;
- (void)layoutSubviews;
- (void)removeFontObserver:(id)a3;
- (void)setCurrentLayout:(unint64_t)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFont:(id)a3;
@end

@implementation VLFScanningInstructionLabel

- (void)_updateContentHeight
{
  if ([(VLFScanningInstructionLabel *)self isForSizing])
  {
    [(VLFScanningInstructionLabel *)self _updateFont];
    [(VLFScanningInstructionLabel *)self contentHeight];
    v4 = v3;
    v5 = [(VLFScanningInstructionLabel *)self heightConstraint];
    [v5 setConstant:v4];

    v8 = [(VLFScanningInstructionLabel *)self fontObservers];
    v6 = [(VLFScanningInstructionLabel *)self label];
    v7 = [v6 font];
    [v8 updateFont:v7];
  }
}

- (void)_updateFontWithMinimumOverride:(BOOL)a3
{
  v3 = a3;
  v5 = [(VLFScanningInstructionLabel *)self _defaultFont];
  v6 = [(VLFScanningInstructionLabel *)self label];
  [v6 setFont:v5];

  v7 = [(VLFScanningInstructionLabel *)self label];
  [(VLFScanningInstructionLabel *)self bounds];
  [v7 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0}];
  v9 = v8;

  v10 = [(VLFScanningInstructionLabel *)self label];
  v11 = [v10 font];
  [v11 leading];
  v13 = v12 + v9;
  v14 = [(VLFScanningInstructionLabel *)self label];
  v15 = [v14 font];
  [v15 lineHeight];
  v17 = v16;
  v18 = [(VLFScanningInstructionLabel *)self label];
  v19 = [v18 font];
  [v19 leading];
  v21 = v13 / (v20 + v17);

  v22 = v21;
  if ([(VLFScanningInstructionLabel *)self _maximumNumberOfLinesWithMinimumOverride:v3]< v21)
  {
    v23 = @"NO";
    if (v3)
    {
      v23 = @"YES";
    }

    v73 = v23;
    while (1)
    {
      v24 = sub_100CCB3A4();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v80 = [(VLFScanningInstructionLabel *)self label];
        [v80 text];
        v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v79 = [(VLFScanningInstructionLabel *)self label];
        v26 = [v79 font];
        v78 = [(VLFScanningInstructionLabel *)self label];
        v77 = [v78 font];
        [v77 pointSize];
        v28 = v27;
        v76 = [(VLFScanningInstructionLabel *)self label];
        v74 = [v76 font];
        [v74 lineHeight];
        v30 = v29;
        v31 = [(VLFScanningInstructionLabel *)self label];
        v32 = [v31 font];
        [v32 leading];
        v34 = v33;
        v35 = v3;
        v36 = [(VLFScanningInstructionLabel *)self _maximumNumberOfLinesWithMinimumOverride:v3];
        v75 = v73;
        *buf = 138414338;
        v82 = v25;
        v83 = 2112;
        v84 = v26;
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
        v3 = v35;
        v97 = 2112;
        v98 = v73;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Text: (%@) with font: (%@), pointSize: (%f), line height: (%f), and leading: (%f) renders as: (%lu) lines in: (%f) height which is higher than the limit: (%lu) with minimumOverride: %@", buf, 0x5Cu);
      }

      v37 = [(VLFScanningInstructionLabel *)self label];
      v38 = [v37 font];
      [v38 pointSize];
      v40 = 0.0;
      if (v39 + -1.0 > 0.0)
      {
        v41 = [(VLFScanningInstructionLabel *)self label];
        v42 = [v41 font];
        [v42 pointSize];
        v40 = v43 + -1.0;
      }

      [(VLFScanningInstructionLabel *)self _minimumLinesOverridePointSizeThreshold];
      if (v40 < v44 && !v3)
      {
        break;
      }

      v45 = sub_100CCB3A4();
      v46 = v45;
      if (fabs(v40) <= 2.22044605e-16)
      {
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v68 = [(VLFScanningInstructionLabel *)self label];
          [v68 text];
          v69 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v70 = [(VLFScanningInstructionLabel *)self _maximumNumberOfLinesWithMinimumOverride:v3];
          *buf = 138412546;
          v82 = v69;
          v83 = 2048;
          v84 = v70;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Text (%@) was too large to shrink to fit on (%lu) lines; using default font", buf, 0x16u);
        }

        v71 = [(VLFScanningInstructionLabel *)self _defaultFont];
        v72 = [(VLFScanningInstructionLabel *)self label];
        [v72 setFont:v71];

        return;
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v82 = v40;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Trying again with pointSize: %f", buf, 0xCu);
      }

      v47 = [(VLFScanningInstructionLabel *)self label];
      v48 = [v47 font];
      v49 = [v48 fontDescriptor];
      v50 = [UIFont fontWithDescriptor:v49 size:v40];
      v51 = [(VLFScanningInstructionLabel *)self label];
      [v51 setFont:v50];

      v52 = [(VLFScanningInstructionLabel *)self label];
      [(VLFScanningInstructionLabel *)self bounds];
      [v52 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0}];
      v9 = v53;

      v54 = [(VLFScanningInstructionLabel *)self label];
      v55 = [v54 font];
      [v55 leading];
      v57 = v56 + v9;
      v58 = [(VLFScanningInstructionLabel *)self label];
      v59 = [v58 font];
      [v59 lineHeight];
      v61 = v60;
      v62 = [(VLFScanningInstructionLabel *)self label];
      v63 = [v62 font];
      [v63 leading];
      v65 = v57 / (v64 + v61);

      v22 = v65;
      if ([(VLFScanningInstructionLabel *)self _maximumNumberOfLinesWithMinimumOverride:v3]>= v65)
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
  v3 = [(VLFScanningInstructionLabel *)self traitCollection];
  v4 = [(VLFScanningInstructionLabel *)self currentLayout];
  v5 = &UIContentSizeCategoryAccessibilityMedium;
  if (v4 != 2)
  {
    v5 = &UIContentSizeCategoryLarge;
  }

  v6 = [v3 _maps_traitCollectionWithMaximumContentSizeCategory:*v5];

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

- (unint64_t)_maximumNumberOfLinesWithMinimumOverride:(BOOL)a3
{
  v3 = a3;
  if ([(VLFScanningInstructionLabel *)self currentLayout]== 2)
  {
    v5 = [(VLFScanningInstructionLabel *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = sub_10008FB5C(v6, UIContentSizeCategoryLarge);

    if (v7 == 1)
    {
      v8 = [(VLFScanningInstructionLabel *)self traitCollection];
      v9 = [v8 preferredContentSizeCategory];
      v10 = sub_10008FB5C(v9, UIContentSizeCategoryExtraExtraExtraLarge);

      if (v10 == 1)
      {
        return 5;
      }

      else
      {
        return 4;
      }
    }

    else if (v3)
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
    v12 = [(VLFScanningInstructionLabel *)self isRunningOnBigPhone];
    v13 = 3;
    if (v3)
    {
      v13 = 4;
    }

    if (v12)
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
  v2 = [(VLFScanningInstructionLabel *)self currentLayout];
  result = 20.0;
  if (v2 == 2)
  {
    return 25.0;
  }

  return result;
}

- (void)removeFontObserver:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [(VLFScanningInstructionLabel *)self fontObservers];
  [v5 unregisterObserver:v4];
}

- (void)addFontObserver:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [(VLFScanningInstructionLabel *)self fontObservers];
  [v5 registerObserver:v4];
}

- (void)updateFont:(id)a3
{
  v4 = a3;
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
    v5 = sub_100CCB3A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Only non-sizing labels can be font providers", &v9, 2u);
    }
  }

  else
  {
    v5 = [(VLFScanningInstructionLabel *)self label];
    [v5 setFont:v4];
  }
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v5 = [(VLFScanningInstructionLabel *)self label];
  [v5 setTextColor:v4];
}

- (UIColor)textColor
{
  v2 = [(VLFScanningInstructionLabel *)self label];
  v3 = [v2 textColor];

  return v3;
}

- (UIFont)font
{
  v2 = [(VLFScanningInstructionLabel *)self label];
  v3 = [v2 font];

  return v3;
}

- (void)setCurrentLayout:(unint64_t)a3
{
  if (self->_currentLayout != a3)
  {
    self->_currentLayout = a3;
    [(VLFScanningInstructionLabel *)self _updateContentHeight];
  }
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(VLFScanningInstructionLabel *)self label];
  [v5 setText:v4];

  [(VLFScanningInstructionLabel *)self _updateContentHeight];
}

- (NSString)text
{
  v2 = [(VLFScanningInstructionLabel *)self label];
  v3 = [v2 text];

  return v3;
}

- (double)contentHeight
{
  v3 = [(VLFScanningInstructionLabel *)self label];
  [(VLFScanningInstructionLabel *)self bounds];
  [v3 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0}];
  v5 = v4;

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = VLFScanningInstructionLabel;
  [(VLFScanningInstructionLabel *)&v4 traitCollectionDidChange:a3];
  [(VLFScanningInstructionLabel *)self _updateContentHeight];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = VLFScanningInstructionLabel;
  [(VLFScanningInstructionLabel *)&v6 layoutSubviews];
  [(VLFScanningInstructionLabel *)self bounds];
  v4 = v3;
  v5 = [(VLFScanningInstructionLabel *)self label];
  [v5 setPreferredMaxLayoutWidth:v4];

  [(VLFScanningInstructionLabel *)self _updateContentHeight];
}

- (id)initForSizing:(BOOL)a3
{
  v34.receiver = self;
  v34.super_class = VLFScanningInstructionLabel;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(VLFScanningInstructionLabel *)&v34 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = v7;
  if (v7)
  {
    v7->_currentLayout = 2;
    v7->_forSizing = a3;
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
    v16 = [(VLFScanningInstructionLabel *)v8 _defaultFont];
    [(UILabel *)v8->_label setFont:v16];

    [(VLFScanningInstructionLabel *)v8 addSubview:v8->_label];
    v33 = [(UILabel *)v8->_label leadingAnchor];
    v32 = [(VLFScanningInstructionLabel *)v8 leadingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v35[0] = v31;
    v30 = [(UILabel *)v8->_label trailingAnchor];
    v29 = [(VLFScanningInstructionLabel *)v8 trailingAnchor];
    v17 = [v30 constraintEqualToAnchor:v29];
    v35[1] = v17;
    v18 = [(UILabel *)v8->_label topAnchor];
    v19 = [(VLFScanningInstructionLabel *)v8 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v35[2] = v20;
    v21 = [(UILabel *)v8->_label bottomAnchor];
    v22 = [(VLFScanningInstructionLabel *)v8 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v35[3] = v23;
    v24 = [NSArray arrayWithObjects:v35 count:4];
    [NSLayoutConstraint activateConstraints:v24];

    if (v8->_forSizing)
    {
      v25 = [(UILabel *)v8->_label heightAnchor];
      v26 = [v25 constraintEqualToConstant:0.0];
      heightConstraint = v8->_heightConstraint;
      v8->_heightConstraint = v26;

      [(NSLayoutConstraint *)v8->_heightConstraint setActive:1];
    }
  }

  return v8;
}

@end