@interface LookAroundFloatingButtonsViewController
- (LookAroundFloatingButtonsViewController)initWithShowsMinimizeButton:(BOOL)button groupButtonsIfNeeded:(BOOL)needed;
- (LookAroundFloatingButtonsViewControllerDelegate)delegate;
- (id)optionsMenu;
- (void)_setAlternateButtonEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)_setCornerRadii;
- (void)_setCornerRadiiWithTraitCollection:(id)collection;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateButtonLayoutAnimated:(BOOL)animated;
- (void)_updateButtonLayoutToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator animated:(BOOL)animated;
- (void)dealloc;
- (void)didTapButton:(id)button;
- (void)didTapDoneButton:(id)button;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setHidingLabels:(BOOL)labels;
- (void)setShowsMinimizedButton:(BOOL)button;
- (void)updateTheme;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation LookAroundFloatingButtonsViewController

- (LookAroundFloatingButtonsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapDoneButton:(id)button
{
  buttonCopy = button;
  delegate = [(LookAroundFloatingButtonsViewController *)self delegate];
  [delegate lookAroundFloatingButtonsViewController:self didTapDoneButton:buttonCopy];
}

- (void)didTapButton:(id)button
{
  buttonCopy = button;
  showsMinimizedButton = self->_showsMinimizedButton;
  if (showsMinimizedButton)
  {
    if ([(LookAroundFloatingButtonsViewController *)self isMinimizedButtonEnabled])
    {
      delegate = [(LookAroundFloatingButtonsViewController *)self delegate];
      [delegate lookAroundFloatingButtonsViewController:self didTapMinimizeButton:buttonCopy];
LABEL_8:

      goto LABEL_9;
    }

    showsMinimizedButton = self->_showsMinimizedButton;
  }

  if (!showsMinimizedButton && [(LookAroundFloatingButtonsViewController *)self isMaximizedButtonEnabled])
  {
    delegate = [(LookAroundFloatingButtonsViewController *)self delegate];
    [delegate lookAroundFloatingButtonsViewController:self didTapMaximizeButton:buttonCopy];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_updateButtonLayoutToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator animated:(BOOL)animated
{
  animatedCopy = animated;
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  if (sub_10000FA08(self) == 5)
  {
    goto LABEL_22;
  }

  v10 = collectionCopy;
  v11 = v10;
  if (!v10)
  {
    goto LABEL_15;
  }

  if ([v10 userInterfaceIdiom] != 5)
  {
    if ([v11 horizontalSizeClass] == 1 && objc_msgSend(v11, "verticalSizeClass") == 2)
    {
      v12 = 1;
      goto LABEL_16;
    }

    if ([v11 horizontalSizeClass] == 1 && objc_msgSend(v11, "verticalSizeClass") == 1 || objc_msgSend(v11, "horizontalSizeClass") == 2 && objc_msgSend(v11, "verticalSizeClass") == 1 || objc_msgSend(v11, "horizontalSizeClass") == 2 && objc_msgSend(v11, "verticalSizeClass") == 2)
    {
      v12 = 4;
      goto LABEL_16;
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v12 = 6;
LABEL_16:

  groupButtonsIfNeeded = self->_groupButtonsIfNeeded;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100AC1B38;
  v23[3] = &unk_101660CE8;
  v14 = groupButtonsIfNeeded & (0x5Cu >> v12);
  v23[4] = self;
  v25 = v14;
  v24 = v11;
  v15 = objc_retainBlock(v23);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100AC1CA0;
  v21[3] = &unk_1016574C0;
  v21[4] = self;
  v22 = v14;
  v16 = objc_retainBlock(v21);
  if (coordinatorCopy)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100AC1CC0;
    v19[3] = &unk_101654700;
    v20 = v15;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100AC1CD0;
    v17[3] = &unk_101654700;
    v18 = v16;
    [coordinatorCopy animateAlongsideTransition:v19 completion:v17];
  }

  else if (animatedCopy)
  {
    [UIView animateWithDuration:v15 animations:v16 completion:0.25];
  }

  else
  {
    (v15[2])(v15);
    (v16[2])(v16, 1);
  }

LABEL_22:
}

- (void)_setCornerRadiiWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (sub_10000FA08(self) != 5)
  {
    v8 = collectionCopy;
    v9 = v8;
    if (v8)
    {
      if ([v8 userInterfaceIdiom] == 5)
      {
        v10 = 6;
LABEL_19:

        v11 = (0x23u >> v10) | ~self->_groupButtonsIfNeeded;
        v12 = +[UIApplication sharedApplication];
        userInterfaceLayoutDirection = [v12 userInterfaceLayoutDirection];

        if (_UISolariumEnabled())
        {
          v14 = 15.0;
        }

        else
        {
          v14 = 6.0;
        }

        v15 = 10;
        v16 = 15;
        if (v11)
        {
          v15 = 15;
        }

        else
        {
          v16 = 5;
        }

        if (userInterfaceLayoutDirection == 1)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        if (userInterfaceLayoutDirection == 1)
        {
          v18 = v16;
        }

        else
        {
          v18 = v15;
        }

        [(UIVisualEffectView *)self->_alternateButtonBackgroundView _setCornerRadius:1 continuous:v17 maskedCorners:v14];
        doneButtonBackgroundView = self->_doneButtonBackgroundView;
        v5 = v14;
        v7 = v18;
        goto LABEL_32;
      }

      if ([v9 horizontalSizeClass] == 1 && objc_msgSend(v9, "verticalSizeClass") == 2)
      {
        v10 = 1;
        goto LABEL_19;
      }

      if ([v9 horizontalSizeClass] == 1 && objc_msgSend(v9, "verticalSizeClass") == 1 || objc_msgSend(v9, "horizontalSizeClass") == 2 && objc_msgSend(v9, "verticalSizeClass") == 1 || objc_msgSend(v9, "horizontalSizeClass") == 2 && objc_msgSend(v9, "verticalSizeClass") == 2)
      {
        v10 = 4;
        goto LABEL_19;
      }
    }

    v10 = 0;
    goto LABEL_19;
  }

  v4 = _UISolariumEnabled();
  v5 = 9.0;
  if (v4)
  {
    v5 = 15.0;
  }

  doneButtonBackgroundView = self->_alternateButtonBackgroundView;
  v7 = 15;
LABEL_32:
  [(UIVisualEffectView *)doneButtonBackgroundView _setCornerRadius:1 continuous:v7 maskedCorners:v5];
}

- (void)_setCornerRadii
{
  traitCollection = [(LookAroundFloatingButtonsViewController *)self traitCollection];
  [(LookAroundFloatingButtonsViewController *)self _setCornerRadiiWithTraitCollection:traitCollection];
}

- (void)_updateButtonLayoutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  traitCollection = [(LookAroundFloatingButtonsViewController *)self traitCollection];
  [(LookAroundFloatingButtonsViewController *)self _updateButtonLayoutToTraitCollection:traitCollection withTransitionCoordinator:0 animated:animatedCopy];
}

- (void)_setupConstraints
{
  v134 = objc_alloc_init(NSMutableArray);
  v3 = sub_10000FA08(self);
  alternateButtonBackgroundView = self->_alternateButtonBackgroundView;
  if (v3 == 5)
  {
    trailingAnchor = [(UIVisualEffectView *)alternateButtonBackgroundView trailingAnchor];
    trailingAnchor2 = [(UIButton *)self->_menuButton trailingAnchor];
    v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    menuButtonVisibleConstraint = self->_menuButtonVisibleConstraint;
    self->_menuButtonVisibleConstraint = v7;

    trailingAnchor3 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView trailingAnchor];
    trailingAnchor4 = [(UIButton *)self->_alternateButton trailingAnchor];
    v11 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    menuButtonHiddenConstraint = self->_menuButtonHiddenConstraint;
    self->_menuButtonHiddenConstraint = v11;

    leadingAnchor = [(UIVisualEffectView *)self->_alternateButtonBackgroundView leadingAnchor];
    view = [(LookAroundFloatingButtonsViewController *)self view];
    leadingAnchor2 = [view leadingAnchor];
    v133 = leadingAnchor;
    v115 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v138[0] = v115;
    topAnchor = [(UIVisualEffectView *)self->_alternateButtonBackgroundView topAnchor];
    view2 = [(LookAroundFloatingButtonsViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v108 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v138[1] = v108;
    bottomAnchor = [(UIVisualEffectView *)self->_alternateButtonBackgroundView bottomAnchor];
    view3 = [(LookAroundFloatingButtonsViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v87 = [bottomAnchor constraintEqualToAnchor:?];
    v138[2] = v87;
    heightAnchor = [(UIVisualEffectView *)self->_alternateButtonBackgroundView heightAnchor];
    v125 = [heightAnchor constraintEqualToConstant:30.0];
    v138[3] = v125;
    leadingAnchor3 = [(UIButton *)self->_doneButton leadingAnchor];
    leadingAnchor4 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView leadingAnchor];
    v123 = leadingAnchor3;
    v117 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v138[4] = v117;
    centerYAnchor = [(UIButton *)self->_doneButton centerYAnchor];
    view4 = [(LookAroundFloatingButtonsViewController *)self view];
    centerYAnchor2 = [view4 centerYAnchor];
    v97 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v138[5] = v97;
    heightAnchor2 = [(UIButton *)self->_doneButton heightAnchor];
    heightAnchor3 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView heightAnchor];
    v89 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v138[6] = v89;
    leadingAnchor5 = [(UIButton *)self->_alternateButton leadingAnchor];
    trailingAnchor5 = [(UIButton *)self->_doneButton trailingAnchor];
    v82 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5];
    v138[7] = v82;
    centerYAnchor3 = [(UIButton *)self->_alternateButton centerYAnchor];
    view5 = [(LookAroundFloatingButtonsViewController *)self view];
    centerYAnchor4 = [view5 centerYAnchor];
    v78 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v138[8] = v78;
    heightAnchor4 = [(UIButton *)self->_alternateButton heightAnchor];
    heightAnchor5 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView heightAnchor];
    v75 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
    v138[9] = v75;
    leadingAnchor6 = [(UIButton *)self->_menuButton leadingAnchor];
    trailingAnchor6 = [(UIButton *)self->_alternateButton trailingAnchor];
    v15 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor6];
    v138[10] = v15;
    centerYAnchor5 = [(UIButton *)self->_menuButton centerYAnchor];
    view6 = [(LookAroundFloatingButtonsViewController *)self view];
    centerYAnchor6 = [view6 centerYAnchor];
    v19 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v138[11] = v19;
    heightAnchor6 = [(UIButton *)self->_menuButton heightAnchor];
    heightAnchor7 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView heightAnchor];
    v22 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7];
    v23 = self->_menuButtonHiddenConstraint;
    v138[12] = v22;
    v138[13] = v23;
    v24 = [NSArray arrayWithObjects:v138 count:14];
    [v134 addObjectsFromArray:v24];

    trailingAnchor14 = v87;
    bottomAnchor12 = topAnchor2;

    topAnchor11 = leadingAnchor2;
    bottomAnchor11 = view2;

    topAnchor12 = v115;
    contentView2 = view;

    leadingAnchor16 = bottomAnchor;
    v32 = v108;

    v33 = topAnchor;
  }

  else
  {
    topAnchor3 = [(UIVisualEffectView *)alternateButtonBackgroundView topAnchor];
    view7 = [(LookAroundFloatingButtonsViewController *)self view];
    topAnchor4 = [view7 topAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v137[0] = v37;
    bottomAnchor3 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView bottomAnchor];
    view8 = [(LookAroundFloatingButtonsViewController *)self view];
    bottomAnchor4 = [view8 bottomAnchor];
    v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v137[1] = v41;
    v42 = [NSArray arrayWithObjects:v137 count:2];
    [v134 addObjectsFromArray:v42];

    leadingAnchor7 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView leadingAnchor];
    view9 = [(LookAroundFloatingButtonsViewController *)self view];
    leadingAnchor8 = [view9 leadingAnchor];
    v46 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8];
    alternateButtonLeadingConstraintGrouped = self->_alternateButtonLeadingConstraintGrouped;
    self->_alternateButtonLeadingConstraintGrouped = v46;

    LODWORD(v48) = 1144750080;
    [(NSLayoutConstraint *)self->_alternateButtonLeadingConstraintGrouped setPriority:v48];
    leadingAnchor9 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView leadingAnchor];
    view10 = [(LookAroundFloatingButtonsViewController *)self view];
    leadingAnchor10 = [view10 leadingAnchor];
    v52 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    alternateButtonLeadingConstraintSeparated = self->_alternateButtonLeadingConstraintSeparated;
    self->_alternateButtonLeadingConstraintSeparated = v52;

    contentView = [(UIVisualEffectView *)self->_alternateButtonBackgroundView contentView];
    topAnchor5 = [(UIButton *)self->_alternateButton topAnchor];
    topAnchor6 = [contentView topAnchor];
    v128 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v136[0] = v128;
    bottomAnchor5 = [(UIButton *)self->_alternateButton bottomAnchor];
    bottomAnchor6 = [contentView bottomAnchor];
    v122 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v136[1] = v122;
    leadingAnchor11 = [(UIButton *)self->_alternateButton leadingAnchor];
    leadingAnchor12 = [contentView leadingAnchor];
    v116 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v136[2] = v116;
    trailingAnchor7 = [(UIButton *)self->_alternateButton trailingAnchor];
    leadingAnchor13 = [(HairlineView *)self->_separator leadingAnchor];
    v111 = [trailingAnchor7 constraintEqualToAnchor:leadingAnchor13];
    v136[3] = v111;
    topAnchor7 = [(HairlineView *)self->_separator topAnchor];
    topAnchor8 = [contentView topAnchor];
    v105 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v136[4] = v105;
    bottomAnchor7 = [(HairlineView *)self->_separator bottomAnchor];
    bottomAnchor8 = [contentView bottomAnchor];
    v98 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v136[5] = v98;
    trailingAnchor8 = [(HairlineView *)self->_separator trailingAnchor];
    v133 = contentView;
    trailingAnchor9 = [contentView trailingAnchor];
    v92 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v136[6] = v92;
    topAnchor9 = [(UIVisualEffectView *)self->_doneButtonBackgroundView topAnchor];
    view11 = [(LookAroundFloatingButtonsViewController *)self view];
    topAnchor10 = [view11 topAnchor];
    v84 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v136[7] = v84;
    bottomAnchor9 = [(UIVisualEffectView *)self->_doneButtonBackgroundView bottomAnchor];
    view12 = [(LookAroundFloatingButtonsViewController *)self view];
    bottomAnchor10 = [view12 bottomAnchor];
    v58 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
    v136[8] = v58;
    trailingAnchor10 = [(UIVisualEffectView *)self->_doneButtonBackgroundView trailingAnchor];
    view13 = [(LookAroundFloatingButtonsViewController *)self view];
    trailingAnchor11 = [view13 trailingAnchor];
    v62 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v136[9] = v62;
    v63 = [NSArray arrayWithObjects:v136 count:10];
    [v134 addObjectsFromArray:v63];

    leadingAnchor14 = [(UIVisualEffectView *)self->_doneButtonBackgroundView leadingAnchor];
    trailingAnchor12 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView trailingAnchor];
    v66 = [leadingAnchor14 constraintEqualToAnchor:trailingAnchor12];
    doneButtonLeadingContraintGrouped = self->_doneButtonLeadingContraintGrouped;
    self->_doneButtonLeadingContraintGrouped = v66;

    leadingAnchor15 = [(UIVisualEffectView *)self->_doneButtonBackgroundView leadingAnchor];
    trailingAnchor13 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView trailingAnchor];
    v70 = [leadingAnchor15 constraintGreaterThanOrEqualToAnchor:trailingAnchor13];
    doneButtonLeadingContraintSeparated = self->_doneButtonLeadingContraintSeparated;
    self->_doneButtonLeadingContraintSeparated = v70;

    LODWORD(v72) = 1144750080;
    [(NSLayoutConstraint *)self->_doneButtonLeadingContraintSeparated setPriority:v72];
    contentView2 = [(UIVisualEffectView *)self->_doneButtonBackgroundView contentView];
    topAnchor11 = [(UIButton *)self->_doneButton topAnchor];
    topAnchor12 = [contentView2 topAnchor];
    v33 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
    v135[0] = v33;
    bottomAnchor11 = [(UIButton *)self->_doneButton bottomAnchor];
    bottomAnchor12 = [contentView2 bottomAnchor];
    v32 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
    v135[1] = v32;
    leadingAnchor16 = [(UIButton *)self->_doneButton leadingAnchor];
    view3 = [contentView2 leadingAnchor];
    bottomAnchor2 = [leadingAnchor16 constraintEqualToAnchor:?];
    v135[2] = bottomAnchor2;
    trailingAnchor14 = [(UIButton *)self->_doneButton trailingAnchor];
    heightAnchor = [contentView2 trailingAnchor];
    v125 = [trailingAnchor14 constraintEqualToAnchor:?];
    v135[3] = v125;
    v123 = [NSArray arrayWithObjects:v135 count:4];
    [v134 addObjectsFromArray:?];
  }

  [NSLayoutConstraint activateConstraints:v134];
  [(LookAroundFloatingButtonsViewController *)self _updateButtonLayoutAnimated:0];
}

