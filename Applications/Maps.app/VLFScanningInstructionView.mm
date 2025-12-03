@interface VLFScanningInstructionView
- (UIColor)textColor;
- (VLFScanningInstructionView)initWithLayout:(unint64_t)layout;
- (id)titleTextForCurrentState;
- (id)titleTextForState:(int64_t)state;
- (void)configureSizingLabel;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCurrentLayout:(unint64_t)layout;
- (void)setCurrentScanningState:(int64_t)state;
- (void)setTextColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
- (void)updateForCurrentState;
@end

@implementation VLFScanningInstructionView

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = +[NSUserDefaults standardUserDefaults];

  if (v13 == objectCopy)
  {
    if ([pathCopy isEqualToString:@"VLFSessionScanningAnimationAlternativeLongestTextKey"])
    {
      [(VLFScanningInstructionView *)self configureSizingLabel];
    }

    else if ([pathCopy isEqualToString:@"VLFSessionScanningAnimationShowLongestTextKey"])
    {
      v14 = +[NSUserDefaults standardUserDefaults];
      v15 = [v14 BOOLForKey:@"VLFSessionScanningAnimationShowLongestTextKey"];
      v16 = 0.300000012;
      if (!v15)
      {
        v16 = 0.0;
      }

      [(VLFScanningInstructionLabel *)self->_sizingLabel setAlpha:v16];
    }

    else
    {
      [(VLFScanningInstructionView *)&v18 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context, v17.receiver, v17.super_class, self, VLFScanningInstructionView];
    }
  }

  else
  {
    [(VLFScanningInstructionView *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context, self, VLFScanningInstructionView, v18.receiver, v18.super_class];
  }
}

- (void)updateForCurrentState
{
  titleTextForCurrentState = [(VLFScanningInstructionView *)self titleTextForCurrentState];
  instructionLabel = [(VLFScanningInstructionView *)self instructionLabel];
  [instructionLabel setText:titleTextForCurrentState];
}

- (id)titleTextForState:(int64_t)state
{
  Integer = GEOConfigGetInteger();
  if (state <= 2)
  {
    if (state != 1)
    {
      if (state != 2)
      {
        goto LABEL_22;
      }

      if (Integer <= 1)
      {
        if (Integer == 1)
        {
          v5 = +[NSBundle mainBundle];
          v6 = v5;
          v7 = @"VLF_localization_title_text_keep_moving_iphone_1";
          goto LABEL_14;
        }

        if (!Integer)
        {
LABEL_40:
          v5 = +[NSBundle mainBundle];
          v6 = v5;
          v7 = @"VLF_localization_title_text_keep_moving_iphone";
          goto LABEL_14;
        }
      }

      else
      {
        if (Integer == 2)
        {
          v5 = +[NSBundle mainBundle];
          v6 = v5;
          v7 = @"VLF_localization_title_text_keep_moving_iphone_2";
          goto LABEL_14;
        }

        if (Integer == 3)
        {
          v5 = +[NSBundle mainBundle];
          v6 = v5;
          v7 = @"VLF_localization_title_text_keep_moving_iphone_3";
          goto LABEL_14;
        }
      }

      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315906;
        stateCopy = "[VLFScanningInstructionView titleTextForState:]";
        v22 = 2080;
        v23 = "VLFScanningInstructionView.m";
        v24 = 1024;
        v25 = 248;
        v26 = 2080;
        v27 = "experimentConfig == 0";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v20, 0x26u);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          v20 = 138412290;
          stateCopy = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
        }
      }

      goto LABEL_40;
    }

    if (Integer <= 1)
    {
      if (Integer == 1)
      {
        v5 = +[NSBundle mainBundle];
        v6 = v5;
        v7 = @"VLF_localization_title_text_scan_buildings_1";
        goto LABEL_14;
      }

      if (!Integer)
      {
LABEL_38:
        v5 = +[NSBundle mainBundle];
        v6 = v5;
        v7 = @"VLF_localization_title_text_scan_buildings";
        goto LABEL_14;
      }
    }

    else
    {
      if (Integer == 2)
      {
        v5 = +[NSBundle mainBundle];
        v6 = v5;
        v7 = @"VLF_localization_title_text_scan_buildings_2";
        goto LABEL_14;
      }

      if (Integer == 3)
      {
        v5 = +[NSBundle mainBundle];
        v6 = v5;
        v7 = @"VLF_localization_title_text_scan_buildings_3";
        goto LABEL_14;
      }
    }

    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315906;
      stateCopy = "[VLFScanningInstructionView titleTextForState:]";
      v22 = 2080;
      v23 = "VLFScanningInstructionView.m";
      v24 = 1024;
      v25 = 236;
      v26 = 2080;
      v27 = "experimentConfig == 0";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v20, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        v20 = 138412290;
        stateCopy = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
      }
    }

    goto LABEL_38;
  }

  switch(state)
  {
    case 3:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"VLF_localization_text_device_moving_too_fast";
      goto LABEL_14;
    case 4:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"VLF_localization_text_raise_device";
      goto LABEL_14;
    case 5:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"VLF_localization_text_lower_device";
LABEL_14:
      v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

      goto LABEL_15;
  }

