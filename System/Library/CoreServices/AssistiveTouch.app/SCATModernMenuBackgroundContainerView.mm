@interface SCATModernMenuBackgroundContainerView
- (NSLayoutConstraint)footerViewHiddenConstraint;
- (SCATModernMenuBackgroundContainerView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentPadding;
- (void)_setupSubviewConstraints;
- (void)setDockPosition:(int64_t)position;
- (void)setShouldUseDockContentPadding:(BOOL)padding;
- (void)setShowingFooterView:(BOOL)view;
- (void)updateConstraints;
@end

@implementation SCATModernMenuBackgroundContainerView

- (SCATModernMenuBackgroundContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = SCATModernMenuBackgroundContainerView;
  v7 = [(SCATModernMenuBackgroundContainerView *)&v11 initWithFrame:?];
  if (v7)
  {
    height = [[SCATModernMenuContentViewContainer alloc] initWithFrame:x, y, width, height];
    [(SCATModernMenuContentViewContainer *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATModernMenuBackgroundContainerView *)v7 setContentViewContainer:height];
    [(SCATModernMenuBackgroundContainerView *)v7 addSubview:height];
    height2 = [[SCATModernMenuFooterView alloc] initWithFrame:x, y, width, height];
    [(SCATModernMenuFooterView *)height2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATModernMenuBackgroundContainerView *)v7 setFooterView:height2];
    [(SCATModernMenuBackgroundContainerView *)v7 addSubview:height2];
    [(SCATModernMenuBackgroundContainerView *)v7 setShowingFooterView:1];
    [(SCATModernMenuBackgroundContainerView *)v7 _setupSubviewConstraints];
  }

  return v7;
}

- (void)_setupSubviewConstraints
{
  contentViewContainer = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  topAnchor = [contentViewContainer topAnchor];
  topAnchor2 = [(SCATModernMenuBackgroundContainerView *)self topAnchor];
  v3 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  viewTopConstraint = self->_viewTopConstraint;
  self->_viewTopConstraint = v3;

  v80[0] = v3;
  bottomAnchor = [(SCATModernMenuBackgroundContainerView *)self bottomAnchor];
  footerView = [(SCATModernMenuBackgroundContainerView *)self footerView];
  bottomAnchor2 = [footerView bottomAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  viewBottomConstraint = self->_viewBottomConstraint;
  self->_viewBottomConstraint = v5;

  v80[1] = v5;
  contentViewContainer2 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  leadingAnchor = [contentViewContainer2 leadingAnchor];
  leadingAnchor2 = [(SCATModernMenuBackgroundContainerView *)self leadingAnchor];
  v7 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:0.0];
  viewLeadingConstraint = self->_viewLeadingConstraint;
  self->_viewLeadingConstraint = v7;

  v80[2] = v7;
  contentViewContainer3 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  trailingAnchor = [contentViewContainer3 trailingAnchor];
  trailingAnchor2 = [(SCATModernMenuBackgroundContainerView *)self trailingAnchor];
  v9 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:0.0];
  viewTrailingConstraint = self->_viewTrailingConstraint;
  self->_viewTrailingConstraint = v9;

  v80[3] = v9;
  contentViewContainer4 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  centerXAnchor = [contentViewContainer4 centerXAnchor];
  centerXAnchor2 = [(SCATModernMenuBackgroundContainerView *)self centerXAnchor];
  v61 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v80[4] = v61;
  footerView2 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  topAnchor3 = [footerView2 topAnchor];
  contentViewContainer5 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  bottomAnchor3 = [contentViewContainer5 bottomAnchor];
  v11 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  footerToContainerVerticalConstraint = self->_footerToContainerVerticalConstraint;
  self->_footerToContainerVerticalConstraint = v11;

  v80[5] = v11;
  footerView3 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  centerXAnchor3 = [footerView3 centerXAnchor];
  centerXAnchor4 = [(SCATModernMenuBackgroundContainerView *)self centerXAnchor];
  v53 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v80[6] = v53;
  footerView4 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  leadingAnchor3 = [footerView4 leadingAnchor];
  leadingAnchor4 = [(SCATModernMenuBackgroundContainerView *)self leadingAnchor];
  v16 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  v80[7] = v16;
  footerView5 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  trailingAnchor3 = [footerView5 trailingAnchor];
  trailingAnchor4 = [(SCATModernMenuBackgroundContainerView *)self trailingAnchor];
  v20 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  v80[8] = v20;
  v21 = [NSArray arrayWithObjects:v80 count:9];
  [NSLayoutConstraint activateConstraints:v21];

  v22 = self->_viewBottomConstraint;
  v79[0] = self->_viewTopConstraint;
  v79[1] = v22;
  v23 = [NSArray arrayWithObjects:v79 count:2];
  verticalConstraints = self->_verticalConstraints;
  self->_verticalConstraints = v23;

  contentViewContainer6 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  topAnchor4 = [contentViewContainer6 topAnchor];
  topAnchor5 = [(SCATModernMenuBackgroundContainerView *)self topAnchor];
  v28 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:0.0];
  dockTopConstraint = self->_dockTopConstraint;
  self->_dockTopConstraint = v28;

  v78[0] = v28;
  bottomAnchor4 = [(SCATModernMenuBackgroundContainerView *)self bottomAnchor];
  footerView6 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  bottomAnchor5 = [footerView6 bottomAnchor];
  v33 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:0.0];
  dockBottomConstraint = self->_dockBottomConstraint;
  self->_dockBottomConstraint = v33;

  v78[1] = v33;
  v35 = [NSArray arrayWithObjects:v78 count:2];
  dockVerticalConstraints = self->_dockVerticalConstraints;
  self->_dockVerticalConstraints = v35;

  contentViewContainer7 = [(SCATModernMenuBackgroundContainerView *)self contentViewContainer];
  topAnchor6 = [contentViewContainer7 topAnchor];
  safeAreaLayoutGuide = [(SCATModernMenuBackgroundContainerView *)self safeAreaLayoutGuide];
  topAnchor7 = [safeAreaLayoutGuide topAnchor];
  v41 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:topAnchor7];
  dockTopSafeConstraint = self->_dockTopSafeConstraint;
  self->_dockTopSafeConstraint = v41;

  v77[0] = v41;
  safeAreaLayoutGuide2 = [(SCATModernMenuBackgroundContainerView *)self safeAreaLayoutGuide];
  bottomAnchor6 = [safeAreaLayoutGuide2 bottomAnchor];
  footerView7 = [(SCATModernMenuBackgroundContainerView *)self footerView];
  bottomAnchor7 = [footerView7 bottomAnchor];
  v47 = [bottomAnchor6 constraintGreaterThanOrEqualToAnchor:bottomAnchor7];
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
  viewTopConstraint = [(SCATModernMenuBackgroundContainerView *)self viewTopConstraint];
  [viewTopConstraint setConstant:v4];

  viewBottomConstraint = [(SCATModernMenuBackgroundContainerView *)self viewBottomConstraint];
  [viewBottomConstraint setConstant:v8];

  viewLeadingConstraint = [(SCATModernMenuBackgroundContainerView *)self viewLeadingConstraint];
  [viewLeadingConstraint setConstant:v6];

  viewTrailingConstraint = [(SCATModernMenuBackgroundContainerView *)self viewTrailingConstraint];
  [viewTrailingConstraint setConstant:-v10];

  dockTopConstraint = [(SCATModernMenuBackgroundContainerView *)self dockTopConstraint];
  [dockTopConstraint setConstant:v4];

  dockBottomConstraint = [(SCATModernMenuBackgroundContainerView *)self dockBottomConstraint];
  [dockBottomConstraint setConstant:v8];

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
  isLandscape = [v17 isLandscape];

  verticalConstraints = self->_dockVerticalPortraitConstraints;
  if (!isLandscape)
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
  footerToContainerVerticalConstraint = [(SCATModernMenuBackgroundContainerView *)self footerToContainerVerticalConstraint];
  [footerToContainerVerticalConstraint setConstant:v22];
}

