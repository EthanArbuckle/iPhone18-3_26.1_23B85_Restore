@interface TimeRestrictionFeatureView
- (CGRect)accessibilityFrame:(id)frame;
- (TimeRestrictionFeatureView)initWithIdentifier:(id)identifier type:(int64_t)type icon:(id)icon text:(id)text detailText:(id)detailText initialState:(BOOL)state initialDuration:(int64_t)duration styleProvider:(id)self0;
- (id)_datePickerWithInitialEnabledState:(BOOL)state initialDurationInMinutes:(int64_t)minutes;
- (id)accessibilityElements;
- (id)accessibilityLabel:(id)label;
- (void)_applyAutolayoutConstraintsWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider;
- (void)_constructViewHierarchyWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider;
- (void)_handleDatePickerValueDidChange:(id)change;
- (void)_handleValueChanged:(id)changed;
- (void)_setDatePickerVisible:(BOOL)visible completion:(id)completion;
- (void)layoutSubviews;
- (void)resetCountDownDurationForDatePicker;
@end

@implementation TimeRestrictionFeatureView

- (TimeRestrictionFeatureView)initWithIdentifier:(id)identifier type:(int64_t)type icon:(id)icon text:(id)text detailText:(id)detailText initialState:(BOOL)state initialDuration:(int64_t)duration styleProvider:(id)self0
{
  v13.receiver = self;
  v13.super_class = TimeRestrictionFeatureView;
  v10 = [(GAXFeatureView_Phone *)&v13 initWithIdentifier:identifier type:type icon:icon text:text detailText:detailText initialState:state styleProvider:provider];
  v11 = v10;
  if (v10)
  {
    [(TimeRestrictionFeatureView *)v10 setDurationInMinutes:duration];
  }

  return v11;
}

- (id)_datePickerWithInitialEnabledState:(BOOL)state initialDurationInMinutes:(int64_t)minutes
{
  stateCopy = state;
  v7 = [[UIDatePicker alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addTarget:self action:"_handleDatePickerValueDidChange:" forControlEvents:4096];
  [v7 setGaxDatePickerEnabled:stateCopy];
  [v7 setDatePickerMode:3];
  [v7 setPreferredDatePickerStyle:1];
  [v7 updateSelectedDurationInMinutes:minutes animated:1];

  return v7;
}

- (void)_constructViewHierarchyWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider
{
  v21.receiver = self;
  v21.super_class = TimeRestrictionFeatureView;
  [(GAXFeatureView_Phone *)&v21 _constructViewHierarchyWithIcon:icon text:text detailText:detailText initialFeatureState:state styleProvider:provider];
  v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TimeRestrictionFeatureView *)self setTopShelfContainer:v8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  subviews = [(TimeRestrictionFeatureView *)self subviews];
  v10 = [subviews countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(subviews);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        [v14 removeFromSuperview];
        [v8 addSubview:v14];
      }

      v11 = [subviews countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v11);
  }

  [(TimeRestrictionFeatureView *)self addSubview:v8];
  [(TimeRestrictionFeatureView *)self setIsAccessibilityElement:0];
  v15 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self];
  [(TimeRestrictionFeatureView *)self setTopShelfAXElement:v15];

  topShelfAXElement = [(TimeRestrictionFeatureView *)self topShelfAXElement];
  [topShelfAXElement setAccessibilityDelegate:self];
}

