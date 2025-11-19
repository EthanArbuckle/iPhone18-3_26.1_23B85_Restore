@interface MacFooterView
- (MacFooterView)initWithRightButtonType:(int64_t)a3 hasBlur:(BOOL)a4;
- (MacFooterViewDelegate)delegate;
- (id)_basicButtonSetupAddedToContentView:(id)a3;
- (void)_backButtonTapped:(id)a3;
- (void)_leftButtonTapped:(id)a3;
- (void)_rightButtonTapped:(id)a3;
- (void)setRightButtonEnabled:(BOOL)a3;
- (void)submissionFinishedWithError:(id)a3;
- (void)willBeginSubmissionWithProgress:(id)a3;
@end

@implementation MacFooterView

- (MacFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)submissionFinishedWithError:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_actionButtons;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(MacFooterView *)self rightButton];

        if (v9 == v10)
        {
          v11 = [(MacFooterView *)self rightButtonEnabled];
          v12 = [(MacFooterView *)self rightButton];
          [v12 setEnabled:v11];
        }

        else
        {
          [v9 setEnabled:1];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)willBeginSubmissionWithProgress:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_actionButtons;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setEnabled:{0, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_backButtonTapped:(id)a3
{
  v4 = [(MacFooterView *)self delegate];
  [v4 macFooterViewBackButtonTapped:self];
}

- (void)_rightButtonTapped:(id)a3
{
  v4 = [(MacFooterView *)self delegate];
  [v4 macFooterViewRightButtonTapped:self];
}

- (void)_leftButtonTapped:(id)a3
{
  v4 = [(MacFooterView *)self delegate];
  [v4 macFooterViewLeftButtonTapped:self];
}

- (id)_basicButtonSetupAddedToContentView:(id)a3
{
  v3 = a3;
  v4 = [UIButton buttonWithType:1];
  [v3 addSubview:v4];

  LODWORD(v5) = 1148846080;
  [v4 setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v6];

  return v4;
}

- (void)setRightButtonEnabled:(BOOL)a3
{
  v3 = a3;
  self->_rightButtonEnabled = a3;
  v4 = [(MacFooterView *)self rightButton];
  [v4 setEnabled:v3];
}

- (MacFooterView)initWithRightButtonType:(int64_t)a3 hasBlur:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v62.receiver = self;
  v62.super_class = MacFooterView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(MacFooterView *)&v62 initWithFrame:CGRectZero.origin.x, y, width, height];
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  v11 = v9;
  v12 = v11;
  v54 = v10;
  if (v4)
  {
    v13 = [MapsTheme visualEffectViewAllowingBlur:1];
    [(MacFooterView *)v12 addSubview:v13];
    v56 = v13;
    v14 = [v13 contentView];
  }

  else
  {
    v56 = 0;
    v14 = v11;
  }

  v15 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  accessoryView = v12->_accessoryView;
  v12->_accessoryView = v15;

  [(UIView *)v12->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v17) = 1132068864;
  [(UIView *)v12->_accessoryView setContentHuggingPriority:0 forAxis:v17];
  LODWORD(v18) = 1132068864;
  [(UIView *)v12->_accessoryView setContentCompressionResistancePriority:0 forAxis:v18];
  [v14 addSubview:v12->_accessoryView];
  v19 = objc_alloc_init(NSMutableArray);
  if ((v5 & 0x1D) != 0)
  {
    v20 = [(MacFooterView *)v12 _basicButtonSetupAddedToContentView:v14];
    [v20 setRole:1];
    [(MacFooterView *)v12 setRightButton:v20];
    if (v5)
    {
      v21 = @"Add";
    }

    else if ((v5 & 4) != 0)
    {
      v21 = @"Submit";
    }

    else
    {
      if ((v5 & 0x18) == 0)
      {
LABEL_13:
        [v20 addTarget:v12 action:"_rightButtonTapped:" forControlEvents:64];
        [v19 addObject:v20];

        goto LABEL_14;
      }

      v21 = @"Done";
    }

    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:v21 value:@"localized string not found" table:0];
    [v20 setTitle:v23 forState:0];

    goto LABEL_13;
  }

LABEL_14:
  if ((v5 & 2) != 0)
  {
    v24 = &selRef__backButtonTapped_;
    v25 = @"Back";
    goto LABEL_18;
  }

  if ((v5 & 8) == 0)
  {
    v24 = &selRef__leftButtonTapped_;
    v25 = @"Cancel";
LABEL_18:
    v26 = [(MacFooterView *)v12 _basicButtonSetupAddedToContentView:v14];
    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:v25 value:@"localized string not found" table:0];
    [v26 setTitle:v28 forState:0];

    [v26 addTarget:v12 action:*v24 forControlEvents:64];
    [v19 addObject:v26];
  }

  v29 = [MUSizeLayout alloc];
  +[MUSizeLayout useIntrinsicContentSize];
  v55 = [v29 initWithItem:v12 size:?];
  v30 = [MUSizeLayout alloc];
  v31 = v12->_accessoryView;
  +[MUSizeLayout useIntrinsicContentSize];
  v57 = [v30 initWithItem:v31 size:?];
  v32 = [[MUStackLayout alloc] initWithContainer:v14 axis:0];
  [v32 addArrangedLayoutItem:v12->_accessoryView];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v33 = [v19 reverseObjectEnumerator];
  v34 = [v33 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v59;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v59 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [v32 addArrangedLayoutItem:*(*(&v58 + 1) + 8 * i)];
      }

      v35 = [v33 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v35);
  }

  v53 = v14;

  [v32 setDistribution:0];
  [v32 setDistributionBoundsContent:1];
  [v32 setAlignment:2];
  [v32 setInsets:{0.0, 16.0, 0.0, 16.0}];
  [v32 setSpacing:20.0];
  v38 = v55;
  v64[0] = v55;
  v64[1] = v57;
  v64[2] = v32;
  v39 = [NSArray arrayWithObjects:v64 count:3];
  v40 = [NSMutableArray arrayWithArray:v39];

  v41 = v56;
  if (v56)
  {
    v42 = [[MUEdgeLayout alloc] initWithItem:v56 container:v12];
    [v40 addObject:v42];
  }

  if ([v19 count] == 2)
  {
    v43 = [v19 objectAtIndexedSubscript:0];
    v44 = [v43 widthAnchor];
    v45 = [v19 objectAtIndexedSubscript:1];
    v46 = [v45 widthAnchor];
    LODWORD(v47) = 1140457472;
    v48 = [v44 constraintEqualToAnchor:v46 constant:0.0 priority:v47];
    v63 = v48;
    v49 = [NSArray arrayWithObjects:&v63 count:1];

    v38 = v55;
    v41 = v56;
  }

  else
  {
    v49 = &__NSArray0__struct;
  }

  v10 = v54;
  [NSLayoutConstraint _mapsui_activateLayouts:v40 constraints:v49];
  v50 = [v19 copy];
  actionButtons = v12->_actionButtons;
  v12->_actionButtons = v50;

  return v10;
}

@end