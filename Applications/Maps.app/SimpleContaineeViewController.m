@interface SimpleContaineeViewController
- (CGSize)_calculatePreferredContentSize;
- (double)preferredWidth;
- (id)_colorConfigurationForAction:(id)a3;
- (id)_primaryColorForAction:(id)a3;
- (id)actionForIndexPath:(id)a3;
- (id)configurationForAction:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_actionsSectionIndex;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updatePreferredContentSize;
- (void)adjustScrollForKeyboardWithRect:(CGRect)a3;
- (void)dealloc;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)keyboardWillShow:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerActionsTableViewCellClasses;
- (void)scrollViewDidScroll:(id)a3;
- (void)setActions:(id)a3;
- (void)setupSubviews;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateTheme;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SimpleContaineeViewController

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = [(ControlContaineeViewController *)self delegate:a3];
  [v5 viewControllerClosed:self animated:1];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SimpleContaineeViewController;
  [(ContaineeViewController *)&v9 scrollViewDidScroll:v4];
  [v4 contentOffset];
  v5 = 0.0;
  if (v6 > 0.0)
  {
    [v4 contentOffset];
    v5 = 1.0;
    if (v7 < 10.0)
    {
      [v4 contentOffset];
      v5 = v8 * 0.1;
    }
  }

  [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:v5];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SimpleContaineeViewController *)self actionForIndexPath:v6];
  v8 = [v7 action];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8);
  }

  [v10 deselectRowAtIndexPath:v6 animated:1];
}

- (int64_t)_actionsSectionIndex
{
  v3 = [(SimpleContaineeViewController *)self actions];
  v4 = [v3 count];

  if (v4)
  {
    return [(MapsThemeTableView *)self->_actionsTableView numberOfSections]- 1;
  }

  else
  {
    return -1;
  }
}

- (id)configurationForAction:(id)a3
{
  v4 = a3;
  v5 = [(SimpleContaineeViewController *)self _primaryColorForAction:v4];
  v6 = +[UIListContentConfiguration cellConfiguration];
  v7 = [v4 title];
  [v6 setText:v7];

  v8 = [v6 textProperties];
  [v8 setColor:v5];

  v9 = [v4 symbol];
  if (v9)
  {
    [v6 setImage:v9];
  }

  else
  {
    v10 = [v4 glyph];
    v11 = [UIImage systemImageNamed:v10];
    [v6 setImage:v11];
  }

  v12 = sub_10000FA08(self);
  v13 = 21.0;
  if (v12 == 5)
  {
    v13 = 17.0;
  }

  v14 = [UIImageSymbolConfiguration configurationWithPointSize:v13];
  v15 = [(SimpleContaineeViewController *)self _colorConfigurationForAction:v4];
  v16 = [v14 configurationByApplyingConfiguration:v15];
  v17 = [v6 imageProperties];
  [v17 setTintColor:v5];

  v18 = [v6 imageProperties];
  [v18 setPreferredSymbolConfiguration:v16];

  return v6;
}

- (id)_colorConfigurationForAction:(id)a3
{
  v4 = a3;
  v5 = [(SimpleContaineeViewController *)self _primaryColorForAction:v4];
  v6 = [v4 glyphStyle];

  if ((v6 & 2) != 0)
  {
    v11[0] = v5;
    v8 = +[UIColor secondarySystemFillColor];
    v11[1] = v8;
    v9 = [NSArray arrayWithObjects:v11 count:2];
    v7 = [UIImageSymbolConfiguration configurationWithPaletteColors:v9];
  }

  else
  {
    v7 = +[UIImageSymbolConfiguration configurationPreferringMonochrome];
  }

  return v7;
}