- (void)_applyAutolayoutConstraintsWithIcon:(id)icon text:(id)text detailText:(id)detailText initialFeatureState:(BOOL)state styleProvider:(id)provider
{
  stateCopy = state;
  providerCopy = provider;
  topShelfContainer = [(TimeRestrictionFeatureView *)self topShelfContainer];
  toggleSwitch = [(GAXFeatureView *)self toggleSwitch];
  textContainerView = [(GAXFeatureView_Phone *)self textContainerView];
  textLabel = [(GAXFeatureView *)self textLabel];
  detailTextLabel = [(GAXFeatureView_Phone *)self detailTextLabel];
  [(GAXFeatureView *)self iconView];
  v159 = v158 = toggleSwitch;
  v155 = textLabel;
  v156 = detailTextLabel;
  v157 = textContainerView;
  v14 = _NSDictionaryOfVariableBindings(@"topShelfContainer, toggleSwitch, textView, textLabel, detailTextLabel, iconView", topShelfContainer, toggleSwitch, textContainerView, textLabel, detailTextLabel, v159, 0);
  v163[0] = @"textViewLeftConstant";
  [providerCopy featureViewTextHorizontalPadding];
  v15 = [NSNumber numberWithDouble:?];
  v163[1] = @"textViewRightConstant";
  v164[0] = v15;
  v16 = providerCopy;
  [providerCopy featureViewTextHorizontalPadding];
  v18 = [NSNumber numberWithDouble:v17 * -0.5];
  v164[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v164 forKeys:v163 count:2];

  v20 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[topShelfContainer]" options:0 metrics:v19 views:v14];
  [(TimeRestrictionFeatureView *)self addConstraints:v20];

  v21 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[topShelfContainer]|" options:0 metrics:v19 views:v14];
  [(TimeRestrictionFeatureView *)self addConstraints:v21];

  [providerCopy featureViewMinimumHeight];
  v23 = [NSLayoutConstraint constraintWithItem:topShelfContainer attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:0.0 constant:v22];
  [topShelfContainer addConstraint:v23];

  LODWORD(v24) = 1148846080;
  [topShelfContainer setContentHuggingPriority:0 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [topShelfContainer setContentHuggingPriority:1 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [topShelfContainer setContentCompressionResistancePriority:0 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [topShelfContainer setContentCompressionResistancePriority:1 forAxis:v27];
  [(TimeRestrictionFeatureView *)self _setDatePickerVisible:stateCopy completion:0];
  v28 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v28 preferredContentSizeCategory];
  v30 = _UIContentSizeCategoryCompareToContentSizeCategory();

  if (v30 == -1)
  {
    v123 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[textView]|" options:0 metrics:v19 views:v14];
    [topShelfContainer addConstraints:v123];

    v124 = [NSLayoutConstraint constraintWithItem:toggleSwitch attribute:10 relatedBy:0 toItem:topShelfContainer attribute:10 multiplier:1.0 constant:0.0];
    [topShelfContainer addConstraint:v124];

    v125 = [NSLayoutConstraint constraintWithItem:v159 attribute:10 relatedBy:0 toItem:topShelfContainer attribute:10 multiplier:1.0 constant:0.0];
    [topShelfContainer addConstraint:v125];

    v126 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|[iconView]-textViewLeftConstant-[textView]-textViewRightConstant-[toggleSwitch]", 0, v19, v14);
    [topShelfContainer addConstraints:v126];

    v127 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[textLabel][detailTextLabel]|" options:0 metrics:v19 views:v14];
    [(TimeRestrictionFeatureView *)self addConstraints:v127];

    v128 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[textLabel]|" options:0 metrics:v19 views:v14];
    [(TimeRestrictionFeatureView *)self addConstraints:v128];

    v129 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[detailTextLabel]|" options:0 metrics:v19 views:v14];
    [(TimeRestrictionFeatureView *)self addConstraints:v129];

    widthAnchor = [v159 widthAnchor];
    [v16 featureViewIconStandardLayoutWidth];
    v131 = [widthAnchor constraintEqualToConstant:?];
    v162 = v131;
    [NSArray arrayWithObjects:&v162 count:1];
    v122 = v14;
    v133 = v132 = v16;
    [NSLayoutConstraint activateConstraints:v133];

    v115 = v132;
    v120 = v159;

    v121 = topShelfContainer;
    [v115 featureViewToggleOffset];
    [toggleSwitch ax_constrainLayoutAttribute:6 asEqualToValueOfView:self withOffset:?];
    LODWORD(v134) = 1148846080;
    [toggleSwitch setContentHuggingPriority:0 forAxis:v134];
    LODWORD(v135) = 1148846080;
    [toggleSwitch setContentHuggingPriority:1 forAxis:v135];
    LODWORD(v136) = 1148846080;
    [toggleSwitch setContentCompressionResistancePriority:0 forAxis:v136];
    LODWORD(v137) = 1148846080;
    [toggleSwitch setContentCompressionResistancePriority:1 forAxis:v137];
    v61 = v155;
    LODWORD(v138) = 1132068864;
    [v155 setContentHuggingPriority:0 forAxis:v138];
    LODWORD(v139) = 1148846080;
    [v155 setContentHuggingPriority:1 forAxis:v139];
    LODWORD(v140) = 1144750080;
    [v155 setContentCompressionResistancePriority:0 forAxis:v140];
    LODWORD(v141) = 1148846080;
    [v155 setContentCompressionResistancePriority:1 forAxis:v141];
    LODWORD(v142) = 1132068864;
    [detailTextLabel setContentHuggingPriority:0 forAxis:v142];
    LODWORD(v143) = 1144750080;
    [detailTextLabel setContentCompressionResistancePriority:0 forAxis:v143];
    LODWORD(v144) = 1148846080;
    [detailTextLabel setContentCompressionResistancePriority:1 forAxis:v144];
    LODWORD(v145) = 1148846080;
    [detailTextLabel setContentHuggingPriority:1 forAxis:v145];
    v66 = v157;
  }

  else
  {
    v152 = v19;
    v153 = v14;
    LODWORD(v31) = 0.5;
    [v155 _setHyphenationFactor:v31];
    [v16 featureViewToggleOffset];
    v33 = v32;
    [v16 featureViewTextHorizontalPadding];
    v35 = v34;
    v36 = +[NSMutableArray array];
    [v159 topAnchor];
    v38 = v37 = v16;
    topAnchor = [topShelfContainer topAnchor];
    v40 = [v38 constraintGreaterThanOrEqualToAnchor:topAnchor];
    [v36 addObject:v40];

    bottomAnchor = [v159 bottomAnchor];
    v42 = topShelfContainer;
    bottomAnchor2 = [topShelfContainer bottomAnchor];
    v44 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    [v36 addObject:v44];

    font = [v155 font];
    [font capHeight];
    v47 = v46;

    centerYAnchor = [v159 centerYAnchor];
    firstBaselineAnchor = [v155 firstBaselineAnchor];
    v50 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:v47 * -0.5];
    [v36 addObject:v50];

    v51 = objc_opt_new();
    [(TimeRestrictionFeatureView *)self addLayoutGuide:v51];
    leadingAnchor = [v51 leadingAnchor];
    leadingAnchor2 = [(TimeRestrictionFeatureView *)self leadingAnchor];
    v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v36 addObject:v54];

    widthAnchor2 = [v51 widthAnchor];
    [v37 featureViewIconStandardLayoutWidth];
    v57 = [widthAnchor2 constraintEqualToConstant:v56 * 0.5];
    [v36 addObject:v57];

    centerXAnchor = [v159 centerXAnchor];
    v151 = v51;
    trailingAnchor = [v51 trailingAnchor];
    v60 = [centerXAnchor constraintEqualToAnchor:trailingAnchor];
    [v36 addObject:v60];

    v61 = v155;
    attributedText = [v155 attributedText];
    v149 = [attributedText attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:0];
    v63 = [v149 mutableCopy];
    [v37 featureViewIconLargeTextLayoutTextIndent];
    [v63 setFirstLineHeadIndent:?];
    v150 = attributedText;
    v64 = [attributedText mutableCopy];
    selfCopy = self;
    if ([v64 length])
    {
      v160 = NSParagraphStyleAttributeName;
      v161 = v63;
      v65 = [NSDictionary dictionaryWithObjects:&v161 forKeys:&v160 count:1];
      [v64 setAttributes:v65 range:{0, 1}];
    }

    [v155 setAttributedText:v64];
    v66 = v157;
    topAnchor2 = [v157 topAnchor];
    v148 = v64;
    v68 = v42;
    topAnchor3 = [v42 topAnchor];
    v70 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3];
    [v36 addObject:v70];

    trailingAnchor2 = [v157 trailingAnchor];
    trailingAnchor3 = [v42 trailingAnchor];
    v73 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:v33];
    [v36 addObject:v73];

    leadingAnchor3 = [v157 leadingAnchor];
    leadingAnchor4 = [v42 leadingAnchor];
    v76 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v35];
    [v36 addObject:v76];

    topAnchor4 = [v155 topAnchor];
    topAnchor5 = [v157 topAnchor];
    v79 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [v36 addObject:v79];

    leadingAnchor5 = [v155 leadingAnchor];
    leadingAnchor6 = [v157 leadingAnchor];
    v82 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v36 addObject:v82];

    widthAnchor3 = [v155 widthAnchor];
    widthAnchor4 = [v157 widthAnchor];
    v85 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    [v36 addObject:v85];

    bottomAnchor3 = [v155 bottomAnchor];
    v146 = v63;
    detailTextLabel = v156;
    topAnchor6 = [v156 topAnchor];
    v88 = [bottomAnchor3 constraintEqualToAnchor:topAnchor6];
    [v36 addObject:v88];

    leadingAnchor7 = [v156 leadingAnchor];
    leadingAnchor8 = [v157 leadingAnchor];
    v91 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [v36 addObject:v91];

    widthAnchor5 = [v156 widthAnchor];
    widthAnchor6 = [v157 widthAnchor];
    v94 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    [v36 addObject:v94];

    bottomAnchor4 = [v156 bottomAnchor];
    bottomAnchor5 = [v157 bottomAnchor];
    v97 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [v36 addObject:v97];

    LODWORD(v98) = AXResistAllCompressingAndStretching[0];
    LODWORD(v99) = AXResistAllCompressingAndStretching[1];
    LODWORD(v100) = AXResistAllCompressingAndStretching[2];
    LODWORD(v101) = AXResistAllCompressingAndStretching[3];
    toggleSwitch = v158;
    [v158 ax_setContentHuggingAndCompressionResistance:{v98, v99, v100, v101}];
    topAnchor7 = [v158 topAnchor];
    bottomAnchor6 = [v157 bottomAnchor];
    v104 = [topAnchor7 constraintEqualToAnchor:bottomAnchor6];
    [v36 addObject:v104];

    leadingAnchor9 = [v158 leadingAnchor];
    leadingAnchor10 = [v157 leadingAnchor];
    v107 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    [v36 addObject:v107];

    bottomAnchor7 = [v158 bottomAnchor];
    bottomAnchor8 = [v68 bottomAnchor];
    [v37 featureViewAdditionalBottomOffsetForLargeText];
    v111 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-v110];
    [v36 addObject:v111];

    heightAnchor = [v68 heightAnchor];
    heightAnchor2 = [(TimeRestrictionFeatureView *)selfCopy heightAnchor];
    v114 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
    [v36 addObject:v114];

    v115 = v37;
    [NSLayoutConstraint activateConstraints:v36];
    LODWORD(v116) = 1132068864;
    [v156 setContentHuggingPriority:0 forAxis:v116];
    LODWORD(v117) = 1144750080;
    [v156 setContentCompressionResistancePriority:0 forAxis:v117];
    LODWORD(v118) = 1148846080;
    [v156 setContentCompressionResistancePriority:1 forAxis:v118];
    LODWORD(v119) = 1148846080;
    [v156 setContentHuggingPriority:1 forAxis:v119];

    v120 = v159;
    v121 = v68;
    v19 = v152;
    v122 = v153;
  }
}

