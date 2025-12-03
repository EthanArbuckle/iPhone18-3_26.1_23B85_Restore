@interface SimpleContaineeViewController
- (CGSize)_calculatePreferredContentSize;
- (double)preferredWidth;
- (id)_colorConfigurationForAction:(id)action;
- (id)_primaryColorForAction:(id)action;
- (id)actionForIndexPath:(id)path;
- (id)configurationForAction:(id)action;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_actionsSectionIndex;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updatePreferredContentSize;
- (void)adjustScrollForKeyboardWithRect:(CGRect)rect;
- (void)dealloc;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)keyboardWillShow:(id)show;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerActionsTableViewCellClasses;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setActions:(id)actions;
- (void)setupSubviews;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateTheme;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SimpleContaineeViewController

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  v5 = [(ControlContaineeViewController *)self delegate:tapped];
  [v5 viewControllerClosed:self animated:1];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v9.receiver = self;
  v9.super_class = SimpleContaineeViewController;
  [(ContaineeViewController *)&v9 scrollViewDidScroll:scrollCopy];
  [scrollCopy contentOffset];
  v5 = 0.0;
  if (v6 > 0.0)
  {
    [scrollCopy contentOffset];
    v5 = 1.0;
    if (v7 < 10.0)
    {
      [scrollCopy contentOffset];
      v5 = v8 * 0.1;
    }
  }

  [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:v5];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(SimpleContaineeViewController *)self actionForIndexPath:pathCopy];
  action = [v7 action];
  v9 = action;
  if (action)
  {
    (*(action + 16))(action);
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (int64_t)_actionsSectionIndex
{
  actions = [(SimpleContaineeViewController *)self actions];
  v4 = [actions count];

  if (v4)
  {
    return [(MapsThemeTableView *)self->_actionsTableView numberOfSections]- 1;
  }

  else
  {
    return -1;
  }
}

- (id)configurationForAction:(id)action
{
  actionCopy = action;
  v5 = [(SimpleContaineeViewController *)self _primaryColorForAction:actionCopy];
  v6 = +[UIListContentConfiguration cellConfiguration];
  title = [actionCopy title];
  [v6 setText:title];

  textProperties = [v6 textProperties];
  [textProperties setColor:v5];

  symbol = [actionCopy symbol];
  if (symbol)
  {
    [v6 setImage:symbol];
  }

  else
  {
    glyph = [actionCopy glyph];
    v11 = [UIImage systemImageNamed:glyph];
    [v6 setImage:v11];
  }

  v12 = sub_10000FA08(self);
  v13 = 21.0;
  if (v12 == 5)
  {
    v13 = 17.0;
  }

  v14 = [UIImageSymbolConfiguration configurationWithPointSize:v13];
  v15 = [(SimpleContaineeViewController *)self _colorConfigurationForAction:actionCopy];
  v16 = [v14 configurationByApplyingConfiguration:v15];
  imageProperties = [v6 imageProperties];
  [imageProperties setTintColor:v5];

  imageProperties2 = [v6 imageProperties];
  [imageProperties2 setPreferredSymbolConfiguration:v16];

  return v6;
}

- (id)_colorConfigurationForAction:(id)action
{
  actionCopy = action;
  v5 = [(SimpleContaineeViewController *)self _primaryColorForAction:actionCopy];
  glyphStyle = [actionCopy glyphStyle];

  if ((glyphStyle & 2) != 0)
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

- (id)_primaryColorForAction:(id)action
{
  if ([action glyphStyle])
  {
    keyColor = +[UIColor systemRedColor];
  }

  else
  {
    theme = [(SimpleContaineeViewController *)self theme];
    keyColor = [theme keyColor];
  }

  return keyColor;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  if (![view style])
  {
    v6 = +[UIColor clearColor];
    [cellCopy setBackgroundColor:v6];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(SimpleContaineeViewController *)self actionForIndexPath:pathCopy];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:@"ActionCell" forIndexPath:pathCopy];

  if (v8)
  {
    v10 = [(SimpleContaineeViewController *)self configurationForAction:v8];
    [v9 setContentConfiguration:v10];

    accessibilityIdentifier = [v8 accessibilityIdentifier];
    [v9 setAccessibilityIdentifier:accessibilityIdentifier];

    labelAccessibilityIdentifier = [v8 labelAccessibilityIdentifier];
    textLabel = [v9 textLabel];
    [textLabel setAccessibilityIdentifier:labelAccessibilityIdentifier];
  }

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(SimpleContaineeViewController *)self actions:view];
  v5 = [v4 count];

  return v5;
}

- (id)actionForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == -[SimpleContaineeViewController _actionsSectionIndex](self, "_actionsSectionIndex") && (v6 = [pathCopy row], -[SimpleContaineeViewController actions](self, "actions"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 < v8))
  {
    actions = [(SimpleContaineeViewController *)self actions];
    v10 = [actions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)adjustScrollForKeyboardWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  contentScrollView = self->_contentScrollView;
  v15 = +[UIScreen mainScreen];
  coordinateSpace = [v15 coordinateSpace];
  [(UIScrollView *)contentScrollView convertRect:coordinateSpace fromCoordinateSpace:v7, v9, v11, v13];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [(SimpleContaineeViewController *)self adjustScrollForKeyboardWithRect:v18, v20, v22, v24];
}