- (id)optionsMenu
{
  objc_initWeak(&location, self);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Hide Labels [LookAround Options]" value:@"localized string not found" table:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100AC311C;
  v22[3] = &unk_101661900;
  objc_copyWeak(&v23, &location);
  v5 = [UIAction actionWithTitle:v4 image:0 identifier:0 handler:v22];

  [v5 setState:{-[LookAroundFloatingButtonsViewController hidingLabels](self, "hidingLabels")}];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Imagery Info [LookAround Options]" value:@"localized string not found" table:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100AC3194;
  v20[3] = &unk_101661900;
  objc_copyWeak(&v21, &location);
  v8 = [UIAction actionWithTitle:v7 image:0 identifier:0 handler:v20];

  v26 = v8;
  v9 = [NSArray arrayWithObjects:&v26 count:1];
  v10 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v9];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Report an Issue" value:@"localized string not found" table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100AC320C;
  v18[3] = &unk_101661900;
  objc_copyWeak(&v19, &location);
  v13 = [UIAction actionWithTitle:v12 image:0 identifier:0 handler:v18];

  v25[0] = v5;
  v14 = [MapsMenuBuilder sendToDeviceAndShareMenuWithSendToDeviceEnabled:0];
  v25[1] = v14;
  v25[2] = v10;
  v25[3] = v13;
  v15 = [NSArray arrayWithObjects:v25 count:4];
  v16 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:0 children:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v16;
}