- (void)_setDatePickerVisible:(BOOL)visible completion:(id)completion
{
  completionCopy = completion;
  detailTextLabel = [(GAXFeatureView_Phone *)self detailTextLabel];
  delegate = [(GAXFeatureView *)self delegate];
  v9 = [delegate styleProviderForFeatureView:self];

  [v9 defaultAnimationDuration];
  v11 = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_32B10;
  v16[3] = &unk_5E5A0;
  visibleCopy = visible;
  v16[4] = self;
  v17 = detailTextLabel;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_32E10;
  v14[3] = &unk_5CE58;
  v15 = completionCopy;
  v12 = completionCopy;
  v13 = detailTextLabel;
  [UIView animateWithDuration:v16 animations:v14 completion:v11];
}

- (void)_handleDatePickerValueDidChange:(id)change
{
  changeCopy = change;
  datePicker = [(TimeRestrictionFeatureView *)self datePicker];
  -[TimeRestrictionFeatureView setDurationInMinutes:](self, "setDurationInMinutes:", [datePicker selectedDurationInMinutes]);

  v5 = GAXLocalizedStringForTimeDuration([(TimeRestrictionFeatureView *)self durationInMinutes]* 60.0);
  detailTextLabel = [(GAXFeatureView_Phone *)self detailTextLabel];
  [detailTextLabel setText:v5];

  delegate = [(GAXFeatureView *)self delegate];
  LOBYTE(detailTextLabel) = objc_opt_respondsToSelector();

  if (detailTextLabel)
  {
    delegate2 = [(GAXFeatureView *)self delegate];
    [delegate2 featureView:self didChangeTimeRestrictionDuration:objc_msgSend(changeCopy timeRestrictionsEnabled:{"selectedDurationInMinutes"), objc_msgSend(changeCopy, "isEnabled")}];
  }
}

