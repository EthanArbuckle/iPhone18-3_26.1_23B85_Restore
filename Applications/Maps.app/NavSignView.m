@interface NavSignView
- (BOOL)hasMajorText;
- (BOOL)hasMinorText;
- (BOOL)hasOnlySingleLineText;
- (BOOL)hasText;
- (NavContainerLayoutDelegate)containerLayoutDelegate;
- (NavManeuverSignView)maneuverSign;
- (NavSignLayoutDelegate)signLayoutDelegate;
- (NavSignView)initWithCoder:(id)a3;
- (NavSignView)initWithFrame:(CGRect)a3;
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
- (void)setDimmed:(BOOL)a3;
- (void)setMaxHeight:(double)a3;
- (void)setSignLayoutDelegate:(id)a3;
- (void)setSignLayoutDelegate:(id)a3 withAnimation:(id)a4;
- (void)setUsePersistentDisplay:(BOOL)a3;
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
  v3 = [(NavSignView *)self signLayoutDelegate];
  [v3 baselineMarginBetweenLabelsForSign:self];
  v5 = v4;

  v6 = [(NavSignView *)self minorLabel];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v11 = [(NavSignView *)self firstLineCharacterRangeFinder];
  [v11 setTextSize:{v8, v10}];

  v12 = [(NavSignView *)self minorLabel];
  v13 = [v12 attributedText];

  v14 = [(NavSignView *)self firstLineCharacterRangeFinder];
  [v14 setAttributedText:v13];

  v15 = [(NavSignView *)self firstLineCharacterRangeFinder];
  v16 = [v15 lineFragments];
  v17 = [v16 firstObject];

  v18 = [(NavSignView *)self firstLineCharacterRangeFinder];
  v19 = [v18 attributedStringForLineFragment:v17];

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
  v20 = [v36[5] image];

  if (v20)
  {
    v21 = [(NavSignView *)self minorLabel];
    if ([v21 shouldUseAlternateFont])
    {
      v22 = [(NavSignView *)self minorLabel];
      [v22 alternateFont];
    }

    else
    {
      v22 = [(NavSignView *)self minorLabel];
      [v22 preferredFont];
    }
    v23 = ;

    v24 = [v36[5] image];
    [v24 size];
    v26 = v25;
    [v23 lineHeight];
    v28 = v27;

    if (v26 > v28)
    {
      v29 = [(NavSignView *)self signLayoutDelegate];
      [v29 labelBaselineToInlineShieldTopForSign:self];

      v30 = [v36[5] image];
      [v30 size];
      [v36[5] bounds];
      v31 = self;
      UIRoundToViewScale();
      v5 = v32;
    }
  }

  _Block_object_dispose(&v35, 8);

  return v5;
}

