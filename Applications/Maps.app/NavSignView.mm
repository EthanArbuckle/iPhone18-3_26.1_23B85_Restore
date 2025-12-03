@interface NavSignView
- (BOOL)hasMajorText;
- (BOOL)hasMinorText;
- (BOOL)hasOnlySingleLineText;
- (BOOL)hasText;
- (NavContainerLayoutDelegate)containerLayoutDelegate;
- (NavManeuverSignView)maneuverSign;
- (NavSignLayoutDelegate)signLayoutDelegate;
- (NavSignView)initWithCoder:(id)coder;
- (NavSignView)initWithFrame:(CGRect)frame;
- (NavSignViewAnalyticsDelegate)analyticsDelegate;
- (TextFirstLineCharacterRangeFinder)firstLineCharacterRangeFinder;
- (double)_calculateInterLabelConstraintConstant;
- (double)maxHeight;
- (id)accessibilityIdentifier;
- (void)_configureLabels;
- (void)_maps_commonInit;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateConstraints;
- (void)clearContent;
- (void)layoutSubviews;
- (void)refreshSign;
- (void)setDimmed:(BOOL)dimmed;
- (void)setMaxHeight:(double)height;
- (void)setSignLayoutDelegate:(id)delegate;
- (void)setSignLayoutDelegate:(id)delegate withAnimation:(id)animation;
- (void)setUsePersistentDisplay:(BOOL)display;
- (void)updateTheme;
@end

@implementation NavSignView

- (NavSignViewAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (NavSignLayoutDelegate)signLayoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_signLayoutDelegate);

  return WeakRetained;
}

- (NavContainerLayoutDelegate)containerLayoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_containerLayoutDelegate);

  return WeakRetained;
}

- (double)_calculateInterLabelConstraintConstant
{
  signLayoutDelegate = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate baselineMarginBetweenLabelsForSign:self];
  v5 = v4;

  minorLabel = [(NavSignView *)self minorLabel];
  [minorLabel bounds];
  v8 = v7;
  v10 = v9;
  firstLineCharacterRangeFinder = [(NavSignView *)self firstLineCharacterRangeFinder];
  [firstLineCharacterRangeFinder setTextSize:{v8, v10}];

  minorLabel2 = [(NavSignView *)self minorLabel];
  attributedText = [minorLabel2 attributedText];

  firstLineCharacterRangeFinder2 = [(NavSignView *)self firstLineCharacterRangeFinder];
  [firstLineCharacterRangeFinder2 setAttributedText:attributedText];

  firstLineCharacterRangeFinder3 = [(NavSignView *)self firstLineCharacterRangeFinder];
  lineFragments = [firstLineCharacterRangeFinder3 lineFragments];
  firstObject = [lineFragments firstObject];

  firstLineCharacterRangeFinder4 = [(NavSignView *)self firstLineCharacterRangeFinder];
  v19 = [firstLineCharacterRangeFinder4 attributedStringForLineFragment:firstObject];

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100D72000;
  v39 = sub_100D72010;
  v40 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100D72018;
  v34[3] = &unk_101653058;
  v34[4] = &v35;
  [v19 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:objc_msgSend(v19 usingBlock:{"length"), 0, v34}];
  image = [v36[5] image];

  if (image)
  {
    minorLabel3 = [(NavSignView *)self minorLabel];
    if ([minorLabel3 shouldUseAlternateFont])
    {
      minorLabel4 = [(NavSignView *)self minorLabel];
      [minorLabel4 alternateFont];
    }

    else
    {
      minorLabel4 = [(NavSignView *)self minorLabel];
      [minorLabel4 preferredFont];
    }
    v23 = ;

    image2 = [v36[5] image];
    [image2 size];
    v26 = v25;
    [v23 lineHeight];
    v28 = v27;

    if (v26 > v28)
    {
      signLayoutDelegate2 = [(NavSignView *)self signLayoutDelegate];
      [signLayoutDelegate2 labelBaselineToInlineShieldTopForSign:self];

      image3 = [v36[5] image];
      [image3 size];
      [v36[5] bounds];
      selfCopy = self;
      UIRoundToViewScale();
      v5 = v32;
    }
  }

  _Block_object_dispose(&v35, 8);

  return v5;
}

