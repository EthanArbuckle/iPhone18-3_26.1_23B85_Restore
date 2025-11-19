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
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (DirectionsElevationGraphView)elevationGraphView;
- (MapsThemeMultiPartLabel)routeDescriptionLabel;
- (RouteAdvisoriesView)advisoriesView;
- (RouteOverviewCell)initWithCoder:(id)a3;
- (RouteOverviewCell)initWithFrame:(CGRect)a3;
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
- (void)_didTapDetailsButton:(id)a3;
- (void)_didTapPrimaryActionButton:(id)a3;
- (void)_doubleTap:(id)a3;
- (void)_reloadElevationChart;
- (void)_resetBookButtonTitle;
- (void)_setDetailsButtonRotated:(BOOL)a3 animated:(BOOL)a4;
- (void)_setupConstraints;
- (void)_updateButtonVisibility;
- (void)_updateColorsForSelection;
- (void)_updateConstraintsForArtworkListVisible:(BOOL)a3 elevationGraphViewVisible:(BOOL)a4 advisoriesViewVisible:(BOOL)a5 tertiaryLabelVisible:(BOOL)a6 detailsButtonVisible:(BOOL)a7;
- (void)_updateGoButtonWidthConstraint;
- (void)_updateStepsButtonWidthConstraint;
- (void)customInit;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)setAdvisoriesViewVisible:(BOOL)a3;
- (void)setArtworkListVisible:(BOOL)a3;
- (void)setBookButtonTitle:(id)a3;
- (void)setButtonVisibility:(unint64_t)a3;
- (void)setDetailsButtonRotated:(BOOL)a3 animated:(BOOL)a4;
- (void)setDetailsButtonVisible:(BOOL)a3;
- (void)setElevationGraphViewVisible:(BOOL)a3;
- (void)setGoButtonProgress:(double)a3;
- (void)setGoButtonProgressVisible:(BOOL)a3;
- (void)setHasSelectedStep:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setOverrideCellGrouping:(int64_t)a3;
- (void)setPrimaryLabelCompanionImage:(id)a3;
- (void)setRouteDescritptionLabelVisible:(BOOL)a3;
- (void)setSelectionBackgroundVisible:(BOOL)a3;
- (void)setTertiaryLabelVisible:(BOOL)a3;
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
  v3 = [(RouteOverviewCell *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(RouteOverviewCell *)self delegate];
    [v5 didTapAutomaticSharingButtonForRouteOverviewCell:self];
  }
}

- (void)_didTapDetailsButton:(id)a3
{
  v4 = [(RouteOverviewCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(RouteOverviewCell *)self delegate];
    [v6 didTapDetailsButtonForRouteOverviewCell:self];
  }
}

