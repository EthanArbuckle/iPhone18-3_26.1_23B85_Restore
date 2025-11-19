@interface TwoLinesOutlineCell
- (BOOL)_useStandardCellConfigurations;
- (TwoLinesOutlineCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_accessoryButtonTapped:(id)a3 accessoryModel:(id)a4;
- (void)_invalidateConstraints;
- (void)_toggleDisclosureAccessory:(id)a3;
- (void)_updateAccessoryFromModel;
- (void)_updateAccessoryVisibility;
- (void)_updateActionViewFromModel;
- (void)_updateConstraints;
- (void)_updateContentConfigurationFromViewModel;
- (void)_updateDisclosureAccessoryInteraction;
- (void)_updateFromModel;
- (void)_updateTextColors;
- (void)setCellModel:(id)a3;
- (void)setHovering:(BOOL)a3;
- (void)setUseLightForegroundColors:(BOOL)a3;
@end

@implementation TwoLinesOutlineCell

- (void)_updateActionViewFromModel
{
  v3 = [(TwoLinesOutlineCellModel *)self->_cellModel actionModel];

  actionView = self->_actionView;
  if (v3)
  {
    if (!actionView)
    {
      v5 = [[TwoLinesOutlineCellActionView alloc] initWithFrame:self twoLinesOutlineCell:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v6 = self->_actionView;
      self->_actionView = v5;

      [(TwoLinesOutlineCellActionView *)self->_actionView setTranslatesAutoresizingMaskIntoConstraints:0];
      actionView = self->_actionView;
    }

    v7 = [(TwoLinesOutlineCellActionView *)actionView superview];

    if (!v7)
    {
      v8 = [(TwoLinesOutlineCell *)self contentView];
      [v8 addSubview:self->_actionView];

      [(TwoLinesOutlineCell *)self _invalidateConstraints];
    }

    v10 = [(TwoLinesOutlineCellModel *)self->_cellModel actionModel];
    [(TwoLinesOutlineCellActionView *)self->_actionView setViewModel:v10];
  }

  else
  {
    v9 = [(TwoLinesOutlineCellActionView *)actionView superview];

    if (v9)
    {
      [(TwoLinesOutlineCellActionView *)self->_actionView removeFromSuperview];

      [(TwoLinesOutlineCell *)self _invalidateConstraints];
    }
  }
}

- (void)_accessoryButtonTapped:(id)a3 accessoryModel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 delegate];
  [v8 twoLinesOutlineCell:self accessoryViewTapped:v7 accessoryModel:v6];
}

- (void)_toggleDisclosureAccessory:(id)a3
{
  v4 = a3;
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
          v11 = [v10 delegate];
          [v11 twoLinesOutlineCell:self accessoryViewTapped:v4 accessoryModel:v10];
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
  v10 = self;
  v11 = v3;
  v5 = v3;
  [(NSArray *)accessoryModels enumerateObjectsUsingBlock:&v6];
  [(TwoLinesOutlineCell *)self setTrailingAccessoryConfigurations:v5, v6, v7, v8, v9, v10];
}

