@interface GAXFeatureView_Phone
- (CGRect)popoverOriginRect;
- (GAXFeatureView_Phone)initWithIdentifier:(id)a3 type:(int64_t)a4 icon:(id)a5 text:(id)a6 detailText:(id)a7 initialState:(BOOL)a8 styleProvider:(id)a9;
- (void)_applyAutolayoutConstraintsForAXSizesWithIcon:(id)a3 text:(id)a4 detailText:(id)a5 initialFeatureState:(BOOL)a6 styleProvider:(id)a7;
- (void)_applyAutolayoutConstraintsForNonAXSizesWithIcon:(id)a3 text:(id)a4 detailText:(id)a5 initialFeatureState:(BOOL)a6 styleProvider:(id)a7;
- (void)_applyAutolayoutConstraintsWithIcon:(id)a3 text:(id)a4 detailText:(id)a5 initialFeatureState:(BOOL)a6 styleProvider:(id)a7;
- (void)_constructViewHierarchyWithIcon:(id)a3 text:(id)a4 detailText:(id)a5 initialFeatureState:(BOOL)a6 styleProvider:(id)a7;
@end

@implementation GAXFeatureView_Phone

- (GAXFeatureView_Phone)initWithIdentifier:(id)a3 type:(int64_t)a4 icon:(id)a5 text:(id)a6 detailText:(id)a7 initialState:(BOOL)a8 styleProvider:(id)a9
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  if (a4 > 1)
  {
    if (a4 == 2 || a4 == 3 && (!v15 || !v16 || v17))
    {
      goto LABEL_18;
    }
  }

  else if (a4)
  {
    if (a4 == 1 && (!v15 || !v16 || v17))
    {
      goto LABEL_18;
    }
  }

  else if (!v16)
  {
LABEL_18:
    _AXLogWithFacility();
    v21 = 0;
    goto LABEL_19;
  }

  v23.receiver = self;
  v23.super_class = GAXFeatureView_Phone;
  v19 = [(GAXFeatureView_Phone *)&v23 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v20 = v19;
  if (v19)
  {
    [(GAXFeatureView *)v19 setIdentifier:v14];
    [(GAXFeatureView *)v20 setType:a4];
  }

  self = v20;
  v21 = self;
LABEL_19:

  return v21;
}

- (void)_constructViewHierarchyWithIcon:(id)a3 text:(id)a4 detailText:(id)a5 initialFeatureState:(BOOL)a6 styleProvider:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = GAXFeatureView_Phone;
  [(GAXFeatureView *)&v27 _constructViewHierarchyWithIcon:v12 text:v13 detailText:v14 initialFeatureState:v8 styleProvider:v15];
  v16 = [UISwitch alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v20 = [v16 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v20 setOn:v8];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 addTarget:self action:"_handleValueChanged:" forControlEvents:4096];
  [(GAXFeatureView *)self setToggleSwitch:v20];
  [(GAXFeatureView_Phone *)self addSubview:v20];
  if (v12)
  {
    v21 = [[GAXIconView alloc] initWithIcon:v12 styleProvider:v15];
    [(GAXIconView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GAXFeatureView_Phone *)self addSubview:v21];
    [(GAXFeatureView *)self setIconView:v21];
  }

  v22 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GAXFeatureView_Phone *)self addSubview:v22];
  [(GAXFeatureView_Phone *)self setTextContainerView:v22];
  v23 = [v15 featureViewTextFont];
  v24 = [GAXInterfaceUtilities labelWithText:v13 font:v23 allowMultipleLines:1 textAlignment:4 styleProvider:v15];

  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GAXFeatureView *)self setTextLabel:v24];
  [v22 addSubview:v24];
  if (v14)
  {
    v25 = [v15 featureViewDetailTextFont];
    v26 = [GAXInterfaceUtilities labelWithText:v14 font:v25 allowMultipleLines:1 textAlignment:4 styleProvider:v15];

    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 addSubview:v26];
    [(GAXFeatureView_Phone *)self setDetailTextLabel:v26];
    [(GAXFeatureView_Phone *)self setAccessibilityHint:v14];
  }

  [(GAXFeatureView_Phone *)self setAccessibilityLabel:v13];
  -[GAXFeatureView_Phone setAccessibilityTraits:](self, "setAccessibilityTraits:", [v20 accessibilityTraits]);
  [(GAXFeatureView_Phone *)self setIsAccessibilityElement:1];
}