- (void)_setupViews
{
  v3 = sub_10000FA08(self);
  view = [(LookAroundFloatingButtonsViewController *)self view];
  [view _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];

  v5 = [UIVisualEffectView alloc];
  v6 = [UIBlurEffect effectWithStyle:7];
  v7 = [v5 initWithEffect:v6];
  alternateButtonBackgroundView = self->_alternateButtonBackgroundView;
  self->_alternateButtonBackgroundView = v7;

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [(UIVisualEffectView *)self->_alternateButtonBackgroundView _setGroupName:v10];

  [(UIVisualEffectView *)self->_alternateButtonBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(LookAroundFloatingButtonsViewController *)self view];
  [view2 addSubview:self->_alternateButtonBackgroundView];

  v12 = [UIButton buttonWithType:0];
  alternateButton = self->_alternateButton;
  self->_alternateButton = v12;

  if (v3 == 5)
  {
    v14 = 10.0;
  }

  else
  {
    v14 = 8.0;
  }

  if (v3 == 5)
  {
    v15 = 7.0;
  }

  else
  {
    v15 = 8.0;
  }

  if (v3 == 5)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 8.0;
  }

  if (v3 == 5)
  {
    v17 = 16.0;
  }

  else
  {
    v17 = 20.0;
  }

  [(UIButton *)self->_alternateButton setAdjustsImageWhenHighlighted:v3 == 5];
  v18 = +[UIColor labelColor];
  [(UIButton *)self->_alternateButton setTintColor:v18];

  [(UIButton *)self->_alternateButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_alternateButton setContentEdgeInsets:v16, v15, v16, v14];
  [(UIButton *)self->_alternateButton addTarget:self action:"didTapButton:" forControlEvents:64];
  if (self->_showsMinimizedButton)
  {
    v19 = @"arrow.down.right.and.arrow.up.left";
  }

  else
  {
    v19 = @"arrow.up.left.and.arrow.down.right";
  }

  v20 = self->_alternateButton;
  v21 = v19;
  LODWORD(v22) = 1148846080;
  [(UIButton *)v20 setContentCompressionResistancePriority:1 forAxis:v22];
  v23 = self->_alternateButton;
  v24 = [UIImage systemImageNamed:v21];

  [(UIButton *)v23 setImage:v24 forState:0];
  v25 = self->_alternateButton;
  v26 = [UIImageSymbolConfiguration configurationWithPointSize:v17];
  [(UIButton *)v25 setPreferredSymbolConfiguration:v26 forImageInState:0];

  [(UIButton *)self->_alternateButton addObserver:self forKeyPath:@"highlighted" options:1 context:0];
  [(UIButton *)self->_alternateButton setAccessibilityIdentifier:@"LookAroundFloatingButtonsAlternateButton"];
  view3 = [(LookAroundFloatingButtonsViewController *)self view];
  [view3 addSubview:self->_alternateButton];

  v28 = objc_opt_new();
  separator = self->_separator;
  self->_separator = v28;

  [(HairlineView *)self->_separator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HairlineView *)self->_separator setVertical:1];
  [(HairlineView *)self->_separator setHidden:v3 == 5];
  contentView = [(UIVisualEffectView *)self->_alternateButtonBackgroundView contentView];
  [contentView addSubview:self->_separator];

  v31 = [UIVisualEffectView alloc];
  v32 = [UIBlurEffect effectWithStyle:7];
  v33 = [v31 initWithEffect:v32];
  doneButtonBackgroundView = self->_doneButtonBackgroundView;
  self->_doneButtonBackgroundView = v33;

  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  [(UIVisualEffectView *)self->_doneButtonBackgroundView _setGroupName:v36];

  [(UIVisualEffectView *)self->_doneButtonBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  view4 = [(LookAroundFloatingButtonsViewController *)self view];
  [view4 addSubview:self->_doneButtonBackgroundView];

  v38 = [UIButton buttonWithType:0];
  doneButton = self->_doneButton;
  self->_doneButton = v38;

  [(UIButton *)self->_doneButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_doneButton addTarget:self action:"didTapDoneButton:" forControlEvents:64];
  titleLabel = [(UIButton *)self->_doneButton titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_101637248];

  v41 = self->_doneButton;
  v42 = objc_opt_new();
  [(UIButton *)v41 setBackgroundImage:v42 forState:0];

  if (v3 == 5)
  {
    v43 = +[UIColor labelColor];
    [(UIButton *)self->_doneButton setTintColor:v43];

    [(UIButton *)self->_doneButton setAdjustsImageWhenHighlighted:1];
    [(UIButton *)self->_doneButton setContentEdgeInsets:0.0, 11.0, 0.0, 7.0];
    v44 = self->_doneButton;
    v45 = [UIImage systemImageNamed:@"xmark.circle.fill"];
    [(UIButton *)v44 setImage:v45 forState:0];

    v46 = self->_doneButton;
    v47 = [UIImageSymbolConfiguration configurationWithPointSize:14.0];
    [(UIButton *)v46 setPreferredSymbolConfiguration:v47 forImageInState:0];
  }

  else
  {
    [(UIButton *)self->_doneButton setContentEdgeInsets:0.0, 12.0, 0.0, 12.0];
    v48 = self->_doneButton;
    v47 = +[NSBundle mainBundle];
    v49 = [v47 localizedStringForKey:@"Done [Exit LookAround Button]" value:@"localized string not found" table:0];
    [(UIButton *)v48 setTitle:v49 forState:0];
  }

  [(UIButton *)self->_doneButton addObserver:self forKeyPath:@"highlighted" options:1 context:0];
  [(UIButton *)self->_doneButton setAccessibilityIdentifier:@"LookAroundFloatingButtonsDoneButton"];
  view5 = [(LookAroundFloatingButtonsViewController *)self view];
  [view5 addSubview:self->_doneButton];

  if (v3 == 5)
  {
    v51 = [UIButton buttonWithType:0];
    menuButton = self->_menuButton;
    self->_menuButton = v51;

    [(UIButton *)self->_menuButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v53 = +[UIColor labelColor];
    [(UIButton *)self->_menuButton setTintColor:v53];

    [(UIButton *)self->_menuButton setAdjustsImageWhenHighlighted:1];
    [(UIButton *)self->_menuButton setContentEdgeInsets:0.0, 4.0, 0.0, 10.0];
    v54 = self->_menuButton;
    v55 = [UIImage systemImageNamed:@"ellipsis"];
    [(UIButton *)v54 setImage:v55 forState:0];

    v56 = self->_menuButton;
    v57 = [UIImageSymbolConfiguration configurationWithPointSize:15.0];
    [(UIButton *)v56 setPreferredSymbolConfiguration:v57 forImageInState:0];

    [(UIButton *)self->_menuButton addObserver:self forKeyPath:@"highlighted" options:1 context:0];
    [(UIButton *)self->_menuButton setContextMenuInteractionEnabled:1];
    [(UIButton *)self->_menuButton setShowsMenuAsPrimaryAction:1];
    optionsMenu = [(LookAroundFloatingButtonsViewController *)self optionsMenu];
    [(UIButton *)self->_menuButton setMenu:optionsMenu];

    [(UIButton *)self->_menuButton setUserInteractionEnabled:self->_showsMinimizedButton];
    v59 = 1.0;
    if (!self->_showsMinimizedButton)
    {
      v59 = 0.0;
    }

    [(UIButton *)self->_menuButton setAlpha:v59];
    [(UIButton *)self->_menuButton setAccessibilityIdentifier:@"LookAroundFloatingButtonsMenuButton"];
    view6 = [(LookAroundFloatingButtonsViewController *)self view];
    [view6 addSubview:self->_menuButton];
  }

  v61 = [UIColor colorWithWhite:1.0 alpha:0.150000006];
  highlightedButtonBackgroundViewColor = self->_highlightedButtonBackgroundViewColor;
  self->_highlightedButtonBackgroundViewColor = v61;

  [(LookAroundFloatingButtonsViewController *)self updateTheme];

  [(LookAroundFloatingButtonsViewController *)self _setCornerRadii];
}

- (void)updateTheme
{
  if (sub_10000FA08(self) != 5)
  {
    if ([(UIButton *)self->_alternateButton isHighlighted])
    {
      highlightedButtonBackgroundViewColor = self->_highlightedButtonBackgroundViewColor;
    }

    else
    {
      highlightedButtonBackgroundViewColor = 0;
    }

    contentView = [(UIVisualEffectView *)self->_alternateButtonBackgroundView contentView];
    [contentView setBackgroundColor:highlightedButtonBackgroundViewColor];

    if ([(UIButton *)self->_doneButton isHighlighted])
    {
      v5 = self->_highlightedButtonBackgroundViewColor;
    }

    else
    {
      v5 = 0;
    }

    contentView2 = [(UIVisualEffectView *)self->_doneButtonBackgroundView contentView];
    [contentView2 setBackgroundColor:v5];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"highlighted"] && (self->_alternateButton == objectCopy || self->_doneButton == objectCopy || self->_menuButton == objectCopy))
  {
    [(LookAroundFloatingButtonsViewController *)self updateTheme];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = LookAroundFloatingButtonsViewController;
    [(LookAroundFloatingButtonsViewController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setHidingLabels:(BOOL)labels
{
  self->_hidingLabels = labels;
  optionsMenu = [(LookAroundFloatingButtonsViewController *)self optionsMenu];
  [(UIButton *)self->_menuButton setMenu:optionsMenu];
}

- (void)_setAlternateButtonEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  [(LookAroundFloatingButtonsViewController *)self loadViewIfNeeded];
  if (self->_alternateButtonEnabled != enabledCopy)
  {
    self->_alternateButtonEnabled = enabledCopy;
    v7 = 0.300000012;
    v11 = 3221225472;
    v10 = _NSConcreteStackBlock;
    v12 = sub_100AC3E10;
    v13 = &unk_101661650;
    if (enabledCopy)
    {
      v7 = 1.0;
    }

    selfCopy = self;
    v15 = v7;
    v8 = objc_retainBlock(&v10);
    v9 = v8;
    if (animatedCopy)
    {
      [UIView animateWithDuration:v8 animations:0.25, v10, v11, v12, v13];
    }

    else
    {
      (v8[2])(v8);
    }
  }
}

- (void)setShowsMinimizedButton:(BOOL)button
{
  if (self->_showsMinimizedButton != button)
  {
    v12 = v3;
    v13 = v4;
    buttonCopy = button;
    self->_showsMinimizedButton = button;
    if (button)
    {
      v7 = @"arrow.down.right.and.arrow.up.left";
    }

    else
    {
      v7 = @"arrow.up.left.and.arrow.down.right";
    }

    alternateButton = self->_alternateButton;
    v9 = [UIImage systemImageNamed:v7];
    [(UIButton *)alternateButton setImage:v9 forState:0];

    if (sub_10000FA08(self) == 5)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100AC3F84;
      v10[3] = &unk_101661AE0;
      v10[4] = self;
      v11 = buttonCopy;
      [UIView animateWithDuration:v10 animations:0.2];
      [(UIButton *)self->_menuButton setUserInteractionEnabled:buttonCopy];
      [(NSLayoutConstraint *)self->_menuButtonHiddenConstraint setActive:buttonCopy ^ 1];
      [(NSLayoutConstraint *)self->_menuButtonVisibleConstraint setActive:buttonCopy];
    }

    [(LookAroundFloatingButtonsViewController *)self _setCornerRadii];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = LookAroundFloatingButtonsViewController;
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  [(LookAroundFloatingButtonsViewController *)&v8 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  [(LookAroundFloatingButtonsViewController *)self _updateButtonLayoutToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy, v8.receiver, v8.super_class];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = LookAroundFloatingButtonsViewController;
  [(LookAroundFloatingButtonsViewController *)&v4 viewDidLayoutSubviews];
  if (_UISolariumEnabled())
  {
    traitCollection = [(LookAroundFloatingButtonsViewController *)self traitCollection];
    [(LookAroundFloatingButtonsViewController *)self _setCornerRadiiWithTraitCollection:traitCollection];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LookAroundFloatingButtonsViewController;
  [(LookAroundFloatingButtonsViewController *)&v3 viewDidLoad];
  [(LookAroundFloatingButtonsViewController *)self _setupViews];
  [(LookAroundFloatingButtonsViewController *)self _setupConstraints];
}

- (void)loadView
{
  v3 = [[_LookAroundFloatingButtonsView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(LookAroundFloatingButtonsViewController *)self setView:v3];

  view = [(LookAroundFloatingButtonsViewController *)self view];
  [view setAccessibilityIdentifier:@"LookAroundFloatingButtonsView"];
}

- (void)dealloc
{
  [(UIButton *)self->_alternateButton removeObserver:self forKeyPath:@"highlighted"];
  [(UIButton *)self->_doneButton removeObserver:self forKeyPath:@"highlighted"];
  v3.receiver = self;
  v3.super_class = LookAroundFloatingButtonsViewController;
  [(LookAroundFloatingButtonsViewController *)&v3 dealloc];
}

- (LookAroundFloatingButtonsViewController)initWithShowsMinimizeButton:(BOOL)button groupButtonsIfNeeded:(BOOL)needed
{
  v7.receiver = self;
  v7.super_class = LookAroundFloatingButtonsViewController;
  result = [(LookAroundFloatingButtonsViewController *)&v7 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_alternateButtonEnabled = 1;
    result->_showsMinimizedButton = button;
    result->_groupButtonsIfNeeded = needed;
  }

  return result;
}

@end