- (id)_primaryColorForAction:(id)a3
{
  if ([a3 glyphStyle])
  {
    v5 = +[UIColor systemRedColor];
  }

  else
  {
    v4 = [(SimpleContaineeViewController *)self theme];
    v5 = [v4 keyColor];
  }

  return v5;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  if (![a3 style])
  {
    v6 = +[UIColor clearColor];
    [v7 setBackgroundColor:v6];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SimpleContaineeViewController *)self actionForIndexPath:v6];
  v9 = [v7 dequeueReusableCellWithIdentifier:@"ActionCell" forIndexPath:v6];

  if (v8)
  {
    v10 = [(SimpleContaineeViewController *)self configurationForAction:v8];
    [v9 setContentConfiguration:v10];

    v11 = [v8 accessibilityIdentifier];
    [v9 setAccessibilityIdentifier:v11];

    v12 = [v8 labelAccessibilityIdentifier];
    v13 = [v9 textLabel];
    [v13 setAccessibilityIdentifier:v12];
  }

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(SimpleContaineeViewController *)self actions:a3];
  v5 = [v4 count];

  return v5;
}

- (id)actionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 == -[SimpleContaineeViewController _actionsSectionIndex](self, "_actionsSectionIndex") && (v6 = [v4 row], -[SimpleContaineeViewController actions](self, "actions"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 < v8))
  {
    v9 = [(SimpleContaineeViewController *)self actions];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)adjustScrollForKeyboardWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIScrollView *)self->_contentScrollView bounds];
  MaxY = CGRectGetMaxY(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MinY = CGRectGetMinY(v13);
  contentScrollView = self->_contentScrollView;

  [(UIScrollView *)contentScrollView setContentInset:0.0, 0.0, MaxY + 15.0 - MinY, 0.0];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  contentScrollView = self->_contentScrollView;
  v15 = +[UIScreen mainScreen];
  v16 = [v15 coordinateSpace];
  [(UIScrollView *)contentScrollView convertRect:v16 fromCoordinateSpace:v7, v9, v11, v13];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [(SimpleContaineeViewController *)self adjustScrollForKeyboardWithRect:v18, v20, v22, v24];
}

- (void)setActions:(id)a3
{
  v5 = a3;
  if (self->_actions != v5)
  {
    objc_storeStrong(&self->_actions, a3);
    if ([(NSArray *)v5 count])
    {
      v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v5, "count")}];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = v5;
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = [v12 footer];
            v14 = [v13 length];

            if (v14)
            {
              v15 = [v12 footer];
              [v6 addObject:v15];
            }
          }

          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v9);
      }

      v16 = [v6 count];
      if (v16)
      {
        v17 = [v6 componentsJoinedByString:@"\n\n"];
      }

      else
      {
        v17 = 0;
      }

      objc_storeStrong(&self->_footerText, v17);
      if (v16)
      {
      }
    }

    else
    {
      footerText = self->_footerText;
      self->_footerText = 0;
    }

    v19 = [(SimpleContaineeViewController *)self actionsTableView];
    [v19 reloadData];
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = SimpleContaineeViewController;
  [(ContaineeViewController *)&v8 viewDidLayoutSubviews];
  [(MapsThemeTableView *)self->_actionsTableView contentSize];
  [(NSLayoutConstraint *)self->_actionsTableHeightConstraint setConstant:v3];
  [(SimpleContaineeViewController *)self preferredWidth];
  [(NSLayoutConstraint *)self->_actionsTableWidthConstraint setConstant:?];
  [(MapsThemeTableView *)self->_actionsTableView layoutIfNeeded];
  [(MapsThemeTableView *)self->_actionsTableView contentSize];
  [(NSLayoutConstraint *)self->_actionsTableHeightConstraint setConstant:v4];
  v5 = [(SimpleContaineeViewController *)self view];
  [v5 bounds];
  v7 = v6 <= 320.0;

  [(UIStackView *)self->_topActionsContainerView setAxis:v7];
  [(UIStackView *)self->_topActionsContainerView setSpacing:10.0];
}

