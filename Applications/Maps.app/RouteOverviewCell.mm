@interface RouteOverviewCell
+ (double)horizontalBackgroundInset;
+ (double)horizontalContentInset;
+ (double)minimumHeight;
+ (double)minimumVerticalPadding;
+ (id)goButtonFontProvider;
+ (id)primaryLabelEnlargedFontProvider;
+ (id)primaryLabelFontProvider;
+ (id)secondaryLabelFontProvider;
- (BOOL)isGoButtonProgressVisible;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (DirectionsElevationGraphView)elevationGraphView;
- (MapsThemeMultiPartLabel)routeDescriptionLabel;
- (RouteAdvisoriesView)advisoriesView;
- (RouteOverviewCell)initWithCoder:(id)coder;
- (RouteOverviewCell)initWithFrame:(CGRect)frame;
- (RouteOverviewCellDelegate)delegate;
- (TransitArtworkListView)artworkList;
- (UIButton)detailsButton;
- (UIImage)primaryLabelCompanionImage;
- (UILabel)tertiaryLabel;
- (double)goButtonProgress;
- (id)keyCommands;
- (int64_t)_resolvedGrouping;
- (void)_createSubviews;
- (void)_didTapAutomaticSharingButton;
- (void)_didTapDetailsButton:(id)button;
- (void)_didTapPrimaryActionButton:(id)button;
- (void)_doubleTap:(id)tap;
- (void)_reloadElevationChart;
- (void)_resetBookButtonTitle;
- (void)_setDetailsButtonRotated:(BOOL)rotated animated:(BOOL)animated;
- (void)_setupConstraints;
- (void)_updateButtonVisibility;
- (void)_updateColorsForSelection;
- (void)_updateConstraintsForArtworkListVisible:(BOOL)visible elevationGraphViewVisible:(BOOL)viewVisible advisoriesViewVisible:(BOOL)advisoriesViewVisible tertiaryLabelVisible:(BOOL)labelVisible detailsButtonVisible:(BOOL)buttonVisible;
- (void)_updateGoButtonWidthConstraint;
- (void)_updateStepsButtonWidthConstraint;
- (void)customInit;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)setAdvisoriesViewVisible:(BOOL)visible;
- (void)setArtworkListVisible:(BOOL)visible;
- (void)setBookButtonTitle:(id)title;
- (void)setButtonVisibility:(unint64_t)visibility;
- (void)setDetailsButtonRotated:(BOOL)rotated animated:(BOOL)animated;
- (void)setDetailsButtonVisible:(BOOL)visible;
- (void)setElevationGraphViewVisible:(BOOL)visible;
- (void)setGoButtonProgress:(double)progress;
- (void)setGoButtonProgressVisible:(BOOL)visible;
- (void)setHasSelectedStep:(BOOL)step;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOverrideCellGrouping:(int64_t)grouping;
- (void)setPrimaryLabelCompanionImage:(id)image;
- (void)setRouteDescritptionLabelVisible:(BOOL)visible;
- (void)setSelectionBackgroundVisible:(BOOL)visible;
- (void)setTertiaryLabelVisible:(BOOL)visible;
- (void)updateConstraints;
- (void)updateTheme;
@end

@implementation RouteOverviewCell

- (RouteOverviewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = RouteOverviewCell;
  [(RouteOverviewCell *)&v3 prepareForReuse];
  [(RouteOverviewCell *)self setSelectionBackgroundVisible:0];
}

- (void)_didTapAutomaticSharingButton
{
  delegate = [(RouteOverviewCell *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(RouteOverviewCell *)self delegate];
    [delegate2 didTapAutomaticSharingButtonForRouteOverviewCell:self];
  }
}

- (void)_didTapDetailsButton:(id)button
{
  delegate = [(RouteOverviewCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(RouteOverviewCell *)self delegate];
    [delegate2 didTapDetailsButtonForRouteOverviewCell:self];
  }
}

- (void)_didTapPrimaryActionButton:(id)button
{
  delegate = [(RouteOverviewCell *)self delegate];
  [delegate didTapRideBookingActionForRouteOverviewCell:self];
}

- (void)_updateColorsForSelection
{
  if (sub_10000FA08(self) == 5 && ([(RouteOverviewCell *)self isSelectionBackgroundVisible]|| ([(RouteOverviewCell *)self isHighlighted]& 1) != 0 || [(RouteOverviewCell *)self isFocused]))
  {
    v3 = +[UIColor systemWhiteColor];
    [(UIButton *)self->_detailsButton setTintColor:v3];

    v4 = +[UIColor systemWhiteColor];
    [(UILabel *)self->_primaryLabel setTextColor:v4];

    v5 = +[UIColor systemWhiteColor];
    [(MapsThemeMultiPartLabel *)self->_secondaryLabel setTextColor:v5];

    v6 = +[UIColor systemWhiteColor];
    routeDescriptionLabel = [(RouteOverviewCell *)self routeDescriptionLabel];
    [routeDescriptionLabel setTextColor:v6];

    v8 = +[UIColor systemWhiteColor];
    [(UILabel *)self->_tertiaryLabel setTextColor:v8];

    advisoriesView = self->_advisoriesView;
    v10 = +[UIColor systemWhiteColor];
    [(RouteAdvisoriesView *)advisoriesView setOverrideTextColor:v10 isSelected:1];

    v11 = +[UIColor systemWhiteColor];
    [(TransitArtworkListView *)self->_artworkList setOverrideTintColor:v11];

    elevationGraphView = self->_elevationGraphView;

    [(DirectionsElevationGraphView *)elevationGraphView setSelected:1];
  }

  else
  {
    if (sub_10000FA08(self) == 5)
    {
      v13 = +[UIColor tertiaryLabelColor];
      [(UIButton *)self->_detailsButton setTintColor:v13];

      [(TransitArtworkListView *)self->_artworkList setOverrideTintColor:0];
      [(DirectionsElevationGraphView *)self->_elevationGraphView setSelected:0];
    }

    v14 = +[UIColor labelColor];
    [(UILabel *)self->_primaryLabel setTextColor:v14];

    v15 = +[UIColor secondaryLabelColor];
    [(MapsThemeMultiPartLabel *)self->_secondaryLabel setTextColor:v15];

    v16 = +[UIColor secondaryLabelColor];
    [(MapsThemeMultiPartLabel *)self->_routeDescriptionLabel setTextColor:v16];

    v17 = +[UIColor labelColor];
    [(UILabel *)self->_tertiaryLabel setTextColor:v17];

    v18 = self->_advisoriesView;

    [(RouteAdvisoriesView *)v18 setOverrideTextColor:0 isSelected:0];
  }
}

