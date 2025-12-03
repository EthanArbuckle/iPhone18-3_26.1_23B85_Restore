@interface ContainerStyleManager
- (BOOL)_shouldConstrainTopToSafeArea;
- (ContainerStyleManager)initWithContainer:(id)container;
- (ContainerViewController)containerViewController;
- (double)containerWidth;
- (double)leadingMargin;
- (unint64_t)layoutStyleForCurrentTraitsCollection;
- (void)configureStyleLayout;
- (void)createConstraints;
- (void)setAllowOnlyStandardStyle:(BOOL)style;
- (void)setBottomConstraint;
- (void)setContainerStyle:(unint64_t)style;
- (void)sidebarVisibilityDidChange:(BOOL)change;
- (void)updateLayoutStyle;
@end

@implementation ContainerStyleManager

- (ContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (void)updateLayoutStyle
{
  layoutStyleForCurrentTraitsCollection = [(ContainerStyleManager *)self layoutStyleForCurrentTraitsCollection];
  if (self->_containerStyle == layoutStyleForCurrentTraitsCollection)
  {
    if (layoutStyleForCurrentTraitsCollection != 7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      [WeakRetained topEdgePadding];
      [(NSLayoutConstraint *)self->_topContainerViewConstraint setConstant:?];

      containerStyle = self->_containerStyle;
      if (containerStyle - 2 >= 3)
      {
        if (containerStyle == 6)
        {
          stackOnOppositeSide = self->_stackOnOppositeSide;
          [(ContainerStyleManager *)self leadingMargin];
          v9 = -v8;
          v10 = 16;
          if (stackOnOppositeSide)
          {
            v10 = 24;
            v8 = -v8;
          }

          [*(&self->super.isa + v10) setConstant:{v8, v9}];
          [(ContainerStyleManager *)self containerWidth];
          [(NSLayoutConstraint *)self->_widthContainerViewConstraint setConstant:?];

          [(ContainerStyleManager *)self setBottomConstraint];
        }
      }

      else
      {
        [(ContainerStyleManager *)self leadingMargin];
        [(NSLayoutConstraint *)self->_leadingContainerViewConstraint setConstant:?];
        [(ContainerStyleManager *)self containerWidth];
        widthContainerViewConstraint = self->_widthContainerViewConstraint;

        [(NSLayoutConstraint *)widthContainerViewConstraint setConstant:?];
      }
    }
  }

  else
  {

    [(ContainerStyleManager *)self setContainerStyle:layoutStyleForCurrentTraitsCollection];
  }
}

- (unint64_t)layoutStyleForCurrentTraitsCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  traitCollection = [WeakRetained traitCollection];

  v5 = objc_loadWeakRetained(&self->_containerViewController);
  fullscreenMode = [v5 fullscreenMode];

  if ((fullscreenMode & 1) == 0)
  {
    allowOnlyStandardStyle = self->_allowOnlyStandardStyle;
    v9 = traitCollection;
    v10 = v9;
    if (v9)
    {
      if ([v9 userInterfaceIdiom] == 5)
      {
        v7 = 6;
LABEL_20:

        goto LABEL_21;
      }

      horizontalSizeClass = [v10 horizontalSizeClass];
      if (allowOnlyStandardStyle)
      {
        if (horizontalSizeClass == 2 || [v10 horizontalSizeClass] == 1 && objc_msgSend(v10, "verticalSizeClass") == 1)
        {
          v7 = 2;
        }

        else if ([v10 userInterfaceIdiom] == 5)
        {
          v7 = 2;
        }

        else
        {
          v7 = 1;
        }

        goto LABEL_20;
      }

      if (horizontalSizeClass == 1 && [v10 verticalSizeClass] == 2)
      {
        v7 = 1;
        goto LABEL_20;
      }

      if ([v10 horizontalSizeClass] == 1 && objc_msgSend(v10, "verticalSizeClass") == 1 || objc_msgSend(v10, "horizontalSizeClass") == 2 && objc_msgSend(v10, "verticalSizeClass") == 1 || objc_msgSend(v10, "horizontalSizeClass") == 2 && objc_msgSend(v10, "verticalSizeClass") == 2)
      {
        v7 = 4;
        goto LABEL_20;
      }
    }

    v7 = 0;
    goto LABEL_20;
  }

  v7 = 7;
LABEL_21:

  return v7;
}

