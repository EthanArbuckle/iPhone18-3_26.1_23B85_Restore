@interface TwoLinesOutlineCell
- (BOOL)_useStandardCellConfigurations;
- (TwoLinesOutlineCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_accessoryButtonTapped:(id)tapped accessoryModel:(id)model;
- (void)_invalidateConstraints;
- (void)_toggleDisclosureAccessory:(id)accessory;
- (void)_updateAccessoryFromModel;
- (void)_updateAccessoryVisibility;
- (void)_updateActionViewFromModel;
- (void)_updateConstraints;
- (void)_updateContentConfigurationFromViewModel;
- (void)_updateDisclosureAccessoryInteraction;
- (void)_updateFromModel;
- (void)_updateTextColors;
- (void)setCellModel:(id)model;
- (void)setHovering:(BOOL)hovering;
- (void)setUseLightForegroundColors:(BOOL)colors;
@end

@implementation TwoLinesOutlineCell

- (void)_updateActionViewFromModel
{
  actionModel = [(TwoLinesOutlineCellModel *)self->_cellModel actionModel];

  actionView = self->_actionView;
  if (actionModel)
  {
    if (!actionView)
    {
      v5 = [[TwoLinesOutlineCellActionView alloc] initWithFrame:self twoLinesOutlineCell:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v6 = self->_actionView;
      self->_actionView = v5;

      [(TwoLinesOutlineCellActionView *)self->_actionView setTranslatesAutoresizingMaskIntoConstraints:0];
      actionView = self->_actionView;
    }

    superview = [(TwoLinesOutlineCellActionView *)actionView superview];

    if (!superview)
    {
      contentView = [(TwoLinesOutlineCell *)self contentView];
      [contentView addSubview:self->_actionView];

      [(TwoLinesOutlineCell *)self _invalidateConstraints];
    }

    actionModel2 = [(TwoLinesOutlineCellModel *)self->_cellModel actionModel];
    [(TwoLinesOutlineCellActionView *)self->_actionView setViewModel:actionModel2];
  }

  else
  {
    superview2 = [(TwoLinesOutlineCellActionView *)actionView superview];

    if (superview2)
    {
      [(TwoLinesOutlineCellActionView *)self->_actionView removeFromSuperview];

      [(TwoLinesOutlineCell *)self _invalidateConstraints];
    }
  }
}

- (void)_accessoryButtonTapped:(id)tapped accessoryModel:(id)model
{
  modelCopy = model;
  tappedCopy = tapped;
  delegate = [modelCopy delegate];
  [delegate twoLinesOutlineCell:self accessoryViewTapped:tappedCopy accessoryModel:modelCopy];
}

- (void)_toggleDisclosureAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_accessoryModels;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 accessoryType] == 2)
        {
          delegate = [v10 delegate];
          [delegate twoLinesOutlineCell:self accessoryViewTapped:accessoryCopy accessoryModel:v10];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_updateDisclosureAccessoryInteraction
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_accessoryModels;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 accessoryType] == 2)
        {

          doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
          if (!doubleTapGestureRecognizer)
          {
            v11 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_toggleDisclosureAccessory:"];
            v12 = self->_doubleTapGestureRecognizer;
            self->_doubleTapGestureRecognizer = v11;

            [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
            [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setDelaysTouchesEnded:0];
            [(TwoLinesOutlineCell *)self addGestureRecognizer:self->_doubleTapGestureRecognizer];
            doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
          }

          v10 = 1;
          goto LABEL_14;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
  v10 = 0;
LABEL_14:
  [(UITapGestureRecognizer *)doubleTapGestureRecognizer setEnabled:v10, v13];
}

- (void)_updateAccessoryVisibility
{
  v3 = objc_alloc_init(NSMutableArray);
  accessoryModels = self->_accessoryModels;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100AF338C;
  v9 = &unk_101637C00;
  selfCopy = self;
  v11 = v3;
  v5 = v3;
  [(NSArray *)accessoryModels enumerateObjectsUsingBlock:&v6];
  [(TwoLinesOutlineCell *)self setTrailingAccessoryConfigurations:v5, v6, v7, v8, v9, selfCopy];
}

- (void)_updateAccessoryFromModel
{
  accessoryModels = self->_accessoryModels;
  accessoryModels = [(TwoLinesOutlineCellModel *)self->_cellModel accessoryModels];
  if (accessoryModels == accessoryModels)
  {
  }

  else
  {
    obja = accessoryModels;
    v5 = [(NSArray *)accessoryModels isEqual:accessoryModels];

    if ((v5 & 1) == 0)
    {
      accessoryModels2 = [(TwoLinesOutlineCellModel *)self->_cellModel accessoryModels];
      v7 = self->_accessoryModels;
      self->_accessoryModels = accessoryModels2;

      v8 = objc_alloc_init(NSMutableArray);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = self->_accessoryModels;
      v9 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = *v22;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            objc_initWeak(&location, self);
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_100AF37DC;
            v18[3] = &unk_101660418;
            objc_copyWeak(&v19, &location);
            v18[4] = v12;
            v13 = [UIAction actionWithHandler:v18];
            v14 = [v12 createAccessoryConfigurationWithAction:v13];

            [(NSArray *)v8 addObject:v14];
            objc_destroyWeak(&v19);
            objc_destroyWeak(&location);
          }

          v9 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);
      }

      accessoryConfigurations = self->_accessoryConfigurations;
      self->_accessoryConfigurations = v8;

      [(TwoLinesOutlineCell *)self _updateAccessoryVisibility];
      [(TwoLinesOutlineCell *)self _updateDisclosureAccessoryInteraction];
    }
  }
}