LABEL_22:
  v10 = sub_10006D178();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315650;
    stateCopy = "[VLFScanningInstructionView titleTextForState:]";
    v22 = 2080;
    v23 = "VLFScanningInstructionView.m";
    v24 = 1024;
    v25 = 263;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v20, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = +[NSThread callStackSymbols];
      v20 = 138412290;
      stateCopy = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
    }
  }

  v13 = sub_100B251D0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v20 = 134217984;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Asked for title with invalid state: %ld", &v20, 0xCu);
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)titleTextForCurrentState
{
  currentScanningState = [(VLFScanningInstructionView *)self currentScanningState];

  return [(VLFScanningInstructionView *)self titleTextForState:currentScanningState];
}

- (void)configureSizingLabel
{
  v3 = +[NSMutableSet set];
  for (i = 1; i != 6; ++i)
  {
    v5 = [(VLFScanningInstructionView *)self titleTextForState:i];
    [v3 addObject:v5];
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 stringForKey:@"VLFSessionScanningAnimationAlternativeLongestTextKey"];

  if ([v7 length])
  {
    [v3 addObject:v7];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (!v9)
  {

    v27 = 0;
    v14 = 2.22507386e-308;
    v13 = 1.79769313e308;
LABEL_21:
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v40 = "[VLFScanningInstructionView configureSizingLabel]";
      v41 = 2080;
      v42 = "VLFScanningInstructionView.m";
      v43 = 1024;
      LODWORD(v44[0]) = 209;
      WORD2(v44[0]) = 2080;
      *(v44 + 6) = "tallestTitleWithSmallestPointSize != nil";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v40 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v31 = sub_100B251D0();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Could not calculate the title with the smallest scaled font", buf, 2u);
    }

    v11 = 0;
    goto LABEL_30;
  }

  v10 = v9;
  v34 = v7;
  v11 = 0;
  v12 = *v36;
  v13 = 1.79769313e308;
  v14 = 2.22507386e-308;
  do
  {
    for (j = 0; j != v10; j = j + 1)
    {
      if (*v36 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v35 + 1) + 8 * j);
      sizingLabel = [(VLFScanningInstructionView *)self sizingLabel];
      [sizingLabel setText:v16];

      sizingLabel2 = [(VLFScanningInstructionView *)self sizingLabel];
      font = [sizingLabel2 font];
      [font pointSize];
      v21 = v20;

      sizingLabel3 = [(VLFScanningInstructionView *)self sizingLabel];
      [sizingLabel3 contentHeight];
      v24 = v23;

      if (v21 >= v13 && (vabdd_f64(v21, v13) > 2.22044605e-16 || v24 <= v14))
      {
        continue;
      }

      v26 = v16;

      v14 = v24;
      v13 = v21;
      v11 = v26;
    }

    v10 = [v8 countByEnumeratingWithState:&v35 objects:v45 count:16];
  }

  while (v10);

  v27 = v11;
  v7 = v34;
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_30:
  sizingLabel4 = [(VLFScanningInstructionView *)self sizingLabel];
  [sizingLabel4 setText:v11];

  v33 = sub_100B251D0();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v40 = v27;
    v41 = 2048;
    v42 = *&v13;
    v43 = 2048;
    *v44 = v14;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Configured sizing label with smallest scaled font title: '%@' scale: %f tallest height: %f", buf, 0x20u);
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = VLFScanningInstructionView;
  [(VLFScanningInstructionView *)&v15 layoutSubviews];
  superview = [(VLFScanningInstructionView *)self superview];
  [superview frame];
  v5 = v4 > 290.0;
  sizingLabel = [(VLFScanningInstructionView *)self sizingLabel];
  [sizingLabel setRunningOnBigPhone:v5];

  [(VLFScanningInstructionView *)self lastViewWidth];
  v8 = v7;
  [(VLFScanningInstructionView *)self frame];
  if (vabdd_f64(v8, v9) > 2.22044605e-16)
  {
    v10 = sub_100B251D0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(VLFScanningInstructionView *)self lastViewWidth];
      v12 = v11;
      [(VLFScanningInstructionView *)self frame];
      *buf = 134218240;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "View width changed from %f to %f; updating sizing label", buf, 0x16u);
    }

    [(VLFScanningInstructionView *)self frame];
    [(VLFScanningInstructionView *)self setLastViewWidth:v14];
    [(VLFScanningInstructionView *)self configureSizingLabel];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v11.receiver = self;
  v11.super_class = VLFScanningInstructionView;
  [(VLFScanningInstructionView *)&v11 traitCollectionDidChange:changeCopy];
  v5 = sub_100B251D0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Updating for new trait collection", v10, 2u);
  }

  if (!changeCopy || (-[VLFScanningInstructionView traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), [v6 preferredContentSizeCategory], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(changeCopy, "preferredContentSizeCategory"), v8 = objc_claimAutoreleasedReturnValue(), v9 = UIContentSizeCategoryCompareToCategory(v7, v8), v8, v7, v6, v9))
  {
    [(VLFScanningInstructionView *)self configureSizingLabel];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  instructionLabel = [(VLFScanningInstructionView *)self instructionLabel];
  [instructionLabel setTextColor:colorCopy];
}