- (void)configureStyleLayout
{
  [(ContainerStyleManager *)self createConstraints];
  if (self->_widthContainerViewConstraint)
  {
    containerViewController = [(ContainerStyleManager *)self containerViewController];
    containerView = [containerViewController containerView];
    v5 = *&CGAffineTransformIdentity.c;
    v84[0] = *&CGAffineTransformIdentity.a;
    v84[1] = v5;
    v84[2] = *&CGAffineTransformIdentity.tx;
    [containerView setTransform:v84];

    v6 = +[NSMutableArray array];
    v7 = +[NSMutableArray array];
    [(NSLayoutConstraint *)self->_widthContainerViewConstraint setActive:0];
    containerStyle = self->_containerStyle;
    if (containerStyle > 4)
    {
      switch(containerStyle)
      {
        case 7:
          [(NSLayoutConstraint *)self->_topContainerViewConstraint setActive:0];
          WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
          containerView2 = [WeakRetained containerView];
          topAnchor = [containerView2 topAnchor];
          v46 = objc_loadWeakRetained(&self->_containerViewController);
          view = [v46 view];
          topAnchor2 = [view topAnchor];
          v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
          topContainerViewConstraint = self->_topContainerViewConstraint;
          self->_topContainerViewConstraint = v49;

          if ([(NSLayoutConstraint *)self->_bottomContainerViewConstraint relation])
          {
            [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setActive:0];
            v51 = objc_loadWeakRetained(&self->_containerViewController);
            containerView3 = [v51 containerView];
            bottomAnchor = [containerView3 bottomAnchor];
            v54 = objc_loadWeakRetained(&self->_containerViewController);
            view2 = [v54 view];
            bottomAnchor2 = [view2 bottomAnchor];
            v57 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
            bottomContainerViewConstraint = self->_bottomContainerViewConstraint;
            self->_bottomContainerViewConstraint = v57;
          }

          [(NSLayoutConstraint *)self->_topContainerViewConstraint setConstant:0.0];
          [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setConstant:0.0];
          [(NSLayoutConstraint *)self->_leadingContainerViewConstraint setConstant:0.0];
          [(NSLayoutConstraint *)self->_trailingContainerViewConstraint setConstant:0.0];
          [v7 addObject:self->_widthContainerViewConstraint];
          [v6 addObject:self->_trailingContainerViewConstraint];
          [v6 addObject:self->_leadingContainerViewConstraint];
          [v6 addObject:self->_bottomContainerViewConstraint];
          widthContainerViewConstraint = self->_topContainerViewConstraint;
          goto LABEL_22;
        case 6:
          [(NSLayoutConstraint *)self->_topContainerViewConstraint setActive:0];
          _shouldConstrainTopToSafeArea = [(ContainerStyleManager *)self _shouldConstrainTopToSafeArea];
          v60 = objc_loadWeakRetained(&self->_containerViewController);
          view3 = [v60 view];
          v62 = view3;
          if (_shouldConstrainTopToSafeArea)
          {
            safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
            topAnchor3 = [safeAreaLayoutGuide topAnchor];
          }

          else
          {
            topAnchor3 = [view3 topAnchor];
          }

          v65 = objc_loadWeakRetained(&self->_containerViewController);
          containerView4 = [v65 containerView];
          topAnchor4 = [containerView4 topAnchor];
          v68 = [topAnchor4 constraintEqualToAnchor:topAnchor3];
          v69 = self->_topContainerViewConstraint;
          self->_topContainerViewConstraint = v68;

          if ([(NSLayoutConstraint *)self->_bottomContainerViewConstraint relation]!= NSLayoutRelationLessThanOrEqual)
          {
            [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setActive:0];
            v70 = objc_loadWeakRetained(&self->_containerViewController);
            containerView5 = [v70 containerView];
            bottomAnchor3 = [containerView5 bottomAnchor];
            v73 = objc_loadWeakRetained(&self->_containerViewController);
            view4 = [v73 view];
            bottomAnchor4 = [view4 bottomAnchor];
            v76 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
            v77 = self->_bottomContainerViewConstraint;
            self->_bottomContainerViewConstraint = v76;
          }

          stackOnOppositeSide = self->_stackOnOppositeSide;
          [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setConstant:0.0];
          v79 = objc_loadWeakRetained(&self->_containerViewController);
          [v79 topEdgePadding];
          [(NSLayoutConstraint *)self->_topContainerViewConstraint setConstant:?];

          [(ContainerStyleManager *)self leadingMargin];
          v81 = -v80;
          if (stackOnOppositeSide)
          {
            v82 = 24;
          }

          else
          {
            v82 = 16;
          }

          if (stackOnOppositeSide)
          {
            v80 = -v80;
            v83 = 16;
          }

          else
          {
            v83 = 24;
          }

          [*(&self->super.isa + v82) setConstant:{v80, v81}];
          [(ContainerStyleManager *)self containerWidth];
          [(NSLayoutConstraint *)self->_widthContainerViewConstraint setConstant:?];
          [v7 addObject:*(&self->super.isa + v83)];
          [v6 addObject:*(&self->super.isa + v82)];
          [v6 addObject:self->_bottomContainerViewConstraint];
          [v6 addObject:self->_topContainerViewConstraint];
          [v6 addObject:self->_widthContainerViewConstraint];
          [(ContainerStyleManager *)self setBottomConstraint];

          break;
        case 5:
LABEL_14:
          if ([(NSLayoutConstraint *)self->_topContainerViewConstraint relation]!= 1)
          {
            [(NSLayoutConstraint *)self->_topContainerViewConstraint setActive:0];
            v26 = objc_loadWeakRetained(&self->_containerViewController);
            containerView6 = [v26 containerView];
            topAnchor5 = [containerView6 topAnchor];
            v29 = objc_loadWeakRetained(&self->_containerViewController);
            view5 = [v29 view];
            topAnchor6 = [view5 topAnchor];
            v32 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
            v33 = self->_topContainerViewConstraint;
            self->_topContainerViewConstraint = v32;
          }

          if ([(NSLayoutConstraint *)self->_bottomContainerViewConstraint relation])
          {
            [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setActive:0];
            v34 = objc_loadWeakRetained(&self->_containerViewController);
            containerView7 = [v34 containerView];
            bottomAnchor5 = [containerView7 bottomAnchor];
            v37 = objc_loadWeakRetained(&self->_containerViewController);
            view6 = [v37 view];
            bottomAnchor6 = [view6 bottomAnchor];
            v40 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
            v41 = self->_bottomContainerViewConstraint;
            self->_bottomContainerViewConstraint = v40;
          }

          [(NSLayoutConstraint *)self->_topContainerViewConstraint setConstant:0.0];
          [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setConstant:0.0];
          [(NSLayoutConstraint *)self->_leadingContainerViewConstraint setConstant:0.0];
          [(NSLayoutConstraint *)self->_trailingContainerViewConstraint setConstant:0.0];
          [v6 addObject:self->_leadingContainerViewConstraint];
          [v6 addObject:self->_trailingContainerViewConstraint];
          [v6 addObject:self->_bottomContainerViewConstraint];
          [v6 addObject:self->_topContainerViewConstraint];
          widthContainerViewConstraint = self->_widthContainerViewConstraint;
          v42 = v7;
          goto LABEL_23;
      }
    }

    else
    {
      if ((containerStyle - 2) < 3)
      {
        if ([(NSLayoutConstraint *)self->_topContainerViewConstraint relation]!= 1)
        {
          [(NSLayoutConstraint *)self->_topContainerViewConstraint setActive:0];
          v9 = objc_loadWeakRetained(&self->_containerViewController);
          containerView8 = [v9 containerView];
          topAnchor7 = [containerView8 topAnchor];
          v12 = objc_loadWeakRetained(&self->_containerViewController);
          view7 = [v12 view];
          topAnchor8 = [view7 topAnchor];
          v15 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:topAnchor8];
          v16 = self->_topContainerViewConstraint;
          self->_topContainerViewConstraint = v15;
        }

        if ([(NSLayoutConstraint *)self->_bottomContainerViewConstraint relation])
        {
          [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setActive:0];
          v17 = objc_loadWeakRetained(&self->_containerViewController);
          containerView9 = [v17 containerView];
          bottomAnchor7 = [containerView9 bottomAnchor];
          v20 = objc_loadWeakRetained(&self->_containerViewController);
          view8 = [v20 view];
          bottomAnchor8 = [view8 bottomAnchor];
          v23 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
          v24 = self->_bottomContainerViewConstraint;
          self->_bottomContainerViewConstraint = v23;
        }

        [(NSLayoutConstraint *)self->_topContainerViewConstraint setConstant:0.0];
        [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setConstant:0.0];
        [(ContainerStyleManager *)self leadingMargin];
        [(NSLayoutConstraint *)self->_leadingContainerViewConstraint setConstant:?];
        [(ContainerStyleManager *)self containerWidth];
        [(NSLayoutConstraint *)self->_widthContainerViewConstraint setConstant:?];
        [v6 addObject:self->_leadingContainerViewConstraint];
        [v7 addObject:self->_trailingContainerViewConstraint];
        [v6 addObject:self->_bottomContainerViewConstraint];
        [v6 addObject:self->_topContainerViewConstraint];
        widthContainerViewConstraint = self->_widthContainerViewConstraint;
LABEL_22:
        v42 = v6;
LABEL_23:
        [v42 addObject:widthContainerViewConstraint];
        goto LABEL_24;
      }

      if (containerStyle == 1)
      {
        goto LABEL_14;
      }
    }

LABEL_24:
    [NSLayoutConstraint deactivateConstraints:v7];
    [NSLayoutConstraint activateConstraints:v6];
  }
}