- (void)_updateTextColors
{
  [(TwoLinesContentView *)self->_twoLinesContentView setIsParentCellSelected:[(SidebarOutlineCell *)self useLightForegroundColors]];

  [(TwoLinesOutlineCell *)self _updateAccessoryVisibility];
}

- (void)_updateContentConfigurationFromViewModel
{
  if (self->_twoLinesContentView)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *location = 136315906;
      *&location[4] = "[TwoLinesOutlineCell _updateContentConfigurationFromViewModel]";
      v28 = 2080;
      v29 = "TwoLinesOutlineCell.m";
      v30 = 1024;
      v31 = 170;
      v32 = 2080;
      v33 = "_twoLinesContentView == nil";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", location, 0x26u);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }
  }

  v3 = +[UIListContentConfiguration subtitleCellConfiguration];
  contentModel = [(TwoLinesOutlineCellModel *)self->_cellModel contentModel];
  titleText = [contentModel titleText];
  [v3 setText:titleText];

  attributedSubtitleText = [contentModel attributedSubtitleText];
  if (attributedSubtitleText)
  {
    [v3 setSecondaryAttributedText:attributedSubtitleText];
  }

  else
  {
    subtitleText = [contentModel subtitleText];
    [v3 setSecondaryText:subtitleText];
  }

  [v3 setImage:self->_fetchedImage];
  imageProperties = [v3 imageProperties];
  [imageProperties setReservedLayoutSize:{24.0, 24.0}];

  imageProperties2 = [v3 imageProperties];
  [imageProperties2 setMaximumSize:{24.0, 24.0}];

  imageStyle = [contentModel imageStyle];
  if (imageStyle <= 4)
  {
    v11 = dbl_1012153E8[imageStyle];
    imageProperties3 = [v3 imageProperties];
    [imageProperties3 setCornerRadius:v11];
  }

  [(TwoLinesOutlineCell *)self setContentConfiguration:v3];
  if (!self->_fetchedImage)
  {
    v13 = self->_imageFetchCounter + 1;
    self->_imageFetchCounter = v13;
    window = [(TwoLinesOutlineCell *)self window];
    screen = [window screen];
    v16 = screen;
    if (screen)
    {
      [screen scale];
      v18 = v17;
    }

    else
    {
      v19 = +[UIScreen mainScreen];
      [v19 scale];
      v18 = v20;
    }

    objc_initWeak(location, self);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100AF3C74;
    v24[3] = &unk_101637BD8;
    objc_copyWeak(&v25, location);
    v26 = v13;
    [contentModel fetchImageForScreenScale:v24 withCompletionHandler:v18];
    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }
}