- (void)_configureLabels
{
  signLayoutDelegate = [(NavSignView *)self signLayoutDelegate];

  if (signLayoutDelegate)
  {
    majorLabel = [(NavSignView *)self majorLabel];
    signLayoutDelegate2 = [(NavSignView *)self signLayoutDelegate];
    [majorLabel setTextAlignment:{objc_msgSend(signLayoutDelegate2, "navSignView:textAlignmentForMajorText:", self, 1)}];

    signLayoutDelegate3 = [(NavSignView *)self signLayoutDelegate];
    v6 = [signLayoutDelegate3 navSignView:self preferredFontForMajorText:1];
    _mapkit_fontByAddingFeaturesForTabularFigures = [v6 _mapkit_fontByAddingFeaturesForTabularFigures];
    [majorLabel setPreferredFont:_mapkit_fontByAddingFeaturesForTabularFigures];

    signLayoutDelegate4 = [(NavSignView *)self signLayoutDelegate];
    v9 = [signLayoutDelegate4 navSignView:self alternateFontForMajorText:1];
    _mapkit_fontByAddingFeaturesForTabularFigures2 = [v9 _mapkit_fontByAddingFeaturesForTabularFigures];
    [majorLabel setAlternateFont:_mapkit_fontByAddingFeaturesForTabularFigures2];

    signLayoutDelegate5 = [(NavSignView *)self signLayoutDelegate];
    [signLayoutDelegate5 navSignView:self alternateFontLineSpacingForMajorText:1];
    [majorLabel setAlternateFontLineSpacing:?];

    signLayoutDelegate6 = [(NavSignView *)self signLayoutDelegate];
    [majorLabel setMaxNumberOfLinesWithPreferredFont:{objc_msgSend(signLayoutDelegate6, "navSignView:maxNumberOfLinesWithPreferredFontForMajorText:", self, 1)}];

    signLayoutDelegate7 = [(NavSignView *)self signLayoutDelegate];
    [majorLabel setMaxNumberOfLinesWithLongestAlternative:{objc_msgSend(signLayoutDelegate7, "navSignView:maxNumberOfLinesWithLongestAlternativeForMajorText:", self, 1)}];

    signLayoutDelegate8 = [(NavSignView *)self signLayoutDelegate];
    [majorLabel setMaxNumberOfTotalLines:{objc_msgSend(signLayoutDelegate8, "navSignView:maxNumberOfTotalLinesForMajorText:", self, 1)}];

    signLayoutDelegate9 = [(NavSignView *)self signLayoutDelegate];
    [majorLabel setInlineShieldSize:{objc_msgSend(signLayoutDelegate9, "navSignView:inlineShieldSizeForMajorText:", self, 1)}];

    minorLabel = [(NavSignView *)self minorLabel];
    signLayoutDelegate10 = [(NavSignView *)self signLayoutDelegate];
    [minorLabel setTextAlignment:{objc_msgSend(signLayoutDelegate10, "navSignView:textAlignmentForMajorText:", self, 0)}];

    signLayoutDelegate11 = [(NavSignView *)self signLayoutDelegate];
    v19 = [signLayoutDelegate11 navSignView:self preferredFontForMajorText:0];
    _mapkit_fontByAddingFeaturesForTabularFigures3 = [v19 _mapkit_fontByAddingFeaturesForTabularFigures];
    [minorLabel setPreferredFont:_mapkit_fontByAddingFeaturesForTabularFigures3];

    signLayoutDelegate12 = [(NavSignView *)self signLayoutDelegate];
    v22 = [signLayoutDelegate12 navSignView:self alternateFontForMajorText:0];
    _mapkit_fontByAddingFeaturesForTabularFigures4 = [v22 _mapkit_fontByAddingFeaturesForTabularFigures];
    [minorLabel setAlternateFont:_mapkit_fontByAddingFeaturesForTabularFigures4];

    signLayoutDelegate13 = [(NavSignView *)self signLayoutDelegate];
    [signLayoutDelegate13 navSignView:self alternateFontLineSpacingForMajorText:0];
    [minorLabel setAlternateFontLineSpacing:?];

    signLayoutDelegate14 = [(NavSignView *)self signLayoutDelegate];
    [minorLabel setMaxNumberOfLinesWithPreferredFont:{objc_msgSend(signLayoutDelegate14, "navSignView:maxNumberOfLinesWithPreferredFontForMajorText:", self, 0)}];

    signLayoutDelegate15 = [(NavSignView *)self signLayoutDelegate];
    [minorLabel setMaxNumberOfLinesWithLongestAlternative:{objc_msgSend(signLayoutDelegate15, "navSignView:maxNumberOfLinesWithLongestAlternativeForMajorText:", self, 0)}];

    signLayoutDelegate16 = [(NavSignView *)self signLayoutDelegate];
    [minorLabel setMaxNumberOfTotalLines:{objc_msgSend(signLayoutDelegate16, "navSignView:maxNumberOfTotalLinesForMajorText:", self, 0)}];

    signLayoutDelegate17 = [(NavSignView *)self signLayoutDelegate];
    [minorLabel setInlineShieldSize:{objc_msgSend(signLayoutDelegate17, "navSignView:inlineShieldSizeForMajorText:", self, 0)}];
  }
}

