@interface LookAroundFloatingButtonsViewController
- (LookAroundFloatingButtonsViewController)initWithShowsMinimizeButton:(BOOL)a3 groupButtonsIfNeeded:(BOOL)a4;
- (LookAroundFloatingButtonsViewControllerDelegate)delegate;
- (id)optionsMenu;
- (void)_setAlternateButtonEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)_setCornerRadii;
- (void)_setCornerRadiiWithTraitCollection:(id)a3;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateButtonLayoutAnimated:(BOOL)a3;
- (void)_updateButtonLayoutToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4 animated:(BOOL)a5;
- (void)dealloc;
- (void)didTapButton:(id)a3;
- (void)didTapDoneButton:(id)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setHidingLabels:(BOOL)a3;
- (void)setShowsMinimizedButton:(BOOL)a3;
- (void)updateTheme;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation LookAroundFloatingButtonsViewController

- (LookAroundFloatingButtonsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapDoneButton:(id)a3
{
  v4 = a3;
  v5 = [(LookAroundFloatingButtonsViewController *)self delegate];
  [v5 lookAroundFloatingButtonsViewController:self didTapDoneButton:v4];
}

- (void)didTapButton:(id)a3
{
  v6 = a3;
  showsMinimizedButton = self->_showsMinimizedButton;
  if (showsMinimizedButton)
  {
    if ([(LookAroundFloatingButtonsViewController *)self isMinimizedButtonEnabled])
    {
      v5 = [(LookAroundFloatingButtonsViewController *)self delegate];
      [v5 lookAroundFloatingButtonsViewController:self didTapMinimizeButton:v6];
LABEL_8:

      goto LABEL_9;
    }

    showsMinimizedButton = self->_showsMinimizedButton;
  }

  if (!showsMinimizedButton && [(LookAroundFloatingButtonsViewController *)self isMaximizedButtonEnabled])
  {
    v5 = [(LookAroundFloatingButtonsViewController *)self delegate];
    [v5 lookAroundFloatingButtonsViewController:self didTapMaximizeButton:v6];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_updateButtonLayoutToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (sub_10000FA08(self) == 5)
  {
    goto LABEL_22;
  }

  v10 = v8;
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
  if (v9)
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
    [v9 animateAlongsideTransition:v19 completion:v17];
  }

  else if (v5)
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

- (void)_setCornerRadiiWithTraitCollection:(id)a3
{
  v19 = a3;
  if (sub_10000FA08(self) != 5)
  {
    v8 = v19;
    v9 = v8;
    if (v8)
    {
      if ([v8 userInterfaceIdiom] == 5)
      {
        v10 = 6;
LABEL_19:

        v11 = (0x23u >> v10) | ~self->_groupButtonsIfNeeded;
        v12 = +[UIApplication sharedApplication];
        v13 = [v12 userInterfaceLayoutDirection];

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

        if (v13 == 1)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        if (v13 == 1)
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
  v3 = [(LookAroundFloatingButtonsViewController *)self traitCollection];
  [(LookAroundFloatingButtonsViewController *)self _setCornerRadiiWithTraitCollection:v3];
}

- (void)_updateButtonLayoutAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(LookAroundFloatingButtonsViewController *)self traitCollection];
  [(LookAroundFloatingButtonsViewController *)self _updateButtonLayoutToTraitCollection:v5 withTransitionCoordinator:0 animated:v3];
}

- (void)_setupConstraints
{
  v134 = objc_alloc_init(NSMutableArray);
  v3 = sub_10000FA08(self);
  alternateButtonBackgroundView = self->_alternateButtonBackgroundView;
  if (v3 == 5)
  {
    v5 = [(UIVisualEffectView *)alternateButtonBackgroundView trailingAnchor];
    v6 = [(UIButton *)self->_menuButton trailingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    menuButtonVisibleConstraint = self->_menuButtonVisibleConstraint;
    self->_menuButtonVisibleConstraint = v7;

    v9 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView trailingAnchor];
    v10 = [(UIButton *)self->_alternateButton trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    menuButtonHiddenConstraint = self->_menuButtonHiddenConstraint;
    self->_menuButtonHiddenConstraint = v11;

    v13 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView leadingAnchor];
    v121 = [(LookAroundFloatingButtonsViewController *)self view];
    v112 = [v121 leadingAnchor];
    v133 = v13;
    v115 = [v13 constraintEqualToAnchor:v112];
    v138[0] = v115;
    v110 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView topAnchor];
    v102 = [(LookAroundFloatingButtonsViewController *)self view];
    v99 = [v102 topAnchor];
    v108 = [v110 constraintEqualToAnchor:v99];
    v138[1] = v108;
    v95 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView bottomAnchor];
    v131 = [(LookAroundFloatingButtonsViewController *)self view];
    v129 = [v131 bottomAnchor];
    v87 = [v95 constraintEqualToAnchor:?];
    v138[2] = v87;
    v127 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView heightAnchor];
    v125 = [v127 constraintEqualToConstant:30.0];
    v138[3] = v125;
    v14 = [(UIButton *)self->_doneButton leadingAnchor];
    v119 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView leadingAnchor];
    v123 = v14;
    v117 = [v14 constraintEqualToAnchor:v119];
    v138[4] = v117;
    v104 = [(UIButton *)self->_doneButton centerYAnchor];
    v106 = [(LookAroundFloatingButtonsViewController *)self view];
    v100 = [v106 centerYAnchor];
    v97 = [v104 constraintEqualToAnchor:v100];
    v138[5] = v97;
    v93 = [(UIButton *)self->_doneButton heightAnchor];
    v91 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView heightAnchor];
    v89 = [v93 constraintEqualToAnchor:v91];
    v138[6] = v89;
    v85 = [(UIButton *)self->_alternateButton leadingAnchor];
    v83 = [(UIButton *)self->_doneButton trailingAnchor];
    v82 = [v85 constraintEqualToAnchor:v83];
    v138[7] = v82;
    v80 = [(UIButton *)self->_alternateButton centerYAnchor];
    v81 = [(LookAroundFloatingButtonsViewController *)self view];
    v79 = [v81 centerYAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v138[8] = v78;
    v77 = [(UIButton *)self->_alternateButton heightAnchor];
    v76 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView heightAnchor];
    v75 = [v77 constraintEqualToAnchor:v76];
    v138[9] = v75;
    v74 = [(UIButton *)self->_menuButton leadingAnchor];
    v73 = [(UIButton *)self->_alternateButton trailingAnchor];
    v15 = [v74 constraintEqualToAnchor:v73];
    v138[10] = v15;
    v16 = [(UIButton *)self->_menuButton centerYAnchor];
    v17 = [(LookAroundFloatingButtonsViewController *)self view];
    v18 = [v17 centerYAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v138[11] = v19;
    v20 = [(UIButton *)self->_menuButton heightAnchor];
    v21 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView heightAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v23 = self->_menuButtonHiddenConstraint;
    v138[12] = v22;
    v138[13] = v23;
    v24 = [NSArray arrayWithObjects:v138 count:14];
    [v134 addObjectsFromArray:v24];

    v25 = v87;
    v26 = v99;

    v27 = v112;
    v28 = v102;

    v29 = v115;
    v30 = v121;

    v31 = v95;
    v32 = v108;

    v33 = v110;
  }

  else
  {
    v34 = [(UIVisualEffectView *)alternateButtonBackgroundView topAnchor];
    v35 = [(LookAroundFloatingButtonsViewController *)self view];
    v36 = [v35 topAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    v137[0] = v37;
    v38 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView bottomAnchor];
    v39 = [(LookAroundFloatingButtonsViewController *)self view];
    v40 = [v39 bottomAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    v137[1] = v41;
    v42 = [NSArray arrayWithObjects:v137 count:2];
    [v134 addObjectsFromArray:v42];

    v43 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView leadingAnchor];
    v44 = [(LookAroundFloatingButtonsViewController *)self view];
    v45 = [v44 leadingAnchor];
    v46 = [v43 constraintGreaterThanOrEqualToAnchor:v45];
    alternateButtonLeadingConstraintGrouped = self->_alternateButtonLeadingConstraintGrouped;
    self->_alternateButtonLeadingConstraintGrouped = v46;

    LODWORD(v48) = 1144750080;
    [(NSLayoutConstraint *)self->_alternateButtonLeadingConstraintGrouped setPriority:v48];
    v49 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView leadingAnchor];
    v50 = [(LookAroundFloatingButtonsViewController *)self view];
    v51 = [v50 leadingAnchor];
    v52 = [v49 constraintEqualToAnchor:v51];
    alternateButtonLeadingConstraintSeparated = self->_alternateButtonLeadingConstraintSeparated;
    self->_alternateButtonLeadingConstraintSeparated = v52;

    v54 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView contentView];
    v132 = [(UIButton *)self->_alternateButton topAnchor];
    v130 = [v54 topAnchor];
    v128 = [v132 constraintEqualToAnchor:v130];
    v136[0] = v128;
    v126 = [(UIButton *)self->_alternateButton bottomAnchor];
    v124 = [v54 bottomAnchor];
    v122 = [v126 constraintEqualToAnchor:v124];
    v136[1] = v122;
    v120 = [(UIButton *)self->_alternateButton leadingAnchor];
    v118 = [v54 leadingAnchor];
    v116 = [v120 constraintEqualToAnchor:v118];
    v136[2] = v116;
    v114 = [(UIButton *)self->_alternateButton trailingAnchor];
    v113 = [(HairlineView *)self->_separator leadingAnchor];
    v111 = [v114 constraintEqualToAnchor:v113];
    v136[3] = v111;
    v109 = [(HairlineView *)self->_separator topAnchor];
    v107 = [v54 topAnchor];
    v105 = [v109 constraintEqualToAnchor:v107];
    v136[4] = v105;
    v103 = [(HairlineView *)self->_separator bottomAnchor];
    v101 = [v54 bottomAnchor];
    v98 = [v103 constraintEqualToAnchor:v101];
    v136[5] = v98;
    v96 = [(HairlineView *)self->_separator trailingAnchor];
    v133 = v54;
    v94 = [v54 trailingAnchor];
    v92 = [v96 constraintEqualToAnchor:v94];
    v136[6] = v92;
    v88 = [(UIVisualEffectView *)self->_doneButtonBackgroundView topAnchor];
    v90 = [(LookAroundFloatingButtonsViewController *)self view];
    v86 = [v90 topAnchor];
    v84 = [v88 constraintEqualToAnchor:v86];
    v136[7] = v84;
    v55 = [(UIVisualEffectView *)self->_doneButtonBackgroundView bottomAnchor];
    v56 = [(LookAroundFloatingButtonsViewController *)self view];
    v57 = [v56 bottomAnchor];
    v58 = [v55 constraintEqualToAnchor:v57];
    v136[8] = v58;
    v59 = [(UIVisualEffectView *)self->_doneButtonBackgroundView trailingAnchor];
    v60 = [(LookAroundFloatingButtonsViewController *)self view];
    v61 = [v60 trailingAnchor];
    v62 = [v59 constraintEqualToAnchor:v61];
    v136[9] = v62;
    v63 = [NSArray arrayWithObjects:v136 count:10];
    [v134 addObjectsFromArray:v63];

    v64 = [(UIVisualEffectView *)self->_doneButtonBackgroundView leadingAnchor];
    v65 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView trailingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    doneButtonLeadingContraintGrouped = self->_doneButtonLeadingContraintGrouped;
    self->_doneButtonLeadingContraintGrouped = v66;

    v68 = [(UIVisualEffectView *)self->_doneButtonBackgroundView leadingAnchor];
    v69 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView trailingAnchor];
    v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69];
    doneButtonLeadingContraintSeparated = self->_doneButtonLeadingContraintSeparated;
    self->_doneButtonLeadingContraintSeparated = v70;

    LODWORD(v72) = 1144750080;
    [(NSLayoutConstraint *)self->_doneButtonLeadingContraintSeparated setPriority:v72];
    v30 = [(UIVisualEffectView *)self->_doneButtonBackgroundView contentView];
    v27 = [(UIButton *)self->_doneButton topAnchor];
    v29 = [v30 topAnchor];
    v33 = [v27 constraintEqualToAnchor:v29];
    v135[0] = v33;
    v28 = [(UIButton *)self->_doneButton bottomAnchor];
    v26 = [v30 bottomAnchor];
    v32 = [v28 constraintEqualToAnchor:v26];
    v135[1] = v32;
    v31 = [(UIButton *)self->_doneButton leadingAnchor];
    v131 = [v30 leadingAnchor];
    v129 = [v31 constraintEqualToAnchor:?];
    v135[2] = v129;
    v25 = [(UIButton *)self->_doneButton trailingAnchor];
    v127 = [v30 trailingAnchor];
    v125 = [v25 constraintEqualToAnchor:?];
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
  v4 = [(LookAroundFloatingButtonsViewController *)self view];
  [v4 _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];

  v5 = [UIVisualEffectView alloc];
  v6 = [UIBlurEffect effectWithStyle:7];
  v7 = [v5 initWithEffect:v6];
  alternateButtonBackgroundView = self->_alternateButtonBackgroundView;
  self->_alternateButtonBackgroundView = v7;

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [(UIVisualEffectView *)self->_alternateButtonBackgroundView _setGroupName:v10];

  [(UIVisualEffectView *)self->_alternateButtonBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(LookAroundFloatingButtonsViewController *)self view];
  [v11 addSubview:self->_alternateButtonBackgroundView];

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
  v27 = [(LookAroundFloatingButtonsViewController *)self view];
  [v27 addSubview:self->_alternateButton];

  v28 = objc_opt_new();
  separator = self->_separator;
  self->_separator = v28;

  [(HairlineView *)self->_separator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HairlineView *)self->_separator setVertical:1];
  [(HairlineView *)self->_separator setHidden:v3 == 5];
  v30 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView contentView];
  [v30 addSubview:self->_separator];

  v31 = [UIVisualEffectView alloc];
  v32 = [UIBlurEffect effectWithStyle:7];
  v33 = [v31 initWithEffect:v32];
  doneButtonBackgroundView = self->_doneButtonBackgroundView;
  self->_doneButtonBackgroundView = v33;

  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  [(UIVisualEffectView *)self->_doneButtonBackgroundView _setGroupName:v36];

  [(UIVisualEffectView *)self->_doneButtonBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = [(LookAroundFloatingButtonsViewController *)self view];
  [v37 addSubview:self->_doneButtonBackgroundView];

  v38 = [UIButton buttonWithType:0];
  doneButton = self->_doneButton;
  self->_doneButton = v38;

  [(UIButton *)self->_doneButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_doneButton addTarget:self action:"didTapDoneButton:" forControlEvents:64];
  v40 = [(UIButton *)self->_doneButton titleLabel];
  [DynamicTypeWizard autorefreshLabel:v40 withFontProvider:&stru_101637248];

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
  v50 = [(LookAroundFloatingButtonsViewController *)self view];
  [v50 addSubview:self->_doneButton];

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
    v58 = [(LookAroundFloatingButtonsViewController *)self optionsMenu];
    [(UIButton *)self->_menuButton setMenu:v58];

    [(UIButton *)self->_menuButton setUserInteractionEnabled:self->_showsMinimizedButton];
    v59 = 1.0;
    if (!self->_showsMinimizedButton)
    {
      v59 = 0.0;
    }

    [(UIButton *)self->_menuButton setAlpha:v59];
    [(UIButton *)self->_menuButton setAccessibilityIdentifier:@"LookAroundFloatingButtonsMenuButton"];
    v60 = [(LookAroundFloatingButtonsViewController *)self view];
    [v60 addSubview:self->_menuButton];
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

    v4 = [(UIVisualEffectView *)self->_alternateButtonBackgroundView contentView];
    [v4 setBackgroundColor:highlightedButtonBackgroundViewColor];

    if ([(UIButton *)self->_doneButton isHighlighted])
    {
      v5 = self->_highlightedButtonBackgroundViewColor;
    }

    else
    {
      v5 = 0;
    }

    v6 = [(UIVisualEffectView *)self->_doneButtonBackgroundView contentView];
    [v6 setBackgroundColor:v5];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"highlighted"] && (self->_alternateButton == v11 || self->_doneButton == v11 || self->_menuButton == v11))
  {
    [(LookAroundFloatingButtonsViewController *)self updateTheme];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = LookAroundFloatingButtonsViewController;
    [(LookAroundFloatingButtonsViewController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)setHidingLabels:(BOOL)a3
{
  self->_hidingLabels = a3;
  v4 = [(LookAroundFloatingButtonsViewController *)self optionsMenu];
  [(UIButton *)self->_menuButton setMenu:v4];
}

- (void)_setAlternateButtonEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(LookAroundFloatingButtonsViewController *)self loadViewIfNeeded];
  if (self->_alternateButtonEnabled != v5)
  {
    self->_alternateButtonEnabled = v5;
    v7 = 0.300000012;
    v11 = 3221225472;
    v10 = _NSConcreteStackBlock;
    v12 = sub_100AC3E10;
    v13 = &unk_101661650;
    if (v5)
    {
      v7 = 1.0;
    }

    v14 = self;
    v15 = v7;
    v8 = objc_retainBlock(&v10);
    v9 = v8;
    if (v4)
    {
      [UIView animateWithDuration:v8 animations:0.25, v10, v11, v12, v13];
    }

    else
    {
      (v8[2])(v8);
    }
  }
}

