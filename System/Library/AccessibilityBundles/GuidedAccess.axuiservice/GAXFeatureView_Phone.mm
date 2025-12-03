@interface GAXFeatureView_Phone
- (CGRect)popoverOriginRect;
- (GAXFeatureView_Phone)initWithIdentifier:(id)identifier type:(int64_t)type icon:(id)icon text:(id)text detailText:(id)detailText initialState:(BOOL)state styleProvider:(id)provider;
- (void)_applyAutolayoutConstraintsForAXSizesWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider;
- (void)_applyAutolayoutConstraintsForNonAXSizesWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider;
- (void)_applyAutolayoutConstraintsWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider;
- (void)_constructViewHierarchyWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider;
@end

@implementation GAXFeatureView_Phone

- (GAXFeatureView_Phone)initWithIdentifier:(id)identifier type:(int64_t)type icon:(id)icon text:(id)text detailText:(id)detailText initialState:(BOOL)state styleProvider:(id)provider
{
  identifierCopy = identifier;
  iconCopy = icon;
  textCopy = text;
  detailTextCopy = detailText;
  providerCopy = provider;
  if (type > 1)
  {
    if (type == 2 || type == 3 && (!iconCopy || !textCopy || detailTextCopy))
    {
      goto LABEL_18;
    }
  }

  else if (type)
  {
    if (type == 1 && (!iconCopy || !textCopy || detailTextCopy))
    {
      goto LABEL_18;
    }
  }

  else if (!textCopy)
  {
LABEL_18:
    _AXLogWithFacility();
    selfCopy = 0;
    goto LABEL_19;
  }

  v23.receiver = self;
  v23.super_class = GAXFeatureView_Phone;
  v19 = [(GAXFeatureView_Phone *)&v23 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v20 = v19;
  if (v19)
  {
    [(GAXFeatureView *)v19 setIdentifier:identifierCopy];
    [(GAXFeatureView *)v20 setType:type];
  }

  self = v20;
  selfCopy = self;
LABEL_19:

  return selfCopy;
}

- (void)_constructViewHierarchyWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider
{
  stateCopy = state;
  iconCopy = icon;
  textCopy = text;
  detailTextCopy = detailText;
  providerCopy = provider;
  v27.receiver = self;
  v27.super_class = GAXFeatureView_Phone;
  [(GAXFeatureView *)&v27 _constructViewHierarchyWithIcon:iconCopy text:textCopy detailText:detailTextCopy initialFeatureState:stateCopy styleProvider:providerCopy];
  v16 = [UISwitch alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v20 = [v16 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v20 setOn:stateCopy];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 addTarget:self action:"_handleValueChanged:" forControlEvents:4096];
  [(GAXFeatureView *)self setToggleSwitch:v20];
  [(GAXFeatureView_Phone *)self addSubview:v20];
  if (iconCopy)
  {
    v21 = [[GAXIconView alloc] initWithIcon:iconCopy styleProvider:providerCopy];
    [(GAXIconView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GAXFeatureView_Phone *)self addSubview:v21];
    [(GAXFeatureView *)self setIconView:v21];
  }

  v22 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GAXFeatureView_Phone *)self addSubview:v22];
  [(GAXFeatureView_Phone *)self setTextContainerView:v22];
  featureViewTextFont = [providerCopy featureViewTextFont];
  v24 = [GAXInterfaceUtilities labelWithText:textCopy font:featureViewTextFont allowMultipleLines:1 textAlignment:4 styleProvider:providerCopy];

  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GAXFeatureView *)self setTextLabel:v24];
  [v22 addSubview:v24];
  if (detailTextCopy)
  {
    featureViewDetailTextFont = [providerCopy featureViewDetailTextFont];
    v26 = [GAXInterfaceUtilities labelWithText:detailTextCopy font:featureViewDetailTextFont allowMultipleLines:1 textAlignment:4 styleProvider:providerCopy];

    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 addSubview:v26];
    [(GAXFeatureView_Phone *)self setDetailTextLabel:v26];
    [(GAXFeatureView_Phone *)self setAccessibilityHint:detailTextCopy];
  }

  [(GAXFeatureView_Phone *)self setAccessibilityLabel:textCopy];
  -[GAXFeatureView_Phone setAccessibilityTraits:](self, "setAccessibilityTraits:", [v20 accessibilityTraits]);
  [(GAXFeatureView_Phone *)self setIsAccessibilityElement:1];
}

- (void)_applyAutolayoutConstraintsWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider
{
  stateCopy = state;
  v19.receiver = self;
  v19.super_class = GAXFeatureView_Phone;
  providerCopy = provider;
  detailTextCopy = detailText;
  textCopy = text;
  iconCopy = icon;
  [(GAXFeatureView *)&v19 _applyAutolayoutConstraintsWithIcon:iconCopy text:textCopy detailText:detailTextCopy initialFeatureState:stateCopy styleProvider:providerCopy];
  v16 = [UIApplication sharedApplication:v19.receiver];
  preferredContentSizeCategory = [v16 preferredContentSizeCategory];
  v18 = _UIContentSizeCategoryCompareToContentSizeCategory();

  if (v18 == -1)
  {
    [(GAXFeatureView_Phone *)self _applyAutolayoutConstraintsForNonAXSizesWithIcon:iconCopy text:textCopy detailText:detailTextCopy initialFeatureState:stateCopy styleProvider:providerCopy];
  }

  else
  {
    [(GAXFeatureView_Phone *)self _applyAutolayoutConstraintsForAXSizesWithIcon:iconCopy text:textCopy detailText:detailTextCopy initialFeatureState:stateCopy styleProvider:providerCopy];
  }
}

- (void)_applyAutolayoutConstraintsForAXSizesWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider
{
  providerCopy = provider;
  toggleSwitch = [(GAXFeatureView *)self toggleSwitch];
  iconView = [(GAXFeatureView *)self iconView];
  textContainerView = [(GAXFeatureView_Phone *)self textContainerView];
  textLabel = [(GAXFeatureView *)self textLabel];
  detailTextLabel = [(GAXFeatureView_Phone *)self detailTextLabel];
  [providerCopy featureViewToggleOffset];
  v15 = v14;
  [providerCopy featureViewTextHorizontalPadding];
  v17 = v16;
  LODWORD(v16) = 0.5;
  [textLabel _setHyphenationFactor:v16];
  v18 = +[NSMutableArray array];
  v97 = iconView;
  if (icon)
  {
    v94 = toggleSwitch;
    topAnchor = [iconView topAnchor];
    topAnchor2 = [(GAXFeatureView_Phone *)self topAnchor];
    [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v22 = v21 = textLabel;
    [v18 addObject:v22];

    bottomAnchor = [iconView bottomAnchor];
    bottomAnchor2 = [(GAXFeatureView_Phone *)self bottomAnchor];
    v25 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    [v18 addObject:v25];

    font = [v21 font];
    [font capHeight];
    v28 = v27;

    centerYAnchor = [iconView centerYAnchor];
    firstBaselineAnchor = [v21 firstBaselineAnchor];
    v31 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:v28 * -0.5];
    [v18 addObject:v31];

    v32 = v21;
    attributedText = [v21 attributedText];
    v92 = [attributedText attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:0];
    v34 = [v92 mutableCopy];
    v35 = providerCopy;
    [providerCopy featureViewIconLargeTextLayoutTextIndent];
    [v34 setFirstLineHeadIndent:?];
    v93 = attributedText;
    v36 = [attributedText mutableCopy];
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
    leadingAnchor = [v38 leadingAnchor];
    leadingAnchor2 = [(GAXFeatureView_Phone *)self leadingAnchor];
    [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v41 = v91 = v34;
    [v18 addObject:v41];

    widthAnchor = [v38 widthAnchor];
    [v35 featureViewIconStandardLayoutWidth];
    v44 = [widthAnchor constraintEqualToConstant:v43 * 0.5];
    [v18 addObject:v44];

    centerXAnchor = [v97 centerXAnchor];
    trailingAnchor = [v38 trailingAnchor];
    v47 = [centerXAnchor constraintEqualToAnchor:trailingAnchor];
    [v18 addObject:v47];

    providerCopy = v35;
    textLabel = v32;

    toggleSwitch = v94;
  }

  topAnchor3 = [textContainerView topAnchor];
  topAnchor4 = [(GAXFeatureView_Phone *)self topAnchor];
  v50 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  [v18 addObject:v50];

  trailingAnchor2 = [textContainerView trailingAnchor];
  trailingAnchor3 = [(GAXFeatureView_Phone *)self trailingAnchor];
  v53 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:v15];
  [v18 addObject:v53];

  leadingAnchor3 = [textContainerView leadingAnchor];
  leadingAnchor4 = [(GAXFeatureView_Phone *)self leadingAnchor];
  v56 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v17];
  [v18 addObject:v56];

  topAnchor5 = [textLabel topAnchor];
  topAnchor6 = [textContainerView topAnchor];
  v59 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v18 addObject:v59];

  leadingAnchor5 = [textLabel leadingAnchor];
  leadingAnchor6 = [textContainerView leadingAnchor];
  v62 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v18 addObject:v62];

  widthAnchor2 = [textLabel widthAnchor];
  widthAnchor3 = [textContainerView widthAnchor];
  v65 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  [v18 addObject:v65];

  bottomAnchor3 = [textLabel bottomAnchor];
  if (detailText)
  {
    topAnchor7 = [detailTextLabel topAnchor];
    v68 = [bottomAnchor3 constraintEqualToAnchor:topAnchor7];
    [v18 addObject:v68];

    leadingAnchor7 = [detailTextLabel leadingAnchor];
    leadingAnchor8 = [textContainerView leadingAnchor];
    v71 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [v18 addObject:v71];

    widthAnchor4 = [detailTextLabel widthAnchor];
    widthAnchor5 = [textContainerView widthAnchor];
    v74 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
    [v18 addObject:v74];

    bottomAnchor3 = [detailTextLabel bottomAnchor];
  }

  bottomAnchor4 = [textContainerView bottomAnchor];
  v76 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v18 addObject:v76];

  LODWORD(v77) = AXResistAllCompressingAndStretching[0];
  LODWORD(v78) = AXResistAllCompressingAndStretching[1];
  LODWORD(v79) = AXResistAllCompressingAndStretching[2];
  LODWORD(v80) = AXResistAllCompressingAndStretching[3];
  [toggleSwitch ax_setContentHuggingAndCompressionResistance:{v77, v78, v79, v80}];
  topAnchor8 = [toggleSwitch topAnchor];
  bottomAnchor5 = [textContainerView bottomAnchor];
  v83 = [topAnchor8 constraintEqualToAnchor:bottomAnchor5];
  [v18 addObject:v83];

  leadingAnchor9 = [toggleSwitch leadingAnchor];
  leadingAnchor10 = [textContainerView leadingAnchor];
  v86 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v18 addObject:v86];

  bottomAnchor6 = [toggleSwitch bottomAnchor];
  bottomAnchor7 = [(GAXFeatureView_Phone *)self bottomAnchor];
  [providerCopy featureViewAdditionalBottomOffsetForLargeText];
  v90 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7 constant:-v89];
  [v18 addObject:v90];

  [NSLayoutConstraint activateConstraints:v18];
}