- (TextFirstLineCharacterRangeFinder)firstLineCharacterRangeFinder
{
  firstLineCharacterRangeFinder = self->_firstLineCharacterRangeFinder;
  if (!firstLineCharacterRangeFinder)
  {
    v4 = objc_alloc_init(TextFirstLineCharacterRangeFinder);
    v5 = self->_firstLineCharacterRangeFinder;
    self->_firstLineCharacterRangeFinder = v4;

    firstLineCharacterRangeFinder = self->_firstLineCharacterRangeFinder;
  }

  return firstLineCharacterRangeFinder;
}

- (void)_updateConstraints
{
  hasMajorText = [(NavSignView *)self hasMajorText];
  hasMinorText = [(NavSignView *)self hasMinorText];
  majorLabel = [(NavSignView *)self majorLabel];
  [majorLabel setHidden:hasMajorText ^ 1];

  minorLabel = [(NavSignView *)self minorLabel];
  [minorLabel setHidden:hasMinorText ^ 1];

  [(NavSignView *)self _configureLabels];
  signLayoutDelegate = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate minimumHeightForSign:self];
  v9 = v8;

  minSignHeightConstraint = [(NavSignView *)self minSignHeightConstraint];
  [minSignHeightConstraint setConstant:v9];

  signLayoutDelegate2 = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate2 navSignView:self textLeadingMarginForMajorText:1];
  v13 = v12;

  signLayoutDelegate3 = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate3 navSignView:self textLeadingMarginForMajorText:0];
  v16 = v15;

  signLayoutDelegate4 = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate4 navSignView:self textTrailingMarginForMajorText:1];
  v19 = v18;

  signLayoutDelegate5 = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate5 navSignView:self textTrailingMarginForMajorText:0];
  v22 = v21;

  majorLabelLeadingMarginConstraint = [(NavSignView *)self majorLabelLeadingMarginConstraint];
  [majorLabelLeadingMarginConstraint setConstant:v13];

  minorLabelLeadingMarginConstraint = [(NavSignView *)self minorLabelLeadingMarginConstraint];
  [minorLabelLeadingMarginConstraint setConstant:v16];

  majorLabelTrailingMarginConstraint = [(NavSignView *)self majorLabelTrailingMarginConstraint];
  [majorLabelTrailingMarginConstraint setConstant:v19];

  minorLabelTrailingMarginConstraint = [(NavSignView *)self minorLabelTrailingMarginConstraint];
  [minorLabelTrailingMarginConstraint setConstant:v22];

  signLayoutDelegate6 = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate6 textTopMarginForSign:self];
  v29 = round(v28);

  majorLabelBaselineToTopConstraint = [(NavSignView *)self majorLabelBaselineToTopConstraint];
  [majorLabelBaselineToTopConstraint setConstant:v29];

  minorLabelBaselineToTopConstraint = [(NavSignView *)self minorLabelBaselineToTopConstraint];
  [minorLabelBaselineToTopConstraint setConstant:v29];

  signLayoutDelegate7 = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate7 textBottomMarginForSign:self];
  v34 = round(v33);

  bottomToMajorLabelBaselineConstraint = [(NavSignView *)self bottomToMajorLabelBaselineConstraint];
  [bottomToMajorLabelBaselineConstraint setConstant:v34];

  bottomToMinorLabelBaselineConstraint = [(NavSignView *)self bottomToMinorLabelBaselineConstraint];
  [bottomToMinorLabelBaselineConstraint setConstant:v34];

  [(NavSignView *)self _calculateInterLabelConstraintConstant];
  v38 = v37;
  minorToMajorLabelBaselineConstraint = [(NavSignView *)self minorToMajorLabelBaselineConstraint];
  [minorToMajorLabelBaselineConstraint setConstant:v38];

  v63 = objc_alloc_init(LayoutConstraintActivationHelper);
  signLayoutDelegate8 = [(NavSignView *)self signLayoutDelegate];
  v41 = [signLayoutDelegate8 navSignView:self shouldAlignToLeadingForMajorText:1];

  signLayoutDelegate9 = [(NavSignView *)self signLayoutDelegate];
  v43 = [signLayoutDelegate9 navSignView:self shouldAlignToLeadingForMajorText:0];

  signLayoutDelegate10 = [(NavSignView *)self signLayoutDelegate];
  v45 = [signLayoutDelegate10 navSignView:self shouldAlignToTrailingForMajorText:1];

  signLayoutDelegate11 = [(NavSignView *)self signLayoutDelegate];
  v47 = [signLayoutDelegate11 navSignView:self shouldAlignToTrailingForMajorText:0];

  signLayoutDelegate12 = [(NavSignView *)self signLayoutDelegate];
  v49 = [signLayoutDelegate12 shouldAlignMinorToMajorLabelLeadingForSign:self];

  signLayoutDelegate13 = [(NavSignView *)self signLayoutDelegate];
  v51 = [signLayoutDelegate13 shouldAlignMinorToMajorLabelTrailingForSign:self];

  majorLabelLeadingMarginConstraint2 = [(NavSignView *)self majorLabelLeadingMarginConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:majorLabelLeadingMarginConstraint2 activate:v41];

  minorLabelLeadingMarginConstraint2 = [(NavSignView *)self minorLabelLeadingMarginConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:minorLabelLeadingMarginConstraint2 activate:v43];

  majorLabelTrailingMarginConstraint2 = [(NavSignView *)self majorLabelTrailingMarginConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:majorLabelTrailingMarginConstraint2 activate:v45];

  minorLabelTrailingMarginConstraint2 = [(NavSignView *)self minorLabelTrailingMarginConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:minorLabelTrailingMarginConstraint2 activate:v47];

  minorToMajorLabelLeadingAlignmentConstraint = [(NavSignView *)self minorToMajorLabelLeadingAlignmentConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:minorToMajorLabelLeadingAlignmentConstraint activate:v49];

  minorToMajorLabelTrailingAlignmentConstraint = [(NavSignView *)self minorToMajorLabelTrailingAlignmentConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:minorToMajorLabelTrailingAlignmentConstraint activate:v51];

  majorLabelBaselineToTopConstraint2 = [(NavSignView *)self majorLabelBaselineToTopConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:majorLabelBaselineToTopConstraint2 activate:hasMajorText];

  minorLabelBaselineToTopConstraint2 = [(NavSignView *)self minorLabelBaselineToTopConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:minorLabelBaselineToTopConstraint2 activate:!hasMajorText & hasMinorText];

  minorToMajorLabelBaselineConstraint2 = [(NavSignView *)self minorToMajorLabelBaselineConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:minorToMajorLabelBaselineConstraint2 activate:hasMinorText & hasMajorText];

  bottomToMinorLabelBaselineConstraint2 = [(NavSignView *)self bottomToMinorLabelBaselineConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:bottomToMinorLabelBaselineConstraint2 activate:hasMinorText];

  bottomToMajorLabelBaselineConstraint2 = [(NavSignView *)self bottomToMajorLabelBaselineConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:bottomToMajorLabelBaselineConstraint2 activate:hasMajorText && !hasMinorText];

  [(LayoutConstraintActivationHelper *)v63 commitPendingConstraints];
}