- (UIColor)textColor
{
  instructionLabel = [(VLFScanningInstructionView *)self instructionLabel];
  textColor = [instructionLabel textColor];

  return textColor;
}

- (void)setCurrentScanningState:(int64_t)state
{
  if (self->_currentScanningState != state)
  {
    self->_currentScanningState = state;
    v4 = sub_100B251D0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = self->_currentScanningState - 2;
      if (v5 > 3)
      {
        v6 = @"VLFScanningStateInitializing";
      }

      else
      {
        v6 = off_101638650[v5];
      }

      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updating for scanning state: %@", buf, 0xCu);
    }

    if (self->_currentScanningState == 1)
    {
      [(VLFScanningInstructionView *)self updateForCurrentState];
    }

    else
    {
      animationManager = [(VLFScanningInstructionView *)self animationManager];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100B25B74;
      v8[3] = &unk_101661B18;
      v8[4] = self;
      [animationManager fadeWithFadeOutCompletion:v8];
    }
  }
}

- (void)setCurrentLayout:(unint64_t)layout
{
  if (self->_currentLayout != layout)
  {
    self->_currentLayout = layout;
    v4 = sub_100B251D0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      currentLayout = self->_currentLayout;
      v10 = 134217984;
      v11 = currentLayout;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updating for layout: %lu", &v10, 0xCu);
    }

    v6 = self->_currentLayout;
    sizingLabel = [(VLFScanningInstructionView *)self sizingLabel];
    [sizingLabel setCurrentLayout:v6];

    v8 = self->_currentLayout;
    instructionLabel = [(VLFScanningInstructionView *)self instructionLabel];
    [instructionLabel setCurrentLayout:v8];

    [(VLFScanningInstructionView *)self configureSizingLabel];
  }
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"VLFSessionScanningAnimationAlternativeLongestTextKey"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObserver:self forKeyPath:@"VLFSessionScanningAnimationShowLongestTextKey"];

  v5.receiver = self;
  v5.super_class = VLFScanningInstructionView;
  [(VLFScanningInstructionView *)&v5 dealloc];
}