- (void)_updateAccessoryFromModel
{
  accessoryModels = self->_accessoryModels;
  v4 = [(TwoLinesOutlineCellModel *)self->_cellModel accessoryModels];
  if (accessoryModels == v4)
  {
  }

  else
  {
    obja = v4;
    v5 = [(NSArray *)accessoryModels isEqual:v4];

    if ((v5 & 1) == 0)
    {
      v6 = [(TwoLinesOutlineCellModel *)self->_cellModel accessoryModels];
      v7 = self->_accessoryModels;
      self->_accessoryModels = v6;

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
  v4 = [(TwoLinesOutlineCellModel *)self->_cellModel contentModel];
  v5 = [v4 titleText];
  [v3 setText:v5];

  v6 = [v4 attributedSubtitleText];
  if (v6)
  {
    [v3 setSecondaryAttributedText:v6];
  }

  else
  {
    v7 = [v4 subtitleText];
    [v3 setSecondaryText:v7];
  }

  [v3 setImage:self->_fetchedImage];
  v8 = [v3 imageProperties];
  [v8 setReservedLayoutSize:{24.0, 24.0}];

  v9 = [v3 imageProperties];
  [v9 setMaximumSize:{24.0, 24.0}];

  v10 = [v4 imageStyle];
  if (v10 <= 4)
  {
    v11 = dbl_1012153E8[v10];
    v12 = [v3 imageProperties];
    [v12 setCornerRadius:v11];
  }

  [(TwoLinesOutlineCell *)self setContentConfiguration:v3];
  if (!self->_fetchedImage)
  {
    v13 = self->_imageFetchCounter + 1;
    self->_imageFetchCounter = v13;
    v14 = [(TwoLinesOutlineCell *)self window];
    v15 = [v14 screen];
    v16 = v15;
    if (v15)
    {
      [v15 scale];
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
    [v4 fetchImageForScreenScale:v24 withCompletionHandler:v18];
    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }
}

- (void)_updateFromModel
{
  if (self->_twoLinesContentView)
  {
    v3 = [(TwoLinesOutlineCellModel *)self->_cellModel contentModel];
    [(TwoLinesContentView *)self->_twoLinesContentView setViewModel:v3];

    v4 = [(TwoLinesOutlineCellModel *)self->_cellModel backgroundModel];
    [(SidebarOutlineCell *)self setBackgroundModel:v4];
  }

  else
  {
    [(TwoLinesOutlineCell *)self _updateContentConfigurationFromViewModel];
  }

  v5 = [(SidebarOutlineCell *)self axSectionIdentifier];
  if ([v5 length])
  {
    v6 = [(SidebarOutlineCell *)self axSectionIdentifier];
  }

  else
  {
    v6 = &stru_1016631F0;
  }

  v12 = v6;

  v7 = [(TwoLinesContentView *)self->_twoLinesContentView viewModel];
  v8 = [v7 axIdentifier];
  if ([v8 length])
  {
    v9 = [(TwoLinesContentView *)self->_twoLinesContentView viewModel];
    v10 = [v9 axIdentifier];
  }

  else
  {
    v10 = @"TwoLinesOutlineCell";
  }

  v11 = [(__CFString *)v12 stringByAppendingString:v10];
  [(TwoLinesOutlineCell *)self setAccessibilityIdentifier:v11];

  [(TwoLinesOutlineCell *)self _updateAccessoryFromModel];
  [(TwoLinesOutlineCell *)self _updateActionViewFromModel];
  [(TwoLinesOutlineCell *)self _updateTextColors];
}

- (void)setCellModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_cellModel != v5)
  {
    v9 = v5;
    v7 = [(TwoLinesOutlineCellModel *)v5 isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      fetchedImage = self->_fetchedImage;
      self->_fetchedImage = 0;

      objc_storeStrong(&self->_cellModel, a3);
      [(TwoLinesOutlineCell *)self _useStandardCellConfigurations];
      [(TwoLinesOutlineCell *)self _updateFromModel];
      v6 = v9;
    }
  }
}

- (void)setUseLightForegroundColors:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TwoLinesOutlineCell;
  [(SidebarOutlineCell *)&v4 setUseLightForegroundColors:a3];
  [(TwoLinesOutlineCell *)self _updateTextColors];
}