- (void)_setupConstraints
{
  v3 = _NSDictionaryOfVariableBindings(@"_majorLabel, _minorLabel", self->_majorLabel, self->_minorLabel, 0);
  v4 = +[NSMutableArray array];
  v5 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=0)-[_majorLabel]-(>=0)-[_minorLabel]-(>=0)-|", 0, 0, v3);
  [v4 addObjectsFromArray:v5];

  v6 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(>=0)-[_majorLabel]-(>=0)-|", 0, 0, v3);
  [v4 addObjectsFromArray:v6];

  v7 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(>=0)-[_minorLabel]-(>=0)-|", 0, 0, v3);
  [v4 addObjectsFromArray:v7];

  heightAnchor = [(NavSignView *)self heightAnchor];
  v9 = [heightAnchor constraintGreaterThanOrEqualToConstant:0.0];
  minSignHeightConstraint = self->_minSignHeightConstraint;
  self->_minSignHeightConstraint = v9;

  heightAnchor2 = [(NavSignView *)self heightAnchor];
  [(NavSignView *)self _maps_maxConstraintConstantForAxis:0];
  v12 = [heightAnchor2 constraintLessThanOrEqualToConstant:?];
  maxSignHeightConstraint = self->_maxSignHeightConstraint;
  self->_maxSignHeightConstraint = v12;

  minSignHeightConstraint = [(NavSignView *)self minSignHeightConstraint];
  v80[0] = minSignHeightConstraint;
  maxSignHeightConstraint = [(NavSignView *)self maxSignHeightConstraint];
  v80[1] = maxSignHeightConstraint;
  v16 = [NSArray arrayWithObjects:v80 count:2];
  [v4 addObjectsFromArray:v16];

  [NSLayoutConstraint activateConstraints:v4];
  majorLabel = [(NavSignView *)self majorLabel];
  leadingAnchor = [majorLabel leadingAnchor];
  leadingAnchor2 = [(NavSignView *)self leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  majorLabelLeadingMarginConstraint = self->_majorLabelLeadingMarginConstraint;
  self->_majorLabelLeadingMarginConstraint = v20;

  trailingAnchor = [(NavSignView *)self trailingAnchor];
  majorLabel2 = [(NavSignView *)self majorLabel];
  trailingAnchor2 = [majorLabel2 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  majorLabelTrailingMarginConstraint = self->_majorLabelTrailingMarginConstraint;
  self->_majorLabelTrailingMarginConstraint = v25;

  minorLabel = [(NavSignView *)self minorLabel];
  leadingAnchor3 = [minorLabel leadingAnchor];
  leadingAnchor4 = [(NavSignView *)self leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  minorLabelLeadingMarginConstraint = self->_minorLabelLeadingMarginConstraint;
  self->_minorLabelLeadingMarginConstraint = v30;

  trailingAnchor3 = [(NavSignView *)self trailingAnchor];
  minorLabel2 = [(NavSignView *)self minorLabel];
  trailingAnchor4 = [minorLabel2 trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  minorLabelTrailingMarginConstraint = self->_minorLabelTrailingMarginConstraint;
  self->_minorLabelTrailingMarginConstraint = v35;

  minorLabel3 = [(NavSignView *)self minorLabel];
  leadingAnchor5 = [minorLabel3 leadingAnchor];
  majorLabel3 = [(NavSignView *)self majorLabel];
  leadingAnchor6 = [majorLabel3 leadingAnchor];
  v41 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  minorToMajorLabelLeadingAlignmentConstraint = self->_minorToMajorLabelLeadingAlignmentConstraint;
  self->_minorToMajorLabelLeadingAlignmentConstraint = v41;

  minorLabel4 = [(NavSignView *)self minorLabel];
  trailingAnchor5 = [minorLabel4 trailingAnchor];
  majorLabel4 = [(NavSignView *)self majorLabel];
  trailingAnchor6 = [majorLabel4 trailingAnchor];
  v47 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  minorToMajorLabelTrailingAlignmentConstraint = self->_minorToMajorLabelTrailingAlignmentConstraint;
  self->_minorToMajorLabelTrailingAlignmentConstraint = v47;

  majorLabel5 = [(NavSignView *)self majorLabel];
  firstBaselineAnchor = [majorLabel5 firstBaselineAnchor];
  topAnchor = [(NavSignView *)self topAnchor];
  v52 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  majorLabelBaselineToTopConstraint = self->_majorLabelBaselineToTopConstraint;
  self->_majorLabelBaselineToTopConstraint = v52;

  LODWORD(v54) = 1148829696;
  [(NSLayoutConstraint *)self->_majorLabelBaselineToTopConstraint setPriority:v54];
  minorLabel5 = [(NavSignView *)self minorLabel];
  firstBaselineAnchor2 = [minorLabel5 firstBaselineAnchor];
  topAnchor2 = [(NavSignView *)self topAnchor];
  v58 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor2];
  minorLabelBaselineToTopConstraint = self->_minorLabelBaselineToTopConstraint;
  self->_minorLabelBaselineToTopConstraint = v58;

  LODWORD(v60) = 1148829696;
  [(NSLayoutConstraint *)self->_minorLabelBaselineToTopConstraint setPriority:v60];
  minorLabel6 = [(NavSignView *)self minorLabel];
  firstBaselineAnchor3 = [minorLabel6 firstBaselineAnchor];
  majorLabel6 = [(NavSignView *)self majorLabel];
  lastBaselineAnchor = [majorLabel6 lastBaselineAnchor];
  v65 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor];
  minorToMajorLabelBaselineConstraint = self->_minorToMajorLabelBaselineConstraint;
  self->_minorToMajorLabelBaselineConstraint = v65;

  LODWORD(v67) = *"";
  [(NSLayoutConstraint *)self->_minorToMajorLabelBaselineConstraint setPriority:v67];
  bottomAnchor = [(NavSignView *)self bottomAnchor];
  majorLabel7 = [(NavSignView *)self majorLabel];
  lastBaselineAnchor2 = [majorLabel7 lastBaselineAnchor];
  v71 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  bottomToMajorLabelBaselineConstraint = self->_bottomToMajorLabelBaselineConstraint;
  self->_bottomToMajorLabelBaselineConstraint = v71;

  LODWORD(v73) = 1148829696;
  [(NSLayoutConstraint *)self->_bottomToMajorLabelBaselineConstraint setPriority:v73];
  bottomAnchor2 = [(NavSignView *)self bottomAnchor];
  minorLabel7 = [(NavSignView *)self minorLabel];
  lastBaselineAnchor3 = [minorLabel7 lastBaselineAnchor];
  v77 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor3];
  bottomToMinorLabelBaselineConstraint = self->_bottomToMinorLabelBaselineConstraint;
  self->_bottomToMinorLabelBaselineConstraint = v77;

  LODWORD(v79) = 1148829696;
  [(NSLayoutConstraint *)self->_bottomToMinorLabelBaselineConstraint setPriority:v79];
}