- (void)_updateFromModel
{
  if (self->_twoLinesContentView)
  {
    contentModel = [(TwoLinesOutlineCellModel *)self->_cellModel contentModel];
    [(TwoLinesContentView *)self->_twoLinesContentView setViewModel:contentModel];

    backgroundModel = [(TwoLinesOutlineCellModel *)self->_cellModel backgroundModel];
    [(SidebarOutlineCell *)self setBackgroundModel:backgroundModel];
  }

  else
  {
    [(TwoLinesOutlineCell *)self _updateContentConfigurationFromViewModel];
  }

  axSectionIdentifier = [(SidebarOutlineCell *)self axSectionIdentifier];
  if ([axSectionIdentifier length])
  {
    axSectionIdentifier2 = [(SidebarOutlineCell *)self axSectionIdentifier];
  }

  else
  {
    axSectionIdentifier2 = &stru_1016631F0;
  }

  v12 = axSectionIdentifier2;

  viewModel = [(TwoLinesContentView *)self->_twoLinesContentView viewModel];
  axIdentifier = [viewModel axIdentifier];
  if ([axIdentifier length])
  {
    viewModel2 = [(TwoLinesContentView *)self->_twoLinesContentView viewModel];
    axIdentifier2 = [viewModel2 axIdentifier];
  }

  else
  {
    axIdentifier2 = @"TwoLinesOutlineCell";
  }

  v11 = [(__CFString *)v12 stringByAppendingString:axIdentifier2];
  [(TwoLinesOutlineCell *)self setAccessibilityIdentifier:v11];

  [(TwoLinesOutlineCell *)self _updateAccessoryFromModel];
  [(TwoLinesOutlineCell *)self _updateActionViewFromModel];
  [(TwoLinesOutlineCell *)self _updateTextColors];
}

- (void)setCellModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_cellModel != modelCopy)
  {
    v9 = modelCopy;
    v7 = [(TwoLinesOutlineCellModel *)modelCopy isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      fetchedImage = self->_fetchedImage;
      self->_fetchedImage = 0;

      objc_storeStrong(&self->_cellModel, model);
      [(TwoLinesOutlineCell *)self _useStandardCellConfigurations];
      [(TwoLinesOutlineCell *)self _updateFromModel];
      v6 = v9;
    }
  }
}

- (void)setUseLightForegroundColors:(BOOL)colors
{
  v4.receiver = self;
  v4.super_class = TwoLinesOutlineCell;
  [(SidebarOutlineCell *)&v4 setUseLightForegroundColors:colors];
  [(TwoLinesOutlineCell *)self _updateTextColors];
}

- (void)setHovering:(BOOL)hovering
{
  v4.receiver = self;
  v4.super_class = TwoLinesOutlineCell;
  [(SidebarOutlineCell *)&v4 setHovering:hovering];
  [(TwoLinesOutlineCell *)self _updateAccessoryVisibility];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  v10.receiver = self;
  v10.super_class = TwoLinesOutlineCell;
  v5 = [(TwoLinesOutlineCell *)&v10 preferredLayoutAttributesFittingAttributes:attributesCopy];
  superview = [(TwoLinesOutlineCellActionView *)self->_actionView superview];

  if (superview)
  {
    [v5 frame];
    [(TwoLinesOutlineCell *)self setFrame:?];
    [(TwoLinesOutlineCell *)self layoutIfNeeded];
    v9.receiver = self;
    v9.super_class = TwoLinesOutlineCell;
    v7 = [(TwoLinesOutlineCell *)&v9 preferredLayoutAttributesFittingAttributes:attributesCopy];

    v5 = v7;
  }

  return v5;
}

- (void)_invalidateConstraints
{
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    constraints = self->_constraints;
    self->_constraints = 0;
  }

  [(TwoLinesOutlineCell *)self _updateConstraints];
}