- (void)_handleValueChanged:(id)changed
{
  changedCopy = changed;
  if ([(GAXFeatureView *)self type]== &dword_4)
  {
    v5 = GAXLocalizedStringForTimeDuration([(TimeRestrictionFeatureView *)self durationInMinutes]* 60.0);
    detailTextLabel = [(GAXFeatureView_Phone *)self detailTextLabel];
    [detailTextLabel setText:v5];

    isOn = [changedCopy isOn];
    datePicker = [(TimeRestrictionFeatureView *)self datePicker];
    [datePicker setGaxDatePickerEnabled:isOn];

    objc_initWeak(&location, self);
    isOn2 = [changedCopy isOn];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_33128;
    v11[3] = &unk_5E5C8;
    objc_copyWeak(&v13, &location);
    v12 = changedCopy;
    [(TimeRestrictionFeatureView *)self _setDatePickerVisible:isOn2 completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TimeRestrictionFeatureView;
    [(GAXFeatureView *)&v10 _handleValueChanged:changedCopy];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TimeRestrictionFeatureView;
  [(TimeRestrictionFeatureView *)&v3 layoutSubviews];
  [(TimeRestrictionFeatureView *)self resetCountDownDurationForDatePicker];
}

- (void)resetCountDownDurationForDatePicker
{
  [(UIDatePicker *)self->_datePicker countDownDuration];
  v4 = v3;
  [(UIDatePicker *)self->_datePicker setCountDownDuration:0.0];
  datePicker = self->_datePicker;

  [(UIDatePicker *)datePicker setCountDownDuration:v4];
}

- (id)accessibilityElements
{
  v3 = +[NSMutableArray array];
  topShelfAXElement = [(TimeRestrictionFeatureView *)self topShelfAXElement];
  [v3 addObject:topShelfAXElement];

  datePicker = [(TimeRestrictionFeatureView *)self datePicker];
  _accessibilityViewIsVisible = [datePicker _accessibilityViewIsVisible];

  if (_accessibilityViewIsVisible)
  {
    datePicker2 = [(TimeRestrictionFeatureView *)self datePicker];
    [v3 addObject:datePicker2];
  }

  return v3;
}

- (id)accessibilityLabel:(id)label
{
  accessibilityLabel = [(TimeRestrictionFeatureView *)self accessibilityLabel];
  detailTextLabel = [(GAXFeatureView_Phone *)self detailTextLabel];
  if ([detailTextLabel _accessibilityViewIsVisible])
  {
    detailTextLabel2 = [(GAXFeatureView_Phone *)self detailTextLabel];
    text = [detailTextLabel2 text];
    v7 = __UIAXStringForVariables();
  }

  else
  {
    v7 = __UIAXStringForVariables();
  }

  return v7;
}

- (CGRect)accessibilityFrame:(id)frame
{
  topShelfContainer = [(TimeRestrictionFeatureView *)self topShelfContainer];
  [topShelfContainer accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end