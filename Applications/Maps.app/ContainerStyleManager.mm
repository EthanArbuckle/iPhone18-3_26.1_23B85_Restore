@interface ContainerStyleManager
- (BOOL)_shouldConstrainTopToSafeArea;
- (ContainerStyleManager)initWithContainer:(id)a3;
- (ContainerViewController)containerViewController;
- (double)containerWidth;
- (double)leadingMargin;
- (unint64_t)layoutStyleForCurrentTraitsCollection;
- (void)configureStyleLayout;
- (void)createConstraints;
- (void)setAllowOnlyStandardStyle:(BOOL)a3;
- (void)setBottomConstraint;
- (void)setContainerStyle:(unint64_t)a3;
- (void)sidebarVisibilityDidChange:(BOOL)a3;
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
  v3 = [(ContainerStyleManager *)self layoutStyleForCurrentTraitsCollection];
  if (self->_containerStyle == v3)
  {
    if (v3 != 7)
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

    [(ContainerStyleManager *)self setContainerStyle:v3];
  }
}

- (unint64_t)layoutStyleForCurrentTraitsCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained traitCollection];

  v5 = objc_loadWeakRetained(&self->_containerViewController);
  v6 = [v5 fullscreenMode];

  if ((v6 & 1) == 0)
  {
    allowOnlyStandardStyle = self->_allowOnlyStandardStyle;
    v9 = v4;
    v10 = v9;
    if (v9)
    {
      if ([v9 userInterfaceIdiom] == 5)
      {
        v7 = 6;
LABEL_20:

        goto LABEL_21;
      }

      v11 = [v10 horizontalSizeClass];
      if (allowOnlyStandardStyle)
      {
        if (v11 == 2 || [v10 horizontalSizeClass] == 1 && objc_msgSend(v10, "verticalSizeClass") == 1)
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

      if (v11 == 1 && [v10 verticalSizeClass] == 2)
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
    v3 = [(ContainerStyleManager *)self containerViewController];
    v4 = [v3 containerView];
    v5 = *&CGAffineTransformIdentity.c;
    v84[0] = *&CGAffineTransformIdentity.a;
    v84[1] = v5;
    v84[2] = *&CGAffineTransformIdentity.tx;
    [v4 setTransform:v84];

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
          v44 = [WeakRetained containerView];
          v45 = [v44 topAnchor];
          v46 = objc_loadWeakRetained(&self->_containerViewController);
          v47 = [v46 view];
          v48 = [v47 topAnchor];
          v49 = [v45 constraintEqualToAnchor:v48];
          topContainerViewConstraint = self->_topContainerViewConstraint;
          self->_topContainerViewConstraint = v49;

          if ([(NSLayoutConstraint *)self->_bottomContainerViewConstraint relation])
          {
            [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setActive:0];
            v51 = objc_loadWeakRetained(&self->_containerViewController);
            v52 = [v51 containerView];
            v53 = [v52 bottomAnchor];
            v54 = objc_loadWeakRetained(&self->_containerViewController);
            v55 = [v54 view];
            v56 = [v55 bottomAnchor];
            v57 = [v53 constraintEqualToAnchor:v56];
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
          v59 = [(ContainerStyleManager *)self _shouldConstrainTopToSafeArea];
          v60 = objc_loadWeakRetained(&self->_containerViewController);
          v61 = [v60 view];
          v62 = v61;
          if (v59)
          {
            v63 = [v61 safeAreaLayoutGuide];
            v64 = [v63 topAnchor];
          }

          else
          {
            v64 = [v61 topAnchor];
          }

          v65 = objc_loadWeakRetained(&self->_containerViewController);
          v66 = [v65 containerView];
          v67 = [v66 topAnchor];
          v68 = [v67 constraintEqualToAnchor:v64];
          v69 = self->_topContainerViewConstraint;
          self->_topContainerViewConstraint = v68;

          if ([(NSLayoutConstraint *)self->_bottomContainerViewConstraint relation]!= NSLayoutRelationLessThanOrEqual)
          {
            [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setActive:0];
            v70 = objc_loadWeakRetained(&self->_containerViewController);
            v71 = [v70 containerView];
            v72 = [v71 bottomAnchor];
            v73 = objc_loadWeakRetained(&self->_containerViewController);
            v74 = [v73 view];
            v75 = [v74 bottomAnchor];
            v76 = [v72 constraintLessThanOrEqualToAnchor:v75];
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
            v27 = [v26 containerView];
            v28 = [v27 topAnchor];
            v29 = objc_loadWeakRetained(&self->_containerViewController);
            v30 = [v29 view];
            v31 = [v30 topAnchor];
            v32 = [v28 constraintGreaterThanOrEqualToAnchor:v31];
            v33 = self->_topContainerViewConstraint;
            self->_topContainerViewConstraint = v32;
          }

          if ([(NSLayoutConstraint *)self->_bottomContainerViewConstraint relation])
          {
            [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setActive:0];
            v34 = objc_loadWeakRetained(&self->_containerViewController);
            v35 = [v34 containerView];
            v36 = [v35 bottomAnchor];
            v37 = objc_loadWeakRetained(&self->_containerViewController);
            v38 = [v37 view];
            v39 = [v38 bottomAnchor];
            v40 = [v36 constraintEqualToAnchor:v39];
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
          v10 = [v9 containerView];
          v11 = [v10 topAnchor];
          v12 = objc_loadWeakRetained(&self->_containerViewController);
          v13 = [v12 view];
          v14 = [v13 topAnchor];
          v15 = [v11 constraintGreaterThanOrEqualToAnchor:v14];
          v16 = self->_topContainerViewConstraint;
          self->_topContainerViewConstraint = v15;
        }

        if ([(NSLayoutConstraint *)self->_bottomContainerViewConstraint relation])
        {
          [(NSLayoutConstraint *)self->_bottomContainerViewConstraint setActive:0];
          v17 = objc_loadWeakRetained(&self->_containerViewController);
          v18 = [v17 containerView];
          v19 = [v18 bottomAnchor];
          v20 = objc_loadWeakRetained(&self->_containerViewController);
          v21 = [v20 view];
          v22 = [v21 bottomAnchor];
          v23 = [v19 constraintEqualToAnchor:v22];
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
    v5 = [WeakRetained containerView];
    v6 = [v5 widthAnchor];
    v7 = [v6 constraintEqualToConstant:0.0];
    widthContainerViewConstraint = self->_widthContainerViewConstraint;
    self->_widthContainerViewConstraint = v7;

    v9 = [(ContainerStyleManager *)self _shouldConstrainTopToSafeArea];
    v10 = objc_loadWeakRetained(&self->_containerViewController);
    v11 = [v10 containerView];
    v12 = [v11 topAnchor];
    v13 = objc_loadWeakRetained(&self->_containerViewController);
    v14 = [v13 view];
    v15 = v14;
    if (v9)
    {
      v16 = [v14 safeAreaLayoutGuide];
      v17 = [v16 topAnchor];
      v18 = [v12 constraintEqualToAnchor:v17];
      topContainerViewConstraint = self->_topContainerViewConstraint;
      self->_topContainerViewConstraint = v18;
    }

    else
    {
      v16 = [v14 topAnchor];
      v20 = [v12 constraintEqualToAnchor:v16];
      v17 = self->_topContainerViewConstraint;
      self->_topContainerViewConstraint = v20;
    }

    v21 = objc_loadWeakRetained(&self->_containerViewController);
    v22 = [v21 containerView];
    v23 = [v22 bottomAnchor];
    v24 = objc_loadWeakRetained(&self->_containerViewController);
    v25 = [v24 view];
    v26 = [v25 bottomAnchor];
    v27 = [v23 constraintEqualToAnchor:v26];
    bottomContainerViewConstraint = self->_bottomContainerViewConstraint;
    self->_bottomContainerViewConstraint = v27;

    v29 = objc_loadWeakRetained(&self->_containerViewController);
    v30 = [v29 containerView];
    v31 = [v30 leadingAnchor];
    v32 = objc_loadWeakRetained(&self->_containerViewController);
    v33 = [v32 view];
    v34 = [v33 leadingAnchor];
    v35 = [v31 constraintEqualToAnchor:v34];
    leadingContainerViewConstraint = self->_leadingContainerViewConstraint;
    self->_leadingContainerViewConstraint = v35;

    v44 = objc_loadWeakRetained(&self->_containerViewController);
    v37 = [v44 containerView];
    v38 = [v37 trailingAnchor];
    v39 = objc_loadWeakRetained(&self->_containerViewController);
    v40 = [v39 view];
    v41 = [v40 trailingAnchor];
    v42 = [v38 constraintEqualToAnchor:v41];
    trailingContainerViewConstraint = self->_trailingContainerViewConstraint;
    self->_trailingContainerViewConstraint = v42;
  }
}

- (void)setAllowOnlyStandardStyle:(BOOL)a3
{
  if (self->_allowOnlyStandardStyle != a3)
  {
    self->_allowOnlyStandardStyle = a3;
    v4 = [(ContainerStyleManager *)self containerViewController];
    v5 = [v4 view];
    v6 = [v5 superview];

    if (v6)
    {

      [(ContainerStyleManager *)self updateLayoutStyle];
    }
  }
}

- (void)setContainerStyle:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v6 = [WeakRetained viewIfLoaded];

  if (v6 && self->_containerStyle != a3)
  {
    v7 = sub_10004B334();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ContainerStyleManager configureStyleLayout %lu ", buf, 0xCu);
    }

    self->_containerStyle = a3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100614730;
    v8[3] = &unk_101661650;
    v8[4] = self;
    v8[5] = a3;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)sidebarVisibilityDidChange:(BOOL)a3
{
  v3 = a3;
  if (_UISolariumEnabled() && self->_sidebarIsVisible != v3)
  {
    self->_sidebarIsVisible = v3;

    [(ContainerStyleManager *)self configureStyleLayout];
  }
}

- (double)containerWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 5)
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
      v11 = [v10 view];
      [v11 bounds];
      v6 = v12;
    }

    return v6;
  }

  v8 = objc_loadWeakRetained(&self->_containerViewController);
  v9 = [v8 view];
  [v9 bounds];

  GEOConfigGetDouble();
  return result;
}