- (void)setActions:(id)actions
{
  actionsCopy = actions;
  if (self->_actions != actionsCopy)
  {
    objc_storeStrong(&self->_actions, actions);
    if ([(NSArray *)actionsCopy count])
    {
      v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](actionsCopy, "count")}];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = actionsCopy;
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
            footer = [v12 footer];
            v14 = [footer length];

            if (v14)
            {
              footer2 = [v12 footer];
              [v6 addObject:footer2];
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

    actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
    [actionsTableView reloadData];
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
  view = [(SimpleContaineeViewController *)self view];
  [view bounds];
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
        section = [v7 section];
        if (section == [(SimpleContaineeViewController *)self _actionsSectionIndex])
        {
          v9 = [(SimpleContaineeViewController *)self actionForIndexPath:v7];
          v10 = [(MapsThemeTableView *)self->_actionsTableView cellForRowAtIndexPath:v7];
          [v10 contentConfiguration];
          v12 = v11 = v5;
          imageProperties = [v12 imageProperties];
          preferredSymbolConfiguration = [imageProperties preferredSymbolConfiguration];

          v15 = [(SimpleContaineeViewController *)self _colorConfigurationForAction:v9];
          v16 = [preferredSymbolConfiguration configurationByApplyingConfiguration:v15];
          imageProperties2 = [v12 imageProperties];
          [imageProperties2 setPreferredSymbolConfiguration:v16];

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &unk_10195E4E0)
  {
    [(SimpleContaineeViewController *)self _updatePreferredContentSize];
  }

  else if (context == &unk_10195E4E8)
  {
    view = [(SimpleContaineeViewController *)self view];
    [view setNeedsLayout];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SimpleContaineeViewController;
    [(SimpleContaineeViewController *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (double)preferredWidth
{
  if (sub_10000FA08(self) == 5)
  {
    return 282.0;
  }

  contentView = [(ContaineeViewController *)self contentView];
  [contentView bounds];
  v3 = v5;

  return v3;
}

- (CGSize)_calculatePreferredContentSize
{
  if ([(SimpleContaineeViewController *)self isViewLoaded]&& sub_10000FA08(self) == 5)
  {
    view = [(SimpleContaineeViewController *)self view];
    [view layoutIfNeeded];

    headerView = [(ContaineeViewController *)self headerView];
    [(SimpleContaineeViewController *)self preferredWidth];
    [headerView systemLayoutSizeFittingSize:?];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIKeyboardWillHideNotification object:0];

  v7.receiver = self;
  v7.super_class = SimpleContaineeViewController;
  [(ContaineeViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SimpleContaineeViewController;
  [(ContaineeViewController *)&v6 viewWillAppear:appear];
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
    headerView = [(ContaineeViewController *)self headerView];
    [headerView addSubview:self->_titleHeaderView];

    leadingAnchor = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
    headerView2 = [(ContaineeViewController *)self headerView];
    leadingAnchor2 = [headerView2 leadingAnchor];
    v107 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v133[0] = v107;
    trailingAnchor = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
    headerView3 = [(ContaineeViewController *)self headerView];
    trailingAnchor2 = [headerView3 trailingAnchor];
    v89 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v133[1] = v89;
    topAnchor = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
    headerView4 = [(ContaineeViewController *)self headerView];
    topAnchor2 = [headerView4 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v133[2] = v9;
    bottomAnchor = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
    headerView5 = [(ContaineeViewController *)self headerView];
    bottomAnchor2 = [headerView5 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  contentView = [(ContaineeViewController *)self contentView];
  [contentView addSubview:self->_contentScrollView];

  topAnchor3 = [(UIScrollView *)self->_contentScrollView topAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  topAnchor4 = [contentView2 topAnchor];
  v108 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v132[0] = v108;
  bottomAnchor3 = [(UIScrollView *)self->_contentScrollView bottomAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  bottomAnchor4 = [contentView3 bottomAnchor];
  v90 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v132[1] = v90;
  leadingAnchor3 = [(UIScrollView *)self->_contentScrollView leadingAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView4 leadingAnchor];
  v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v132[2] = v20;
  trailingAnchor3 = [(UIScrollView *)self->_contentScrollView trailingAnchor];
  contentView5 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView5 trailingAnchor];
  v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v132[3] = v24;
  v25 = [NSArray arrayWithObjects:v132 count:4];
  [NSLayoutConstraint activateConstraints:v25];

  v26 = objc_alloc_init(UIView);
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v26 setPreservesSuperviewLayoutMargins:1];
  [(UIScrollView *)self->_contentScrollView addSubview:v26];
  topAnchor5 = [v26 topAnchor];
  topAnchor6 = [(UIScrollView *)self->_contentScrollView topAnchor];
  v109 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v131[0] = v109;
  bottomAnchor5 = [v26 bottomAnchor];
  bottomAnchor6 = [(UIScrollView *)self->_contentScrollView bottomAnchor];
  v96 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v131[1] = v96;
  leadingAnchor5 = [v26 leadingAnchor];
  leadingAnchor6 = [(UIScrollView *)self->_contentScrollView leadingAnchor];
  v87 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v131[2] = v87;
  trailingAnchor5 = [v26 trailingAnchor];
  trailingAnchor6 = [(UIScrollView *)self->_contentScrollView trailingAnchor];
  v84 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v131[3] = v84;
  leadingAnchor7 = [v26 leadingAnchor];
  contentView6 = [(ContaineeViewController *)self contentView];
  leadingAnchor8 = [contentView6 leadingAnchor];
  v29 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v131[4] = v29;
  trailingAnchor7 = [v26 trailingAnchor];
  contentView7 = [(ContaineeViewController *)self contentView];
  trailingAnchor8 = [contentView7 trailingAnchor];
  v33 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
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
  traitCollection = [(SimpleContaineeViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = 10.0;
  }

  leadingAnchor9 = [(UIStackView *)self->_topActionsContainerView leadingAnchor];
  leadingAnchor10 = [v26 leadingAnchor];
  v110 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:16.0];
  v130[0] = v110;
  trailingAnchor9 = [(UIStackView *)self->_topActionsContainerView trailingAnchor];
  trailingAnchor10 = [v26 trailingAnchor];
  v41 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-16.0];
  v130[1] = v41;
  topAnchor7 = [(UIStackView *)self->_topActionsContainerView topAnchor];
  topAnchor8 = [v26 topAnchor];
  v44 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:v38];
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
  leadingAnchor11 = [(UIView *)self->_metadataContainerView leadingAnchor];
  leadingAnchor12 = [v26 leadingAnchor];
  v111 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v129[0] = v111;
  trailingAnchor11 = [(UIView *)self->_metadataContainerView trailingAnchor];
  trailingAnchor12 = [v26 trailingAnchor];
  v93 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v129[1] = v93;
  topAnchor9 = [(UIView *)self->_metadataContainerView topAnchor];
  bottomAnchor7 = [(UIStackView *)self->_topActionsContainerView bottomAnchor];
  v56 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7];
  v129[2] = v56;
  bottomAnchor8 = [(UIView *)self->_metadataContainerView bottomAnchor];
  v127 = v26;
  bottomAnchor9 = [v26 bottomAnchor];
  v59 = [bottomAnchor8 constraintLessThanOrEqualToAnchor:bottomAnchor9];
  v129[3] = v59;
  v60 = [NSArray arrayWithObjects:v129 count:4];
  [NSLayoutConstraint activateConstraints:v60];

  height = [[MapsThemeTableView alloc] initWithFrame:[(SimpleContaineeViewController *)self tableViewStyle] style:CGRectZero.origin.x, y, width, height];
  actionsTableView = self->_actionsTableView;
  self->_actionsTableView = height;

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
    traitCollection2 = [(SimpleContaineeViewController *)self traitCollection];
    if ([traitCollection2 userInterfaceIdiom] == 5)
    {
      v64 = 17.0;
    }

    else
    {
      v64 = 10.0;
    }
  }

  traitCollection3 = [(SimpleContaineeViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection3 userInterfaceIdiom];

  topAnchor10 = [(MapsThemeTableView *)self->_actionsTableView topAnchor];
  bottomAnchor10 = [(UIView *)self->_metadataContainerView bottomAnchor];
  v112 = [topAnchor10 constraintEqualToAnchor:bottomAnchor10 constant:v64];
  v128[0] = v112;
  leadingAnchor13 = [(MapsThemeTableView *)self->_actionsTableView leadingAnchor];
  leadingAnchor14 = [v26 leadingAnchor];
  v68 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
  v128[1] = v68;
  trailingAnchor13 = [(MapsThemeTableView *)self->_actionsTableView trailingAnchor];
  trailingAnchor14 = [v26 trailingAnchor];
  v71 = [trailingAnchor13 constraintLessThanOrEqualToAnchor:trailingAnchor14];
  v128[2] = v71;
  bottomAnchor11 = [(MapsThemeTableView *)self->_actionsTableView bottomAnchor];
  bottomAnchor12 = [v26 bottomAnchor];
  v74 = -0.0;
  if (userInterfaceIdiom == 5)
  {
    v74 = -17.0;
  }

  v75 = [bottomAnchor11 constraintLessThanOrEqualToAnchor:bottomAnchor12 constant:v74];
  v128[3] = v75;
  v76 = [NSArray arrayWithObjects:v128 count:4];
  [NSLayoutConstraint activateConstraints:v76];

  heightAnchor = [(MapsThemeTableView *)self->_actionsTableView heightAnchor];
  v78 = [heightAnchor constraintEqualToConstant:0.0];
  actionsTableHeightConstraint = self->_actionsTableHeightConstraint;
  self->_actionsTableHeightConstraint = v78;

  widthAnchor = [(MapsThemeTableView *)self->_actionsTableView widthAnchor];
  [(SimpleContaineeViewController *)self preferredWidth];
  v81 = [widthAnchor constraintEqualToConstant:?];
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