- (void)_configureLabels
{
  v3 = [(NavSignView *)self signLayoutDelegate];

  if (v3)
  {
    v29 = [(NavSignView *)self majorLabel];
    v4 = [(NavSignView *)self signLayoutDelegate];
    [v29 setTextAlignment:{objc_msgSend(v4, "navSignView:textAlignmentForMajorText:", self, 1)}];

    v5 = [(NavSignView *)self signLayoutDelegate];
    v6 = [v5 navSignView:self preferredFontForMajorText:1];
    v7 = [v6 _mapkit_fontByAddingFeaturesForTabularFigures];
    [v29 setPreferredFont:v7];

    v8 = [(NavSignView *)self signLayoutDelegate];
    v9 = [v8 navSignView:self alternateFontForMajorText:1];
    v10 = [v9 _mapkit_fontByAddingFeaturesForTabularFigures];
    [v29 setAlternateFont:v10];

    v11 = [(NavSignView *)self signLayoutDelegate];
    [v11 navSignView:self alternateFontLineSpacingForMajorText:1];
    [v29 setAlternateFontLineSpacing:?];

    v12 = [(NavSignView *)self signLayoutDelegate];
    [v29 setMaxNumberOfLinesWithPreferredFont:{objc_msgSend(v12, "navSignView:maxNumberOfLinesWithPreferredFontForMajorText:", self, 1)}];

    v13 = [(NavSignView *)self signLayoutDelegate];
    [v29 setMaxNumberOfLinesWithLongestAlternative:{objc_msgSend(v13, "navSignView:maxNumberOfLinesWithLongestAlternativeForMajorText:", self, 1)}];

    v14 = [(NavSignView *)self signLayoutDelegate];
    [v29 setMaxNumberOfTotalLines:{objc_msgSend(v14, "navSignView:maxNumberOfTotalLinesForMajorText:", self, 1)}];

    v15 = [(NavSignView *)self signLayoutDelegate];
    [v29 setInlineShieldSize:{objc_msgSend(v15, "navSignView:inlineShieldSizeForMajorText:", self, 1)}];

    v16 = [(NavSignView *)self minorLabel];
    v17 = [(NavSignView *)self signLayoutDelegate];
    [v16 setTextAlignment:{objc_msgSend(v17, "navSignView:textAlignmentForMajorText:", self, 0)}];

    v18 = [(NavSignView *)self signLayoutDelegate];
    v19 = [v18 navSignView:self preferredFontForMajorText:0];
    v20 = [v19 _mapkit_fontByAddingFeaturesForTabularFigures];
    [v16 setPreferredFont:v20];

    v21 = [(NavSignView *)self signLayoutDelegate];
    v22 = [v21 navSignView:self alternateFontForMajorText:0];
    v23 = [v22 _mapkit_fontByAddingFeaturesForTabularFigures];
    [v16 setAlternateFont:v23];

    v24 = [(NavSignView *)self signLayoutDelegate];
    [v24 navSignView:self alternateFontLineSpacingForMajorText:0];
    [v16 setAlternateFontLineSpacing:?];

    v25 = [(NavSignView *)self signLayoutDelegate];
    [v16 setMaxNumberOfLinesWithPreferredFont:{objc_msgSend(v25, "navSignView:maxNumberOfLinesWithPreferredFontForMajorText:", self, 0)}];

    v26 = [(NavSignView *)self signLayoutDelegate];
    [v16 setMaxNumberOfLinesWithLongestAlternative:{objc_msgSend(v26, "navSignView:maxNumberOfLinesWithLongestAlternativeForMajorText:", self, 0)}];

    v27 = [(NavSignView *)self signLayoutDelegate];
    [v16 setMaxNumberOfTotalLines:{objc_msgSend(v27, "navSignView:maxNumberOfTotalLinesForMajorText:", self, 0)}];

    v28 = [(NavSignView *)self signLayoutDelegate];
    [v16 setInlineShieldSize:{objc_msgSend(v28, "navSignView:inlineShieldSizeForMajorText:", self, 0)}];
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
  v3 = [(NavSignView *)self hasMajorText];
  v4 = [(NavSignView *)self hasMinorText];
  v5 = [(NavSignView *)self majorLabel];
  [v5 setHidden:v3 ^ 1];

  v6 = [(NavSignView *)self minorLabel];
  [v6 setHidden:v4 ^ 1];

  [(NavSignView *)self _configureLabels];
  v7 = [(NavSignView *)self signLayoutDelegate];
  [v7 minimumHeightForSign:self];
  v9 = v8;

  v10 = [(NavSignView *)self minSignHeightConstraint];
  [v10 setConstant:v9];

  v11 = [(NavSignView *)self signLayoutDelegate];
  [v11 navSignView:self textLeadingMarginForMajorText:1];
  v13 = v12;

  v14 = [(NavSignView *)self signLayoutDelegate];
  [v14 navSignView:self textLeadingMarginForMajorText:0];
  v16 = v15;

  v17 = [(NavSignView *)self signLayoutDelegate];
  [v17 navSignView:self textTrailingMarginForMajorText:1];
  v19 = v18;

  v20 = [(NavSignView *)self signLayoutDelegate];
  [v20 navSignView:self textTrailingMarginForMajorText:0];
  v22 = v21;

  v23 = [(NavSignView *)self majorLabelLeadingMarginConstraint];
  [v23 setConstant:v13];

  v24 = [(NavSignView *)self minorLabelLeadingMarginConstraint];
  [v24 setConstant:v16];

  v25 = [(NavSignView *)self majorLabelTrailingMarginConstraint];
  [v25 setConstant:v19];

  v26 = [(NavSignView *)self minorLabelTrailingMarginConstraint];
  [v26 setConstant:v22];

  v27 = [(NavSignView *)self signLayoutDelegate];
  [v27 textTopMarginForSign:self];
  v29 = round(v28);

  v30 = [(NavSignView *)self majorLabelBaselineToTopConstraint];
  [v30 setConstant:v29];

  v31 = [(NavSignView *)self minorLabelBaselineToTopConstraint];
  [v31 setConstant:v29];

  v32 = [(NavSignView *)self signLayoutDelegate];
  [v32 textBottomMarginForSign:self];
  v34 = round(v33);

  v35 = [(NavSignView *)self bottomToMajorLabelBaselineConstraint];
  [v35 setConstant:v34];

  v36 = [(NavSignView *)self bottomToMinorLabelBaselineConstraint];
  [v36 setConstant:v34];

  [(NavSignView *)self _calculateInterLabelConstraintConstant];
  v38 = v37;
  v39 = [(NavSignView *)self minorToMajorLabelBaselineConstraint];
  [v39 setConstant:v38];

  v63 = objc_alloc_init(LayoutConstraintActivationHelper);
  v40 = [(NavSignView *)self signLayoutDelegate];
  v41 = [v40 navSignView:self shouldAlignToLeadingForMajorText:1];

  v42 = [(NavSignView *)self signLayoutDelegate];
  v43 = [v42 navSignView:self shouldAlignToLeadingForMajorText:0];

  v44 = [(NavSignView *)self signLayoutDelegate];
  v45 = [v44 navSignView:self shouldAlignToTrailingForMajorText:1];

  v46 = [(NavSignView *)self signLayoutDelegate];
  v47 = [v46 navSignView:self shouldAlignToTrailingForMajorText:0];

  v48 = [(NavSignView *)self signLayoutDelegate];
  v49 = [v48 shouldAlignMinorToMajorLabelLeadingForSign:self];

  v50 = [(NavSignView *)self signLayoutDelegate];
  v51 = [v50 shouldAlignMinorToMajorLabelTrailingForSign:self];

  v52 = [(NavSignView *)self majorLabelLeadingMarginConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:v52 activate:v41];

  v53 = [(NavSignView *)self minorLabelLeadingMarginConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:v53 activate:v43];

  v54 = [(NavSignView *)self majorLabelTrailingMarginConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:v54 activate:v45];

  v55 = [(NavSignView *)self minorLabelTrailingMarginConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:v55 activate:v47];

  v56 = [(NavSignView *)self minorToMajorLabelLeadingAlignmentConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:v56 activate:v49];

  v57 = [(NavSignView *)self minorToMajorLabelTrailingAlignmentConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:v57 activate:v51];

  v58 = [(NavSignView *)self majorLabelBaselineToTopConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:v58 activate:v3];

  v59 = [(NavSignView *)self minorLabelBaselineToTopConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:v59 activate:!v3 & v4];

  v60 = [(NavSignView *)self minorToMajorLabelBaselineConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:v60 activate:v4 & v3];

  v61 = [(NavSignView *)self bottomToMinorLabelBaselineConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:v61 activate:v4];

  v62 = [(NavSignView *)self bottomToMajorLabelBaselineConstraint];
  [(LayoutConstraintActivationHelper *)v63 scheduleConstraint:v62 activate:v3 && !v4];

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

  v8 = [(NavSignView *)self heightAnchor];
  v9 = [v8 constraintGreaterThanOrEqualToConstant:0.0];
  minSignHeightConstraint = self->_minSignHeightConstraint;
  self->_minSignHeightConstraint = v9;

  v11 = [(NavSignView *)self heightAnchor];
  [(NavSignView *)self _maps_maxConstraintConstantForAxis:0];
  v12 = [v11 constraintLessThanOrEqualToConstant:?];
  maxSignHeightConstraint = self->_maxSignHeightConstraint;
  self->_maxSignHeightConstraint = v12;

  v14 = [(NavSignView *)self minSignHeightConstraint];
  v80[0] = v14;
  v15 = [(NavSignView *)self maxSignHeightConstraint];
  v80[1] = v15;
  v16 = [NSArray arrayWithObjects:v80 count:2];
  [v4 addObjectsFromArray:v16];

  [NSLayoutConstraint activateConstraints:v4];
  v17 = [(NavSignView *)self majorLabel];
  v18 = [v17 leadingAnchor];
  v19 = [(NavSignView *)self leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  majorLabelLeadingMarginConstraint = self->_majorLabelLeadingMarginConstraint;
  self->_majorLabelLeadingMarginConstraint = v20;

  v22 = [(NavSignView *)self trailingAnchor];
  v23 = [(NavSignView *)self majorLabel];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  majorLabelTrailingMarginConstraint = self->_majorLabelTrailingMarginConstraint;
  self->_majorLabelTrailingMarginConstraint = v25;

  v27 = [(NavSignView *)self minorLabel];
  v28 = [v27 leadingAnchor];
  v29 = [(NavSignView *)self leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  minorLabelLeadingMarginConstraint = self->_minorLabelLeadingMarginConstraint;
  self->_minorLabelLeadingMarginConstraint = v30;

  v32 = [(NavSignView *)self trailingAnchor];
  v33 = [(NavSignView *)self minorLabel];
  v34 = [v33 trailingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  minorLabelTrailingMarginConstraint = self->_minorLabelTrailingMarginConstraint;
  self->_minorLabelTrailingMarginConstraint = v35;

  v37 = [(NavSignView *)self minorLabel];
  v38 = [v37 leadingAnchor];
  v39 = [(NavSignView *)self majorLabel];
  v40 = [v39 leadingAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  minorToMajorLabelLeadingAlignmentConstraint = self->_minorToMajorLabelLeadingAlignmentConstraint;
  self->_minorToMajorLabelLeadingAlignmentConstraint = v41;

  v43 = [(NavSignView *)self minorLabel];
  v44 = [v43 trailingAnchor];
  v45 = [(NavSignView *)self majorLabel];
  v46 = [v45 trailingAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  minorToMajorLabelTrailingAlignmentConstraint = self->_minorToMajorLabelTrailingAlignmentConstraint;
  self->_minorToMajorLabelTrailingAlignmentConstraint = v47;

  v49 = [(NavSignView *)self majorLabel];
  v50 = [v49 firstBaselineAnchor];
  v51 = [(NavSignView *)self topAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  majorLabelBaselineToTopConstraint = self->_majorLabelBaselineToTopConstraint;
  self->_majorLabelBaselineToTopConstraint = v52;

  LODWORD(v54) = 1148829696;
  [(NSLayoutConstraint *)self->_majorLabelBaselineToTopConstraint setPriority:v54];
  v55 = [(NavSignView *)self minorLabel];
  v56 = [v55 firstBaselineAnchor];
  v57 = [(NavSignView *)self topAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];
  minorLabelBaselineToTopConstraint = self->_minorLabelBaselineToTopConstraint;
  self->_minorLabelBaselineToTopConstraint = v58;

  LODWORD(v60) = 1148829696;
  [(NSLayoutConstraint *)self->_minorLabelBaselineToTopConstraint setPriority:v60];
  v61 = [(NavSignView *)self minorLabel];
  v62 = [v61 firstBaselineAnchor];
  v63 = [(NavSignView *)self majorLabel];
  v64 = [v63 lastBaselineAnchor];
  v65 = [v62 constraintEqualToAnchor:v64];
  minorToMajorLabelBaselineConstraint = self->_minorToMajorLabelBaselineConstraint;
  self->_minorToMajorLabelBaselineConstraint = v65;

  LODWORD(v67) = *"";
  [(NSLayoutConstraint *)self->_minorToMajorLabelBaselineConstraint setPriority:v67];
  v68 = [(NavSignView *)self bottomAnchor];
  v69 = [(NavSignView *)self majorLabel];
  v70 = [v69 lastBaselineAnchor];
  v71 = [v68 constraintEqualToAnchor:v70];
  bottomToMajorLabelBaselineConstraint = self->_bottomToMajorLabelBaselineConstraint;
  self->_bottomToMajorLabelBaselineConstraint = v71;

  LODWORD(v73) = 1148829696;
  [(NSLayoutConstraint *)self->_bottomToMajorLabelBaselineConstraint setPriority:v73];
  v74 = [(NavSignView *)self bottomAnchor];
  v75 = [(NavSignView *)self minorLabel];
  v76 = [v75 lastBaselineAnchor];
  v77 = [v74 constraintEqualToAnchor:v76];
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
  v7 = [(NavSignLabel *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  majorLabel = self->_majorLabel;
  self->_majorLabel = v7;

  v9 = [(NavSignView *)self majorLabel];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(NavSignView *)self majorLabel];
  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];

  v12 = [(NavSignView *)self majorLabel];
  LODWORD(v13) = 1148846080;
  [v12 setContentHuggingPriority:1 forAxis:v13];

  v14 = [(NavSignView *)self majorLabel];
  [v14 setDelegate:self];

  [(NavSignLabel *)self->_majorLabel setAccessibilityIdentifier:@"MajorLabel"];
  v15 = [(NavSignView *)self majorLabel];
  [(NavSignView *)self addSubview:v15];

  v16 = [[NavSignLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  minorLabel = self->_minorLabel;
  self->_minorLabel = v16;

  v18 = [(NavSignView *)self minorLabel];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(NavSignView *)self minorLabel];
  LODWORD(v20) = 1148829696;
  [v19 setContentCompressionResistancePriority:1 forAxis:v20];

  v21 = [(NavSignView *)self minorLabel];
  LODWORD(v22) = 1148846080;
  [v21 setContentHuggingPriority:1 forAxis:v22];

  v23 = [(NavSignView *)self minorLabel];
  [v23 setLineBreakMode:4];

  v24 = [(NavSignView *)self minorLabel];
  [v24 setDelegate:self];

  [(NavSignLabel *)self->_minorLabel setAccessibilityIdentifier:@"MinorLabel"];
  v25 = [(NavSignView *)self minorLabel];
  [(NavSignView *)self addSubview:v25];
}

- (void)layoutSubviews
{
  [(NavSignView *)self _updateConstraints];
  v37.receiver = self;
  v37.super_class = NavSignView;
  [(NavSignView *)&v37 layoutSubviews];
  v3 = [(NavSignView *)self majorLabel];
  [v3 updateLabelIfNeeded];

  v4 = [(NavSignView *)self minorLabel];
  [v4 updateLabelIfNeeded];

  v36.receiver = self;
  v36.super_class = NavSignView;
  [(NavSignView *)&v36 layoutSubviews];
  v5 = [(NavSignView *)self signLayoutDelegate];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v6 = [(NavSignView *)self subviews];
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = [(NavSignView *)self signLayoutDelegate];
          v13 = v12;
          if (v12)
          {
            [v12 navSignView:self transformForSubview:v11];
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

        v8 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
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
    v6 = [(NavSignView *)self subviews];
    v14 = [v6 countByEnumeratingWithState:&v22 objects:v38 count:16];
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
            objc_enumerationMutation(v6);
          }

          v18 = *(*(&v22 + 1) + 8 * j);
          v26 = v21;
          v27 = v20;
          v28 = v19;
          [v18 setTransform:{&v26, v19, v20, v21}];
        }

        v15 = [v6 countByEnumeratingWithState:&v22 objects:v38 count:16];
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
  v3 = [(NavSignView *)self theme];
  v4 = [v3 navSignMajorTextColor];
  v5 = [(NavSignView *)self majorLabel];
  [v5 setTextColor:v4];

  v6 = [(NavSignView *)self theme];
  v7 = [v6 navSignMinorTextColor];
  v8 = [(NavSignView *)self minorLabel];
  [v8 setTextColor:v7];
}

- (void)setUsePersistentDisplay:(BOOL)a3
{
  if (self->_usePersistentDisplay != a3)
  {
    self->_usePersistentDisplay = a3;
    [(NavSignView *)self setNeedsLayout];
  }
}

- (void)setMaxHeight:(double)a3
{
  v4 = [(NavSignView *)self maxSignHeightConstraint];
  [v4 setConstant:a3];
}

- (double)maxHeight
{
  v2 = [(NavSignView *)self maxSignHeightConstraint];
  [v2 constant];
  v4 = v3;

  return v4;
}

- (void)setSignLayoutDelegate:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_signLayoutDelegate);

  if (WeakRetained != v6)
  {
    objc_storeWeak(&self->_signLayoutDelegate, v6);
    [(NavSignView *)self _configureLabels];
    [(NavSignView *)self _updateLabelText];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100D73874;
    v9[3] = &unk_101661B18;
    v9[4] = self;
    [v7 addAnimations:v9 completion:0];
  }
}

- (void)setSignLayoutDelegate:(id)a3
{
  v4 = a3;
  v5 = +[GroupAnimation animation];
  [v5 setAnimated:0];
  [(NavSignView *)self setSignLayoutDelegate:v4 withAnimation:v5];

  [v5 runWithDefaultOptions];
}

- (BOOL)hasOnlySingleLineText
{
  if (![(NavSignView *)self hasMajorText])
  {
    v4 = [(NavSignView *)self minorLabel];
LABEL_6:
    v5 = v4;
    v3 = [v4 lineCount] == 1;

    return v3;
  }

  if (![(NavSignView *)self hasMinorText])
  {
    v4 = [(NavSignView *)self majorLabel];
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
  v2 = [(NavSignView *)self minorLabel];
  v3 = [v2 textAlternatives];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)hasMajorText
{
  v2 = [(NavSignView *)self majorLabel];
  v3 = [v2 textAlternatives];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)setDimmed:(BOOL)a3
{
  if (self->_dimmed != a3)
  {
    self->_dimmed = a3;
    v3 = 0.400000006;
    if (!a3)
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
  v3 = [(NavSignView *)self majorLabel];
  [v3 setTextAlternatives:0];

  v4 = [(NavSignView *)self minorLabel];
  [v4 setTextAlternatives:0];
}

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_maps_commonInit
{
  v3 = [(NavSignView *)self _defaultSignLayoutDelegate];
  objc_storeWeak(&self->_signLayoutDelegate, v3);

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(NavSignView *)self setAccessibilityIdentifier:v5];

  [(NavSignView *)self _setupSubviews];
  [(NavSignView *)self _configureLabels];

  [(NavSignView *)self _setupConstraints];
}

- (NavSignView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NavSignView;
  v3 = [(NavSignView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(NavSignView *)v3 _maps_commonInit];
  }

  return v4;
}

- (NavSignView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NavSignView;
  v3 = [(NavSignView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NavSignView *)v3 _maps_commonInit];
  }

  return v4;
}

- (NavManeuverSignView)maneuverSign
{
  v2 = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end