- (void)setBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained statusBarHeight];
  v5 = v4;

  v6 = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [v6 view];
  [v7 bounds];
  Height = CGRectGetHeight(v12);

  v9 = fmax(Height - v5, 728.0) - Height;
  bottomContainerViewConstraint = self->_bottomContainerViewConstraint;

  [(NSLayoutConstraint *)bottomContainerViewConstraint setConstant:v9];
}

- (double)leadingMargin
{
  v3 = [(ContainerStyleManager *)self containerViewController];
  v4 = [v3 hasMargin];

  v5 = [(ContainerStyleManager *)self containerViewController];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 view];
    v8 = [v7 effectiveUserInterfaceLayoutDirection];

    v9 = [(ContainerStyleManager *)self containerViewController];
    v10 = [v9 view];
    v11 = [v10 window];
    v12 = (v8 == 1) ^ ([v11 interfaceOrientation] == 3);

    if (v12)
    {
      v13 = [(ContainerStyleManager *)self containerViewController];
      v14 = [v13 view];
      [v14 safeAreaInsets];
      left = v15;
      right = v17;
    }

    else
    {
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
    }

    v20 = [(ContainerStyleManager *)self containerViewController];
    v21 = v20;
    if (v8 == 1)
    {
      [v20 rightSafeOffset];
      v23 = v22;
      left = right;
    }

    else
    {
      [v20 leftSafeOffset];
      v23 = v24;
    }

    v6 = [(ContainerStyleManager *)self containerViewController];
    [v6 leadingEdgePadding];
    if (v25 + v23 > left)
    {
      v26 = [(ContainerStyleManager *)self containerViewController];
      [v26 leadingEdgePadding];
      left = v27 + v23;
    }
  }

  else
  {
    [v5 leadingEdgePadding];
    left = v19;
  }

  return left;
}

- (BOOL)_shouldConstrainTopToSafeArea
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained chromeViewController];
  v5 = ([v4 overlayContentEdgesRespectingSafeAreaInsets] & 1) != 0 || !self->_sidebarIsVisible;

  return v5;
}

- (ContainerStyleManager)initWithContainer:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ContainerStyleManager;
  v5 = [(ContainerStyleManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_containerViewController, v4);
    v6->_containerStyle = 0;
    v6->_allowOnlyStandardStyle = 1;
  }

  return v6;
}

@end