- (void)createConstraints
{
  if (!self->_widthContainerViewConstraint)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    containerView = [WeakRetained containerView];
    widthAnchor = [containerView widthAnchor];
    v7 = [widthAnchor constraintEqualToConstant:0.0];
    widthContainerViewConstraint = self->_widthContainerViewConstraint;
    self->_widthContainerViewConstraint = v7;

    _shouldConstrainTopToSafeArea = [(ContainerStyleManager *)self _shouldConstrainTopToSafeArea];
    v10 = objc_loadWeakRetained(&self->_containerViewController);
    containerView2 = [v10 containerView];
    topAnchor = [containerView2 topAnchor];
    v13 = objc_loadWeakRetained(&self->_containerViewController);
    view = [v13 view];
    v15 = view;
    if (_shouldConstrainTopToSafeArea)
    {
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      topAnchor2 = [safeAreaLayoutGuide topAnchor];
      v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
      topContainerViewConstraint = self->_topContainerViewConstraint;
      self->_topContainerViewConstraint = v18;
    }

    else
    {
      safeAreaLayoutGuide = [view topAnchor];
      v20 = [topAnchor constraintEqualToAnchor:safeAreaLayoutGuide];
      topAnchor2 = self->_topContainerViewConstraint;
      self->_topContainerViewConstraint = v20;
    }

    v21 = objc_loadWeakRetained(&self->_containerViewController);
    containerView3 = [v21 containerView];
    bottomAnchor = [containerView3 bottomAnchor];
    v24 = objc_loadWeakRetained(&self->_containerViewController);
    view2 = [v24 view];
    bottomAnchor2 = [view2 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    bottomContainerViewConstraint = self->_bottomContainerViewConstraint;
    self->_bottomContainerViewConstraint = v27;

    v29 = objc_loadWeakRetained(&self->_containerViewController);
    containerView4 = [v29 containerView];
    leadingAnchor = [containerView4 leadingAnchor];
    v32 = objc_loadWeakRetained(&self->_containerViewController);
    view3 = [v32 view];
    leadingAnchor2 = [view3 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    leadingContainerViewConstraint = self->_leadingContainerViewConstraint;
    self->_leadingContainerViewConstraint = v35;

    v44 = objc_loadWeakRetained(&self->_containerViewController);
    containerView5 = [v44 containerView];
    trailingAnchor = [containerView5 trailingAnchor];
    v39 = objc_loadWeakRetained(&self->_containerViewController);
    view4 = [v39 view];
    trailingAnchor2 = [view4 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    trailingContainerViewConstraint = self->_trailingContainerViewConstraint;
    self->_trailingContainerViewConstraint = v42;
  }
}

- (void)setAllowOnlyStandardStyle:(BOOL)style
{
  if (self->_allowOnlyStandardStyle != style)
  {
    self->_allowOnlyStandardStyle = style;
    containerViewController = [(ContainerStyleManager *)self containerViewController];
    view = [containerViewController view];
    superview = [view superview];

    if (superview)
    {

      [(ContainerStyleManager *)self updateLayoutStyle];
    }
  }
}

- (void)setContainerStyle:(unint64_t)style
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  viewIfLoaded = [WeakRetained viewIfLoaded];

  if (viewIfLoaded && self->_containerStyle != style)
  {
    v7 = sub_10004B334();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      styleCopy = style;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ContainerStyleManager configureStyleLayout %lu ", buf, 0xCu);
    }

    self->_containerStyle = style;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100614730;
    v8[3] = &unk_101661650;
    v8[4] = self;
    v8[5] = style;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)sidebarVisibilityDidChange:(BOOL)change
{
  changeCopy = change;
  if (_UISolariumEnabled() && self->_sidebarIsVisible != changeCopy)
  {
    self->_sidebarIsVisible = changeCopy;

    [(ContainerStyleManager *)self configureStyleLayout];
  }
}

- (double)containerWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    return 282.0;
  }

  containerStyle = self->_containerStyle;
  v6 = 0.0;
  if (containerStyle > 7)
  {
    return v6;
  }

  if (((1 << containerStyle) & 0x5C) == 0)
  {
    if (((1 << containerStyle) & 0xA2) != 0)
    {
      v10 = objc_loadWeakRetained(&self->_containerViewController);
      view = [v10 view];
      [view bounds];
      v6 = v12;
    }

    return v6;
  }

  v8 = objc_loadWeakRetained(&self->_containerViewController);
  view2 = [v8 view];
  [view2 bounds];

  GEOConfigGetDouble();
  return result;
}