- (void)setHovering:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TwoLinesOutlineCell;
  [(SidebarOutlineCell *)&v4 setHovering:a3];
  [(TwoLinesOutlineCell *)self _updateAccessoryVisibility];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TwoLinesOutlineCell;
  v5 = [(TwoLinesOutlineCell *)&v10 preferredLayoutAttributesFittingAttributes:v4];
  v6 = [(TwoLinesOutlineCellActionView *)self->_actionView superview];

  if (v6)
  {
    [v5 frame];
    [(TwoLinesOutlineCell *)self setFrame:?];
    [(TwoLinesOutlineCell *)self layoutIfNeeded];
    v9.receiver = self;
    v9.super_class = TwoLinesOutlineCell;
    v7 = [(TwoLinesOutlineCell *)&v9 preferredLayoutAttributesFittingAttributes:v4];

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
    v3 = [(TwoLinesOutlineCellActionView *)self->_actionView superview];

    v4 = [(TwoLinesContentView *)self->_twoLinesContentView topAnchor];
    v43 = [(TwoLinesOutlineCell *)self contentView];
    [v43 topAnchor];
    v42 = v47 = v4;
    v50 = [v4 constraintEqualToAnchor:?];
    if (v3)
    {
      v52[0] = v50;
      v36 = [(TwoLinesContentView *)self->_twoLinesContentView leadingAnchor];
      v38 = [(TwoLinesOutlineCell *)self contentView];
      v37 = [v38 layoutMarginsGuide];
      v49 = [v37 leadingAnchor];
      v48 = [v36 constraintEqualToAnchor:?];
      v52[1] = v48;
      v5 = [(TwoLinesContentView *)self->_twoLinesContentView trailingAnchor];
      v45 = [(TwoLinesOutlineCell *)self contentView];
      v44 = [v45 layoutMarginsGuide];
      v39 = [v44 trailingAnchor];
      v46 = v5;
      v27 = [v5 constraintEqualToAnchor:v39];
      v52[2] = v27;
      v32 = [(TwoLinesOutlineCellActionView *)self->_actionView topAnchor];
      v6 = [(TwoLinesContentView *)self->_twoLinesContentView bottomAnchor];
      v41 = [v32 constraintEqualToAnchor:v6 constant:7.0];
      v52[3] = v41;
      v7 = [(TwoLinesOutlineCellActionView *)self->_actionView leadingAnchor];
      v35 = [(TwoLinesOutlineCell *)self contentView];
      v34 = [(NSArray *)v35 layoutMarginsGuide];
      v33 = [v34 leadingAnchor];
      v40 = v7;
      v31 = [v7 constraintEqualToAnchor:v33 constant:32.0];
      v52[4] = v31;
      v29 = [(TwoLinesOutlineCellActionView *)self->_actionView trailingAnchor];
      v30 = [(TwoLinesOutlineCell *)self contentView];
      v28 = [v30 layoutMarginsGuide];
      v8 = [v28 trailingAnchor];
      v9 = [v29 constraintEqualToAnchor:v8];
      v52[5] = v9;
      v10 = [(TwoLinesOutlineCellActionView *)self->_actionView bottomAnchor];
      v11 = [(TwoLinesOutlineCell *)self contentView];
      v12 = [v11 bottomAnchor];
      LODWORD(v13) = 1112276992;
      v14 = [v10 constraintEqualToAnchor:v12 constant:-7.0 priority:v13];
      v52[6] = v14;
      v15 = [NSArray arrayWithObjects:v52 count:7];
      constraints = self->_constraints;
      self->_constraints = v15;

      v17 = v27;
      v18 = v32;

      v19 = v38;
      v20 = v37;

      v21 = v36;
      v22 = v35;
    }

    else
    {
      v51[0] = v50;
      v21 = [(TwoLinesContentView *)self->_twoLinesContentView leadingAnchor];
      v19 = [(TwoLinesOutlineCell *)self contentView];
      v20 = [v19 layoutMarginsGuide];
      v49 = [v20 leadingAnchor];
      v48 = [v21 constraintEqualToAnchor:?];
      v51[1] = v48;
      v23 = [(TwoLinesContentView *)self->_twoLinesContentView trailingAnchor];
      v45 = [(TwoLinesOutlineCell *)self contentView];
      v44 = [v45 layoutMarginsGuide];
      [v44 trailingAnchor];
      v39 = v46 = v23;
      v17 = [v23 constraintEqualToAnchor:v39];
      v51[2] = v17;
      v18 = [(TwoLinesContentView *)self->_twoLinesContentView bottomAnchor];
      v6 = [(TwoLinesOutlineCell *)self contentView];
      v24 = [v6 bottomAnchor];
      LODWORD(v25) = 1112276992;
      v41 = v24;
      v40 = [v18 constraintEqualToAnchor:0.0 constant:v25 priority:?];
      v51[3] = v40;
      v26 = [NSArray arrayWithObjects:v51 count:4];
      v22 = self->_constraints;
      self->_constraints = v26;
    }

    [NSLayoutConstraint activateConstraints:self->_constraints];
  }
}

- (TwoLinesOutlineCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = TwoLinesOutlineCell;
  v3 = [(SidebarOutlineCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    if (![(TwoLinesOutlineCell *)v3 _useStandardCellConfigurations])
    {
      v5 = [[TwoLinesContentView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      twoLinesContentView = v4->_twoLinesContentView;
      v4->_twoLinesContentView = v5;

      [(TwoLinesContentView *)v4->_twoLinesContentView setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [(TwoLinesOutlineCell *)v4 contentView];
      [v7 addSubview:v4->_twoLinesContentView];
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