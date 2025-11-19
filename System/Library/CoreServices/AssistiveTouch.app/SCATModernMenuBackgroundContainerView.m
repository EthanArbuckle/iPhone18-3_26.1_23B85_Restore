@interface SCATModernMenuBackgroundContainerView
- (NSLayoutConstraint)footerViewHiddenConstraint;
- (SCATModernMenuBackgroundContainerView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentPadding;
- (void)_setupSubviewConstraints;
- (void)setDockPosition:(int64_t)a3;
- (void)setShouldUseDockContentPadding:(BOOL)a3;
- (void)setShowingFooterView:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation SCATModernMenuBackgroundContainerView

- (SCATModernMenuBackgroundContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = SCATModernMenuBackgroundContainerView;
  v7 = [(SCATModernMenuBackgroundContainerView *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [[SCATModernMenuContentViewContainer alloc] initWithFrame:x, y, width, height];
    [(SCATModernMenuContentViewContainer *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATModernMenuBackgroundContainerView *)v7 setContentViewContainer:v8];
    [(SCATModernMenuBackgroundContainerView *)v7 addSubview:v8];
    v9 = [[SCATModernMenuFooterView alloc] initWithFrame:x, y, width, height];
    [(SCATModernMenuFooterView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATModernMenuBackgroundContainerView *)v7 setFooterView:v9];
    [(SCATModernMenuBackgroundContainerView *)v7 addSubview:v9];
    [(SCATModernMenuBackgroundContainerView *)v7 setShowingFooterView:1];
    [(SCATModernMenuBackgroundContainerView *)v7 _setupSubviewConstraints];
  }

  return v7;
}

- (void)_setupSubviewConstraints
{
  v76 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  v75 = [v76 topAnchor];
  v74 = [(SCATModernMenuBackgroundContainerView *)self topAnchor];
  v3 = [v75 constraintEqualToAnchor:v74 constant:0.0];
  viewTopConstraint = self->_viewTopConstraint;
  self->_viewTopConstraint = v3;

  v80[0] = v3;
  v72 = [(SCATModernMenuBackgroundContainerView *)self bottomAnchor];
  v73 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  v71 = [v73 bottomAnchor];
  v5 = [v72 constraintEqualToAnchor:v71 constant:0.0];
  viewBottomConstraint = self->_viewBottomConstraint;
  self->_viewBottomConstraint = v5;

  v80[1] = v5;
  v70 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  v69 = [v70 leadingAnchor];
  v68 = [(SCATModernMenuBackgroundContainerView *)self leadingAnchor];
  v7 = [v69 constraintGreaterThanOrEqualToAnchor:v68 constant:0.0];
  viewLeadingConstraint = self->_viewLeadingConstraint;
  self->_viewLeadingConstraint = v7;

  v80[2] = v7;
  v67 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  v66 = [v67 trailingAnchor];
  v65 = [(SCATModernMenuBackgroundContainerView *)self trailingAnchor];
  v9 = [v66 constraintLessThanOrEqualToAnchor:v65 constant:0.0];
  viewTrailingConstraint = self->_viewTrailingConstraint;
  self->_viewTrailingConstraint = v9;

  v80[3] = v9;
  v64 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  v63 = [v64 centerXAnchor];
  v62 = [(SCATModernMenuBackgroundContainerView *)self centerXAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v80[4] = v61;
  v60 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  v58 = [v60 topAnchor];
  v59 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  v57 = [v59 bottomAnchor];
  v11 = [v58 constraintEqualToAnchor:v57];
  footerToContainerVerticalConstraint = self->_footerToContainerVerticalConstraint;
  self->_footerToContainerVerticalConstraint = v11;

  v80[5] = v11;
  v56 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  v55 = [v56 centerXAnchor];
  v54 = [(SCATModernMenuBackgroundContainerView *)self centerXAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v80[6] = v53;
  v13 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  v14 = [v13 leadingAnchor];
  v15 = [(SCATModernMenuBackgroundContainerView *)self leadingAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15];
  v80[7] = v16;
  v17 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  v18 = [v17 trailingAnchor];
  v19 = [(SCATModernMenuBackgroundContainerView *)self trailingAnchor];
  v20 = [v18 constraintLessThanOrEqualToAnchor:v19];
  v80[8] = v20;
  v21 = [NSArray arrayWithObjects:v80 count:9];
  [NSLayoutConstraint activateConstraints:v21];

  v22 = self->_viewBottomConstraint;
  v79[0] = self->_viewTopConstraint;
  v79[1] = v22;
  v23 = [NSArray arrayWithObjects:v79 count:2];
  verticalConstraints = self->_verticalConstraints;
  self->_verticalConstraints = v23;

  v25 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  v26 = [v25 topAnchor];
  v27 = [(SCATModernMenuBackgroundContainerView *)self topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:0.0];
  dockTopConstraint = self->_dockTopConstraint;
  self->_dockTopConstraint = v28;

  v78[0] = v28;
  v30 = [(SCATModernMenuBackgroundContainerView *)self bottomAnchor];
  v31 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  v32 = [v31 bottomAnchor];
  v33 = [v30 constraintEqualToAnchor:v32 constant:0.0];
  dockBottomConstraint = self->_dockBottomConstraint;
  self->_dockBottomConstraint = v33;

  v78[1] = v33;
  v35 = [NSArray arrayWithObjects:v78 count:2];
  dockVerticalConstraints = self->_dockVerticalConstraints;
  self->_dockVerticalConstraints = v35;

  v37 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  v38 = [v37 topAnchor];
  v39 = [(SCATModernMenuBackgroundContainerView *)self safeAreaLayoutGuide];
  v40 = [v39 topAnchor];
  v41 = [v38 constraintGreaterThanOrEqualToAnchor:v40];
  dockTopSafeConstraint = self->_dockTopSafeConstraint;
  self->_dockTopSafeConstraint = v41;

  v77[0] = v41;
  v43 = [(SCATModernMenuBackgroundContainerView *)self safeAreaLayoutGuide];
  v44 = [v43 bottomAnchor];
  v45 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  v46 = [v45 bottomAnchor];
  v47 = [v44 constraintGreaterThanOrEqualToAnchor:v46];
  dockBottomSafeConstraint = self->_dockBottomSafeConstraint;
  self->_dockBottomSafeConstraint = v47;

  v77[1] = v47;
  v49 = [NSArray arrayWithObjects:v77 count:2];
  dockVerticalPortraitConstraints = self->_dockVerticalPortraitConstraints;
  self->_dockVerticalPortraitConstraints = v49;

  LODWORD(v51) = 1144750080;
  [(NSLayoutConstraint *)self->_dockTopConstraint setPriority:v51];
  LODWORD(v52) = 1144750080;
  [(NSLayoutConstraint *)self->_dockBottomConstraint setPriority:v52];
}

- (void)updateConstraints
{
  v24.receiver = self;
  v24.super_class = SCATModernMenuBackgroundContainerView;
  [(SCATModernMenuBackgroundContainerView *)&v24 updateConstraints];
  [(SCATModernMenuBackgroundContainerView *)self contentPadding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SCATModernMenuBackgroundContainerView *)self viewTopConstraint];
  [v11 setConstant:v4];

  v12 = [(SCATModernMenuBackgroundContainerView *)self viewBottomConstraint];
  [v12 setConstant:v8];

  v13 = [(SCATModernMenuBackgroundContainerView *)self viewLeadingConstraint];
  [v13 setConstant:v6];

  v14 = [(SCATModernMenuBackgroundContainerView *)self viewTrailingConstraint];
  [v14 setConstant:-v10];

  v15 = [(SCATModernMenuBackgroundContainerView *)self dockTopConstraint];
  [v15 setConstant:v4];

  v16 = [(SCATModernMenuBackgroundContainerView *)self dockBottomConstraint];
  [v16 setConstant:v8];

  if (![(SCATModernMenuBackgroundContainerView *)self shouldUseDockContentPadding])
  {
    [NSLayoutConstraint deactivateConstraints:self->_dockVerticalPortraitConstraints];
    [NSLayoutConstraint deactivateConstraints:self->_dockVerticalConstraints];
    verticalConstraints = self->_verticalConstraints;
    goto LABEL_5;
  }

  [NSLayoutConstraint deactivateConstraints:self->_verticalConstraints];
  [NSLayoutConstraint activateConstraints:self->_dockVerticalConstraints];
  v17 = +[SCATScannerManager sharedManager];
  v18 = [v17 isLandscape];

  verticalConstraints = self->_dockVerticalPortraitConstraints;
  if (!v18)
  {
LABEL_5:
    [NSLayoutConstraint activateConstraints:verticalConstraints];
    goto LABEL_6;
  }

  [NSLayoutConstraint deactivateConstraints:verticalConstraints];
LABEL_6:
  v20 = +[SCATMenuLabel titleFont];
  [v20 descender];
  v22 = v21 + 0.0;
  v23 = [(SCATModernMenuBackgroundContainerView *)self footerToContainerVerticalConstraint];
  [v23 setConstant:v22];
}

- (NSLayoutConstraint)footerViewHiddenConstraint
{
  footerViewHiddenConstraint = self->_footerViewHiddenConstraint;
  if (!footerViewHiddenConstraint)
  {
    v4 = [(SCATModernMenuBackgroundContainerView *)self footerView];
    v5 = [v4 heightAnchor];
    v6 = [v5 constraintEqualToConstant:0.0];
    v7 = self->_footerViewHiddenConstraint;
    self->_footerViewHiddenConstraint = v6;

    footerViewHiddenConstraint = self->_footerViewHiddenConstraint;
  }

  return footerViewHiddenConstraint;
}

- (void)setShowingFooterView:(BOOL)a3
{
  if (self->_showingFooterView != a3)
  {
    self->_showingFooterView = a3;
    v4 = [(SCATModernMenuBackgroundContainerView *)self footerViewHiddenConstraint];
    [v4 setActive:!self->_showingFooterView];

    v5 = [(SCATModernMenuBackgroundContainerView *)self footerView];
    [v5 setHidden:!self->_showingFooterView];

    [(SCATModernMenuBackgroundContainerView *)self setNeedsUpdateConstraints];
  }
}

- (void)setShouldUseDockContentPadding:(BOOL)a3
{
  if (self->_shouldUseDockContentPadding != a3)
  {
    self->_shouldUseDockContentPadding = a3;
    [(SCATModernMenuBackgroundContainerView *)self setNeedsUpdateConstraints];
  }
}

- (void)setDockPosition:(int64_t)a3
{
  if (self->_dockPosition != a3)
  {
    self->_dockPosition = a3;
    [(SCATModernMenuBackgroundContainerView *)self setNeedsUpdateConstraints];
  }
}

- (UIEdgeInsets)contentPadding
{
  if ([(SCATModernMenuBackgroundContainerView *)self shouldUseDockContentPadding])
  {
    v3 = +[UIScreen mainScreen];
    [v3 scale];
    v5 = v4;

    if (v5 == 1.0)
    {
      v6 = 15.0;
      v7 = 14.0;
      v8 = 15.0;
      v9 = 15.0;
    }

    else
    {
      v11 = +[SCATScannerManager sharedManager];
      v12 = [v11 isLandscape];
      if (v12)
      {
        v6 = 15.0;
      }

      else
      {
        v6 = 16.0;
      }

      if (v12)
      {
        v7 = 13.0;
      }

      else
      {
        v7 = 14.0;
      }

      v8 = v6;
      v9 = v6;
    }
  }

  else
  {
    v10 = [(SCATModernMenuBackgroundContainerView *)self isShowingFooterView];
    v6 = 15.0;
    if (v10)
    {
      v8 = 10.0;
    }

    else
    {
      v8 = 15.0;
    }

    if (v10)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 15.0;
    }

    v9 = v8;
  }

  v13 = v6;
  v14 = v7;
  result.right = v9;
  result.bottom = v14;
  result.left = v8;
  result.top = v13;
  return result;
}

@end