- (VLFScanningInstructionView)initWithLayout:(unint64_t)layout
{
  v45.receiver = self;
  v45.super_class = VLFScanningInstructionView;
  v4 = [(VLFScanningInstructionView *)&v45 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_currentScanningState = 1;
    v4->_currentLayout = layout;
    v43 = +[NSMutableArray array];
    v6 = [[VLFScanningInstructionLabel alloc] initForSizing:1];
    sizingLabel = v5->_sizingLabel;
    v5->_sizingLabel = v6;

    [(VLFScanningInstructionLabel *)v5->_sizingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VLFScanningInstructionLabel *)v5->_sizingLabel setAlpha:0.0];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 BOOLForKey:@"VLFSessionScanningAnimationShowLongestTextKey"];

    if (v9)
    {
      v10 = sub_100B251D0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Debug option to show the sizing label is enabled", buf, 2u);
      }

      [(VLFScanningInstructionLabel *)v5->_sizingLabel setAlpha:0.300000012];
    }

    [(VLFScanningInstructionLabel *)v5->_sizingLabel setCurrentLayout:v5->_currentLayout];
    [(VLFScanningInstructionView *)v5 addSubview:v5->_sizingLabel];
    leadingAnchor = [(VLFScanningInstructionLabel *)v5->_sizingLabel leadingAnchor];
    leadingAnchor2 = [(VLFScanningInstructionView *)v5 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[0] = v37;
    trailingAnchor = [(VLFScanningInstructionLabel *)v5->_sizingLabel trailingAnchor];
    trailingAnchor2 = [(VLFScanningInstructionView *)v5 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v47[1] = v12;
    topAnchor = [(VLFScanningInstructionLabel *)v5->_sizingLabel topAnchor];
    topAnchor2 = [(VLFScanningInstructionView *)v5 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v47[2] = v15;
    bottomAnchor = [(VLFScanningInstructionLabel *)v5->_sizingLabel bottomAnchor];
    bottomAnchor2 = [(VLFScanningInstructionView *)v5 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v47[3] = v18;
    v19 = [NSArray arrayWithObjects:v47 count:4];
    [v43 addObjectsFromArray:v19];

    v20 = [[VLFScanningInstructionLabel alloc] initForSizing:0];
    instructionLabel = v5->_instructionLabel;
    v5->_instructionLabel = v20;

    [(VLFScanningInstructionLabel *)v5->_instructionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VLFScanningInstructionLabel *)v5->_instructionLabel setCurrentLayout:v5->_currentLayout];
    [(VLFScanningInstructionView *)v5 addSubview:v5->_instructionLabel];
    leadingAnchor3 = [(VLFScanningInstructionLabel *)v5->_instructionLabel leadingAnchor];
    leadingAnchor4 = [(VLFScanningInstructionView *)v5 leadingAnchor];
    v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v46[0] = v38;
    trailingAnchor3 = [(VLFScanningInstructionLabel *)v5->_instructionLabel trailingAnchor];
    trailingAnchor4 = [(VLFScanningInstructionView *)v5 trailingAnchor];
    v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v46[1] = v24;
    firstBaselineAnchor = [(VLFScanningInstructionLabel *)v5->_instructionLabel firstBaselineAnchor];
    firstBaselineAnchor2 = [(VLFScanningInstructionLabel *)v5->_sizingLabel firstBaselineAnchor];
    v27 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    v46[2] = v27;
    v28 = [NSArray arrayWithObjects:v46 count:3];
    [v43 addObjectsFromArray:v28];

    [NSLayoutConstraint activateConstraints:v43];
    v29 = [VLFScanningAnimationManager alloc];
    layer = [(VLFScanningInstructionLabel *)v5->_instructionLabel layer];
    v31 = [(VLFScanningAnimationManager *)v29 initWithLayer:layer];
    animationManager = v5->_animationManager;
    v5->_animationManager = v31;

    [(VLFScanningInstructionView *)v5 updateForCurrentState];
    [(VLFScanningInstructionLabel *)v5->_sizingLabel addFontObserver:v5->_instructionLabel];
    v33 = +[NSUserDefaults standardUserDefaults];
    [v33 addObserver:v5 forKeyPath:@"VLFSessionScanningAnimationShowLongestTextKey" options:1 context:0];

    v34 = +[NSUserDefaults standardUserDefaults];
    [v34 addObserver:v5 forKeyPath:@"VLFSessionScanningAnimationAlternativeLongestTextKey" options:1 context:0];
  }

  return v5;
}

@end