- (void)_updateConstraintsForArtworkListVisible:(BOOL)visible elevationGraphViewVisible:(BOOL)viewVisible advisoriesViewVisible:(BOOL)advisoriesViewVisible tertiaryLabelVisible:(BOOL)labelVisible detailsButtonVisible:(BOOL)buttonVisible
{
  advisoriesViewVisibleCopy = advisoriesViewVisible;
  buttonVisibleCopy = buttonVisible;
  labelVisibleCopy = labelVisible;
  viewVisibleCopy = viewVisible;
  visibleCopy = visible;
  tertiaryLabelConstraints = [(RouteOverviewCell *)self tertiaryLabelConstraints];
  [NSLayoutConstraint deactivateConstraints:tertiaryLabelConstraints];

  artworkListConstraints = [(RouteOverviewCell *)self artworkListConstraints];
  [NSLayoutConstraint deactivateConstraints:artworkListConstraints];

  elevationGraphViewConstraints = [(RouteOverviewCell *)self elevationGraphViewConstraints];
  [NSLayoutConstraint deactivateConstraints:elevationGraphViewConstraints];

  detailsButtonConstraints = [(RouteOverviewCell *)self detailsButtonConstraints];
  [NSLayoutConstraint deactivateConstraints:detailsButtonConstraints];

  advisoriesViewConstraints = [(RouteOverviewCell *)self advisoriesViewConstraints];
  [NSLayoutConstraint deactivateConstraints:advisoriesViewConstraints];

  routeDescriptionLabelConstraints = [(RouteOverviewCell *)self routeDescriptionLabelConstraints];
  [NSLayoutConstraint deactivateConstraints:routeDescriptionLabelConstraints];

  contentBottomConstraint = [(RouteOverviewCell *)self contentBottomConstraint];
  [contentBottomConstraint setActive:0];

  v162 = +[NSMutableArray array];
  v17 = sub_10000FA08(self);
  secondaryLabel = [(RouteOverviewCell *)self secondaryLabel];
  v19 = secondaryLabel;
  if (v17 == 5)
  {
    [secondaryLabel lastBaselineAnchor];
  }

  else
  {
    [secondaryLabel bottomAnchor];
  }
  v20 = ;

  if ([(RouteOverviewCell *)self isRouteDescritptionLabelVisible])
  {
    if (sub_10000FA08(self) == 5)
    {
      v21 = 5.0;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = +[NSMutableArray array];
    routeDescriptionLabel = [(RouteOverviewCell *)self routeDescriptionLabel];
    leadingAnchor = [routeDescriptionLabel leadingAnchor];
    contentGuide = [(RouteOverviewCell *)self contentGuide];
    leadingAnchor2 = [contentGuide leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v22 addObject:v27];

    routeDescriptionLabel2 = [(RouteOverviewCell *)self routeDescriptionLabel];
    trailingAnchor = [routeDescriptionLabel2 trailingAnchor];
    labelTrailingToGoButtonLeadingLayoutGuide = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
    leadingAnchor3 = [labelTrailingToGoButtonLeadingLayoutGuide leadingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
    [v22 addObject:v32];

    routeDescriptionLabel3 = [(RouteOverviewCell *)self routeDescriptionLabel];
    topAnchor = [routeDescriptionLabel3 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:v20];
    v36 = [DynamicTypeWizard autoscaledConstraint:v35 constant:&stru_10165D908 withFontProvider:v21];
    [v22 addObject:v36];

    v37 = sub_10000FA08(self);
    routeDescriptionLabel4 = [(RouteOverviewCell *)self routeDescriptionLabel];
    v39 = routeDescriptionLabel4;
    if (v37 == 5)
    {
      [routeDescriptionLabel4 lastBaselineAnchor];
    }

    else
    {
      [routeDescriptionLabel4 bottomAnchor];
    }
    v41 = ;

    [(RouteOverviewCell *)self setRouteDescriptionLabelConstraints:v22];
    routeDescriptionLabelConstraints2 = [(RouteOverviewCell *)self routeDescriptionLabelConstraints];
    [v162 addObjectsFromArray:routeDescriptionLabelConstraints2];

    v20 = v41;
    if (labelVisibleCopy)
    {
LABEL_15:
      v43 = +[NSMutableArray array];
      tertiaryLabel = [(RouteOverviewCell *)self tertiaryLabel];
      leadingAnchor4 = [tertiaryLabel leadingAnchor];
      contentGuide2 = [(RouteOverviewCell *)self contentGuide];
      leadingAnchor5 = [contentGuide2 leadingAnchor];
      v48 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
      [v43 addObject:v48];

      tertiaryLabel2 = [(RouteOverviewCell *)self tertiaryLabel];
      trailingAnchor2 = [tertiaryLabel2 trailingAnchor];
      labelTrailingToGoButtonLeadingLayoutGuide2 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
      leadingAnchor6 = [labelTrailingToGoButtonLeadingLayoutGuide2 leadingAnchor];
      v53 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor6];
      [v43 addObject:v53];

      tertiaryLabel3 = [(RouteOverviewCell *)self tertiaryLabel];
      topAnchor2 = [tertiaryLabel3 topAnchor];
      v56 = [topAnchor2 constraintEqualToAnchor:v20];
      v57 = [DynamicTypeWizard autoscaledConstraint:v56 constant:&stru_10165D908 withFontProvider:0.0];
      [v43 addObject:v57];

      tertiaryLabel4 = [(RouteOverviewCell *)self tertiaryLabel];
      bottomAnchor = [tertiaryLabel4 bottomAnchor];

      [(RouteOverviewCell *)self setTertiaryLabelConstraints:v43];
      tertiaryLabelConstraints2 = [(RouteOverviewCell *)self tertiaryLabelConstraints];
      [v162 addObjectsFromArray:tertiaryLabelConstraints2];

      v20 = bottomAnchor;
      if (visibleCopy)
      {
        goto LABEL_16;
      }

LABEL_12:
      [(RouteOverviewCell *)self setArtworkListConstraints:0];
      v40 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      goto LABEL_17;
    }
  }

  else
  {
    [(RouteOverviewCell *)self setRouteDescriptionLabelConstraints:0];
    if (labelVisibleCopy)
    {
      goto LABEL_15;
    }
  }

  [(RouteOverviewCell *)self setTertiaryLabelConstraints:0];
  if (!visibleCopy)
  {
    goto LABEL_12;
  }

LABEL_16:
  v40 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v61 = +[NSMutableArray array];
  artworkList = [(RouteOverviewCell *)self artworkList];
  leadingAnchor7 = [artworkList leadingAnchor];
  contentGuide3 = [(RouteOverviewCell *)self contentGuide];
  leadingAnchor8 = [contentGuide3 leadingAnchor];
  v66 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v61 addObject:v66];

  artworkList2 = [(RouteOverviewCell *)self artworkList];
  trailingAnchor3 = [artworkList2 trailingAnchor];
  labelTrailingToGoButtonLeadingLayoutGuide3 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  leadingAnchor9 = [labelTrailingToGoButtonLeadingLayoutGuide3 leadingAnchor];
  v71 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor9];
  [v61 addObject:v71];

  artworkList3 = [(RouteOverviewCell *)self artworkList];
  topAnchor3 = [artworkList3 topAnchor];
  v74 = [topAnchor3 constraintEqualToAnchor:v20 constant:10.0];
  [v61 addObject:v74];

  artworkList4 = [(RouteOverviewCell *)self artworkList];
  bottomAnchor2 = [artworkList4 bottomAnchor];

  [(RouteOverviewCell *)self setArtworkListConstraints:v61];
  artworkListConstraints2 = [(RouteOverviewCell *)self artworkListConstraints];
  [v162 addObjectsFromArray:artworkListConstraints2];

  v20 = bottomAnchor2;