- (void)updateTheme
{
  v24.receiver = self;
  v24.super_class = SimpleContaineeViewController;
  [(ContaineeViewController *)&v24 viewDidLayoutSubviews];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(MapsThemeTableView *)self->_actionsTableView indexPathsForVisibleRows];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      v18 = v4;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v8 = [v7 section];
        if (v8 == [(SimpleContaineeViewController *)self _actionsSectionIndex])
        {
          v9 = [(SimpleContaineeViewController *)self actionForIndexPath:v7];
          v10 = [(MapsThemeTableView *)self->_actionsTableView cellForRowAtIndexPath:v7];
          [v10 contentConfiguration];
          v12 = v11 = v5;
          v13 = [v12 imageProperties];
          v14 = [v13 preferredSymbolConfiguration];

          v15 = [(SimpleContaineeViewController *)self _colorConfigurationForAction:v9];
          v16 = [v14 configurationByApplyingConfiguration:v15];
          v17 = [v12 imageProperties];
          [v17 setPreferredSymbolConfiguration:v16];

          [v10 setContentConfiguration:v12];
          v5 = v11;
          v4 = v18;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == &unk_10195E4E0)
  {
    [(SimpleContaineeViewController *)self _updatePreferredContentSize];
  }

  else if (a6 == &unk_10195E4E8)
  {
    v13 = [(SimpleContaineeViewController *)self view];
    [v13 setNeedsLayout];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SimpleContaineeViewController;
    [(SimpleContaineeViewController *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (double)preferredWidth
{
  if (sub_10000FA08(self) == 5)
  {
    return 282.0;
  }

  v4 = [(ContaineeViewController *)self contentView];
  [v4 bounds];
  v3 = v5;

  return v3;
}

- (CGSize)_calculatePreferredContentSize
{
  if ([(SimpleContaineeViewController *)self isViewLoaded]&& sub_10000FA08(self) == 5)
  {
    v3 = [(SimpleContaineeViewController *)self view];
    [v3 layoutIfNeeded];

    v4 = [(ContaineeViewController *)self headerView];
    [(SimpleContaineeViewController *)self preferredWidth];
    [v4 systemLayoutSizeFittingSize:?];
    v6 = v5;

    [(UIScrollView *)self->_contentScrollView contentSize];
    v8 = v7 + v6;
    [(SimpleContaineeViewController *)self preferredWidth];
    v10 = v9;
  }

  else
  {
    [(SimpleContaineeViewController *)self preferredWidth];
    v10 = v11;
    [(SimpleContaineeViewController *)self preferredWidth];
    v8 = v12;
  }

  v13 = v10;
  v14 = v8;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_updatePreferredContentSize
{
  if ([(SimpleContaineeViewController *)self isViewLoaded]&& sub_10000FA08(self) == 5)
  {
    [(SimpleContaineeViewController *)self _calculatePreferredContentSize];
    v4 = v3;
    v6 = v5;
    v7 = fabs(v5);
    if (fabs(v3) > 2.22044605e-16 && v7 > 2.22044605e-16)
    {
      [(SimpleContaineeViewController *)self preferredContentSize:2.22044605e-16];
      if (v4 != v10 || v6 != v9)
      {

        [(SimpleContaineeViewController *)self setPreferredContentSize:v4, v6];
      }
    }
  }
}

- (void)registerActionsTableViewCellClasses
{
  actionsTableView = self->_actionsTableView;
  v3 = objc_opt_class();

  [(MapsThemeTableView *)actionsTableView registerClass:v3 forCellReuseIdentifier:@"ActionCell"];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIKeyboardWillHideNotification object:0];

  v7.receiver = self;
  v7.super_class = SimpleContaineeViewController;
  [(ContaineeViewController *)&v7 viewWillDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SimpleContaineeViewController;
  [(ContaineeViewController *)&v6 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
}

- (void)setupSubviews
{
  if ([(SimpleContaineeViewController *)self headerNeeded])
  {
    v3 = objc_alloc_init(ContainerHeaderView);
    titleHeaderView = self->_titleHeaderView;
    self->_titleHeaderView = v3;

    [(ContainerHeaderView *)self->_titleHeaderView setDelegate:self];
    [(ContainerHeaderView *)self->_titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:0.0];
    v5 = [(ContaineeViewController *)self headerView];
    [v5 addSubview:self->_titleHeaderView];

    v119 = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
    v125 = [(ContaineeViewController *)self headerView];
    v113 = [v125 leadingAnchor];
    v107 = [v119 constraintEqualToAnchor:v113];
    v133[0] = v107;
    v97 = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
    v102 = [(ContaineeViewController *)self headerView];
    v94 = [v102 trailingAnchor];
    v89 = [v97 constraintEqualToAnchor:v94];
    v133[1] = v89;
    v6 = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
    v7 = [(ContaineeViewController *)self headerView];
    v8 = [v7 topAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    v133[2] = v9;
    v10 = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
    v11 = [(ContaineeViewController *)self headerView];
    v12 = [v11 bottomAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v133[3] = v13;
    v14 = [NSArray arrayWithObjects:v133 count:4];
    [NSLayoutConstraint activateConstraints:v14];
  }

  v15 = objc_alloc_init(UIScrollView);
  contentScrollView = self->_contentScrollView;
  self->_contentScrollView = v15;

  [(UIScrollView *)self->_contentScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_contentScrollView setDelegate:self];
  [(UIScrollView *)self->_contentScrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_contentScrollView setPreservesSuperviewLayoutMargins:1];
  v17 = [(ContaineeViewController *)self contentView];
  [v17 addSubview:self->_contentScrollView];

  v120 = [(UIScrollView *)self->_contentScrollView topAnchor];
  v126 = [(ContaineeViewController *)self contentView];
  v114 = [v126 topAnchor];
  v108 = [v120 constraintEqualToAnchor:v114];
  v132[0] = v108;
  v98 = [(UIScrollView *)self->_contentScrollView bottomAnchor];
  v103 = [(ContaineeViewController *)self contentView];
  v95 = [v103 bottomAnchor];
  v90 = [v98 constraintEqualToAnchor:v95];
  v132[1] = v90;
  v88 = [(UIScrollView *)self->_contentScrollView leadingAnchor];
  v18 = [(ContaineeViewController *)self contentView];
  v19 = [v18 leadingAnchor];
  v20 = [v88 constraintEqualToAnchor:v19];
  v132[2] = v20;
  v21 = [(UIScrollView *)self->_contentScrollView trailingAnchor];
  v22 = [(ContaineeViewController *)self contentView];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v132[3] = v24;
  v25 = [NSArray arrayWithObjects:v132 count:4];
  [NSLayoutConstraint activateConstraints:v25];

  v26 = objc_alloc_init(UIView);
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v26 setPreservesSuperviewLayoutMargins:1];
  [(UIScrollView *)self->_contentScrollView addSubview:v26];
  v121 = [v26 topAnchor];
  v115 = [(UIScrollView *)self->_contentScrollView topAnchor];
  v109 = [v121 constraintEqualToAnchor:v115];
  v131[0] = v109;
  v104 = [v26 bottomAnchor];
  v99 = [(UIScrollView *)self->_contentScrollView bottomAnchor];
  v96 = [v104 constraintEqualToAnchor:v99];
  v131[1] = v96;
  v92 = [v26 leadingAnchor];
  v91 = [(UIScrollView *)self->_contentScrollView leadingAnchor];
  v87 = [v92 constraintEqualToAnchor:v91];
  v131[2] = v87;
  v86 = [v26 trailingAnchor];
  v85 = [(UIScrollView *)self->_contentScrollView trailingAnchor];
  v84 = [v86 constraintEqualToAnchor:v85];
  v131[3] = v84;
  v83 = [v26 leadingAnchor];
  v27 = [(ContaineeViewController *)self contentView];
  v28 = [v27 leadingAnchor];
  v29 = [v83 constraintEqualToAnchor:v28];
  v131[4] = v29;
  v30 = [v26 trailingAnchor];
  v31 = [(ContaineeViewController *)self contentView];
  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  v131[5] = v33;
  v34 = [NSArray arrayWithObjects:v131 count:6];
  [NSLayoutConstraint activateConstraints:v34];

  v35 = objc_alloc_init(UIStackView);
  topActionsContainerView = self->_topActionsContainerView;
  self->_topActionsContainerView = v35;

  [(UIStackView *)self->_topActionsContainerView setDistribution:1];
  [(UIStackView *)self->_topActionsContainerView setAlignment:0];
  [(UIStackView *)self->_topActionsContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v26 addSubview:self->_topActionsContainerView];
  v37 = [(SimpleContaineeViewController *)self traitCollection];
  if ([v37 userInterfaceIdiom] == 5)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = 10.0;
  }

  v122 = [(UIStackView *)self->_topActionsContainerView leadingAnchor];
  v116 = [v26 leadingAnchor];
  v110 = [v122 constraintEqualToAnchor:v116 constant:16.0];
  v130[0] = v110;
  v39 = [(UIStackView *)self->_topActionsContainerView trailingAnchor];
  v40 = [v26 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-16.0];
  v130[1] = v41;
  v42 = [(UIStackView *)self->_topActionsContainerView topAnchor];
  v43 = [v26 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:v38];
  v130[2] = v44;
  v45 = [NSArray arrayWithObjects:v130 count:3];
  [NSLayoutConstraint activateConstraints:v45];

  v46 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v50 = [v46 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  metadataContainerView = self->_metadataContainerView;
  self->_metadataContainerView = v50;

  [(UIView *)self->_metadataContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v52) = 1148846080;
  [(UIView *)self->_metadataContainerView setContentHuggingPriority:1 forAxis:v52];
  LODWORD(v53) = 1148846080;
  [(UIView *)self->_metadataContainerView setContentCompressionResistancePriority:1 forAxis:v53];
  [v26 addSubview:self->_metadataContainerView];
  v123 = [(UIView *)self->_metadataContainerView leadingAnchor];
  v117 = [v26 leadingAnchor];
  v111 = [v123 constraintEqualToAnchor:v117];
  v129[0] = v111;
  v105 = [(UIView *)self->_metadataContainerView trailingAnchor];
  v100 = [v26 trailingAnchor];
  v93 = [v105 constraintEqualToAnchor:v100];
  v129[1] = v93;
  v54 = [(UIView *)self->_metadataContainerView topAnchor];
  v55 = [(UIStackView *)self->_topActionsContainerView bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  v129[2] = v56;
  v57 = [(UIView *)self->_metadataContainerView bottomAnchor];
  v127 = v26;
  v58 = [v26 bottomAnchor];
  v59 = [v57 constraintLessThanOrEqualToAnchor:v58];
  v129[3] = v59;
  v60 = [NSArray arrayWithObjects:v129 count:4];
  [NSLayoutConstraint activateConstraints:v60];

  v61 = [[MapsThemeTableView alloc] initWithFrame:[(SimpleContaineeViewController *)self tableViewStyle] style:CGRectZero.origin.x, y, width, height];
  actionsTableView = self->_actionsTableView;
  self->_actionsTableView = v61;

  [(MapsThemeTableView *)self->_actionsTableView setAccessibilityIdentifier:@"ActionsTableView"];
  [(MapsThemeTableView *)self->_actionsTableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SimpleContaineeViewController *)self registerActionsTableViewCellClasses];
  if ([(MapsThemeTableView *)self->_actionsTableView style])
  {
    [(MapsThemeTableView *)self->_actionsTableView _setTopPadding:0.0];
  }

  [(MapsThemeTableView *)self->_actionsTableView setDelegate:self];
  [(MapsThemeTableView *)self->_actionsTableView setDataSource:self];
  v63 = +[UIColor clearColor];
  [(MapsThemeTableView *)self->_actionsTableView setBackgroundColor:v63];

  [(MapsThemeTableView *)self->_actionsTableView setScrollEnabled:0];
  [(MapsThemeTableView *)self->_actionsTableView setPreservesSuperviewLayoutMargins:1];
  if (sub_10000FA08(self) == 5)
  {
    [(MapsThemeTableView *)self->_actionsTableView setSeparatorStyle:0];
    [(MapsThemeTableView *)self->_actionsTableView setSeparatorInset:0.0, 16.0, 0.0, 16.0];
  }

  v64 = 0.0;
  [(MapsThemeTableView *)self->_actionsTableView setDirectionalLayoutMargins:0.0, 16.0, 0.0, 16.0];
  [(MapsThemeTableView *)self->_actionsTableView setCellLayoutMarginsFollowReadableWidth:0];
  [(MapsThemeTableView *)self->_actionsTableView setPreservesSuperviewLayoutMargins:0];
  [v26 addSubview:self->_actionsTableView];
  if (![(SimpleContaineeViewController *)self tableViewStyle])
  {
    v65 = [(SimpleContaineeViewController *)self traitCollection];
    if ([v65 userInterfaceIdiom] == 5)
    {
      v64 = 17.0;
    }

    else
    {
      v64 = 10.0;
    }
  }

  v66 = [(SimpleContaineeViewController *)self traitCollection];
  v67 = [v66 userInterfaceIdiom];

  v124 = [(MapsThemeTableView *)self->_actionsTableView topAnchor];
  v118 = [(UIView *)self->_metadataContainerView bottomAnchor];
  v112 = [v124 constraintEqualToAnchor:v118 constant:v64];
  v128[0] = v112;
  v106 = [(MapsThemeTableView *)self->_actionsTableView leadingAnchor];
  v101 = [v26 leadingAnchor];
  v68 = [v106 constraintEqualToAnchor:v101];
  v128[1] = v68;
  v69 = [(MapsThemeTableView *)self->_actionsTableView trailingAnchor];
  v70 = [v26 trailingAnchor];
  v71 = [v69 constraintLessThanOrEqualToAnchor:v70];
  v128[2] = v71;
  v72 = [(MapsThemeTableView *)self->_actionsTableView bottomAnchor];
  v73 = [v26 bottomAnchor];
  v74 = -0.0;
  if (v67 == 5)
  {
    v74 = -17.0;
  }

  v75 = [v72 constraintLessThanOrEqualToAnchor:v73 constant:v74];
  v128[3] = v75;
  v76 = [NSArray arrayWithObjects:v128 count:4];
  [NSLayoutConstraint activateConstraints:v76];

  v77 = [(MapsThemeTableView *)self->_actionsTableView heightAnchor];
  v78 = [v77 constraintEqualToConstant:0.0];
  actionsTableHeightConstraint = self->_actionsTableHeightConstraint;
  self->_actionsTableHeightConstraint = v78;

  v80 = [(MapsThemeTableView *)self->_actionsTableView widthAnchor];
  [(SimpleContaineeViewController *)self preferredWidth];
  v81 = [v80 constraintEqualToConstant:?];
  actionsTableWidthConstraint = self->_actionsTableWidthConstraint;
  self->_actionsTableWidthConstraint = v81;

  [(NSLayoutConstraint *)self->_actionsTableHeightConstraint setActive:1];
  [(NSLayoutConstraint *)self->_actionsTableWidthConstraint setActive:1];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = SimpleContaineeViewController;
  [(ContaineeViewController *)&v15 viewDidLoad];
  [(SimpleContaineeViewController *)self setupSubviews];
  if (sub_10000FA08(self) == 5)
  {
    [(UIScrollView *)self->_contentScrollView setScrollEnabled:0];
    [(UIScrollView *)self->_contentScrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)self->_contentScrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)self->_contentScrollView setAlwaysBounceVertical:0];
    actionsTableView = self->_actionsTableView;
    v17[0] = self->_contentScrollView;
    v17[1] = actionsTableView;
    v4 = [NSArray arrayWithObjects:v17 count:2];
    viewsToObserveBoundsChanges = self->_viewsToObserveBoundsChanges;
    self->_viewsToObserveBoundsChanges = v4;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_viewsToObserveBoundsChanges;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) addObserver:self forKeyPath:@"bounds" options:1 context:{&unk_10195E4E0, v11}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }

    [(SimpleContaineeViewController *)self _updatePreferredContentSize];
    [(MapsThemeTableView *)self->_actionsTableView setClipsToBounds:0];
  }

  else
  {
    [(MapsThemeTableView *)self->_actionsTableView addObserver:self forKeyPath:@"contentSize" options:1 context:&unk_10195E4E8];
  }
}

- (void)dealloc
{
  viewsToObserveBoundsChanges = self->_viewsToObserveBoundsChanges;
  if (viewsToObserveBoundsChanges)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = viewsToObserveBoundsChanges;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) removeObserver:self forKeyPath:@"bounds" context:&unk_10195E4E0];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [(MapsThemeTableView *)self->_actionsTableView removeObserver:self forKeyPath:@"contentSize" context:&unk_10195E4E8];
  }

  v9.receiver = self;
  v9.super_class = SimpleContaineeViewController;
  [(SimpleContaineeViewController *)&v9 dealloc];
}

@end