- (void)_setupSubviews
{
  v3 = [NavSignLabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(NavSignLabel *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  majorLabel = self->_majorLabel;
  self->_majorLabel = height;

  majorLabel = [(NavSignView *)self majorLabel];
  [majorLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  majorLabel2 = [(NavSignView *)self majorLabel];
  LODWORD(v11) = 1148846080;
  [majorLabel2 setContentCompressionResistancePriority:1 forAxis:v11];

  majorLabel3 = [(NavSignView *)self majorLabel];
  LODWORD(v13) = 1148846080;
  [majorLabel3 setContentHuggingPriority:1 forAxis:v13];

  majorLabel4 = [(NavSignView *)self majorLabel];
  [majorLabel4 setDelegate:self];

  [(NavSignLabel *)self->_majorLabel setAccessibilityIdentifier:@"MajorLabel"];
  majorLabel5 = [(NavSignView *)self majorLabel];
  [(NavSignView *)self addSubview:majorLabel5];

  height2 = [[NavSignLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  minorLabel = self->_minorLabel;
  self->_minorLabel = height2;

  minorLabel = [(NavSignView *)self minorLabel];
  [minorLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  minorLabel2 = [(NavSignView *)self minorLabel];
  LODWORD(v20) = 1148829696;
  [minorLabel2 setContentCompressionResistancePriority:1 forAxis:v20];

  minorLabel3 = [(NavSignView *)self minorLabel];
  LODWORD(v22) = 1148846080;
  [minorLabel3 setContentHuggingPriority:1 forAxis:v22];

  minorLabel4 = [(NavSignView *)self minorLabel];
  [minorLabel4 setLineBreakMode:4];

  minorLabel5 = [(NavSignView *)self minorLabel];
  [minorLabel5 setDelegate:self];

  [(NavSignLabel *)self->_minorLabel setAccessibilityIdentifier:@"MinorLabel"];
  minorLabel6 = [(NavSignView *)self minorLabel];
  [(NavSignView *)self addSubview:minorLabel6];
}

- (void)layoutSubviews
{
  [(NavSignView *)self _updateConstraints];
  v37.receiver = self;
  v37.super_class = NavSignView;
  [(NavSignView *)&v37 layoutSubviews];
  majorLabel = [(NavSignView *)self majorLabel];
  [majorLabel updateLabelIfNeeded];

  minorLabel = [(NavSignView *)self minorLabel];
  [minorLabel updateLabelIfNeeded];

  v36.receiver = self;
  v36.super_class = NavSignView;
  [(NavSignView *)&v36 layoutSubviews];
  signLayoutDelegate = [(NavSignView *)self signLayoutDelegate];
  LOBYTE(minorLabel) = objc_opt_respondsToSelector();

  if (minorLabel)
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    subviews = [(NavSignView *)self subviews];
    v7 = [subviews countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          signLayoutDelegate2 = [(NavSignView *)self signLayoutDelegate];
          v13 = signLayoutDelegate2;
          if (signLayoutDelegate2)
          {
            [signLayoutDelegate2 navSignView:self transformForSubview:v11];
          }

          else
          {
            v30 = 0u;
            v31 = 0u;
            v29 = 0u;
          }

          v26 = v29;
          v27 = v30;
          v28 = v31;
          [v11 setTransform:&v26];
        }

        v8 = [subviews countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    subviews = [(NavSignView *)self subviews];
    v14 = [subviews countByEnumeratingWithState:&v22 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      v20 = *&CGAffineTransformIdentity.c;
      v21 = *&CGAffineTransformIdentity.a;
      v19 = *&CGAffineTransformIdentity.tx;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(subviews);
          }

          v18 = *(*(&v22 + 1) + 8 * j);
          v26 = v21;
          v27 = v20;
          v28 = v19;
          [v18 setTransform:{&v26, v19, v20, v21}];
        }

        v15 = [subviews countByEnumeratingWithState:&v22 objects:v38 count:16];
      }

      while (v15);
    }
  }
}

- (void)updateTheme
{
  v9.receiver = self;
  v9.super_class = NavSignView;
  [(MapsThemeView *)&v9 updateTheme];
  theme = [(NavSignView *)self theme];
  navSignMajorTextColor = [theme navSignMajorTextColor];
  majorLabel = [(NavSignView *)self majorLabel];
  [majorLabel setTextColor:navSignMajorTextColor];

  theme2 = [(NavSignView *)self theme];
  navSignMinorTextColor = [theme2 navSignMinorTextColor];
  minorLabel = [(NavSignView *)self minorLabel];
  [minorLabel setTextColor:navSignMinorTextColor];
}

- (void)setUsePersistentDisplay:(BOOL)display
{
  if (self->_usePersistentDisplay != display)
  {
    self->_usePersistentDisplay = display;
    [(NavSignView *)self setNeedsLayout];
  }
}

- (void)setMaxHeight:(double)height
{
  maxSignHeightConstraint = [(NavSignView *)self maxSignHeightConstraint];
  [maxSignHeightConstraint setConstant:height];
}

- (double)maxHeight
{
  maxSignHeightConstraint = [(NavSignView *)self maxSignHeightConstraint];
  [maxSignHeightConstraint constant];
  v4 = v3;

  return v4;
}

- (void)setSignLayoutDelegate:(id)delegate withAnimation:(id)animation
{
  delegateCopy = delegate;
  animationCopy = animation;
  WeakRetained = objc_loadWeakRetained(&self->_signLayoutDelegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_signLayoutDelegate, delegateCopy);
    [(NavSignView *)self _configureLabels];
    [(NavSignView *)self _updateLabelText];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100D73874;
    v9[3] = &unk_101661B18;
    v9[4] = self;
    [animationCopy addAnimations:v9 completion:0];
  }
}

- (void)setSignLayoutDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[GroupAnimation animation];
  [v5 setAnimated:0];
  [(NavSignView *)self setSignLayoutDelegate:delegateCopy withAnimation:v5];

  [v5 runWithDefaultOptions];
}

- (BOOL)hasOnlySingleLineText
{
  if (![(NavSignView *)self hasMajorText])
  {
    minorLabel = [(NavSignView *)self minorLabel];
LABEL_6:
    v5 = minorLabel;
    v3 = [minorLabel lineCount] == 1;

    return v3;
  }

  if (![(NavSignView *)self hasMinorText])
  {
    minorLabel = [(NavSignView *)self majorLabel];
    goto LABEL_6;
  }

  return 0;
}

- (BOOL)hasText
{
  if ([(NavSignView *)self hasMajorText])
  {
    return 1;
  }

  return [(NavSignView *)self hasMinorText];
}

- (BOOL)hasMinorText
{
  minorLabel = [(NavSignView *)self minorLabel];
  textAlternatives = [minorLabel textAlternatives];
  v4 = [textAlternatives count] != 0;

  return v4;
}

- (BOOL)hasMajorText
{
  majorLabel = [(NavSignView *)self majorLabel];
  textAlternatives = [majorLabel textAlternatives];
  v4 = [textAlternatives count] != 0;

  return v4;
}

- (void)setDimmed:(BOOL)dimmed
{
  if (self->_dimmed != dimmed)
  {
    self->_dimmed = dimmed;
    v3 = 0.400000006;
    if (!dimmed)
    {
      v3 = 1.0;
    }

    [(NavSignView *)self setAlpha:v3];
  }
}

- (void)refreshSign
{
  [(NavSignView *)self _updateLabelText];

  [(NavSignView *)self setNeedsLayout];
}

- (void)clearContent
{
  [(NavSignView *)self setDimmed:0];
  majorLabel = [(NavSignView *)self majorLabel];
  [majorLabel setTextAlternatives:0];

  minorLabel = [(NavSignView *)self minorLabel];
  [minorLabel setTextAlternatives:0];
}

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_maps_commonInit
{
  _defaultSignLayoutDelegate = [(NavSignView *)self _defaultSignLayoutDelegate];
  objc_storeWeak(&self->_signLayoutDelegate, _defaultSignLayoutDelegate);

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(NavSignView *)self setAccessibilityIdentifier:v5];

  [(NavSignView *)self _setupSubviews];
  [(NavSignView *)self _configureLabels];

  [(NavSignView *)self _setupConstraints];
}

- (NavSignView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NavSignView;
  v3 = [(NavSignView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(NavSignView *)v3 _maps_commonInit];
  }

  return v4;
}

- (NavSignView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NavSignView;
  v3 = [(NavSignView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NavSignView *)v3 _maps_commonInit];
  }

  return v4;
}

- (NavManeuverSignView)maneuverSign
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end