- (void)_didTapPrimaryActionButton:(id)a3
{
  v4 = [(RouteOverviewCell *)self delegate];
  [v4 didTapRideBookingActionForRouteOverviewCell:self];
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
    v7 = [(RouteOverviewCell *)self routeDescriptionLabel];
    [v7 setTextColor:v6];

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

- (void)_updateConstraintsForArtworkListVisible:(BOOL)a3 elevationGraphViewVisible:(BOOL)a4 advisoriesViewVisible:(BOOL)a5 tertiaryLabelVisible:(BOOL)a6 detailsButtonVisible:(BOOL)a7
{
  v160 = a5;
  v161 = a7;
  v7 = a6;
  v159 = a4;
  v8 = a3;
  v10 = [(RouteOverviewCell *)self tertiaryLabelConstraints];
  [NSLayoutConstraint deactivateConstraints:v10];

  v11 = [(RouteOverviewCell *)self artworkListConstraints];
  [NSLayoutConstraint deactivateConstraints:v11];

  v12 = [(RouteOverviewCell *)self elevationGraphViewConstraints];
  [NSLayoutConstraint deactivateConstraints:v12];

  v13 = [(RouteOverviewCell *)self detailsButtonConstraints];
  [NSLayoutConstraint deactivateConstraints:v13];

  v14 = [(RouteOverviewCell *)self advisoriesViewConstraints];
  [NSLayoutConstraint deactivateConstraints:v14];

  v15 = [(RouteOverviewCell *)self routeDescriptionLabelConstraints];
  [NSLayoutConstraint deactivateConstraints:v15];

  v16 = [(RouteOverviewCell *)self contentBottomConstraint];
  [v16 setActive:0];

  v162 = +[NSMutableArray array];
  v17 = sub_10000FA08(self);
  v18 = [(RouteOverviewCell *)self secondaryLabel];
  v19 = v18;
  if (v17 == 5)
  {
    [v18 lastBaselineAnchor];
  }

  else
  {
    [v18 bottomAnchor];
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
    v23 = [(RouteOverviewCell *)self routeDescriptionLabel];
    v24 = [v23 leadingAnchor];
    v25 = [(RouteOverviewCell *)self contentGuide];
    v26 = [v25 leadingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    [v22 addObject:v27];

    v28 = [(RouteOverviewCell *)self routeDescriptionLabel];
    v29 = [v28 trailingAnchor];
    v30 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
    v31 = [v30 leadingAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [v22 addObject:v32];

    v33 = [(RouteOverviewCell *)self routeDescriptionLabel];
    v34 = [v33 topAnchor];
    v35 = [v34 constraintEqualToAnchor:v20];
    v36 = [DynamicTypeWizard autoscaledConstraint:v35 constant:&stru_10165D908 withFontProvider:v21];
    [v22 addObject:v36];

    v37 = sub_10000FA08(self);
    v38 = [(RouteOverviewCell *)self routeDescriptionLabel];
    v39 = v38;
    if (v37 == 5)
    {
      [v38 lastBaselineAnchor];
    }

    else
    {
      [v38 bottomAnchor];
    }
    v41 = ;

    [(RouteOverviewCell *)self setRouteDescriptionLabelConstraints:v22];
    v42 = [(RouteOverviewCell *)self routeDescriptionLabelConstraints];
    [v162 addObjectsFromArray:v42];

    v20 = v41;
    if (v7)
    {
LABEL_15:
      v43 = +[NSMutableArray array];
      v44 = [(RouteOverviewCell *)self tertiaryLabel];
      v45 = [v44 leadingAnchor];
      v46 = [(RouteOverviewCell *)self contentGuide];
      v47 = [v46 leadingAnchor];
      v48 = [v45 constraintEqualToAnchor:v47];
      [v43 addObject:v48];

      v49 = [(RouteOverviewCell *)self tertiaryLabel];
      v50 = [v49 trailingAnchor];
      v51 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
      v52 = [v51 leadingAnchor];
      v53 = [v50 constraintEqualToAnchor:v52];
      [v43 addObject:v53];

      v54 = [(RouteOverviewCell *)self tertiaryLabel];
      v55 = [v54 topAnchor];
      v56 = [v55 constraintEqualToAnchor:v20];
      v57 = [DynamicTypeWizard autoscaledConstraint:v56 constant:&stru_10165D908 withFontProvider:0.0];
      [v43 addObject:v57];

      v58 = [(RouteOverviewCell *)self tertiaryLabel];
      v59 = [v58 bottomAnchor];

      [(RouteOverviewCell *)self setTertiaryLabelConstraints:v43];
      v60 = [(RouteOverviewCell *)self tertiaryLabelConstraints];
      [v162 addObjectsFromArray:v60];

      v20 = v59;
      if (v8)
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
    if (v7)
    {
      goto LABEL_15;
    }
  }

  [(RouteOverviewCell *)self setTertiaryLabelConstraints:0];
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_16:
  v40 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v61 = +[NSMutableArray array];
  v62 = [(RouteOverviewCell *)self artworkList];
  v63 = [v62 leadingAnchor];
  v64 = [(RouteOverviewCell *)self contentGuide];
  v65 = [v64 leadingAnchor];
  v66 = [v63 constraintEqualToAnchor:v65];
  [v61 addObject:v66];

  v67 = [(RouteOverviewCell *)self artworkList];
  v68 = [v67 trailingAnchor];
  v69 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  v70 = [v69 leadingAnchor];
  v71 = [v68 constraintEqualToAnchor:v70];
  [v61 addObject:v71];

  v72 = [(RouteOverviewCell *)self artworkList];
  v73 = [v72 topAnchor];
  v74 = [v73 constraintEqualToAnchor:v20 constant:10.0];
  [v61 addObject:v74];

  v75 = [(RouteOverviewCell *)self artworkList];
  v76 = [v75 bottomAnchor];

  [(RouteOverviewCell *)self setArtworkListConstraints:v61];
  v77 = [(RouteOverviewCell *)self artworkListConstraints];
  [v162 addObjectsFromArray:v77];

  v20 = v76;
LABEL_17:
  if (v159)
  {
    v78 = [v40[297] array];
    v79 = [(RouteOverviewCell *)self elevationGraphView];
    v80 = [v79 leadingAnchor];
    v81 = [(RouteOverviewCell *)self contentGuide];
    v82 = [v81 leadingAnchor];
    v83 = [v80 constraintEqualToAnchor:v82];
    [v78 addObject:v83];

    v84 = sub_10000FA08(self);
    v85 = [(RouteOverviewCell *)self elevationGraphView];
    v86 = v85;
    if (v84 == 5)
    {
      v87 = [v85 trailingAnchor];
      v88 = [(RouteOverviewCell *)self contentGuide];
      v89 = [v88 trailingAnchor];
      v90 = [v87 constraintEqualToAnchor:v89];
      [v78 addObject:v90];
    }

    else
    {
      v87 = [v85 widthAnchor];
      v88 = [v87 constraintEqualToConstant:80.0];
      [v78 addObject:v88];
    }

    v91 = [(RouteOverviewCell *)self elevationGraphView];
    v92 = [v91 topAnchor];
    v93 = [v92 constraintEqualToAnchor:v20 constant:10.0];
    [v78 addObject:v93];

    v94 = [(RouteOverviewCell *)self elevationGraphView];
    v95 = [v94 heightAnchor];
    v96 = [v95 constraintEqualToConstant:25.0];
    [v78 addObject:v96];

    v97 = [(RouteOverviewCell *)self elevationGraphView];
    v98 = [v97 bottomAnchor];

    [(RouteOverviewCell *)self setElevationGraphViewConstraints:v78];
    v99 = [(RouteOverviewCell *)self elevationGraphViewConstraints];
    [v162 addObjectsFromArray:v99];

    v20 = v98;
  }

  else
  {
    [(RouteOverviewCell *)self setElevationGraphViewConstraints:0];
  }

  if (v160)
  {
    v100 = [v40[297] array];
    v101 = [(RouteOverviewCell *)self advisoriesView];
    v102 = [v101 leadingAnchor];
    v103 = [(RouteOverviewCell *)self contentGuide];
    v104 = [v103 leadingAnchor];
    v105 = [v102 constraintEqualToAnchor:v104];
    [v100 addObject:v105];

    v106 = [(RouteOverviewCell *)self traitCollection];
    v107 = [v106 userInterfaceIdiom];

    v108 = [(RouteOverviewCell *)self advisoriesView];
    v109 = [v108 trailingAnchor];
    if (v107 == 5)
    {
      v110 = [(RouteOverviewCell *)self contentGuide];
      [v110 trailingAnchor];
    }

    else
    {
      v110 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
      [v110 leadingAnchor];
    }
    v111 = ;
    v112 = [v109 constraintEqualToAnchor:v111];
    [v100 addObject:v112];

    if (sub_10000FA08(self) == 5)
    {
      v113 = 10.0;
    }

    else
    {
      v113 = 6.0;
    }

    v114 = [(RouteOverviewCell *)self advisoriesView];
    v115 = [v114 topAnchor];
    v116 = [v115 constraintEqualToAnchor:v20 constant:v113];
    [v100 addObject:v116];

    v117 = [(RouteOverviewCell *)self advisoriesView];
    v118 = [v117 bottomAnchor];

    [(RouteOverviewCell *)self setAdvisoriesViewConstraints:v100];
    v119 = [(RouteOverviewCell *)self advisoriesViewConstraints];
    [v162 addObjectsFromArray:v119];

    v20 = v118;
  }

  else
  {
    [(RouteOverviewCell *)self setAdvisoriesViewConstraints:0];
  }

  if (v161)
  {
    v120 = [v40[297] array];
    v121 = [(RouteOverviewCell *)self traitCollection];
    v122 = [v121 userInterfaceIdiom];

    v123 = [(RouteOverviewCell *)self detailsButton];
    v124 = [v123 leadingAnchor];
    if (v122 == 5)
    {
      v125 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
      v126 = [v125 leadingAnchor];
      v127 = [v124 constraintGreaterThanOrEqualToAnchor:v126];
      [v120 addObject:v127];

      v128 = [(RouteOverviewCell *)self detailsButton];
      v129 = [v128 trailingAnchor];
      v130 = [(RouteOverviewCell *)self contentGuide];
      v131 = [v130 trailingAnchor];
      v132 = [v129 constraintEqualToAnchor:v131];
      [v120 addObject:v132];

      v133 = [(RouteOverviewCell *)self detailsButton];
      v134 = [v133 firstBaselineAnchor];
      v135 = [(UILabel *)self->_primaryLabel firstBaselineAnchor];
      v136 = [v134 constraintEqualToAnchor:v135];
      [v120 addObject:v136];
    }

    else
    {
      v137 = [(RouteOverviewCell *)self contentGuide];
      v138 = [v137 leadingAnchor];
      v139 = [v124 constraintEqualToAnchor:v138];
      [v120 addObject:v139];

      v140 = [(RouteOverviewCell *)self detailsButton];
      v141 = [v140 trailingAnchor];
      v142 = [(RouteOverviewCell *)self contentGuide];
      v143 = [v142 trailingAnchor];
      v144 = [v141 constraintLessThanOrEqualToAnchor:v143];
      [v120 addObject:v144];

      v145 = [(RouteOverviewCell *)self detailsButton];
      v146 = [v145 topAnchor];
      v147 = [(RouteOverviewCell *)self goButton];
      v148 = [v147 bottomAnchor];
      v149 = [v146 constraintGreaterThanOrEqualToAnchor:v148];
      [v120 addObject:v149];

      v150 = [(RouteOverviewCell *)self detailsButton];
      v151 = [v150 firstBaselineAnchor];
      v152 = [v151 constraintGreaterThanOrEqualToAnchor:v20];
      v153 = [DynamicTypeWizard autoscaledConstraint:v152 constant:&stru_10165D908 withFontProvider:32.0];
      [v120 addObject:v153];

      v133 = [(RouteOverviewCell *)self detailsButton];
      [v133 lastBaselineAnchor];
      v20 = v134 = v20;
    }

    [(RouteOverviewCell *)self setDetailsButtonConstraints:v120];
    v154 = [(RouteOverviewCell *)self detailsButtonConstraints];
    [v162 addObjectsFromArray:v154];
  }

  else
  {
    [(RouteOverviewCell *)self setDetailsButtonConstraints:0];
  }

  v155 = [(RouteOverviewCell *)self contentGuide];
  v156 = [v155 bottomAnchor];
  v157 = [v156 constraintEqualToAnchor:v20];
  [(RouteOverviewCell *)self setContentBottomConstraint:v157];

  v158 = [(RouteOverviewCell *)self contentBottomConstraint];
  [v162 addObject:v158];

  [NSLayoutConstraint activateConstraints:v162];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = RouteOverviewCell;
  [(RouteOverviewCell *)&v3 updateConstraints];
  [(RouteOverviewCell *)self _updateConstraintsForArtworkListVisible:[(RouteOverviewCell *)self isArtworkListVisible] elevationGraphViewVisible:[(RouteOverviewCell *)self isElevationGraphViewVisible] advisoriesViewVisible:[(RouteOverviewCell *)self isAdvisoriesViewVisible] tertiaryLabelVisible:[(RouteOverviewCell *)self isTertiaryLabelVisible] detailsButtonVisible:[(RouteOverviewCell *)self isDetailsButtonVisible]];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  if ([(RouteOverviewCell *)self isArtworkListVisible])
  {
    [(RouteOverviewCell *)self bounds];
    [(RouteOverviewCell *)self setBounds:?];
  }

  [(RouteOverviewCell *)self layoutIfNeeded];
  v14.receiver = self;
  v14.super_class = RouteOverviewCell;
  *&v10 = a4;
  *&v11 = a5;
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

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = RouteOverviewCell;
  [(RouteOverviewCell *)&v12 didUpdateFocusInContext:v7 withAnimationCoordinator:a4];
  v8 = [v7 previouslyFocusedView];
  if (v8 == self || ([v7 nextFocusedView], v9 = objc_claimAutoreleasedReturnValue(), v4 = v9, v9 == self))
  {
    v10 = [v7 previouslyFocusedView];
    v11 = [v7 nextFocusedView];

    if (v8 != self)
    {
    }

    if (v10 != v11)
    {
      [(RouteOverviewCell *)self _updateColorsForSelection];
    }
  }

  else
  {
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RouteOverviewCell;
  [(RouteOverviewCell *)&v4 setHighlighted:a3];
  [(RouteOverviewCell *)self _updateColorsForSelection];
}

- (void)setOverrideCellGrouping:(int64_t)a3
{
  if (self->_overrideCellGrouping != a3)
  {
    self->_overrideCellGrouping = a3;
    v5 = [(RouteOverviewCell *)self _resolvedGrouping];

    [(RouteOverviewCell *)self _setBackgroundViewConfigurationGrouping:v5];
  }
}

- (void)setSelectionBackgroundVisible:(BOOL)a3
{
  if (self->_selectionBackgroundVisible != a3)
  {
    self->_selectionBackgroundVisible = a3;
    [(RouteOverviewCell *)self _updateColorsForSelection];

    [(RouteOverviewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setHasSelectedStep:(BOOL)a3
{
  if (self->_hasSelectedStep != a3)
  {
    self->_hasSelectedStep = a3;
    [(RouteOverviewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setDetailsButtonVisible:(BOOL)a3
{
  if (self->_detailsButtonVisible != a3)
  {
    v4 = a3;
    self->_detailsButtonVisible = a3;
    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setEnabled:?];
    [(UIButton *)self->_detailsButton setHidden:!v4];

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

    v3 = [(MapsProgressBarButton *)self->_goButton titleLabel];
    v4 = [v3 text];

    v5 = [objc_opt_class() goButtonFontProvider];
    v6 = v5[2]();

    [v6 pointSize];
    v8 = [NSString stringWithFormat:@"%@%f", v4, v7];
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
      [v4 sizeWithAttributes:v14];
      v16 = v15;

      v12 = fmax(fmin(v16 + 12.0, 72.0), 64.0);
      v17 = qword_10195FA30;
      v18 = [NSNumber numberWithDouble:v12];
      [v17 setObject:v18 forKey:v8];
    }

    v19 = [(RouteOverviewCell *)self goButtonWidthConstraint];
    [v19 setConstant:v12];
  }
}

- (void)_resetBookButtonTitle
{
  v5 = [(RouteOverviewCell *)self bookButton];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Book [Route Planning]" value:@"localized string not found" table:0];
  v4 = [v3 localizedUppercaseString];
  [v5 setTitle:v4 forState:0];
}

- (void)_reloadElevationChart
{
  [(DirectionsElevationGraphView *)self->_elevationGraphView removeFromSuperview];
  elevationGraphView = self->_elevationGraphView;
  self->_elevationGraphView = 0;

  v4 = [(RouteOverviewCell *)self contentView];
  v5 = [(RouteOverviewCell *)self elevationGraphView];
  [v4 addSubview:v5];

  LOBYTE(v5) = self->_elevationGraphViewVisible;
  v6 = [(RouteOverviewCell *)self elevationGraphView];
  [v6 setHidden:(v5 & 1) == 0];

  [(RouteOverviewCell *)self setNeedsUpdateConstraints];
}

- (void)setGoButtonProgressVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(RouteOverviewCell *)self goButton];
  [v4 setProgressionHidden:!v3];
}

- (void)setGoButtonProgress:(double)a3
{
  v4 = [(RouteOverviewCell *)self goButton];
  [v4 setProgress:a3];
}

- (BOOL)isGoButtonProgressVisible
{
  v2 = [(RouteOverviewCell *)self goButton];
  v3 = [v2 progressionHidden];

  return v3 ^ 1;
}

- (double)goButtonProgress
{
  v2 = [(RouteOverviewCell *)self goButton];
  [v2 progress];
  v4 = v3;

  return v4;
}

- (void)setBookButtonTitle:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [(RouteOverviewCell *)self bookButton];
    v5 = [v6 localizedUppercaseString];
    [v4 setTitle:v5 forState:0];
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
      v29 = [(RouteOverviewCell *)self noButtonLeadingConstraint];
      [v29 setActive:0];

      v30 = [(RouteOverviewCell *)self goButtonLeadingConstraint];
      [v30 setActive:0];

      v31 = [(RouteOverviewCell *)self stepsButtonLeadingConstraint];
      [v31 setActive:0];

      v32 = [(RouteOverviewCell *)self bookButtonLeadingConstraint];
      v6 = 1;
      [v32 setActive:1];

      v33 = [(RouteOverviewCell *)self goButtonWidthConstraint];
      [v33 setConstant:0.0];

      v34 = [(RouteOverviewCell *)self goButton];
      [v34 setHidden:1];

      v35 = [(RouteOverviewCell *)self stepsButton];
      [v35 setHidden:1];

      v36 = [(RouteOverviewCell *)self bookButton];
      [v36 setHidden:0];
    }

    else
    {
      if (buttonVisibility != 3)
      {
        return;
      }

      v12 = [(RouteOverviewCell *)self goButton];
      v6 = 1;
      [v12 setHidden:1];

      v13 = [(RouteOverviewCell *)self stepsButton];
      [v13 setHidden:0];

      v14 = [(RouteOverviewCell *)self bookButton];
      [v14 setHidden:1];

      v15 = [(RouteOverviewCell *)self noButtonLeadingConstraint];
      [v15 setActive:0];

      v16 = [(RouteOverviewCell *)self goButtonLeadingConstraint];
      [v16 setActive:0];

      v17 = [(RouteOverviewCell *)self stepsButtonLeadingConstraint];
      [v17 setActive:1];

      v18 = [(RouteOverviewCell *)self bookButtonLeadingConstraint];
      [v18 setActive:0];

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

    v4 = [(RouteOverviewCell *)self goButton];
    [v4 setHidden:0];

    v5 = [(RouteOverviewCell *)self stepsButton];
    v6 = 1;
    [v5 setHidden:1];

    v7 = [(RouteOverviewCell *)self bookButton];
    [v7 setHidden:1];

    v8 = [(RouteOverviewCell *)self noButtonLeadingConstraint];
    [v8 setActive:0];

    v9 = [(RouteOverviewCell *)self goButtonLeadingConstraint];
    [v9 setActive:1];

    v10 = [(RouteOverviewCell *)self stepsButtonLeadingConstraint];
    [v10 setActive:0];

    v11 = [(RouteOverviewCell *)self bookButtonLeadingConstraint];
    [v11 setActive:0];

    [(RouteOverviewCell *)self _updateGoButtonWidthConstraint];
  }

  else
  {
    v19 = [(RouteOverviewCell *)self goButton];
    [v19 setHidden:1];

    v20 = [(RouteOverviewCell *)self stepsButton];
    [v20 setHidden:1];

    v21 = [(RouteOverviewCell *)self bookButton];
    [v21 setHidden:1];

    v22 = [(RouteOverviewCell *)self noButtonLeadingConstraint];
    [v22 setActive:1];

    v23 = [(RouteOverviewCell *)self goButtonLeadingConstraint];
    [v23 setActive:0];

    v24 = [(RouteOverviewCell *)self stepsButtonLeadingConstraint];
    [v24 setActive:0];

    v25 = [(RouteOverviewCell *)self bookButtonLeadingConstraint];
    [v25 setActive:0];

    v26 = [(RouteOverviewCell *)self goButtonWidthConstraint];
    [v26 setConstant:0.0];

    v27 = [(RouteOverviewCell *)self stepsButtonMinWidthConstraint];
    [v27 setConstant:0.0];

    v28 = [(RouteOverviewCell *)self stepsButtonMaxWidthConstraint];
    [v28 setConstant:0.0];

    v6 = 0;
  }

  v37 = [(RouteOverviewCell *)self labelTrailingToPrimaryButtonLeadingPaddingConstraint];
  [v37 setActive:v6];
}

- (void)setButtonVisibility:(unint64_t)a3
{
  v5 = [(RouteOverviewCell *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  if (self->_buttonVisibility != v7)
  {
    self->_buttonVisibility = v7;

    [(RouteOverviewCell *)self _updateButtonVisibility];
  }
}

- (void)setAdvisoriesViewVisible:(BOOL)a3
{
  if (self->_advisoriesViewVisible != a3)
  {
    self->_advisoriesViewVisible = a3;
    [(RouteAdvisoriesView *)self->_advisoriesView setHidden:!a3];

    [(RouteOverviewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setElevationGraphViewVisible:(BOOL)a3
{
  if (self->_elevationGraphViewVisible != a3)
  {
    self->_elevationGraphViewVisible = a3;
    [(DirectionsElevationGraphView *)self->_elevationGraphView setHidden:!a3];

    [(RouteOverviewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setArtworkListVisible:(BOOL)a3
{
  if (self->_artworkListVisible != a3)
  {
    self->_artworkListVisible = a3;
    [(TransitArtworkListView *)self->_artworkList setHidden:!a3];

    [(RouteOverviewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setRouteDescritptionLabelVisible:(BOOL)a3
{
  if (self->_routeDescritptionLabelVisible != a3)
  {
    self->_routeDescritptionLabelVisible = a3;
    [(MapsThemeMultiPartLabel *)self->_routeDescriptionLabel setHidden:!a3];

    [(RouteOverviewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setTertiaryLabelVisible:(BOOL)a3
{
  if (self->_tertiaryLabelVisible != a3)
  {
    self->_tertiaryLabelVisible = a3;
    [(UILabel *)self->_tertiaryLabel setHidden:!a3];

    [(RouteOverviewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)_setDetailsButtonRotated:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  self->_detailsButtonRotated = a3;
  [(RouteOverviewCell *)self _setBackgroundViewConfigurationGrouping:[(RouteOverviewCell *)self _resolvedGrouping]];
  v7 = [(RouteOverviewCell *)self traitCollection];
  v8 = [v7 layoutDirection];

  memset(&v15, 0, sizeof(v15));
  if (v5)
  {
    CGAffineTransformMakeRotation(&v15, dbl_101212BC0[v8 == 0]);
    if (!v4)
    {
LABEL_3:
      v12 = v15;
      v9 = [(RouteOverviewCell *)self detailsButton];
      v11 = v12;
      [v9 setTransform:&v11];

      return;
    }
  }

  else
  {
    v10 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v10;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    if (!v4)
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

- (void)setDetailsButtonRotated:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = [(RouteOverviewCell *)self traitCollection];
    v7 = [v6 userInterfaceIdiom] == 5;
  }

  else
  {
    v7 = 0;
  }

  if (self->_detailsButtonRotated != v7)
  {

    [(RouteOverviewCell *)self _setDetailsButtonRotated:v7 animated:v4];
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

      v8 = [(UIButton *)self->_detailsButton titleLabel];
      [v8 setAdjustsFontSizeToFitWidth:1];

      v9 = [(UIButton *)self->_detailsButton titleLabel];
      [v9 setMinimumScaleFactor:0.600000024];

      v10 = [(UIButton *)self->_detailsButton titleLabel];
      [v10 setLineBreakMode:4];

      v11 = [(UIButton *)self->_detailsButton titleLabel];
      [DynamicTypeWizard autorefreshLabel:v11 withFontProvider:&stru_10165D908];

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
    v5 = [(RouteOverviewCell *)self traitCollection];
    v6 = -[DirectionsElevationGraphConfiguration initWithUseType:userInterfaceIdiom:](v4, "initWithUseType:userInterfaceIdiom:", 1, [v5 userInterfaceIdiom]);

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
    v5 = [objc_opt_class() secondaryLabelFontProvider];
    [DynamicTypeWizard autorefreshLabel:v4 withFontProvider:v5];

    v6 = [(RouteOverviewCell *)self contentView];
    [v6 addSubview:v4];

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

- (void)_doubleTap:(id)a3
{
  v4 = [(RouteOverviewCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(RouteOverviewCell *)self delegate];
    [v6 didTapDetailsButtonForRouteOverviewCell:self];
  }
}

- (void)_setupConstraints
{
  v3 = objc_alloc_init(UILayoutGuide);
  [(RouteOverviewCell *)self setContentGuide:v3];

  v4 = objc_alloc_init(UILayoutGuide);
  [(RouteOverviewCell *)self setLabelTrailingToGoButtonLeadingLayoutGuide:v4];

  v5 = [(RouteOverviewCell *)self contentView];
  v6 = [(RouteOverviewCell *)self contentGuide];
  [v5 addLayoutGuide:v6];

  v7 = [(RouteOverviewCell *)self contentView];
  v8 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  [v7 addLayoutGuide:v8];

  v9 = [(RouteOverviewCell *)self primaryLabel];
  LODWORD(v10) = 1148846080;
  [v9 setContentHuggingPriority:1 forAxis:v10];

  v11 = [(RouteOverviewCell *)self primaryLabel];
  LODWORD(v12) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v12];

  v13 = [(RouteOverviewCell *)self secondaryLabel];
  LODWORD(v14) = 1148846080;
  [v13 setContentHuggingPriority:1 forAxis:v14];

  v15 = [(RouteOverviewCell *)self secondaryLabel];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v16];

  v17 = [(RouteOverviewCell *)self routeDescriptionLabel];
  LODWORD(v18) = 1148846080;
  [v17 setContentHuggingPriority:1 forAxis:v18];

  v19 = [(RouteOverviewCell *)self routeDescriptionLabel];
  LODWORD(v20) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v20];

  v21 = [(RouteOverviewCell *)self secondaryLabel];
  v22 = [v21 topAnchor];
  v23 = [(RouteOverviewCell *)self primaryLabel];
  v24 = [v23 bottomAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v26 = [objc_opt_class() secondaryLabelFontProvider];
  v27 = [DynamicTypeWizard autoscaledConstraint:v25 constant:v26 withFontProvider:0.0];
  [(RouteOverviewCell *)self setPrimaryToSecondaryLabelConstraint:v27];

  v28 = [(RouteOverviewCell *)self goButton];
  LODWORD(v29) = 1148846080;
  [v28 setContentCompressionResistancePriority:0 forAxis:v29];

  v30 = [(RouteOverviewCell *)self goButton];
  LODWORD(v31) = 1148846080;
  [v30 setContentHuggingPriority:0 forAxis:v31];

  v32 = [(RouteOverviewCell *)self goButton];
  v33 = [v32 trailingAnchor];
  v34 = [(RouteOverviewCell *)self contentGuide];
  v35 = [v34 trailingAnchor];
  v207 = [v33 constraintEqualToAnchor:v35];

  LODWORD(v36) = 1148829696;
  [v207 setPriority:v36];
  v37 = [(RouteOverviewCell *)self stepsButton];
  LODWORD(v38) = 1148846080;
  [v37 setContentCompressionResistancePriority:0 forAxis:v38];

  v39 = [(RouteOverviewCell *)self stepsButton];
  LODWORD(v40) = 1148846080;
  [v39 setContentHuggingPriority:0 forAxis:v40];

  v41 = [(RouteOverviewCell *)self stepsButton];
  v42 = [v41 trailingAnchor];
  v43 = [(RouteOverviewCell *)self contentGuide];
  v44 = [v43 trailingAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];

  v46 = v45;
  v180 = v45;
  LODWORD(v47) = 1148829696;
  [v45 setPriority:v47];
  v48 = [(RouteOverviewCell *)self bookButton];
  LODWORD(v49) = 1148846080;
  [v48 setContentCompressionResistancePriority:0 forAxis:v49];

  v50 = [(RouteOverviewCell *)self bookButton];
  LODWORD(v51) = 1148846080;
  [v50 setContentHuggingPriority:0 forAxis:v51];

  v52 = [(RouteOverviewCell *)self bookButton];
  v53 = [v52 trailingAnchor];
  v54 = [(RouteOverviewCell *)self contentGuide];
  v55 = [v54 trailingAnchor];
  v56 = [v53 constraintEqualToAnchor:v55];

  v57 = v56;
  v179 = v56;
  LODWORD(v58) = 1148829696;
  [v56 setPriority:v58];
  v59 = [(RouteOverviewCell *)self contentView];
  v60 = [v59 heightAnchor];
  [objc_opt_class() minimumHeight];
  v61 = [v60 constraintGreaterThanOrEqualToConstant:?];
  minimumHeightConstraint = self->_minimumHeightConstraint;
  self->_minimumHeightConstraint = v61;

  LODWORD(v63) = 1148829696;
  [(NSLayoutConstraint *)self->_minimumHeightConstraint setPriority:v63];
  [objc_opt_class() horizontalContentInset];
  v65 = v64;
  v66 = [(RouteOverviewCell *)self contentGuide];
  v67 = [v66 leadingAnchor];
  v68 = [(RouteOverviewCell *)self contentView];
  v69 = [v68 leadingAnchor];
  v199 = [v67 constraintEqualToAnchor:v69 constant:v65];

  v70 = [(RouteOverviewCell *)self contentGuide];
  v71 = [v70 trailingAnchor];
  v72 = [(RouteOverviewCell *)self contentView];
  v73 = [v72 trailingAnchor];
  v198 = [v71 constraintEqualToAnchor:v73 constant:-v65];

  v74 = [(RouteOverviewCell *)self contentGuide];
  v75 = [v74 topAnchor];
  v76 = [(RouteOverviewCell *)self primaryLabel];
  v77 = [v76 topAnchor];
  v78 = [v75 constraintEqualToAnchor:v77];
  [(RouteOverviewCell *)self setContentTopConstraint:v78];

  v79 = [(RouteOverviewCell *)self contentGuide];
  v80 = [v79 bottomAnchor];
  v81 = [(RouteOverviewCell *)self secondaryLabel];
  v82 = [v81 lastBaselineAnchor];
  v83 = [v80 constraintEqualToAnchor:v82];
  [(RouteOverviewCell *)self setContentBottomConstraint:v83];

  v84 = [(RouteOverviewCell *)self goButton];
  v85 = [v84 widthAnchor];
  v86 = [v85 constraintEqualToConstant:64.0];
  [(RouteOverviewCell *)self setGoButtonWidthConstraint:v86];

  v87 = [(RouteOverviewCell *)self goButton];
  v88 = [v87 heightAnchor];
  v89 = [v88 constraintEqualToConstant:64.0];
  [(RouteOverviewCell *)self setGoButtonHeightConstraint:v89];

  [(RouteOverviewCell *)self _updateGoButtonWidthConstraint];
  v90 = [(RouteOverviewCell *)self stepsButton];
  v91 = [v90 widthAnchor];
  v92 = [v91 constraintGreaterThanOrEqualToConstant:64.0];
  [(RouteOverviewCell *)self setStepsButtonMinWidthConstraint:v92];

  v93 = [(RouteOverviewCell *)self stepsButton];
  v94 = [v93 widthAnchor];
  v95 = [v94 constraintLessThanOrEqualToConstant:80.0];
  [(RouteOverviewCell *)self setStepsButtonMaxWidthConstraint:v95];

  v96 = [(RouteOverviewCell *)self stepsButton];
  v97 = [v96 heightAnchor];
  v98 = [v97 constraintEqualToConstant:64.0];
  [(RouteOverviewCell *)self setStepsButtonHeightConstraint:v98];

  v99 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  v100 = [v99 widthAnchor];
  v101 = [v100 constraintEqualToConstant:15.0];
  [(RouteOverviewCell *)self setLabelTrailingToPrimaryButtonLeadingPaddingConstraint:v101];

  v102 = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  v103 = [v102 widthAnchor];
  v104 = [v103 constraintEqualToConstant:0.0];
  [(RouteOverviewCell *)self setPrimaryCompanionImageWidthConstraint:v104];

  v105 = [(RouteOverviewCell *)self primaryLabel];
  v106 = [v105 leadingAnchor];
  v107 = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  v108 = [v107 trailingAnchor];
  v109 = [v106 constraintEqualToAnchor:v108];
  [(RouteOverviewCell *)self setPrimaryCompanionImageToLabelPaddingConstraint:v109];

  v110 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  v111 = [v110 trailingAnchor];
  v112 = [(RouteOverviewCell *)self goButton];
  v113 = [v112 trailingAnchor];
  v114 = [v111 constraintEqualToAnchor:v113];
  [(RouteOverviewCell *)self setNoButtonLeadingConstraint:v114];

  v115 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  v116 = [v115 trailingAnchor];
  v117 = [(RouteOverviewCell *)self goButton];
  v118 = [v117 leadingAnchor];
  v119 = [v116 constraintEqualToAnchor:v118];
  [(RouteOverviewCell *)self setGoButtonLeadingConstraint:v119];

  v120 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  v121 = [v120 trailingAnchor];
  v122 = [(RouteOverviewCell *)self stepsButton];
  v123 = [v122 leadingAnchor];
  v124 = [v121 constraintEqualToAnchor:v123];
  [(RouteOverviewCell *)self setStepsButtonLeadingConstraint:v124];

  v125 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  v126 = [v125 trailingAnchor];
  v127 = [(RouteOverviewCell *)self bookButton];
  v128 = [v127 leadingAnchor];
  v129 = [v126 constraintEqualToAnchor:v128];
  [(RouteOverviewCell *)self setBookButtonLeadingConstraint:v129];

  [objc_opt_class() minimumVerticalPadding];
  v131 = v130;
  v206 = [(RouteOverviewCell *)self minimumHeightConstraint];
  v208[0] = v206;
  v205 = [(RouteOverviewCell *)self contentGuide];
  v203 = [v205 topAnchor];
  v204 = [(RouteOverviewCell *)self contentView];
  v202 = [v204 topAnchor];
  v201 = [v203 constraintGreaterThanOrEqualToAnchor:v202 constant:v131];
  v208[1] = v201;
  v200 = [(RouteOverviewCell *)self contentView];
  v196 = [v200 bottomAnchor];
  v197 = [(RouteOverviewCell *)self contentGuide];
  v195 = [v197 bottomAnchor];
  v194 = [v196 constraintGreaterThanOrEqualToAnchor:v195 constant:v131];
  v208[2] = v194;
  v193 = [(RouteOverviewCell *)self contentGuide];
  v191 = [v193 centerYAnchor];
  v192 = [(RouteOverviewCell *)self contentView];
  v190 = [v192 centerYAnchor];
  v189 = [v191 constraintEqualToAnchor:v190];
  v208[3] = v189;
  v208[4] = v199;
  v208[5] = v198;
  v188 = [(RouteOverviewCell *)self contentTopConstraint];
  v208[6] = v188;
  v187 = [(RouteOverviewCell *)self contentBottomConstraint];
  v208[7] = v187;
  v186 = [(RouteOverviewCell *)self primaryCompanionImageWidthConstraint];
  v208[8] = v186;
  v185 = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  v183 = [v185 leadingAnchor];
  v184 = [(RouteOverviewCell *)self contentGuide];
  v182 = [v184 leadingAnchor];
  v181 = [v183 constraintEqualToAnchor:v182];
  v208[9] = v181;
  v178 = [(RouteOverviewCell *)self primaryCompanionImageToLabelPaddingConstraint];
  v208[10] = v178;
  v177 = [(RouteOverviewCell *)self primaryLabel];
  v175 = [v177 trailingAnchor];
  v176 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  v174 = [v176 leadingAnchor];
  v173 = [v175 constraintEqualToAnchor:v174];
  v208[11] = v173;
  v172 = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  v170 = [v172 centerYAnchor];
  v171 = [(RouteOverviewCell *)self primaryLabel];
  v169 = [v171 centerYAnchor];
  v168 = [v170 constraintEqualToAnchor:v169];
  v208[12] = v168;
  v167 = [(RouteOverviewCell *)self secondaryLabel];
  v165 = [v167 leadingAnchor];
  v166 = [(RouteOverviewCell *)self contentGuide];
  v164 = [v166 leadingAnchor];
  v163 = [v165 constraintEqualToAnchor:v164];
  v208[13] = v163;
  v162 = [(RouteOverviewCell *)self secondaryLabel];
  v159 = [v162 trailingAnchor];
  v160 = [(RouteOverviewCell *)self labelTrailingToGoButtonLeadingLayoutGuide];
  v158 = [v160 leadingAnchor];
  v157 = [v159 constraintEqualToAnchor:v158];
  v208[14] = v157;
  v156 = [(RouteOverviewCell *)self primaryToSecondaryLabelConstraint];
  v208[15] = v156;
  v208[16] = v207;
  v208[17] = v46;
  v208[18] = v57;
  v155 = [(RouteOverviewCell *)self goButton];
  v153 = [v155 centerYAnchor];
  v154 = [(RouteOverviewCell *)self contentGuide];
  v152 = [v154 centerYAnchor];
  v151 = [v153 constraintEqualToAnchor:v152];
  v208[19] = v151;
  v150 = [(RouteOverviewCell *)self stepsButton];
  v148 = [v150 centerYAnchor];
  v149 = [(RouteOverviewCell *)self contentGuide];
  v147 = [v149 centerYAnchor];
  v146 = [v148 constraintEqualToAnchor:v147];
  v208[20] = v146;
  v145 = [(RouteOverviewCell *)self bookButton];
  v143 = [v145 centerYAnchor];
  v144 = [(RouteOverviewCell *)self contentGuide];
  v142 = [v144 centerYAnchor];
  v132 = [v143 constraintEqualToAnchor:v142];
  v208[21] = v132;
  v133 = [(RouteOverviewCell *)self goButtonWidthConstraint];
  v208[22] = v133;
  v134 = [(RouteOverviewCell *)self labelTrailingToPrimaryButtonLeadingPaddingConstraint];
  v208[23] = v134;
  v135 = [(RouteOverviewCell *)self goButtonHeightConstraint];
  v208[24] = v135;
  v136 = [(RouteOverviewCell *)self stepsButtonMinWidthConstraint];
  v208[25] = v136;
  v137 = [(RouteOverviewCell *)self stepsButtonMaxWidthConstraint];
  v208[26] = v137;
  v138 = [(RouteOverviewCell *)self stepsButtonHeightConstraint];
  v208[27] = v138;
  v139 = [(RouteOverviewCell *)self bookButton];
  v140 = [v139 heightAnchor];
  v141 = [v140 constraintGreaterThanOrEqualToConstant:40.0];
  v208[28] = v141;
  v161 = [NSArray arrayWithObjects:v208 count:29];

  [NSLayoutConstraint activateConstraints:v161];
}

- (void)updateTheme
{
  v22.receiver = self;
  v22.super_class = RouteOverviewCell;
  [(MapsThemeCollectionViewListCell *)&v22 updateTheme];
  v3 = [(RouteOverviewCell *)self theme];
  goButton = self->_goButton;
  v5 = [v3 greenButtonBackgroundColor:0];
  [(BackgroundColorButton *)goButton setBackgroundColor:v5 forState:0];

  v6 = self->_goButton;
  v7 = [v3 greenButtonBackgroundColor:1];
  [(BackgroundColorButton *)v6 setBackgroundColor:v7 forState:1];

  v8 = self->_goButton;
  v9 = [v3 greenButtonTitleColor:0];
  [(MapsProgressBarButton *)v8 setTitleColor:v9 forState:0];

  v10 = self->_goButton;
  v11 = [v3 greenButtonTitleColor:1];
  [(MapsProgressBarButton *)v10 setTitleColor:v11 forState:1];

  bookButton = self->_bookButton;
  v13 = [v3 blueButtonBackgroundColor:0];
  [(BackgroundColorButton *)bookButton setBackgroundColor:v13 forState:0];

  v14 = self->_bookButton;
  v15 = [v3 blueButtonBackgroundColor:1];
  [(BackgroundColorButton *)v14 setBackgroundColor:v15 forState:1];

  v16 = self->_bookButton;
  v17 = [v3 blueButtonTitleColor:0];
  [(BackgroundColorButton *)v16 setTitleColor:v17 forState:0];

  v18 = self->_bookButton;
  v19 = [v3 blueButtonTitleColor:1];
  [(BackgroundColorButton *)v18 setTitleColor:v19 forState:1];

  detailsButton = self->_detailsButton;
  v21 = [v3 keyColor];
  [(UIButton *)detailsButton setTitleColor:v21 forState:0];
}

- (void)setPrimaryLabelCompanionImage:(id)a3
{
  v4 = a3;
  v5 = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  [v5 setImage:v4];

  v6 = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  v7 = v6;
  if (v4)
  {
    v8 = 8.0;
  }

  else
  {
    v8 = 0.0;
  }

  if (v4)
  {
    v9 = 20.0;
  }

  else
  {
    v9 = 0.0;
  }

  [v6 setHidden:v4 == 0];

  v10 = [(RouteOverviewCell *)self primaryCompanionImageToLabelPaddingConstraint];
  [v10 setConstant:v8];

  v11 = [(RouteOverviewCell *)self primaryCompanionImageWidthConstraint];
  [v11 setConstant:v9];
}

- (UIImage)primaryLabelCompanionImage
{
  v2 = [(RouteOverviewCell *)self primaryLabelCompanionImageView];
  v3 = [v2 image];

  return v3;
}

- (void)_createSubviews
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = v3;
  [v3 setNumberOfLines:0];
  v4 = [objc_opt_class() primaryLabelFontProvider];
  [DynamicTypeWizard autorefreshLabel:v3 withFontProvider:v4];

  objc_storeStrong(&self->_primaryLabel, v3);
  v5 = +[UIColor labelColor];
  [(UILabel *)self->_primaryLabel setTextColor:v5];

  [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
  v6 = [(RouteOverviewCell *)self contentView];
  [v6 addSubview:self->_primaryLabel];

  v7 = objc_alloc_init(AutolayoutImageView);
  [(AutolayoutImageView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AutolayoutImageView *)v7 setHidden:1];
  v58 = v7;
  objc_storeStrong(&self->_primaryLabelCompanionImageView, v7);
  [(UIImageView *)self->_primaryLabelCompanionImageView setAccessibilityIdentifier:@"PrimaryLabelCompanionImageView"];
  v8 = [(RouteOverviewCell *)self contentView];
  [v8 addSubview:self->_primaryLabelCompanionImageView];

  v9 = objc_alloc_init(MapsThemeMultiPartLabel);
  [(MapsThemeMultiPartLabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeMultiPartLabel *)v9 setNumberOfLines:0];
  [(MapsThemeMultiPartLabel *)v9 setUserInteractionEnabled:0];
  v10 = [objc_opt_class() secondaryLabelFontProvider];
  [DynamicTypeWizard autorefreshLabel:v9 withFontProvider:v10];

  v11 = [(RouteOverviewCell *)self contentView];
  [v11 addSubview:v9];

  objc_storeStrong(&self->_secondaryLabel, v9);
  v12 = +[UIColor secondaryLabelColor];
  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setTextColor:v12];

  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setTextInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(MapsThemeMultiPartLabel *)self->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  v13 = [MapsProgressBarButton buttonWithType:0];
  [v13 setClipsToBounds:1];
  [v13 _setContinuousCornerRadius:12.0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v13 titleLabel];
  [v14 setAdjustsFontSizeToFitWidth:1];

  v15 = [v13 titleLabel];
  [v15 setMinimumScaleFactor:0.474999994];

  v16 = [v13 titleLabel];
  [v16 setAllowsDefaultTighteningForTruncation:1];

  v17 = [v13 titleLabel];
  [v17 setLineBreakMode:2];

  [v13 setFillStyle:0];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"GO [Route Planning]" value:@"localized string not found" table:0];
  [v13 setTitle:v19 forState:0];

  v20 = [v13 titleLabel];
  v21 = [objc_opt_class() goButtonFontProvider];
  [DynamicTypeWizard autorefreshLabel:v20 withFontProvider:v21];

  [DynamicTypeWizard makeObject:self performSelector:"_updateGoButtonWidthConstraint" whenSizeCategoryChangesWithOrder:2];
  [v13 setContentEdgeInsets:{0.0, 6.0, 0.0, 6.0}];
  [v13 addTarget:self action:? forControlEvents:?];
  [v13 setHidden:self->_buttonVisibility != 1];
  [v13 setAccessibilityIdentifier:@"GoButton"];
  v22 = [(RouteOverviewCell *)self contentView];
  [v22 addSubview:v13];

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
  v35 = [(RouteOverviewCell *)self contentView];
  [v35 addSubview:v34];

  objc_storeStrong(&self->_stepsButton, v34);
  v36 = [BackgroundColorButton buttonWithType:0];
  [v36 setClipsToBounds:1];
  v37 = [v36 layer];
  [v37 setCornerRadius:8.0];

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RouteOverviewCell *)self _resetBookButtonTitle];
  v38 = [v36 titleLabel];
  [DynamicTypeWizard autorefreshLabel:v38 withFontProvider:&stru_10165DAA8];

  [v36 setContentEdgeInsets:{0.0, 11.0, 0.0, 11.0}];
  [v36 addTarget:self action:"_didTapPrimaryActionButton:" forControlEvents:64];
  [v36 setHidden:self->_buttonVisibility != 2];
  [v36 setAccessibilityIdentifier:@"BookButton"];
  v39 = [(RouteOverviewCell *)self contentView];
  [v39 addSubview:v36];

  objc_storeStrong(&self->_bookButton, v36);
  v40 = [(RouteOverviewCell *)self contentView];
  [v40 setAccessibilityIdentifier:@"RouteOverviewCellContent"];

  v41 = [(RouteOverviewCell *)self contentView];
  v42 = [(RouteOverviewCell *)self advisoriesView];
  [v41 addSubview:v42];

  v43 = [(RouteOverviewCell *)self contentView];
  v44 = [(RouteOverviewCell *)self artworkList];
  [v43 addSubview:v44];

  v45 = [(RouteOverviewCell *)self contentView];
  v46 = [(RouteOverviewCell *)self detailsButton];
  [v45 addSubview:v46];

  v47 = [(RouteOverviewCell *)self contentView];
  v48 = [(RouteOverviewCell *)self tertiaryLabel];
  [v47 addSubview:v48];

  v49 = [(RouteOverviewCell *)self contentView];
  v50 = [(RouteOverviewCell *)self routeDescriptionLabel];
  [v49 addSubview:v50];

  v51 = [(RouteOverviewCell *)self contentView];
  v52 = [(RouteOverviewCell *)self elevationGraphView];
  [v51 addSubview:v52];

  [(DirectionsElevationGraphView *)self->_elevationGraphView setHidden:1];
  [(UILabel *)self->_tertiaryLabel setHidden:1];
  [(UIButton *)self->_detailsButton setHidden:1];
  [(TransitArtworkListView *)self->_artworkList setHidden:1];
  [(RouteAdvisoriesView *)self->_advisoriesView setHidden:1];
  v53 = [(RouteOverviewCell *)self routeDescriptionLabel];
  [v53 setHidden:1];

  if (sub_10000FA08(self) == 5)
  {
    v54 = +[UIColor systemWhiteColor];
    [(UILabel *)self->_primaryLabel setHighlightedTextColor:v54];

    v55 = +[UIColor systemWhiteColor];
    [(MapsThemeMultiPartLabel *)self->_secondaryLabel setHighlightedTextColor:v55];

    v56 = +[UIColor systemWhiteColor];
    v57 = [(RouteOverviewCell *)self routeDescriptionLabel];
    [v57 setHighlightedTextColor:v56];
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
  v8 = [(RouteOverviewCell *)self contentView];
  [v8 setBackgroundColor:v7];

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

- (RouteOverviewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = RouteOverviewCell;
  v3 = [(RouteOverviewCell *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RouteOverviewCell *)v3 customInit];
    v5 = v4;
  }

  return v4;
}

- (RouteOverviewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = RouteOverviewCell;
  v3 = [(RouteOverviewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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