- (NSLayoutConstraint)footerViewHiddenConstraint
{
  footerViewHiddenConstraint = self->_footerViewHiddenConstraint;
  if (!footerViewHiddenConstraint)
  {
    footerView = [(SCATModernMenuBackgroundContainerView *)self footerView];
    heightAnchor = [footerView heightAnchor];
    v6 = [heightAnchor constraintEqualToConstant:0.0];
    v7 = self->_footerViewHiddenConstraint;
    self->_footerViewHiddenConstraint = v6;

    footerViewHiddenConstraint = self->_footerViewHiddenConstraint;
  }

  return footerViewHiddenConstraint;
}

- (void)setShowingFooterView:(BOOL)view
{
  if (self->_showingFooterView != view)
  {
    self->_showingFooterView = view;
    footerViewHiddenConstraint = [(SCATModernMenuBackgroundContainerView *)self footerViewHiddenConstraint];
    [footerViewHiddenConstraint setActive:!self->_showingFooterView];

    footerView = [(SCATModernMenuBackgroundContainerView *)self footerView];
    [footerView setHidden:!self->_showingFooterView];

    [(SCATModernMenuBackgroundContainerView *)self setNeedsUpdateConstraints];
  }
}

- (void)setShouldUseDockContentPadding:(BOOL)padding
{
  if (self->_shouldUseDockContentPadding != padding)
  {
    self->_shouldUseDockContentPadding = padding;
    [(SCATModernMenuBackgroundContainerView *)self setNeedsUpdateConstraints];
  }
}

- (void)setDockPosition:(int64_t)position
{
  if (self->_dockPosition != position)
  {
    self->_dockPosition = position;
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
      isLandscape = [v11 isLandscape];
      if (isLandscape)
      {
        v6 = 15.0;
      }

      else
      {
        v6 = 16.0;
      }

      if (isLandscape)
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
    isShowingFooterView = [(SCATModernMenuBackgroundContainerView *)self isShowingFooterView];
    v6 = 15.0;
    if (isShowingFooterView)
    {
      v8 = 10.0;
    }

    else
    {
      v8 = 15.0;
    }

    if (isShowingFooterView)
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