- (void)setShowsMinimizedButton:(BOOL)a3
{
  if (self->_showsMinimizedButton != a3)
  {
    v12 = v3;
    v13 = v4;
    v5 = a3;
    self->_showsMinimizedButton = a3;
    if (a3)
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
      v11 = v5;
      [UIView animateWithDuration:v10 animations:0.2];
      [(UIButton *)self->_menuButton setUserInteractionEnabled:v5];
      [(NSLayoutConstraint *)self->_menuButtonHiddenConstraint setActive:v5 ^ 1];
      [(NSLayoutConstraint *)self->_menuButtonVisibleConstraint setActive:v5];
    }

    [(LookAroundFloatingButtonsViewController *)self _setCornerRadii];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = LookAroundFloatingButtonsViewController;
  v6 = a4;
  v7 = a3;
  [(LookAroundFloatingButtonsViewController *)&v8 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];
  [(LookAroundFloatingButtonsViewController *)self _updateButtonLayoutToTraitCollection:v7 withTransitionCoordinator:v6, v8.receiver, v8.super_class];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = LookAroundFloatingButtonsViewController;
  [(LookAroundFloatingButtonsViewController *)&v4 viewDidLayoutSubviews];
  if (_UISolariumEnabled())
  {
    v3 = [(LookAroundFloatingButtonsViewController *)self traitCollection];
    [(LookAroundFloatingButtonsViewController *)self _setCornerRadiiWithTraitCollection:v3];
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

  v4 = [(LookAroundFloatingButtonsViewController *)self view];
  [v4 setAccessibilityIdentifier:@"LookAroundFloatingButtonsView"];
}

- (void)dealloc
{
  [(UIButton *)self->_alternateButton removeObserver:self forKeyPath:@"highlighted"];
  [(UIButton *)self->_doneButton removeObserver:self forKeyPath:@"highlighted"];
  v3.receiver = self;
  v3.super_class = LookAroundFloatingButtonsViewController;
  [(LookAroundFloatingButtonsViewController *)&v3 dealloc];
}

- (LookAroundFloatingButtonsViewController)initWithShowsMinimizeButton:(BOOL)a3 groupButtonsIfNeeded:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = LookAroundFloatingButtonsViewController;
  result = [(LookAroundFloatingButtonsViewController *)&v7 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_alternateButtonEnabled = 1;
    result->_showsMinimizedButton = a3;
    result->_groupButtonsIfNeeded = a4;
  }

  return result;
}

@end