LABEL_17:
  if (viewVisibleCopy)
  {
    array = [v40[297] array];
    elevationGraphView = [(RouteOverviewCell *)self elevationGraphView];
    leadingAnchor10 = [elevationGraphView leadingAnchor];
    contentGuide4 = [(RouteOverviewCell *)self contentGuide];
    leadingAnchor11 = [contentGuide4 leadingAnchor];
    v83 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
    [array addObject:v83];

    v84 = sub_10000FA08(self);
    elevationGraphView2 = [(RouteOverviewCell *)self elevationGraphView];
    v86 = elevationGraphView2;
    if (v84 == 5)
    {
      trailingAnchor4 = [elevationGraphView2 trailingAnchor];
      contentGuide5 = [(RouteOverviewCell *)self contentGuide];
      trailingAnchor5 = [contentGuide5 trailingAnchor];
      v90 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
      [array addObject:v90];
    }

    else
    {
      trailingAnchor4 = [elevationGraphView2 widthAnchor];
      contentGuide5 = [trailingAnchor4 constraintEqualToConstant:80.0];
      [array addObject:contentGuide5];
    }

    elevationGraphView3 = [(RouteOverviewCell *)self elevationGraphView];
    topAnchor4 = [elevationGraphView3 topAnchor];
    v93 = [topAnchor4 constraintEqualToAnchor:v20 constant:10.0];
    [array addObject:v93];

    elevationGraphView4 = [(RouteOverviewCell *)self elevationGraphView];
    heightAnchor = [elevationGraphView4 heightAnchor];
    v96 = [heightAnchor constraintEqualToConstant:25.0];
    [array addObject:v96];

    elevationGraphView5 = [(RouteOverviewCell *)self elevationGraphView];
    bottomAnchor3 = [elevationGraphView5 bottomAnchor];

    [(RouteOverviewCell *)self setElevationGraphViewConstraints:array];
    elevationGraphViewConstraints2 = [(RouteOverviewCell *)self elevationGraphViewConstraints];
    [v162 addObjectsFromArray:elevationGraphViewConstraints2];

    v20 = bottomAnchor3;
  }

  else
  {
    [(RouteOverviewCell *)self setElevationGraphViewConstraints:0];
  }

  if (advisoriesViewVisibleCopy)
  {
    array2 = [v40[297] array];
    advisoriesView = [(RouteOverviewCell *)self advisoriesView];
    leadingAnchor12 = [advisoriesView leadingAnchor];
    contentGuide6 = [(RouteOverviewCell *)self contentGuide];
    leadingAnchor13 = [contentGuide6 leadingAnchor];
    v105 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
    [array2 addObject:v105];

    traitCollection = [(RouteOverviewCell *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    advisoriesView2 = [(RouteOverviewCell *)self advisoriesView];
    trailingAnchor6 = [advisoriesView2 trailingAnchor];
    if (userInterfaceIdiom == 5)
    {
      contentGuide7 = [(RouteOverviewCell *)self contentGuide];
      [contentGuide7 trailingAnchor];
    }

    else
    {
      contentGuide7 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
      [contentGuide7 leadingAnchor];
    }
    v111 = ;
    v112 = [trailingAnchor6 constraintEqualToAnchor:v111];
    [array2 addObject:v112];

    if (sub_10000FA08(self) == 5)
    {
      v113 = 10.0;
    }

    else
    {
      v113 = 6.0;
    }

    advisoriesView3 = [(RouteOverviewCell *)self advisoriesView];
    topAnchor5 = [advisoriesView3 topAnchor];
    v116 = [topAnchor5 constraintEqualToAnchor:v20 constant:v113];
    [array2 addObject:v116];

    advisoriesView4 = [(RouteOverviewCell *)self advisoriesView];
    bottomAnchor4 = [advisoriesView4 bottomAnchor];

    [(RouteOverviewCell *)self setAdvisoriesViewConstraints:array2];
    advisoriesViewConstraints2 = [(RouteOverviewCell *)self advisoriesViewConstraints];
    [v162 addObjectsFromArray:advisoriesViewConstraints2];

    v20 = bottomAnchor4;
  }

  else
  {
    [(RouteOverviewCell *)self setAdvisoriesViewConstraints:0];
  }

  if (buttonVisibleCopy)
  {
    array3 = [v40[297] array];
    traitCollection2 = [(RouteOverviewCell *)self traitCollection];
    userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

    detailsButton = [(RouteOverviewCell *)self detailsButton];
    leadingAnchor14 = [detailsButton leadingAnchor];
    if (userInterfaceIdiom2 == 5)
    {
      labelTrailingToGoButtonLeadingLayoutGuide4 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
      leadingAnchor15 = [labelTrailingToGoButtonLeadingLayoutGuide4 leadingAnchor];
      v127 = [leadingAnchor14 constraintGreaterThanOrEqualToAnchor:leadingAnchor15];
      [array3 addObject:v127];

      detailsButton2 = [(RouteOverviewCell *)self detailsButton];
      trailingAnchor7 = [detailsButton2 trailingAnchor];
      contentGuide8 = [(RouteOverviewCell *)self contentGuide];
      trailingAnchor8 = [contentGuide8 trailingAnchor];
      v132 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
      [array3 addObject:v132];

      detailsButton3 = [(RouteOverviewCell *)self detailsButton];
      firstBaselineAnchor = [detailsButton3 firstBaselineAnchor];
      firstBaselineAnchor2 = [(UILabel *)self->_primaryLabel firstBaselineAnchor];
      v136 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
      [array3 addObject:v136];
    }

    else
    {
      contentGuide9 = [(RouteOverviewCell *)self contentGuide];
      leadingAnchor16 = [contentGuide9 leadingAnchor];
      v139 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor16];
      [array3 addObject:v139];

      detailsButton4 = [(RouteOverviewCell *)self detailsButton];
      trailingAnchor9 = [detailsButton4 trailingAnchor];
      contentGuide10 = [(RouteOverviewCell *)self contentGuide];
      trailingAnchor10 = [contentGuide10 trailingAnchor];
      v144 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:trailingAnchor10];
      [array3 addObject:v144];

      detailsButton5 = [(RouteOverviewCell *)self detailsButton];
      topAnchor6 = [detailsButton5 topAnchor];
      goButton = [(RouteOverviewCell *)self goButton];
      bottomAnchor5 = [goButton bottomAnchor];
      v149 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:bottomAnchor5];
      [array3 addObject:v149];

      detailsButton6 = [(RouteOverviewCell *)self detailsButton];
      firstBaselineAnchor3 = [detailsButton6 firstBaselineAnchor];
      v152 = [firstBaselineAnchor3 constraintGreaterThanOrEqualToAnchor:v20];
      v153 = [DynamicTypeWizard autoscaledConstraint:v152 constant:&stru_10165D908 withFontProvider:32.0];
      [array3 addObject:v153];

      detailsButton3 = [(RouteOverviewCell *)self detailsButton];
      [detailsButton3 lastBaselineAnchor];
      v20 = firstBaselineAnchor = v20;
    }

    [(RouteOverviewCell *)self setDetailsButtonConstraints:array3];
    detailsButtonConstraints2 = [(RouteOverviewCell *)self detailsButtonConstraints];
    [v162 addObjectsFromArray:detailsButtonConstraints2];
  }

  else
  {
    [(RouteOverviewCell *)self setDetailsButtonConstraints:0];
  }

  contentGuide11 = [(RouteOverviewCell *)self contentGuide];
  bottomAnchor6 = [contentGuide11 bottomAnchor];
  v157 = [bottomAnchor6 constraintEqualToAnchor:v20];
  [(RouteOverviewCell *)self setContentBottomConstraint:v157];

  contentBottomConstraint2 = [(RouteOverviewCell *)self contentBottomConstraint];
  [v162 addObject:contentBottomConstraint2];

  [NSLayoutConstraint activateConstraints:v162];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = RouteOverviewCell;
  [(RouteOverviewCell *)&v3 updateConstraints];
  [(RouteOverviewCell *)self _updateConstraintsForArtworkListVisible:[(RouteOverviewCell *)self isArtworkListVisible] elevationGraphViewVisible:[(RouteOverviewCell *)self isElevationGraphViewVisible] advisoriesViewVisible:[(RouteOverviewCell *)self isAdvisoriesViewVisible] tertiaryLabelVisible:[(RouteOverviewCell *)self isTertiaryLabelVisible] detailsButtonVisible:[(RouteOverviewCell *)self isDetailsButtonVisible]];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  if ([(RouteOverviewCell *)self isArtworkListVisible])
  {
    [(RouteOverviewCell *)self bounds];
    [(RouteOverviewCell *)self setBounds:?];
  }

  [(RouteOverviewCell *)self layoutIfNeeded];
  v14.receiver = self;
  v14.super_class = RouteOverviewCell;
  *&v10 = priority;
  *&v11 = fittingPriority;
  [(RouteOverviewCell *)&v14 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"_didTapPrimaryActionButton:"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = RouteOverviewCell;
  [(RouteOverviewCell *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  previouslyFocusedView = [contextCopy previouslyFocusedView];
  if (previouslyFocusedView == self || ([contextCopy nextFocusedView], v9 = objc_claimAutoreleasedReturnValue(), v4 = v9, v9 == self))
  {
    previouslyFocusedView2 = [contextCopy previouslyFocusedView];
    nextFocusedView = [contextCopy nextFocusedView];

    if (previouslyFocusedView != self)
    {
    }

    if (previouslyFocusedView2 != nextFocusedView)
    {
      [(RouteOverviewCell *)self _updateColorsForSelection];
    }
  }

  else
  {
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = RouteOverviewCell;
  [(RouteOverviewCell *)&v4 setHighlighted:highlighted];
  [(RouteOverviewCell *)self _updateColorsForSelection];
}

- (void)setOverrideCellGrouping:(int64_t)grouping
{
  if (self->_overrideCellGrouping != grouping)
  {
    self->_overrideCellGrouping = grouping;
    _resolvedGrouping = [(RouteOverviewCell *)self _resolvedGrouping];

    [(RouteOverviewCell *)self _setBackgroundViewConfigurationGrouping:_resolvedGrouping];
  }
}

- (void)setSelectionBackgroundVisible:(BOOL)visible
{
  if (self->_selectionBackgroundVisible != visible)
  {
    self->_selectionBackgroundVisible = visible;
    [(RouteOverviewCell *)self _updateColorsForSelection];

    [(RouteOverviewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setHasSelectedStep:(BOOL)step
{
  if (self->_hasSelectedStep != step)
  {
    self->_hasSelectedStep = step;
    [(RouteOverviewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setDetailsButtonVisible:(BOOL)visible
{
  if (self->_detailsButtonVisible != visible)
  {
    visibleCopy = visible;
    self->_detailsButtonVisible = visible;
    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setEnabled:?];
    [(UIButton *)self->_detailsButton setHidden:!visibleCopy];

    [(RouteOverviewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateStepsButtonWidthConstraint
{
  if (self->_buttonVisibility == 3)
  {
    [(NSLayoutConstraint *)self->_stepsButtonMinWidthConstraint setConstant:64.0];
    stepsButtonMaxWidthConstraint = self->_stepsButtonMaxWidthConstraint;

    [(NSLayoutConstraint *)stepsButtonMaxWidthConstraint setConstant:80.0];
  }
}

- (void)_updateGoButtonWidthConstraint
{
  if (self->_buttonVisibility == 1)
  {
    if (qword_10195FA38 != -1)
    {
      dispatch_once(&qword_10195FA38, &stru_101661948);
    }

    titleLabel = [(MapsProgressBarButton *)self->_goButton titleLabel];
    text = [titleLabel text];

    goButtonFontProvider = [objc_opt_class() goButtonFontProvider];
    v6 = goButtonFontProvider[2]();

    [v6 pointSize];
    v8 = [NSString stringWithFormat:@"%@%f", text, v7];
    v9 = [qword_10195FA30 objectForKey:v8];
    v10 = v9;
    if (v9)
    {
      [v9 floatValue];
      v12 = v11;
    }

    else
    {
      v20 = NSFontAttributeName;
      v13 = +[UIFont system20Bold];
      v21 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [text sizeWithAttributes:v14];
      v16 = v15;

      v12 = fmax(fmin(v16 + 12.0, 72.0), 64.0);
      v17 = qword_10195FA30;
      v18 = [NSNumber numberWithDouble:v12];
      [v17 setObject:v18 forKey:v8];
    }

    goButtonWidthConstraint = [(RouteOverviewCell *)self goButtonWidthConstraint];
    [goButtonWidthConstraint setConstant:v12];
  }
}

- (void)_resetBookButtonTitle
{
  bookButton = [(RouteOverviewCell *)self bookButton];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Book [Route Planning]" value:@"localized string not found" table:0];
  localizedUppercaseString = [v3 localizedUppercaseString];
  [bookButton setTitle:localizedUppercaseString forState:0];
}

- (void)_reloadElevationChart
{
  [(DirectionsElevationGraphView *)self->_elevationGraphView removeFromSuperview];
  elevationGraphView = self->_elevationGraphView;
  self->_elevationGraphView = 0;

  contentView = [(RouteOverviewCell *)self contentView];
  elevationGraphView = [(RouteOverviewCell *)self elevationGraphView];
  [contentView addSubview:elevationGraphView];

  LOBYTE(elevationGraphView) = self->_elevationGraphViewVisible;
  elevationGraphView2 = [(RouteOverviewCell *)self elevationGraphView];
  [elevationGraphView2 setHidden:(elevationGraphView & 1) == 0];

  [(RouteOverviewCell *)self setNeedsUpdateConstraints];
}

- (void)setGoButtonProgressVisible:(BOOL)visible
{
  visibleCopy = visible;
  goButton = [(RouteOverviewCell *)self goButton];
  [goButton setProgressionHidden:!visibleCopy];
}

- (void)setGoButtonProgress:(double)progress
{
  goButton = [(RouteOverviewCell *)self goButton];
  [goButton setProgress:progress];
}

- (BOOL)isGoButtonProgressVisible
{
  goButton = [(RouteOverviewCell *)self goButton];
  progressionHidden = [goButton progressionHidden];

  return progressionHidden ^ 1;
}

- (double)goButtonProgress
{
  goButton = [(RouteOverviewCell *)self goButton];
  [goButton progress];
  v4 = v3;

  return v4;
}

- (void)setBookButtonTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy length])
  {
    bookButton = [(RouteOverviewCell *)self bookButton];
    localizedUppercaseString = [titleCopy localizedUppercaseString];
    [bookButton setTitle:localizedUppercaseString forState:0];
  }

  else
  {
    [(RouteOverviewCell *)self _resetBookButtonTitle];
  }
}

- (void)_updateButtonVisibility
{
  buttonVisibility = self->_buttonVisibility;
  if (buttonVisibility > 1)
  {
    if (buttonVisibility == 2)
    {
      noButtonLeadingConstraint = [(RouteOverviewCell *)self noButtonLeadingConstraint];
      [noButtonLeadingConstraint setActive:0];

      goButtonLeadingConstraint = [(RouteOverviewCell *)self goButtonLeadingConstraint];
      [goButtonLeadingConstraint setActive:0];

      stepsButtonLeadingConstraint = [(RouteOverviewCell *)self stepsButtonLeadingConstraint];
      [stepsButtonLeadingConstraint setActive:0];

      bookButtonLeadingConstraint = [(RouteOverviewCell *)self bookButtonLeadingConstraint];
      v6 = 1;
      [bookButtonLeadingConstraint setActive:1];

      goButtonWidthConstraint = [(RouteOverviewCell *)self goButtonWidthConstraint];
      [goButtonWidthConstraint setConstant:0.0];

      goButton = [(RouteOverviewCell *)self goButton];
      [goButton setHidden:1];

      stepsButton = [(RouteOverviewCell *)self stepsButton];
      [stepsButton setHidden:1];

      bookButton = [(RouteOverviewCell *)self bookButton];
      [bookButton setHidden:0];
    }

    else
    {
      if (buttonVisibility != 3)
      {
        return;
      }

      goButton2 = [(RouteOverviewCell *)self goButton];
      v6 = 1;
      [goButton2 setHidden:1];

      stepsButton2 = [(RouteOverviewCell *)self stepsButton];
      [stepsButton2 setHidden:0];

      bookButton2 = [(RouteOverviewCell *)self bookButton];
      [bookButton2 setHidden:1];

      noButtonLeadingConstraint2 = [(RouteOverviewCell *)self noButtonLeadingConstraint];
      [noButtonLeadingConstraint2 setActive:0];

      goButtonLeadingConstraint2 = [(RouteOverviewCell *)self goButtonLeadingConstraint];
      [goButtonLeadingConstraint2 setActive:0];

      stepsButtonLeadingConstraint2 = [(RouteOverviewCell *)self stepsButtonLeadingConstraint];
      [stepsButtonLeadingConstraint2 setActive:1];

      bookButtonLeadingConstraint2 = [(RouteOverviewCell *)self bookButtonLeadingConstraint];
      [bookButtonLeadingConstraint2 setActive:0];

      [(RouteOverviewCell *)self _updateGoButtonWidthConstraint];
      [(RouteOverviewCell *)self _updateStepsButtonWidthConstraint];
    }
  }

  else if (buttonVisibility)
  {
    if (buttonVisibility != 1)
    {
      return;
    }

    goButton3 = [(RouteOverviewCell *)self goButton];
    [goButton3 setHidden:0];

    stepsButton3 = [(RouteOverviewCell *)self stepsButton];
    v6 = 1;
    [stepsButton3 setHidden:1];

    bookButton3 = [(RouteOverviewCell *)self bookButton];
    [bookButton3 setHidden:1];

    noButtonLeadingConstraint3 = [(RouteOverviewCell *)self noButtonLeadingConstraint];
    [noButtonLeadingConstraint3 setActive:0];

    goButtonLeadingConstraint3 = [(RouteOverviewCell *)self goButtonLeadingConstraint];
    [goButtonLeadingConstraint3 setActive:1];

    stepsButtonLeadingConstraint3 = [(RouteOverviewCell *)self stepsButtonLeadingConstraint];
    [stepsButtonLeadingConstraint3 setActive:0];

    bookButtonLeadingConstraint3 = [(RouteOverviewCell *)self bookButtonLeadingConstraint];
    [bookButtonLeadingConstraint3 setActive:0];

    [(RouteOverviewCell *)self _updateGoButtonWidthConstraint];
  }

  else
  {
    goButton4 = [(RouteOverviewCell *)self goButton];
    [goButton4 setHidden:1];

    stepsButton4 = [(RouteOverviewCell *)self stepsButton];
    [stepsButton4 setHidden:1];

    bookButton4 = [(RouteOverviewCell *)self bookButton];
    [bookButton4 setHidden:1];

    noButtonLeadingConstraint4 = [(RouteOverviewCell *)self noButtonLeadingConstraint];
    [noButtonLeadingConstraint4 setActive:1];

    goButtonLeadingConstraint4 = [(RouteOverviewCell *)self goButtonLeadingConstraint];
    [goButtonLeadingConstraint4 setActive:0];

    stepsButtonLeadingConstraint4 = [(RouteOverviewCell *)self stepsButtonLeadingConstraint];
    [stepsButtonLeadingConstraint4 setActive:0];

    bookButtonLeadingConstraint4 = [(RouteOverviewCell *)self bookButtonLeadingConstraint];
    [bookButtonLeadingConstraint4 setActive:0];

    goButtonWidthConstraint2 = [(RouteOverviewCell *)self goButtonWidthConstraint];
    [goButtonWidthConstraint2 setConstant:0.0];

    stepsButtonMinWidthConstraint = [(RouteOverviewCell *)self stepsButtonMinWidthConstraint];
    [stepsButtonMinWidthConstraint setConstant:0.0];

    stepsButtonMaxWidthConstraint = [(RouteOverviewCell *)self stepsButtonMaxWidthConstraint];
    [stepsButtonMaxWidthConstraint setConstant:0.0];

    v6 = 0;
  }

  labelTrailingToPrimaryButtonLeadingPaddingConstraint = [(RouteOverviewCell *)self labelTrailingToPrimaryButtonLeadingPaddingConstraint];
  [labelTrailingToPrimaryButtonLeadingPaddingConstraint setActive:v6];
}

- (void)setButtonVisibility:(unint64_t)visibility
{
  traitCollection = [(RouteOverviewCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    visibilityCopy = 0;
  }

  else
  {
    visibilityCopy = visibility;
  }

  if (self->_buttonVisibility != visibilityCopy)
  {
    self->_buttonVisibility = visibilityCopy;

    [(RouteOverviewCell *)self _updateButtonVisibility];
  }
}

- (void)setAdvisoriesViewVisible:(BOOL)visible
{
  if (self->_advisoriesViewVisible != visible)
  {
    self->_advisoriesViewVisible = visible;
    [(RouteAdvisoriesView *)self->_advisoriesView setHidden:!visible];

    [(RouteOverviewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setElevationGraphViewVisible:(BOOL)visible
{
  if (self->_elevationGraphViewVisible != visible)
  {
    self->_elevationGraphViewVisible = visible;
    [(DirectionsElevationGraphView *)self->_elevationGraphView setHidden:!visible];

    [(RouteOverviewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setArtworkListVisible:(BOOL)visible
{
  if (self->_artworkListVisible != visible)
  {
    self->_artworkListVisible = visible;
    [(TransitArtworkListView *)self->_artworkList setHidden:!visible];

    [(RouteOverviewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setRouteDescritptionLabelVisible:(BOOL)visible
{
  if (self->_routeDescritptionLabelVisible != visible)
  {
    self->_routeDescritptionLabelVisible = visible;
    [(MapsThemeMultiPartLabel *)self->_routeDescriptionLabel setHidden:!visible];

    [(RouteOverviewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setTertiaryLabelVisible:(BOOL)visible
{
  if (self->_tertiaryLabelVisible != visible)
  {
    self->_tertiaryLabelVisible = visible;
    [(UILabel *)self->_tertiaryLabel setHidden:!visible];

    [(RouteOverviewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)_setDetailsButtonRotated:(BOOL)rotated animated:(BOOL)animated
{
  animatedCopy = animated;
  rotatedCopy = rotated;
  self->_detailsButtonRotated = rotated;
  [(RouteOverviewCell *)self _setBackgroundViewConfigurationGrouping:[(RouteOverviewCell *)self _resolvedGrouping]];
  traitCollection = [(RouteOverviewCell *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  memset(&v15, 0, sizeof(v15));
  if (rotatedCopy)
  {
    CGAffineTransformMakeRotation(&v15, dbl_101212BC0[layoutDirection == 0]);
    if (!animatedCopy)
    {
LABEL_3:
      v12 = v15;
      detailsButton = [(RouteOverviewCell *)self detailsButton];
      v11 = v12;
      [detailsButton setTransform:&v11];

      return;
    }
  }

  else
  {
    v10 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v10;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    if (!animatedCopy)
    {
      goto LABEL_3;
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v14 = v15;
  v13[2] = sub_1010085C8;
  v13[3] = &unk_101661928;
  v13[4] = self;
  [UIView animateWithDuration:v13 animations:0.1];
}

- (void)setDetailsButtonRotated:(BOOL)rotated animated:(BOOL)animated
{
  animatedCopy = animated;
  if (rotated)
  {
    traitCollection = [(RouteOverviewCell *)self traitCollection];
    v7 = [traitCollection userInterfaceIdiom] == 5;
  }

  else
  {
    v7 = 0;
  }

  if (self->_detailsButtonRotated != v7)
  {

    [(RouteOverviewCell *)self _setDetailsButtonRotated:v7 animated:animatedCopy];
  }
}

- (UIButton)detailsButton
{
  detailsButton = self->_detailsButton;
  if (!detailsButton)
  {
    if (sub_10000FA08(self) == 5)
    {
      v4 = [UIButton buttonWithType:0];
      v5 = self->_detailsButton;
      self->_detailsButton = v4;

      if ([(RouteOverviewCell *)self isSelectionBackgroundVisible])
      {
        +[UIColor systemWhiteColor];
      }

      else
      {
        +[UIColor tertiaryLabelColor];
      }
      v15 = ;
      [(UIButton *)self->_detailsButton setTintColor:v15];

      v16 = self->_detailsButton;
      v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
      v18 = [UIImageSymbolConfiguration configurationWithFont:v17];
      v19 = [UIImage systemImageNamed:@"chevron.forward.circle.fill" withConfiguration:v18];
      [(UIButton *)v16 setImage:v19 forState:0];

      LODWORD(v20) = 1148846080;
      [(UIButton *)self->_detailsButton setContentHuggingPriority:0 forAxis:v20];
      LODWORD(v21) = 1148846080;
      [(UIButton *)self->_detailsButton setContentCompressionResistancePriority:0 forAxis:v21];
      [(RouteOverviewCell *)self setDetailsButtonRotated:self->_detailsButtonRotated animated:0];
    }

    else
    {
      v6 = [UIButton buttonWithType:1];
      v7 = self->_detailsButton;
      self->_detailsButton = v6;

      titleLabel = [(UIButton *)self->_detailsButton titleLabel];
      [titleLabel setAdjustsFontSizeToFitWidth:1];

      titleLabel2 = [(UIButton *)self->_detailsButton titleLabel];
      [titleLabel2 setMinimumScaleFactor:0.600000024];

      titleLabel3 = [(UIButton *)self->_detailsButton titleLabel];
      [titleLabel3 setLineBreakMode:4];

      titleLabel4 = [(UIButton *)self->_detailsButton titleLabel];
      [DynamicTypeWizard autorefreshLabel:titleLabel4 withFontProvider:&stru_10165D908];

      v12 = self->_detailsButton;
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"Details [RouteOverviewCell]" value:@"localized string not found" table:0];
      [(UIButton *)v12 setTitle:v14 forState:0];
    }

    [(UIButton *)self->_detailsButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v22) = 1148846080;
    [(UIButton *)self->_detailsButton setContentHuggingPriority:1 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIButton *)self->_detailsButton setContentCompressionResistancePriority:1 forAxis:v23];
    [(UIButton *)self->_detailsButton addTarget:self action:"_didTapDetailsButton:" forControlEvents:64];
    [(UIButton *)self->_detailsButton setAccessibilityIdentifier:@"DetailsButton"];
    detailsButton = self->_detailsButton;
  }

  return detailsButton;
}

- (RouteAdvisoriesView)advisoriesView
{
  advisoriesView = self->_advisoriesView;
  if (!advisoriesView)
  {
    v4 = objc_alloc_init(RouteAdvisoriesView);
    [(RouteAdvisoriesView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1144750080;
    [(RouteAdvisoriesView *)v4 setContentHuggingPriority:1 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [(RouteAdvisoriesView *)v4 setContentCompressionResistancePriority:1 forAxis:v6];
    if ([(RouteOverviewCell *)self isSelectionBackgroundVisible])
    {
      v7 = +[UIColor systemWhiteColor];
      [(RouteAdvisoriesView *)v4 setOverrideTextColor:v7 isSelected:1];
    }

    v8 = self->_advisoriesView;
    self->_advisoriesView = v4;

    advisoriesView = self->_advisoriesView;
  }

  return advisoriesView;
}

- (DirectionsElevationGraphView)elevationGraphView
{
  elevationGraphView = self->_elevationGraphView;
  if (!elevationGraphView)
  {
    v4 = [DirectionsElevationGraphConfiguration alloc];
    traitCollection = [(RouteOverviewCell *)self traitCollection];
    v6 = -[DirectionsElevationGraphConfiguration initWithUseType:userInterfaceIdiom:](v4, "initWithUseType:userInterfaceIdiom:", 1, [traitCollection userInterfaceIdiom]);

    v7 = [[DirectionsElevationGraphView alloc] initWithConfiguration:v6];
    [(DirectionsElevationGraphView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1148846080;
    [(DirectionsElevationGraphView *)v7 setContentCompressionResistancePriority:1 forAxis:v8];
    v9 = self->_elevationGraphView;
    self->_elevationGraphView = v7;

    elevationGraphView = self->_elevationGraphView;
  }

  return elevationGraphView;
}

- (TransitArtworkListView)artworkList
{
  artworkList = self->_artworkList;
  if (!artworkList)
  {
    v4 = [[TransitArtworkListView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(TransitArtworkListView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [(TransitArtworkListView *)v4 setVerticalContentHuggingPriority:v5];
    LODWORD(v6) = 1148846080;
    [(TransitArtworkListView *)v4 setVerticalContentCompressionResistancePriority:v6];
    v7 = self->_artworkList;
    self->_artworkList = v4;

    artworkList = self->_artworkList;
  }

  return artworkList;
}

- (UILabel)tertiaryLabel
{
  tertiaryLabel = self->_tertiaryLabel;
  if (!tertiaryLabel)
  {
    v4 = objc_alloc_init(UILabel);
    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4 setNumberOfLines:0];
    LODWORD(v5) = 1148846080;
    [(UILabel *)v4 setContentHuggingPriority:1 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [(UILabel *)v4 setContentCompressionResistancePriority:1 forAxis:v6];
    if ([(RouteOverviewCell *)self isSelectionBackgroundVisible])
    {
      v7 = +[UIColor systemWhiteColor];
      [(UILabel *)v4 setTextColor:v7];
    }

    if (sub_10000FA08(self) == 5)
    {
      v8 = +[UIColor systemWhiteColor];
      [(UILabel *)v4 setHighlightedTextColor:v8];
    }

    v9 = self->_tertiaryLabel;
    self->_tertiaryLabel = v4;
    v10 = v4;

    [(UILabel *)self->_tertiaryLabel setAccessibilityIdentifier:@"TertiaryLabel"];
    tertiaryLabel = self->_tertiaryLabel;
  }

  return tertiaryLabel;
}

- (MapsThemeMultiPartLabel)routeDescriptionLabel
{
  routeDescriptionLabel = self->_routeDescriptionLabel;
  if (!routeDescriptionLabel)
  {
    v4 = objc_alloc_init(MapsThemeMultiPartLabel);
    [(MapsThemeMultiPartLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeMultiPartLabel *)v4 setNumberOfLines:0];
    [(MapsThemeMultiPartLabel *)v4 setUserInteractionEnabled:0];
    secondaryLabelFontProvider = [objc_opt_class() secondaryLabelFontProvider];
    [DynamicTypeWizard autorefreshLabel:v4 withFontProvider:secondaryLabelFontProvider];

    contentView = [(RouteOverviewCell *)self contentView];
    [contentView addSubview:v4];

    v7 = self->_routeDescriptionLabel;
    self->_routeDescriptionLabel = v4;
    v8 = v4;

    v9 = +[UIColor secondaryLabelColor];
    [(MapsThemeMultiPartLabel *)self->_routeDescriptionLabel setTextColor:v9];

    [(MapsThemeMultiPartLabel *)self->_routeDescriptionLabel setTextInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(MapsThemeMultiPartLabel *)self->_routeDescriptionLabel setAccessibilityIdentifier:@"RouteDescriptionLabel"];

    routeDescriptionLabel = self->_routeDescriptionLabel;
  }

  return routeDescriptionLabel;
}

- (int64_t)_resolvedGrouping
{
  if (self->_detailsButtonRotated)
  {
    return 2;
  }

  else
  {
    return [(RouteOverviewCell *)self overrideCellGrouping];
  }
}

- (void)_doubleTap:(id)tap
{
  delegate = [(RouteOverviewCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(RouteOverviewCell *)self delegate];
    [delegate2 didTapDetailsButtonForRouteOverviewCell:self];
  }
}

- (void)_setupConstraints
{
  v3 = objc_alloc_init(UILayoutGuide);
  [(RouteOverviewCell *)self setContentGuide:v3];

  v4 = objc_alloc_init(UILayoutGuide);
  [(RouteOverviewCell *)self setLabelTrailingToGoButtonLeadingLayoutGuide:v4];

  contentView = [(RouteOverviewCell *)self contentView];
  contentGuide = [(RouteOverviewCell *)self contentGuide];
  [contentView addLayoutGuide:contentGuide];

  contentView2 = [(RouteOverviewCell *)self contentView];
  labelTrailingToGoButtonLeadingLayoutGuide = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  [contentView2 addLayoutGuide:labelTrailingToGoButtonLeadingLayoutGuide];

  primaryLabel = [(RouteOverviewCell *)self primaryLabel];
  LODWORD(v10) = 1148846080;
  [primaryLabel setContentHuggingPriority:1 forAxis:v10];

  primaryLabel2 = [(RouteOverviewCell *)self primaryLabel];
  LODWORD(v12) = 1148846080;
  [primaryLabel2 setContentCompressionResistancePriority:1 forAxis:v12];

  secondaryLabel = [(RouteOverviewCell *)self secondaryLabel];
  LODWORD(v14) = 1148846080;
  [secondaryLabel setContentHuggingPriority:1 forAxis:v14];

  secondaryLabel2 = [(RouteOverviewCell *)self secondaryLabel];
  LODWORD(v16) = 1148846080;
  [secondaryLabel2 setContentCompressionResistancePriority:1 forAxis:v16];

  routeDescriptionLabel = [(RouteOverviewCell *)self routeDescriptionLabel];
  LODWORD(v18) = 1148846080;
  [routeDescriptionLabel setContentHuggingPriority:1 forAxis:v18];

  routeDescriptionLabel2 = [(RouteOverviewCell *)self routeDescriptionLabel];
  LODWORD(v20) = 1148846080;
  [routeDescriptionLabel2 setContentCompressionResistancePriority:1 forAxis:v20];

  secondaryLabel3 = [(RouteOverviewCell *)self secondaryLabel];
  topAnchor = [secondaryLabel3 topAnchor];
  primaryLabel3 = [(RouteOverviewCell *)self primaryLabel];
  bottomAnchor = [primaryLabel3 bottomAnchor];
  v25 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  secondaryLabelFontProvider = [objc_opt_class() secondaryLabelFontProvider];
  v27 = [DynamicTypeWizard autoscaledConstraint:v25 constant:secondaryLabelFontProvider withFontProvider:0.0];
  [(RouteOverviewCell *)self setPrimaryToSecondaryLabelConstraint:v27];

  goButton = [(RouteOverviewCell *)self goButton];
  LODWORD(v29) = 1148846080;
  [goButton setContentCompressionResistancePriority:0 forAxis:v29];

  goButton2 = [(RouteOverviewCell *)self goButton];
  LODWORD(v31) = 1148846080;
  [goButton2 setContentHuggingPriority:0 forAxis:v31];

  goButton3 = [(RouteOverviewCell *)self goButton];
  trailingAnchor = [goButton3 trailingAnchor];
  contentGuide2 = [(RouteOverviewCell *)self contentGuide];
  trailingAnchor2 = [contentGuide2 trailingAnchor];
  v207 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  LODWORD(v36) = 1148829696;
  [v207 setPriority:v36];
  stepsButton = [(RouteOverviewCell *)self stepsButton];
  LODWORD(v38) = 1148846080;
  [stepsButton setContentCompressionResistancePriority:0 forAxis:v38];

  stepsButton2 = [(RouteOverviewCell *)self stepsButton];
  LODWORD(v40) = 1148846080;
  [stepsButton2 setContentHuggingPriority:0 forAxis:v40];

  stepsButton3 = [(RouteOverviewCell *)self stepsButton];
  trailingAnchor3 = [stepsButton3 trailingAnchor];
  contentGuide3 = [(RouteOverviewCell *)self contentGuide];
  trailingAnchor4 = [contentGuide3 trailingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  v46 = v45;
  v180 = v45;
  LODWORD(v47) = 1148829696;
  [v45 setPriority:v47];
  bookButton = [(RouteOverviewCell *)self bookButton];
  LODWORD(v49) = 1148846080;
  [bookButton setContentCompressionResistancePriority:0 forAxis:v49];

  bookButton2 = [(RouteOverviewCell *)self bookButton];
  LODWORD(v51) = 1148846080;
  [bookButton2 setContentHuggingPriority:0 forAxis:v51];

  bookButton3 = [(RouteOverviewCell *)self bookButton];
  trailingAnchor5 = [bookButton3 trailingAnchor];
  contentGuide4 = [(RouteOverviewCell *)self contentGuide];
  trailingAnchor6 = [contentGuide4 trailingAnchor];
  v56 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];

  v57 = v56;
  v179 = v56;
  LODWORD(v58) = 1148829696;
  [v56 setPriority:v58];
  contentView3 = [(RouteOverviewCell *)self contentView];
  heightAnchor = [contentView3 heightAnchor];
  [objc_opt_class() minimumHeight];
  v61 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
  minimumHeightConstraint = self->_minimumHeightConstraint;
  self->_minimumHeightConstraint = v61;

  LODWORD(v63) = 1148829696;
  [(NSLayoutConstraint *)self->_minimumHeightConstraint setPriority:v63];
  [objc_opt_class() horizontalContentInset];
  v65 = v64;
  contentGuide5 = [(RouteOverviewCell *)self contentGuide];
  leadingAnchor = [contentGuide5 leadingAnchor];
  contentView4 = [(RouteOverviewCell *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v199 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v65];

  contentGuide6 = [(RouteOverviewCell *)self contentGuide];
  trailingAnchor7 = [contentGuide6 trailingAnchor];
  contentView5 = [(RouteOverviewCell *)self contentView];
  trailingAnchor8 = [contentView5 trailingAnchor];
  v198 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-v65];

  contentGuide7 = [(RouteOverviewCell *)self contentGuide];
  topAnchor2 = [contentGuide7 topAnchor];
  primaryLabel4 = [(RouteOverviewCell *)self primaryLabel];
  topAnchor3 = [primaryLabel4 topAnchor];
  v78 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  [(RouteOverviewCell *)self setContentTopConstraint:v78];

  contentGuide8 = [(RouteOverviewCell *)self contentGuide];
  bottomAnchor2 = [contentGuide8 bottomAnchor];
  secondaryLabel4 = [(RouteOverviewCell *)self secondaryLabel];
  lastBaselineAnchor = [secondaryLabel4 lastBaselineAnchor];
  v83 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  [(RouteOverviewCell *)self setContentBottomConstraint:v83];

  goButton4 = [(RouteOverviewCell *)self goButton];
  widthAnchor = [goButton4 widthAnchor];
  v86 = [widthAnchor constraintEqualToConstant:64.0];
  [(RouteOverviewCell *)self setGoButtonWidthConstraint:v86];

  goButton5 = [(RouteOverviewCell *)self goButton];
  heightAnchor2 = [goButton5 heightAnchor];
  v89 = [heightAnchor2 constraintEqualToConstant:64.0];
  [(RouteOverviewCell *)self setGoButtonHeightConstraint:v89];

  [(RouteOverviewCell *)self _updateGoButtonWidthConstraint];
  stepsButton4 = [(RouteOverviewCell *)self stepsButton];
  widthAnchor2 = [stepsButton4 widthAnchor];
  v92 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:64.0];
  [(RouteOverviewCell *)self setStepsButtonMinWidthConstraint:v92];

  stepsButton5 = [(RouteOverviewCell *)self stepsButton];
  widthAnchor3 = [stepsButton5 widthAnchor];
  v95 = [widthAnchor3 constraintLessThanOrEqualToConstant:80.0];
  [(RouteOverviewCell *)self setStepsButtonMaxWidthConstraint:v95];

  stepsButton6 = [(RouteOverviewCell *)self stepsButton];
  heightAnchor3 = [stepsButton6 heightAnchor];
  v98 = [heightAnchor3 constraintEqualToConstant:64.0];
  [(RouteOverviewCell *)self setStepsButtonHeightConstraint:v98];

  labelTrailingToGoButtonLeadingLayoutGuide2 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  widthAnchor4 = [labelTrailingToGoButtonLeadingLayoutGuide2 widthAnchor];
  v101 = [widthAnchor4 constraintEqualToConstant:15.0];
  [(RouteOverviewCell *)self setLabelTrailingToPrimaryButtonLeadingPaddingConstraint:v101];

  primaryLabelCompanionImageView = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  widthAnchor5 = [primaryLabelCompanionImageView widthAnchor];
  v104 = [widthAnchor5 constraintEqualToConstant:0.0];
  [(RouteOverviewCell *)self setPrimaryCompanionImageWidthConstraint:v104];

  primaryLabel5 = [(RouteOverviewCell *)self primaryLabel];
  leadingAnchor3 = [primaryLabel5 leadingAnchor];
  primaryLabelCompanionImageView2 = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  trailingAnchor9 = [primaryLabelCompanionImageView2 trailingAnchor];
  v109 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor9];
  [(RouteOverviewCell *)self setPrimaryCompanionImageToLabelPaddingConstraint:v109];

  labelTrailingToGoButtonLeadingLayoutGuide3 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  trailingAnchor10 = [labelTrailingToGoButtonLeadingLayoutGuide3 trailingAnchor];
  goButton6 = [(RouteOverviewCell *)self goButton];
  trailingAnchor11 = [goButton6 trailingAnchor];
  v114 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
  [(RouteOverviewCell *)self setNoButtonLeadingConstraint:v114];

  labelTrailingToGoButtonLeadingLayoutGuide4 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  trailingAnchor12 = [labelTrailingToGoButtonLeadingLayoutGuide4 trailingAnchor];
  goButton7 = [(RouteOverviewCell *)self goButton];
  leadingAnchor4 = [goButton7 leadingAnchor];
  v119 = [trailingAnchor12 constraintEqualToAnchor:leadingAnchor4];
  [(RouteOverviewCell *)self setGoButtonLeadingConstraint:v119];

  labelTrailingToGoButtonLeadingLayoutGuide5 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  trailingAnchor13 = [labelTrailingToGoButtonLeadingLayoutGuide5 trailingAnchor];
  stepsButton7 = [(RouteOverviewCell *)self stepsButton];
  leadingAnchor5 = [stepsButton7 leadingAnchor];
  v124 = [trailingAnchor13 constraintEqualToAnchor:leadingAnchor5];
  [(RouteOverviewCell *)self setStepsButtonLeadingConstraint:v124];

  labelTrailingToGoButtonLeadingLayoutGuide6 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  trailingAnchor14 = [labelTrailingToGoButtonLeadingLayoutGuide6 trailingAnchor];
  bookButton4 = [(RouteOverviewCell *)self bookButton];
  leadingAnchor6 = [bookButton4 leadingAnchor];
  v129 = [trailingAnchor14 constraintEqualToAnchor:leadingAnchor6];
  [(RouteOverviewCell *)self setBookButtonLeadingConstraint:v129];

  [objc_opt_class() minimumVerticalPadding];
  v131 = v130;
  minimumHeightConstraint = [(RouteOverviewCell *)self minimumHeightConstraint];
  v208[0] = minimumHeightConstraint;
  contentGuide9 = [(RouteOverviewCell *)self contentGuide];
  topAnchor4 = [contentGuide9 topAnchor];
  contentView6 = [(RouteOverviewCell *)self contentView];
  topAnchor5 = [contentView6 topAnchor];
  v201 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5 constant:v131];
  v208[1] = v201;
  contentView7 = [(RouteOverviewCell *)self contentView];
  bottomAnchor3 = [contentView7 bottomAnchor];
  contentGuide10 = [(RouteOverviewCell *)self contentGuide];
  bottomAnchor4 = [contentGuide10 bottomAnchor];
  v194 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:v131];
  v208[2] = v194;
  contentGuide11 = [(RouteOverviewCell *)self contentGuide];
  centerYAnchor = [contentGuide11 centerYAnchor];
  contentView8 = [(RouteOverviewCell *)self contentView];
  centerYAnchor2 = [contentView8 centerYAnchor];
  v189 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v208[3] = v189;
  v208[4] = v199;
  v208[5] = v198;
  contentTopConstraint = [(RouteOverviewCell *)self contentTopConstraint];
  v208[6] = contentTopConstraint;
  contentBottomConstraint = [(RouteOverviewCell *)self contentBottomConstraint];
  v208[7] = contentBottomConstraint;
  primaryCompanionImageWidthConstraint = [(RouteOverviewCell *)self primaryCompanionImageWidthConstraint];
  v208[8] = primaryCompanionImageWidthConstraint;
  primaryLabelCompanionImageView3 = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  leadingAnchor7 = [primaryLabelCompanionImageView3 leadingAnchor];
  contentGuide12 = [(RouteOverviewCell *)self contentGuide];
  leadingAnchor8 = [contentGuide12 leadingAnchor];
  v181 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v208[9] = v181;
  primaryCompanionImageToLabelPaddingConstraint = [(RouteOverviewCell *)self primaryCompanionImageToLabelPaddingConstraint];
  v208[10] = primaryCompanionImageToLabelPaddingConstraint;
  primaryLabel6 = [(RouteOverviewCell *)self primaryLabel];
  trailingAnchor15 = [primaryLabel6 trailingAnchor];
  labelTrailingToGoButtonLeadingLayoutGuide7 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  leadingAnchor9 = [labelTrailingToGoButtonLeadingLayoutGuide7 leadingAnchor];
  v173 = [trailingAnchor15 constraintEqualToAnchor:leadingAnchor9];
  v208[11] = v173;
  primaryLabelCompanionImageView4 = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  centerYAnchor3 = [primaryLabelCompanionImageView4 centerYAnchor];
  primaryLabel7 = [(RouteOverviewCell *)self primaryLabel];
  centerYAnchor4 = [primaryLabel7 centerYAnchor];
  v168 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v208[12] = v168;
  secondaryLabel5 = [(RouteOverviewCell *)self secondaryLabel];
  leadingAnchor10 = [secondaryLabel5 leadingAnchor];
  contentGuide13 = [(RouteOverviewCell *)self contentGuide];
  leadingAnchor11 = [contentGuide13 leadingAnchor];
  v163 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  v208[13] = v163;
  secondaryLabel6 = [(RouteOverviewCell *)self secondaryLabel];
  trailingAnchor16 = [secondaryLabel6 trailingAnchor];
  labelTrailingToGoButtonLeadingLayoutGuide8 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  leadingAnchor12 = [labelTrailingToGoButtonLeadingLayoutGuide8 leadingAnchor];
  v157 = [trailingAnchor16 constraintEqualToAnchor:leadingAnchor12];
  v208[14] = v157;
  primaryToSecondaryLabelConstraint = [(RouteOverviewCell *)self primaryToSecondaryLabelConstraint];
  v208[15] = primaryToSecondaryLabelConstraint;
  v208[16] = v207;
  v208[17] = v46;
  v208[18] = v57;
  goButton8 = [(RouteOverviewCell *)self goButton];
  centerYAnchor5 = [goButton8 centerYAnchor];
  contentGuide14 = [(RouteOverviewCell *)self contentGuide];
  centerYAnchor6 = [contentGuide14 centerYAnchor];
  v151 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v208[19] = v151;
  stepsButton8 = [(RouteOverviewCell *)self stepsButton];
  centerYAnchor7 = [stepsButton8 centerYAnchor];
  contentGuide15 = [(RouteOverviewCell *)self contentGuide];
  centerYAnchor8 = [contentGuide15 centerYAnchor];
  v146 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v208[20] = v146;
  bookButton5 = [(RouteOverviewCell *)self bookButton];
  centerYAnchor9 = [bookButton5 centerYAnchor];
  contentGuide16 = [(RouteOverviewCell *)self contentGuide];
  centerYAnchor10 = [contentGuide16 centerYAnchor];
  v132 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
  v208[21] = v132;
  goButtonWidthConstraint = [(RouteOverviewCell *)self goButtonWidthConstraint];
  v208[22] = goButtonWidthConstraint;
  labelTrailingToPrimaryButtonLeadingPaddingConstraint = [(RouteOverviewCell *)self labelTrailingToPrimaryButtonLeadingPaddingConstraint];
  v208[23] = labelTrailingToPrimaryButtonLeadingPaddingConstraint;
  goButtonHeightConstraint = [(RouteOverviewCell *)self goButtonHeightConstraint];
  v208[24] = goButtonHeightConstraint;
  stepsButtonMinWidthConstraint = [(RouteOverviewCell *)self stepsButtonMinWidthConstraint];
  v208[25] = stepsButtonMinWidthConstraint;
  stepsButtonMaxWidthConstraint = [(RouteOverviewCell *)self stepsButtonMaxWidthConstraint];
  v208[26] = stepsButtonMaxWidthConstraint;
  stepsButtonHeightConstraint = [(RouteOverviewCell *)self stepsButtonHeightConstraint];
  v208[27] = stepsButtonHeightConstraint;
  bookButton6 = [(RouteOverviewCell *)self bookButton];
  heightAnchor4 = [bookButton6 heightAnchor];
  v141 = [heightAnchor4 constraintGreaterThanOrEqualToConstant:40.0];
  v208[28] = v141;
  v161 = [NSArray arrayWithObjects:v208 count:29];

  [NSLayoutConstraint activateConstraints:v161];
}

- (void)updateTheme
{
  v22.receiver = self;
  v22.super_class = RouteOverviewCell;
  [(MapsThemeCollectionViewListCell *)&v22 updateTheme];
  theme = [(RouteOverviewCell *)self theme];
  goButton = self->_goButton;
  v5 = [theme greenButtonBackgroundColor:0];
  [(BackgroundColorButton *)goButton setBackgroundColor:v5 forState:0];

  v6 = self->_goButton;
  v7 = [theme greenButtonBackgroundColor:1];
  [(BackgroundColorButton *)v6 setBackgroundColor:v7 forState:1];

  v8 = self->_goButton;
  v9 = [theme greenButtonTitleColor:0];
  [(MapsProgressBarButton *)v8 setTitleColor:v9 forState:0];

  v10 = self->_goButton;
  v11 = [theme greenButtonTitleColor:1];
  [(MapsProgressBarButton *)v10 setTitleColor:v11 forState:1];

  bookButton = self->_bookButton;
  v13 = [theme blueButtonBackgroundColor:0];
  [(BackgroundColorButton *)bookButton setBackgroundColor:v13 forState:0];

  v14 = self->_bookButton;
  v15 = [theme blueButtonBackgroundColor:1];
  [(BackgroundColorButton *)v14 setBackgroundColor:v15 forState:1];

  v16 = self->_bookButton;
  v17 = [theme blueButtonTitleColor:0];
  [(BackgroundColorButton *)v16 setTitleColor:v17 forState:0];

  v18 = self->_bookButton;
  v19 = [theme blueButtonTitleColor:1];
  [(BackgroundColorButton *)v18 setTitleColor:v19 forState:1];

  detailsButton = self->_detailsButton;
  keyColor = [theme keyColor];
  [(UIButton *)detailsButton setTitleColor:keyColor forState:0];
}

- (void)setPrimaryLabelCompanionImage:(id)image
{
  imageCopy = image;
  primaryLabelCompanionImageView = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  [primaryLabelCompanionImageView setImage:imageCopy];

  primaryLabelCompanionImageView2 = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  v7 = primaryLabelCompanionImageView2;
  if (imageCopy)
  {
    v8 = 8.0;
  }

  else
  {
    v8 = 0.0;
  }

  if (imageCopy)
  {
    v9 = 20.0;
  }

  else
  {
    v9 = 0.0;
  }

  [primaryLabelCompanionImageView2 setHidden:imageCopy == 0];

  primaryCompanionImageToLabelPaddingConstraint = [(RouteOverviewCell *)self primaryCompanionImageToLabelPaddingConstraint];
  [primaryCompanionImageToLabelPaddingConstraint setConstant:v8];

  primaryCompanionImageWidthConstraint = [(RouteOverviewCell *)self primaryCompanionImageWidthConstraint];
  [primaryCompanionImageWidthConstraint setConstant:v9];
}

- (UIImage)primaryLabelCompanionImage
{
  primaryLabelCompanionImageView = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  image = [primaryLabelCompanionImageView image];

  return image;
}

- (void)_createSubviews
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = v3;
  [v3 setNumberOfLines:0];
  primaryLabelFontProvider = [objc_opt_class() primaryLabelFontProvider];
  [DynamicTypeWizard autorefreshLabel:v3 withFontProvider:primaryLabelFontProvider];

  objc_storeStrong(&self->_primaryLabel, v3);
  v5 = +[UIColor labelColor];
  [(UILabel *)self->_primaryLabel setTextColor:v5];

  [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
  contentView = [(RouteOverviewCell *)self contentView];
  [contentView addSubview:self->_primaryLabel];

  v7 = objc_alloc_init(AutolayoutImageView);
  [(AutolayoutImageView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AutolayoutImageView *)v7 setHidden:1];
  v58 = v7;
  objc_storeStrong(&self->_primaryLabelCompanionImageView, v7);
  [(UIImageView *)self->_primaryLabelCompanionImageView setAccessibilityIdentifier:@"PrimaryLabelCompanionImageView"];
  contentView2 = [(RouteOverviewCell *)self contentView];
  [contentView2 addSubview:self->_primaryLabelCompanionImageView];

  v9 = objc_alloc_init(MapsThemeMultiPartLabel);
  [(MapsThemeMultiPartLabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeMultiPartLabel *)v9 setNumberOfLines:0];
  [(MapsThemeMultiPartLabel *)v9 setUserInteractionEnabled:0];
  secondaryLabelFontProvider = [objc_opt_class() secondaryLabelFontProvider];
  [DynamicTypeWizard autorefreshLabel:v9 withFontProvider:secondaryLabelFontProvider];

  contentView3 = [(RouteOverviewCell *)self contentView];
  [contentView3 addSubview:v9];

  objc_storeStrong(&self->_secondaryLabel, v9);
  v12 = +[UIColor secondaryLabelColor];
  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setTextColor:v12];

  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setTextInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  v13 = [MapsProgressBarButton buttonWithType:0];
  [v13 setClipsToBounds:1];
  [v13 _setContinuousCornerRadius:12.0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel = [v13 titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];

  titleLabel2 = [v13 titleLabel];
  [titleLabel2 setMinimumScaleFactor:0.474999994];

  titleLabel3 = [v13 titleLabel];
  [titleLabel3 setAllowsDefaultTighteningForTruncation:1];

  titleLabel4 = [v13 titleLabel];
  [titleLabel4 setLineBreakMode:2];

  [v13 setFillStyle:0];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"GO [Route Planning]" value:@"localized string not found" table:0];
  [v13 setTitle:v19 forState:0];

  titleLabel5 = [v13 titleLabel];
  goButtonFontProvider = [objc_opt_class() goButtonFontProvider];
  [DynamicTypeWizard autorefreshLabel:titleLabel5 withFontProvider:goButtonFontProvider];

  [DynamicTypeWizard makeObject:self performSelector:"_updateGoButtonWidthConstraint" whenSizeCategoryChangesWithOrder:2];
  [v13 setContentEdgeInsets:{0.0, 6.0, 0.0, 6.0}];
  [v13 addTarget:self action:? forControlEvents:?];
  [v13 setHidden:self->_buttonVisibility != 1];
  [v13 setAccessibilityIdentifier:@"GoButton"];
  contentView4 = [(RouteOverviewCell *)self contentView];
  [contentView4 addSubview:v13];

  objc_storeStrong(&self->_goButton, v13);
  v60 = +[UIBackgroundConfiguration clearConfiguration];
  v23 = +[UIColor secondarySystemFillColor];
  [v60 setBackgroundColor:v23];

  [v60 setCornerRadius:10.0];
  v24 = +[UIButtonConfiguration plainButtonConfiguration];
  [v24 setImagePlacement:1];
  [v24 setTitleLineBreakMode:4];
  v25 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:2 scale:20.0];
  v26 = [UIImage systemImageNamed:@"chevron.forward.2" withConfiguration:v25];
  [v24 setImage:v26];

  [v24 setContentInsets:{8.0, 8.0, 8.0, 8.0}];
  v27 = [NSAttributedString alloc];
  v28 = +[NSBundle mainBundle];
  v29 = [v28 localizedStringForKey:@"Steps [Route Planning]" value:@"localized string not found" table:0];
  v64 = NSFontAttributeName;
  v30 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightBold];
  v65 = v30;
  v31 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v32 = [v27 initWithString:v29 attributes:v31];
  [v24 setAttributedTitle:v32];

  [v24 setBackground:v60];
  objc_initWeak(&location, self);
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10100AF74;
  v61[3] = &unk_101661900;
  objc_copyWeak(&v62, &location);
  v33 = [UIAction actionWithHandler:v61];
  v34 = [UIButton buttonWithConfiguration:v24 primaryAction:v33];

  [v34 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v34 setHidden:self->_buttonVisibility != 3];
  [v34 setAccessibilityIdentifier:@"StepsButton"];
  contentView5 = [(RouteOverviewCell *)self contentView];
  [contentView5 addSubview:v34];

  objc_storeStrong(&self->_stepsButton, v34);
  v36 = [BackgroundColorButton buttonWithType:0];
  [v36 setClipsToBounds:1];
  layer = [v36 layer];
  [layer setCornerRadius:8.0];

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RouteOverviewCell *)self _resetBookButtonTitle];
  titleLabel6 = [v36 titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel6 withFontProvider:&stru_10165DAA8];

  [v36 setContentEdgeInsets:{0.0, 11.0, 0.0, 11.0}];
  [v36 addTarget:self action:"_didTapPrimaryActionButton:" forControlEvents:64];
  [v36 setHidden:self->_buttonVisibility != 2];
  [v36 setAccessibilityIdentifier:@"BookButton"];
  contentView6 = [(RouteOverviewCell *)self contentView];
  [contentView6 addSubview:v36];

  objc_storeStrong(&self->_bookButton, v36);
  contentView7 = [(RouteOverviewCell *)self contentView];
  [contentView7 setAccessibilityIdentifier:@"RouteOverviewCellContent"];

  contentView8 = [(RouteOverviewCell *)self contentView];
  advisoriesView = [(RouteOverviewCell *)self advisoriesView];
  [contentView8 addSubview:advisoriesView];

  contentView9 = [(RouteOverviewCell *)self contentView];
  artworkList = [(RouteOverviewCell *)self artworkList];
  [contentView9 addSubview:artworkList];

  contentView10 = [(RouteOverviewCell *)self contentView];
  detailsButton = [(RouteOverviewCell *)self detailsButton];
  [contentView10 addSubview:detailsButton];

  contentView11 = [(RouteOverviewCell *)self contentView];
  tertiaryLabel = [(RouteOverviewCell *)self tertiaryLabel];
  [contentView11 addSubview:tertiaryLabel];

  contentView12 = [(RouteOverviewCell *)self contentView];
  routeDescriptionLabel = [(RouteOverviewCell *)self routeDescriptionLabel];
  [contentView12 addSubview:routeDescriptionLabel];

  contentView13 = [(RouteOverviewCell *)self contentView];
  elevationGraphView = [(RouteOverviewCell *)self elevationGraphView];
  [contentView13 addSubview:elevationGraphView];

  [(DirectionsElevationGraphView *)self->_elevationGraphView setHidden:1];
  [(UILabel *)self->_tertiaryLabel setHidden:1];
  [(UIButton *)self->_detailsButton setHidden:1];
  [(TransitArtworkListView *)self->_artworkList setHidden:1];
  [(RouteAdvisoriesView *)self->_advisoriesView setHidden:1];
  routeDescriptionLabel2 = [(RouteOverviewCell *)self routeDescriptionLabel];
  [routeDescriptionLabel2 setHidden:1];

  if (sub_10000FA08(self) == 5)
  {
    v54 = +[UIColor systemWhiteColor];
    [(UILabel *)self->_primaryLabel setHighlightedTextColor:v54];

    v55 = +[UIColor systemWhiteColor];
    [(MapsThemeMultiPartLabel *)self->_secondaryLabel setHighlightedTextColor:v55];

    v56 = +[UIColor systemWhiteColor];
    routeDescriptionLabel3 = [(RouteOverviewCell *)self routeDescriptionLabel];
    [routeDescriptionLabel3 setHighlightedTextColor:v56];
  }

  [(RouteOverviewCell *)self _updateColorsForSelection];

  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);
}

- (void)customInit
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_doubleTap:"];
    doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
    self->_doubleTapGestureRecognizer = v3;

    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setDelaysTouchesEnded:0];
    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setEnabled:self->_detailsButtonVisible];
    [(RouteOverviewCell *)self addGestureRecognizer:self->_doubleTapGestureRecognizer];
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  self->_buttonVisibility = v5;
  v6 = +[UIColor clearColor];
  [(RouteOverviewCell *)self setBackgroundColor:v6];

  v7 = +[UIColor clearColor];
  contentView = [(RouteOverviewCell *)self contentView];
  [contentView setBackgroundColor:v7];

  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10100B1CC;
  v14 = &unk_1016618D8;
  objc_copyWeak(&v15, &location);
  [(RouteOverviewCell *)self _setBackgroundViewConfigurationProvider:&v11];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [(RouteOverviewCell *)self setAccessibilityIdentifier:v10, v11, v12, v13, v14];

  [(RouteOverviewCell *)self _createSubviews];
  [(RouteOverviewCell *)self _setupConstraints];
  [(RouteOverviewCell *)self _updateButtonVisibility];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (RouteOverviewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = RouteOverviewCell;
  v3 = [(RouteOverviewCell *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RouteOverviewCell *)v3 customInit];
    v5 = v4;
  }

  return v4;
}

- (RouteOverviewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = RouteOverviewCell;
  v3 = [(RouteOverviewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RouteOverviewCell *)v3 customInit];
    v5 = v4;
  }

  return v4;
}

+ (id)goButtonFontProvider
{
  v2 = objc_retainBlock(&stru_10165DA48);

  return v2;
}

+ (id)secondaryLabelFontProvider
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == 5)
  {
    v3 = &stru_10165D8C8;
  }

  else
  {
    v3 = &stru_10165D908;
  }

  v4 = objc_retainBlock(v3);

  return v4;
}

+ (id)primaryLabelEnlargedFontProvider
{
  v2 = objc_retainBlock(&stru_10165D9C8);

  return v2;
}

+ (id)primaryLabelFontProvider
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == 5)
  {
    v3 = &stru_10165DA68;
  }

  else
  {
    v3 = &stru_10165DA08;
  }

  v4 = objc_retainBlock(v3);

  return v4;
}

+ (double)horizontalBackgroundInset
{
  v2 = +[UIScreen mainScreen];
  if (sub_10000FA08(v2) == 5)
  {
    v3 = 10.0;
  }

  else
  {
    v3 = 16.0;
  }

  return v3;
}

+ (double)horizontalContentInset
{
  v2 = +[UIScreen mainScreen];
  if (sub_10000FA08(v2) == 5)
  {
    v3 = 18.0;
  }

  else
  {
    v3 = 32.0;
  }

  return v3;
}

+ (double)minimumVerticalPadding
{
  v2 = +[UIScreen mainScreen];
  if (sub_10000FA08(v2) == 5)
  {
    v3 = 9.0;
  }

  else
  {
    v3 = 16.0;
  }

  return v3;
}

+ (double)minimumHeight
{
  v2 = +[UIScreen mainScreen];
  if (sub_10000FA08(v2) == 5)
  {
    v3 = 48.0;
  }

  else
  {
    v3 = 120.0;
  }

  return v3;
}

@end