- (void)setBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained statusBarHeight];
  v5 = v4;

  v6 = objc_loadWeakRetained(&self->_containerViewController);
  view = [v6 view];
  [view bounds];
  Height = CGRectGetHeight(v12);

  v9 = fmax(Height - v5, 728.0) - Height;
  bottomContainerViewConstraint = self->_bottomContainerViewConstraint;

  [(NSLayoutConstraint *)bottomContainerViewConstraint setConstant:v9];
}

- (double)leadingMargin
{
  containerViewController = [(ContainerStyleManager *)self containerViewController];
  hasMargin = [containerViewController hasMargin];

  containerViewController2 = [(ContainerStyleManager *)self containerViewController];
  containerViewController6 = containerViewController2;
  if (hasMargin)
  {
    view = [containerViewController2 view];
    effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

    containerViewController3 = [(ContainerStyleManager *)self containerViewController];
    view2 = [containerViewController3 view];
    window = [view2 window];
    v12 = (effectiveUserInterfaceLayoutDirection == 1) ^ ([window interfaceOrientation] == 3);

    if (v12)
    {
      containerViewController4 = [(ContainerStyleManager *)self containerViewController];
      view3 = [containerViewController4 view];
      [view3 safeAreaInsets];
      left = v15;
      right = v17;
    }

    else
    {
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
    }

    containerViewController5 = [(ContainerStyleManager *)self containerViewController];
    v21 = containerViewController5;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      [containerViewController5 rightSafeOffset];
      v23 = v22;
      left = right;
    }

    else
    {
      [containerViewController5 leftSafeOffset];
      v23 = v24;
    }

    containerViewController6 = [(ContainerStyleManager *)self containerViewController];
    [containerViewController6 leadingEdgePadding];
    if (v25 + v23 > left)
    {
      containerViewController7 = [(ContainerStyleManager *)self containerViewController];
      [containerViewController7 leadingEdgePadding];
      left = v27 + v23;
    }
  }

  else
  {
    [containerViewController2 leadingEdgePadding];
    left = v19;
  }

  return left;
}

- (BOOL)_shouldConstrainTopToSafeArea
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController = [WeakRetained chromeViewController];
  v5 = ([chromeViewController overlayContentEdgesRespectingSafeAreaInsets] & 1) != 0 || !self->_sidebarIsVisible;

  return v5;
}

- (ContainerStyleManager)initWithContainer:(id)container
{
  containerCopy = container;
  v8.receiver = self;
  v8.super_class = ContainerStyleManager;
  v5 = [(ContainerStyleManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_containerViewController, containerCopy);
    v6->_containerStyle = 0;
    v6->_allowOnlyStandardStyle = 1;
  }

  return v6;
}

@end