- (void)_updateConstraints
{
  if (self->_twoLinesContentView && !self->_constraints)
  {
    superview = [(TwoLinesOutlineCellActionView *)self->_actionView superview];

    topAnchor = [(TwoLinesContentView *)self->_twoLinesContentView topAnchor];
    contentView = [(TwoLinesOutlineCell *)self contentView];
    [contentView topAnchor];
    v42 = v47 = topAnchor;
    v50 = [topAnchor constraintEqualToAnchor:?];
    if (superview)
    {
      v52[0] = v50;
      leadingAnchor = [(TwoLinesContentView *)self->_twoLinesContentView leadingAnchor];
      contentView2 = [(TwoLinesOutlineCell *)self contentView];
      layoutMarginsGuide = [contentView2 layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v48 = [leadingAnchor constraintEqualToAnchor:?];
      v52[1] = v48;
      trailingAnchor = [(TwoLinesContentView *)self->_twoLinesContentView trailingAnchor];
      contentView3 = [(TwoLinesOutlineCell *)self contentView];
      layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
      v46 = trailingAnchor;
      v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v52[2] = v27;
      topAnchor2 = [(TwoLinesOutlineCellActionView *)self->_actionView topAnchor];
      bottomAnchor = [(TwoLinesContentView *)self->_twoLinesContentView bottomAnchor];
      v41 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:7.0];
      v52[3] = v41;
      leadingAnchor3 = [(TwoLinesOutlineCellActionView *)self->_actionView leadingAnchor];
      contentView4 = [(TwoLinesOutlineCell *)self contentView];
      layoutMarginsGuide3 = [(NSArray *)contentView4 layoutMarginsGuide];
      leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
      v40 = leadingAnchor3;
      v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:32.0];
      v52[4] = v31;
      trailingAnchor3 = [(TwoLinesOutlineCellActionView *)self->_actionView trailingAnchor];
      contentView5 = [(TwoLinesOutlineCell *)self contentView];
      layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
      trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
      v9 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v52[5] = v9;
      bottomAnchor2 = [(TwoLinesOutlineCellActionView *)self->_actionView bottomAnchor];
      contentView6 = [(TwoLinesOutlineCell *)self contentView];
      bottomAnchor3 = [contentView6 bottomAnchor];
      LODWORD(v13) = 1112276992;
      v14 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-7.0 priority:v13];
      v52[6] = v14;
      v15 = [NSArray arrayWithObjects:v52 count:7];
      constraints = self->_constraints;
      self->_constraints = v15;

      v17 = v27;
      bottomAnchor4 = topAnchor2;

      contentView7 = contentView2;
      layoutMarginsGuide5 = layoutMarginsGuide;

      leadingAnchor5 = leadingAnchor;
      v22 = contentView4;
    }

    else
    {
      v51[0] = v50;
      leadingAnchor5 = [(TwoLinesContentView *)self->_twoLinesContentView leadingAnchor];
      contentView7 = [(TwoLinesOutlineCell *)self contentView];
      layoutMarginsGuide5 = [contentView7 layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide5 leadingAnchor];
      v48 = [leadingAnchor5 constraintEqualToAnchor:?];
      v51[1] = v48;
      trailingAnchor5 = [(TwoLinesContentView *)self->_twoLinesContentView trailingAnchor];
      contentView3 = [(TwoLinesOutlineCell *)self contentView];
      layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
      [layoutMarginsGuide2 trailingAnchor];
      trailingAnchor2 = v46 = trailingAnchor5;
      v17 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor2];
      v51[2] = v17;
      bottomAnchor4 = [(TwoLinesContentView *)self->_twoLinesContentView bottomAnchor];
      bottomAnchor = [(TwoLinesOutlineCell *)self contentView];
      v6BottomAnchor = [bottomAnchor bottomAnchor];
      LODWORD(v25) = 1112276992;
      v41 = v6BottomAnchor;
      v40 = [bottomAnchor4 constraintEqualToAnchor:0.0 constant:v25 priority:?];
      v51[3] = v40;
      v26 = [NSArray arrayWithObjects:v51 count:4];
      v22 = self->_constraints;
      self->_constraints = v26;
    }

    [NSLayoutConstraint activateConstraints:self->_constraints];
  }
}

- (TwoLinesOutlineCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = TwoLinesOutlineCell;
  v3 = [(SidebarOutlineCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    if (![(TwoLinesOutlineCell *)v3 _useStandardCellConfigurations])
    {
      v5 = [[TwoLinesContentView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      twoLinesContentView = v4->_twoLinesContentView;
      v4->_twoLinesContentView = v5;

      [(TwoLinesContentView *)v4->_twoLinesContentView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(TwoLinesOutlineCell *)v4 contentView];
      [contentView addSubview:v4->_twoLinesContentView];
    }

    [(TwoLinesOutlineCell *)v4 _invalidateConstraints];
  }

  return v4;
}

- (BOOL)_useStandardCellConfigurations
{
  v3 = _UISolariumEnabled();
  if (v3)
  {
    LOBYTE(v3) = sub_10000FA08(self) == 5;
  }

  return v3;
}

@end