- (void)_applyAutolayoutConstraintsForNonAXSizesWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider
{
  providerCopy = provider;
  toggleSwitch = [(GAXFeatureView *)self toggleSwitch];
  iconView = [(GAXFeatureView *)self iconView];
  textContainerView = [(GAXFeatureView_Phone *)self textContainerView];
  textLabel = [(GAXFeatureView *)self textLabel];
  detailTextLabel = [(GAXFeatureView_Phone *)self detailTextLabel];
  [providerCopy featureViewToggleOffset];
  v17 = v16;
  [providerCopy featureViewToggleOffset];
  v19 = v18;
  LODWORD(v18) = 1144750080;
  [toggleSwitch ax_constrainLayoutAttribute:4 asEqualToValueOfView:self priority:v18];
  [toggleSwitch ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:self];
  [toggleSwitch ax_constrainLayoutAttribute:10 asEqualToValueOfView:self withOffset:v17];
  [toggleSwitch ax_constrainLayoutAttribute:6 asEqualToValueOfView:self withOffset:v19];
  LODWORD(v20) = 1144750080;
  [toggleSwitch ax_constrainLayoutAttribute:3 asEqualToValueOfView:self priority:v20];
  [toggleSwitch ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:self];
  LODWORD(v21) = 1148846080;
  [toggleSwitch setContentHuggingPriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [toggleSwitch setContentHuggingPriority:1 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [toggleSwitch setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [toggleSwitch setContentCompressionResistancePriority:1 forAxis:v24];
  if (icon)
  {
    LODWORD(v25) = 1144750080;
    [(GAXFeatureView_Phone *)iconView ax_constrainLayoutAttribute:4 asEqualToValueOfView:self priority:v25];
    [(GAXFeatureView_Phone *)iconView ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:self];
    [(GAXFeatureView_Phone *)iconView ax_constrainLayoutAttribute:10 asEqualToValueOfView:self];
    [(GAXFeatureView_Phone *)iconView ax_constrainLayoutAttribute:5 asEqualToValueOfView:self];
    LODWORD(v26) = 1144750080;
    [(GAXFeatureView_Phone *)iconView ax_constrainLayoutAttribute:3 asEqualToValueOfView:self priority:v26];
    [(GAXFeatureView_Phone *)iconView ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:self];
    widthAnchor = [(GAXFeatureView_Phone *)iconView widthAnchor];
    [providerCopy featureViewIconStandardLayoutWidth];
    [widthAnchor constraintEqualToConstant:?];
    v55 = v54 = detailText;
    v28 = v55;
    [NSArray arrayWithObjects:&v55 count:1];
    v29 = detailTextLabel;
    v30 = providerCopy;
    v32 = v31 = iconView;
    [NSLayoutConstraint activateConstraints:v32];

    iconView = v31;
    providerCopy = v30;
    detailTextLabel = v29;

    detailText = v54;
    v33 = 6;
    selfCopy = iconView;
  }

  else
  {
    v33 = 5;
    selfCopy = self;
  }

  [providerCopy featureViewTextHorizontalPadding];
  v36 = v35;
  [providerCopy featureViewTextHorizontalPadding];
  v38 = v37 * -0.5;
  [textContainerView ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:self];
  [textContainerView ax_constrainLayoutAttribute:10 asEqualToValueOfView:self];
  [textContainerView ax_constrainLayoutAttribute:5 asEqualToLayoutAttribute:v33 ofView:selfCopy withOffset:v36];
  [textContainerView ax_constrainLayoutAttribute:6 asEqualToLayoutAttribute:5 ofView:toggleSwitch withOffset:v38];
  [providerCopy featureViewTextVerticalPadding];
  [textContainerView ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:self withOffset:?];
  LODWORD(v39) = 1144750080;
  [textLabel ax_constrainLayoutAttribute:4 asEqualToValueOfView:textContainerView priority:v39];
  [textLabel ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:textContainerView];
  LODWORD(v40) = 1144750080;
  [textLabel ax_constrainLayoutAttribute:5 asEqualToValueOfView:textContainerView priority:v40];
  [textLabel ax_constrainLayoutAttribute:5 asGreaterThanOrEqualToValueOfView:textContainerView];
  LODWORD(v41) = 1144750080;
  [textLabel ax_constrainLayoutAttribute:6 asEqualToValueOfView:textContainerView priority:v41];
  [textLabel ax_constrainLayoutAttribute:6 asLessThanOrEqualToValueOfView:textContainerView];
  LODWORD(v42) = 1144750080;
  [textLabel ax_constrainLayoutAttribute:3 asEqualToValueOfView:textContainerView priority:v42];
  [textLabel ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:textContainerView];
  LODWORD(v43) = 1132068864;
  [textLabel setContentHuggingPriority:0 forAxis:v43];
  LODWORD(v44) = 1148846080;
  [textLabel setContentHuggingPriority:1 forAxis:v44];
  LODWORD(v45) = 1144750080;
  [textLabel setContentCompressionResistancePriority:0 forAxis:v45];
  LODWORD(v46) = 1148846080;
  [textLabel setContentCompressionResistancePriority:1 forAxis:v46];
  if (detailText)
  {
    LODWORD(v47) = 1144750080;
    [detailTextLabel ax_constrainLayoutAttribute:4 asEqualToValueOfView:textContainerView priority:v47];
    [detailTextLabel ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:textContainerView];
    LODWORD(v48) = 1144750080;
    [detailTextLabel ax_constrainLayoutAttribute:5 asEqualToValueOfView:textContainerView priority:v48];
    [detailTextLabel ax_constrainLayoutAttribute:5 asGreaterThanOrEqualToValueOfView:textContainerView];
    LODWORD(v49) = 1144750080;
    [detailTextLabel ax_constrainLayoutAttribute:6 asEqualToValueOfView:textContainerView priority:v49];
    [detailTextLabel ax_constrainLayoutAttribute:6 asLessThanOrEqualToValueOfView:textContainerView];
    [detailTextLabel ax_constrainLayoutAttribute:3 asEqualToLayoutAttribute:4 ofView:textLabel];
    LODWORD(v50) = 1132068864;
    [detailTextLabel setContentHuggingPriority:0 forAxis:v50];
    LODWORD(v51) = 1148846080;
    [detailTextLabel setContentHuggingPriority:1 forAxis:v51];
    LODWORD(v52) = 1144750080;
    [detailTextLabel setContentCompressionResistancePriority:0 forAxis:v52];
    LODWORD(v53) = 1148846080;
    [detailTextLabel setContentCompressionResistancePriority:1 forAxis:v53];
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