- (void)_applyAutolayoutConstraintsWithIcon:(id)a3 text:(id)a4 detailText:(id)a5 initialFeatureState:(BOOL)a6 styleProvider:(id)a7
{
  v7 = a6;
  v19.receiver = self;
  v19.super_class = GAXFeatureView_Phone;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  [(GAXFeatureView *)&v19 _applyAutolayoutConstraintsWithIcon:v15 text:v14 detailText:v13 initialFeatureState:v7 styleProvider:v12];
  v16 = [UIApplication sharedApplication:v19.receiver];
  v17 = [v16 preferredContentSizeCategory];
  v18 = _UIContentSizeCategoryCompareToContentSizeCategory();

  if (v18 == -1)
  {
    [(GAXFeatureView_Phone *)self _applyAutolayoutConstraintsForNonAXSizesWithIcon:v15 text:v14 detailText:v13 initialFeatureState:v7 styleProvider:v12];
  }

  else
  {
    [(GAXFeatureView_Phone *)self _applyAutolayoutConstraintsForAXSizesWithIcon:v15 text:v14 detailText:v13 initialFeatureState:v7 styleProvider:v12];
  }
}

- (void)_applyAutolayoutConstraintsForAXSizesWithIcon:(id)a3 text:(id)a4 detailText:(id)a5 initialFeatureState:(BOOL)a6 styleProvider:(id)a7
{
  v9 = a7;
  v10 = [(GAXFeatureView *)self toggleSwitch];
  v11 = [(GAXFeatureView *)self iconView];
  v12 = [(GAXFeatureView_Phone *)self textContainerView];
  v13 = [(GAXFeatureView *)self textLabel];
  v96 = [(GAXFeatureView_Phone *)self detailTextLabel];
  [v9 featureViewToggleOffset];
  v15 = v14;
  [v9 featureViewTextHorizontalPadding];
  v17 = v16;
  LODWORD(v16) = 0.5;
  [v13 _setHyphenationFactor:v16];
  v18 = +[NSMutableArray array];
  v97 = v11;
  if (a3)
  {
    v94 = v10;
    v19 = [v11 topAnchor];
    v20 = [(GAXFeatureView_Phone *)self topAnchor];
    [v19 constraintGreaterThanOrEqualToAnchor:v20];
    v22 = v21 = v13;
    [v18 addObject:v22];

    v23 = [v11 bottomAnchor];
    v24 = [(GAXFeatureView_Phone *)self bottomAnchor];
    v25 = [v23 constraintLessThanOrEqualToAnchor:v24];
    [v18 addObject:v25];

    v26 = [v21 font];
    [v26 capHeight];
    v28 = v27;

    v29 = [v11 centerYAnchor];
    v30 = [v21 firstBaselineAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:v28 * -0.5];
    [v18 addObject:v31];

    v32 = v21;
    v33 = [v21 attributedText];
    v92 = [v33 attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:0];
    v34 = [v92 mutableCopy];
    v35 = v9;
    [v9 featureViewIconLargeTextLayoutTextIndent];
    [v34 setFirstLineHeadIndent:?];
    v93 = v33;
    v36 = [v33 mutableCopy];
    if ([v36 length])
    {
      v98 = NSParagraphStyleAttributeName;
      v99 = v34;
      v37 = [NSDictionary dictionaryWithObjects:&v99 forKeys:&v98 count:1];
      [v36 setAttributes:v37 range:{0, 1}];
    }

    [v32 setAttributedText:v36];
    v38 = objc_opt_new();
    [(GAXFeatureView_Phone *)self addLayoutGuide:v38];
    v39 = [v38 leadingAnchor];
    v40 = [(GAXFeatureView_Phone *)self leadingAnchor];
    [v39 constraintEqualToAnchor:v40];
    v41 = v91 = v34;
    [v18 addObject:v41];

    v42 = [v38 widthAnchor];
    [v35 featureViewIconStandardLayoutWidth];
    v44 = [v42 constraintEqualToConstant:v43 * 0.5];
    [v18 addObject:v44];

    v45 = [v97 centerXAnchor];
    v46 = [v38 trailingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    [v18 addObject:v47];

    v9 = v35;
    v13 = v32;

    v10 = v94;
  }

  v48 = [v12 topAnchor];
  v49 = [(GAXFeatureView_Phone *)self topAnchor];
  v50 = [v48 constraintGreaterThanOrEqualToAnchor:v49];
  [v18 addObject:v50];

  v51 = [v12 trailingAnchor];
  v52 = [(GAXFeatureView_Phone *)self trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:v15];
  [v18 addObject:v53];

  v54 = [v12 leadingAnchor];
  v55 = [(GAXFeatureView_Phone *)self leadingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:v17];
  [v18 addObject:v56];

  v57 = [v13 topAnchor];
  v58 = [v12 topAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];
  [v18 addObject:v59];

  v60 = [v13 leadingAnchor];
  v61 = [v12 leadingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  [v18 addObject:v62];

  v63 = [v13 widthAnchor];
  v64 = [v12 widthAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  [v18 addObject:v65];

  v66 = [v13 bottomAnchor];
  if (a5)
  {
    v67 = [v96 topAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];
    [v18 addObject:v68];

    v69 = [v96 leadingAnchor];
    v70 = [v12 leadingAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];
    [v18 addObject:v71];

    v72 = [v96 widthAnchor];
    v73 = [v12 widthAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];
    [v18 addObject:v74];

    v66 = [v96 bottomAnchor];
  }

  v75 = [v12 bottomAnchor];
  v76 = [v66 constraintEqualToAnchor:v75];
  [v18 addObject:v76];

  LODWORD(v77) = AXResistAllCompressingAndStretching[0];
  LODWORD(v78) = AXResistAllCompressingAndStretching[1];
  LODWORD(v79) = AXResistAllCompressingAndStretching[2];
  LODWORD(v80) = AXResistAllCompressingAndStretching[3];
  [v10 ax_setContentHuggingAndCompressionResistance:{v77, v78, v79, v80}];
  v81 = [v10 topAnchor];
  v82 = [v12 bottomAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];
  [v18 addObject:v83];

  v84 = [v10 leadingAnchor];
  v85 = [v12 leadingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];
  [v18 addObject:v86];

  v87 = [v10 bottomAnchor];
  v88 = [(GAXFeatureView_Phone *)self bottomAnchor];
  [v9 featureViewAdditionalBottomOffsetForLargeText];
  v90 = [v87 constraintLessThanOrEqualToAnchor:v88 constant:-v89];
  [v18 addObject:v90];

  [NSLayoutConstraint activateConstraints:v18];
}

- (void)_applyAutolayoutConstraintsForNonAXSizesWithIcon:(id)a3 text:(id)a4 detailText:(id)a5 initialFeatureState:(BOOL)a6 styleProvider:(id)a7
{
  v10 = a7;
  v11 = [(GAXFeatureView *)self toggleSwitch];
  v12 = [(GAXFeatureView *)self iconView];
  v13 = [(GAXFeatureView_Phone *)self textContainerView];
  v14 = [(GAXFeatureView *)self textLabel];
  v15 = [(GAXFeatureView_Phone *)self detailTextLabel];
  [v10 featureViewToggleOffset];
  v17 = v16;
  [v10 featureViewToggleOffset];
  v19 = v18;
  LODWORD(v18) = 1144750080;
  [v11 ax_constrainLayoutAttribute:4 asEqualToValueOfView:self priority:v18];
  [v11 ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:self];
  [v11 ax_constrainLayoutAttribute:10 asEqualToValueOfView:self withOffset:v17];
  [v11 ax_constrainLayoutAttribute:6 asEqualToValueOfView:self withOffset:v19];
  LODWORD(v20) = 1144750080;
  [v11 ax_constrainLayoutAttribute:3 asEqualToValueOfView:self priority:v20];
  [v11 ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:self];
  LODWORD(v21) = 1148846080;
  [v11 setContentHuggingPriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v24];
  if (a3)
  {
    LODWORD(v25) = 1144750080;
    [(GAXFeatureView_Phone *)v12 ax_constrainLayoutAttribute:4 asEqualToValueOfView:self priority:v25];
    [(GAXFeatureView_Phone *)v12 ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:self];
    [(GAXFeatureView_Phone *)v12 ax_constrainLayoutAttribute:10 asEqualToValueOfView:self];
    [(GAXFeatureView_Phone *)v12 ax_constrainLayoutAttribute:5 asEqualToValueOfView:self];
    LODWORD(v26) = 1144750080;
    [(GAXFeatureView_Phone *)v12 ax_constrainLayoutAttribute:3 asEqualToValueOfView:self priority:v26];
    [(GAXFeatureView_Phone *)v12 ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:self];
    v27 = [(GAXFeatureView_Phone *)v12 widthAnchor];
    [v10 featureViewIconStandardLayoutWidth];
    [v27 constraintEqualToConstant:?];
    v55 = v54 = a5;
    v28 = v55;
    [NSArray arrayWithObjects:&v55 count:1];
    v29 = v15;
    v30 = v10;
    v32 = v31 = v12;
    [NSLayoutConstraint activateConstraints:v32];

    v12 = v31;
    v10 = v30;
    v15 = v29;

    a5 = v54;
    v33 = 6;
    v34 = v12;
  }

  else
  {
    v33 = 5;
    v34 = self;
  }

  [v10 featureViewTextHorizontalPadding];
  v36 = v35;
  [v10 featureViewTextHorizontalPadding];
  v38 = v37 * -0.5;
  [v13 ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:self];
  [v13 ax_constrainLayoutAttribute:10 asEqualToValueOfView:self];
  [v13 ax_constrainLayoutAttribute:5 asEqualToLayoutAttribute:v33 ofView:v34 withOffset:v36];
  [v13 ax_constrainLayoutAttribute:6 asEqualToLayoutAttribute:5 ofView:v11 withOffset:v38];
  [v10 featureViewTextVerticalPadding];
  [v13 ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:self withOffset:?];
  LODWORD(v39) = 1144750080;
  [v14 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v13 priority:v39];
  [v14 ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:v13];
  LODWORD(v40) = 1144750080;
  [v14 ax_constrainLayoutAttribute:5 asEqualToValueOfView:v13 priority:v40];
  [v14 ax_constrainLayoutAttribute:5 asGreaterThanOrEqualToValueOfView:v13];
  LODWORD(v41) = 1144750080;
  [v14 ax_constrainLayoutAttribute:6 asEqualToValueOfView:v13 priority:v41];
  [v14 ax_constrainLayoutAttribute:6 asLessThanOrEqualToValueOfView:v13];
  LODWORD(v42) = 1144750080;
  [v14 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v13 priority:v42];
  [v14 ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:v13];
  LODWORD(v43) = 1132068864;
  [v14 setContentHuggingPriority:0 forAxis:v43];
  LODWORD(v44) = 1148846080;
  [v14 setContentHuggingPriority:1 forAxis:v44];
  LODWORD(v45) = 1144750080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v45];
  LODWORD(v46) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v46];
  if (a5)
  {
    LODWORD(v47) = 1144750080;
    [v15 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v13 priority:v47];
    [v15 ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:v13];
    LODWORD(v48) = 1144750080;
    [v15 ax_constrainLayoutAttribute:5 asEqualToValueOfView:v13 priority:v48];
    [v15 ax_constrainLayoutAttribute:5 asGreaterThanOrEqualToValueOfView:v13];
    LODWORD(v49) = 1144750080;
    [v15 ax_constrainLayoutAttribute:6 asEqualToValueOfView:v13 priority:v49];
    [v15 ax_constrainLayoutAttribute:6 asLessThanOrEqualToValueOfView:v13];
    [v15 ax_constrainLayoutAttribute:3 asEqualToLayoutAttribute:4 ofView:v14];
    LODWORD(v50) = 1132068864;
    [v15 setContentHuggingPriority:0 forAxis:v50];
    LODWORD(v51) = 1148846080;
    [v15 setContentHuggingPriority:1 forAxis:v51];
    LODWORD(v52) = 1144750080;
    [v15 setContentCompressionResistancePriority:0 forAxis:v52];
    LODWORD(v53) = 1148846080;
    [v15 setContentCompressionResistancePriority:1 forAxis:v53];
  }
}

- (CGRect)popoverOriginRect
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end