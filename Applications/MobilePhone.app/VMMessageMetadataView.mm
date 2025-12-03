@interface VMMessageMetadataView
- (VMMessageMetadataView)initWithAccessibleLayout:(BOOL)layout;
- (VMMessageMetadataViewDelegate)delegate;
- (id)createConstraintsForAccessibleExpandedLayout;
- (id)createConstraintsForAccessibleNonExpandedLayoutForEditing:(BOOL)editing;
- (id)createConstraintsForNonAccessibleExpandedLayout;
- (id)createConstraintsForNonAccessibleNonExpandedLayoutForEditing:(BOOL)editing;
- (id)createFixedConstraintsForAccessibleLayout;
- (id)createFixedConstraintsForNonAccessibleLayout;
- (void)configureWithViewModel:(id)model;
- (void)createConstraints;
- (void)didTapAction:(id)action;
- (void)didTapInfo:(id)info;
- (void)removeConstraints:(id)constraints;
- (void)setEditing:(BOOL)editing;
- (void)setExpanded:(BOOL)expanded;
- (void)setLayoutIsAccessible:(BOOL)accessible;
- (void)setPriorityOfConstraints:(id)constraints to:(float)to;
- (void)tintColorDidChange;
- (void)updateLabelColors;
- (void)updateSubviewConfiguration;
@end

@implementation VMMessageMetadataView

- (VMMessageMetadataView)initWithAccessibleLayout:(BOOL)layout
{
  v77.receiver = self;
  v77.super_class = VMMessageMetadataView;
  v4 = [(VMMessageMetadataView *)&v77 init];
  v5 = v4;
  if (v4)
  {
    v4->_layoutIsAccessible = layout;
    [(VMMessageMetadataView *)v4 setDirectionalLayoutMargins:12.0, 0.0, 12.0, 0.0];
    v6 = +[TPActionButton button];
    infoButton = v5->_infoButton;
    v5->_infoButton = v6;

    [(UIButton *)v5->_infoButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v5->_infoButton setAccessibilityIdentifier:@"VMMessageMetadataView_Info"];
    v8 = v5->_infoButton;
    v9 = +[UIImage telephonyUIInfoButtonGlyphImage];
    [(UIButton *)v8 setImage:v9 forStates:0];

    [(UIButton *)v5->_infoButton addTarget:v5 action:"didTapInfo:" forEvents:64];
    LODWORD(v10) = 1148846080;
    [(UIButton *)v5->_infoButton setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [(UIButton *)v5->_infoButton setContentHuggingPriority:0 forAxis:v11];
    [(VMMessageMetadataView *)v5 addSubview:v5->_infoButton];
    v12 = +[TPActionButton button];
    actionButton = v5->_actionButton;
    v5->_actionButton = v12;

    [(UIButton *)v5->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v5->_actionButton setAccessibilityIdentifier:@"VMMessageMetadataView_Action"];
    [(UIButton *)v5->_actionButton addTarget:v5 action:"didTapAction:" forEvents:64];
    LODWORD(v14) = 1148846080;
    [(UIButton *)v5->_actionButton setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UIButton *)v5->_actionButton setContentHuggingPriority:0 forAxis:v15];
    [(VMMessageMetadataView *)v5 addSubview:v5->_actionButton];
    v16 = objc_alloc_init(UILabel);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v16;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = +[UIFont telephonyUIBodyShortEmphasizedFont];
    [(UILabel *)v5->_titleLabel setFont:v18];

    v19 = +[UIColor dynamicLabelColor];
    [(UILabel *)v5->_titleLabel setTextColor:v19];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(VMMessageMetadataView *)v5 addSubview:v5->_titleLabel];
    v20 = objc_alloc_init(UILabel);
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v20;

    [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = +[UIFont telephonyUISubheadlineShortFont];
    [(UILabel *)v5->_subtitleLabel setFont:v22];

    v23 = +[UIColor dynamicSecondaryLabelColor];
    v24 = [(VMMessageMetadataView *)v5 _accessibilityHigherContrastTintColorForColor:v23];
    [(UILabel *)v5->_subtitleLabel setTextColor:v24];

    [(UILabel *)v5->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(VMMessageMetadataView *)v5 addSubview:v5->_subtitleLabel];
    v25 = objc_alloc_init(UIDateLabel);
    shortDateLabel = v5->_shortDateLabel;
    v5->_shortDateLabel = v25;

    [(UIDateLabel *)v5->_shortDateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = +[UIFont telephonyUISubheadlineShortFont];
    [(UIDateLabel *)v5->_shortDateLabel setFont:v27];

    v28 = +[UIColor dynamicLabelColor];
    [(UIDateLabel *)v5->_shortDateLabel setTextColor:v28];

    [(UIDateLabel *)v5->_shortDateLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v29) = 1144750080;
    [(UIDateLabel *)v5->_shortDateLabel setContentHuggingPriority:0 forAxis:v29];
    LODWORD(v30) = 1144750080;
    [(UIDateLabel *)v5->_shortDateLabel setContentHuggingPriority:1 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(UIDateLabel *)v5->_shortDateLabel setContentCompressionResistancePriority:0 forAxis:v31];
    [(VMMessageMetadataView *)v5 addSubview:v5->_shortDateLabel];
    v32 = objc_alloc_init(UILabel);
    shortDurationLabel = v5->_shortDurationLabel;
    v5->_shortDurationLabel = v32;

    [(UILabel *)v5->_shortDurationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = +[UIFont telephonyUISubheadlineShortFont];
    [(UILabel *)v5->_shortDurationLabel setFont:v34];

    v35 = +[UIColor dynamicSecondaryLabelColor];
    [(UILabel *)v5->_shortDurationLabel setTextColor:v35];

    [(UILabel *)v5->_shortDurationLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v36) = 1144750080;
    [(UILabel *)v5->_shortDurationLabel setContentHuggingPriority:0 forAxis:v36];
    LODWORD(v37) = 1144750080;
    [(UILabel *)v5->_shortDurationLabel setContentHuggingPriority:1 forAxis:v37];
    [(VMMessageMetadataView *)v5 addSubview:v5->_shortDurationLabel];
    v38 = objc_alloc_init(UILabel);
    fullDateLabel = v5->_fullDateLabel;
    v5->_fullDateLabel = v38;

    [(UILabel *)v5->_fullDateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = +[UIFont telephonyUISubheadlineShortFont];
    [(UILabel *)v5->_fullDateLabel setFont:v40];

    v41 = +[UIColor dynamicSecondaryLabelColor];
    [(UILabel *)v5->_fullDateLabel setTextColor:v41];

    [(UILabel *)v5->_fullDateLabel setAdjustsFontForContentSizeCategory:1];
    [(VMMessageMetadataView *)v5 addSubview:v5->_fullDateLabel];
    v42 = [[TPBadgeView alloc] initWithTitle:&stru_10028F310];
    badgeView = v5->_badgeView;
    v5->_badgeView = v42;

    [(TPBadgeView *)v5->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TPBadgeView *)v5->_badgeView setHidden:1];
    LODWORD(v44) = 1148846080;
    [(TPBadgeView *)v5->_badgeView setContentCompressionResistancePriority:0 forAxis:v44];
    LODWORD(v45) = 1148846080;
    [(TPBadgeView *)v5->_badgeView setContentHuggingPriority:0 forAxis:v45];
    LODWORD(v46) = 1148846080;
    [(TPBadgeView *)v5->_badgeView setContentCompressionResistancePriority:1 forAxis:v46];
    LODWORD(v47) = 1148846080;
    [(TPBadgeView *)v5->_badgeView setContentHuggingPriority:1 forAxis:v47];
    [(VMMessageMetadataView *)v5 addSubview:v5->_badgeView];
    v48 = objc_alloc_init(UILayoutGuide);
    buttonLayoutGuide = v5->_buttonLayoutGuide;
    v5->_buttonLayoutGuide = v48;

    [(VMMessageMetadataView *)v5 addLayoutGuide:v5->_buttonLayoutGuide];
    topAnchor = [(UILayoutGuide *)v5->_buttonLayoutGuide topAnchor];
    bottomAnchor = [(UIDateLabel *)v5->_shortDateLabel bottomAnchor];
    v74 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v78[0] = v74;
    bottomAnchor2 = [(UILayoutGuide *)v5->_buttonLayoutGuide bottomAnchor];
    topAnchor2 = [(UILabel *)v5->_shortDurationLabel topAnchor];
    v71 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2];
    v78[1] = v71;
    leadingAnchor = [(TPBadgeView *)v5->_badgeView leadingAnchor];
    layoutMarginsGuide = [(VMMessageMetadataView *)v5 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v78[2] = v53;
    centerYAnchor = [(TPBadgeView *)v5->_badgeView centerYAnchor];
    centerYAnchor2 = [(UILabel *)v5->_subtitleLabel centerYAnchor];
    v56 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v78[3] = v56;
    v57 = [NSArray arrayWithObjects:v78 count:4];
    [NSLayoutConstraint activateConstraints:v57];

    leadingAnchor3 = [(UILabel *)v5->_subtitleLabel leadingAnchor];
    layoutMarginsGuide2 = [(VMMessageMetadataView *)v5 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
    v61 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    subtitleLeadingToLayoutMarginConstrant = v5->_subtitleLeadingToLayoutMarginConstrant;
    v5->_subtitleLeadingToLayoutMarginConstrant = v61;

    trailingAnchor = [(TPBadgeView *)v5->_badgeView trailingAnchor];
    leadingAnchor5 = [(UILabel *)v5->_subtitleLabel leadingAnchor];
    v65 = [trailingAnchor constraintEqualToAnchor:leadingAnchor5 constant:-8.0];
    badgeViewTrailingToSubtitleLeadingConstrant = v5->_badgeViewTrailingToSubtitleLeadingConstrant;
    v5->_badgeViewTrailingToSubtitleLeadingConstrant = v65;

    currentActiveFixedConstraints = v5->_currentActiveFixedConstraints;
    v5->_currentActiveFixedConstraints = &__NSArray0__struct;

    currentRequiredConstraintsKey = v5->_currentRequiredConstraintsKey;
    v5->_currentRequiredConstraintsKey = 0;

    currentRequiredConstraints = v5->_currentRequiredConstraints;
    v5->_currentRequiredConstraints = &__NSArray0__struct;

    [(VMMessageMetadataView *)v5 createConstraints];
    [(VMMessageMetadataView *)v5 updateSubviewConfiguration];
  }

  return v5;
}

- (void)configureWithViewModel:(id)model
{
  modelCopy = model;
  currentViewModel = [(VMMessageMetadataView *)self currentViewModel];
  v5 = [modelCopy isEqual:currentViewModel];

  if ((v5 & 1) == 0)
  {
    [(VMMessageMetadataView *)self setCurrentViewModel:modelCopy];
    localizedTitle = [modelCopy localizedTitle];
    titleLabel = [(VMMessageMetadataView *)self titleLabel];
    [titleLabel setText:localizedTitle];

    localizedSubtitle = [modelCopy localizedSubtitle];
    subtitleLabel = [(VMMessageMetadataView *)self subtitleLabel];
    [subtitleLabel setText:localizedSubtitle];

    date = [modelCopy date];
    shortDateLabel = [(VMMessageMetadataView *)self shortDateLabel];
    [shortDateLabel setDate:date];

    localizedDuration = [modelCopy localizedDuration];
    shortDurationLabel = [(VMMessageMetadataView *)self shortDurationLabel];
    [shortDurationLabel setText:localizedDuration];

    localizedDate = [modelCopy localizedDate];
    fullDateLabel = [(VMMessageMetadataView *)self fullDateLabel];
    [fullDateLabel setText:localizedDate];

    LODWORD(localizedDate) = [modelCopy showsRestrictedAlertView];
    actionButton = [(VMMessageMetadataView *)self actionButton];
    [actionButton setEnabled:localizedDate ^ 1];

    localizedSenderIdentityTitle = [modelCopy localizedSenderIdentityTitle];

    badgeView = [(VMMessageMetadataView *)self badgeView];
    v19 = badgeView;
    if (localizedSenderIdentityTitle)
    {
      localizedSenderIdentityTitle2 = [modelCopy localizedSenderIdentityTitle];
      [v19 setTitle:localizedSenderIdentityTitle2];

      badgeView = [(VMMessageMetadataView *)self badgeView];
      v19 = badgeView;
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    [badgeView setHidden:v21];

    [(VMMessageMetadataView *)self updateSubviewConfiguration];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
    [(VMMessageMetadataView *)self updateSubviewConfiguration];
  }
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(VMMessageMetadataView *)self updateSubviewConfiguration];
  }
}

- (void)setLayoutIsAccessible:(BOOL)accessible
{
  if (self->_layoutIsAccessible != accessible)
  {
    self->_layoutIsAccessible = accessible;
    [(VMMessageMetadataView *)self createConstraints];

    [(VMMessageMetadataView *)self updateSubviewConfiguration];
  }
}

- (void)didTapInfo:(id)info
{
  delegate = [(VMMessageMetadataView *)self delegate];
  [delegate messageMetadataView:self didTapButtonType:2];
}

- (void)didTapAction:(id)action
{
  delegate = [(VMMessageMetadataView *)self delegate];
  [delegate messageMetadataView:self didTapButtonType:1];
}

- (void)updateSubviewConfiguration
{
  v34 = [objc_opt_class() constraintsKeyForAccessibleLayout:-[VMMessageMetadataView layoutIsAccessible](self expanded:"layoutIsAccessible") editing:{-[VMMessageMetadataView isExpanded](self, "isExpanded"), -[VMMessageMetadataView isEditing](self, "isEditing")}];
  currentRequiredConstraintsKey = [(VMMessageMetadataView *)self currentRequiredConstraintsKey];
  v4 = [v34 isEqualToString:currentRequiredConstraintsKey];

  if ((v4 & 1) == 0)
  {
    currentRequiredConstraints = [(VMMessageMetadataView *)self currentRequiredConstraints];
    LODWORD(v6) = 1132068864;
    [(VMMessageMetadataView *)self setPriorityOfConstraints:currentRequiredConstraints to:v6];

    constraintsForLayouts = [(VMMessageMetadataView *)self constraintsForLayouts];
    v8 = [constraintsForLayouts objectForKeyedSubscript:v34];
    [(VMMessageMetadataView *)self setCurrentRequiredConstraints:v8];

    [(VMMessageMetadataView *)self setCurrentRequiredConstraintsKey:v34];
    currentRequiredConstraints2 = [(VMMessageMetadataView *)self currentRequiredConstraints];
    LODWORD(v10) = 1148846080;
    [(VMMessageMetadataView *)self setPriorityOfConstraints:currentRequiredConstraints2 to:v10];
  }

  badgeView = [(VMMessageMetadataView *)self badgeView];
  isHidden = [badgeView isHidden];

  subtitleLeadingToLayoutMarginConstrant = [(VMMessageMetadataView *)self subtitleLeadingToLayoutMarginConstrant];
  [subtitleLeadingToLayoutMarginConstrant setActive:isHidden];

  badgeViewTrailingToSubtitleLeadingConstrant = [(VMMessageMetadataView *)self badgeViewTrailingToSubtitleLeadingConstrant];
  [badgeViewTrailingToSubtitleLeadingConstrant setActive:isHidden ^ 1];

  if ([(VMMessageMetadataView *)self isExpanded])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  shortDateLabel = [(VMMessageMetadataView *)self shortDateLabel];
  [shortDateLabel setAlpha:v15];

  if ([(VMMessageMetadataView *)self isExpanded])
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  shortDurationLabel = [(VMMessageMetadataView *)self shortDurationLabel];
  [shortDurationLabel setAlpha:v17];

  if ([(VMMessageMetadataView *)self isExpanded])
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  fullDateLabel = [(VMMessageMetadataView *)self fullDateLabel];
  [fullDateLabel setAlpha:v19];

  if ([(VMMessageMetadataView *)self isExpanded])
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  actionButton = [(VMMessageMetadataView *)self actionButton];
  [actionButton setAlpha:v21];

  if ([(VMMessageMetadataView *)self isEditing])
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  infoButton = [(VMMessageMetadataView *)self infoButton];
  [infoButton setAlpha:v23];

  [(VMMessageMetadataView *)self updateLabelColors];
  traitCollection = [(VMMessageMetadataView *)self traitCollection];
  if ([traitCollection preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells])
  {
    v26 = 0;
  }

  else
  {
    v26 = 2;
  }

  titleLabel = [(VMMessageMetadataView *)self titleLabel];
  [titleLabel setNumberOfLines:v26];

  v28 = [(VMMessageMetadataView *)self layoutIsAccessible]^ 1;
  subtitleLabel = [(VMMessageMetadataView *)self subtitleLabel];
  [subtitleLabel setNumberOfLines:v28];

  shortDateLabel2 = [(VMMessageMetadataView *)self shortDateLabel];
  [shortDateLabel2 setNumberOfLines:1];

  shortDurationLabel2 = [(VMMessageMetadataView *)self shortDurationLabel];
  [shortDurationLabel2 setNumberOfLines:1];

  if ([(VMMessageMetadataView *)self layoutIsAccessible])
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  fullDateLabel2 = [(VMMessageMetadataView *)self fullDateLabel];
  [fullDateLabel2 setNumberOfLines:v32];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = VMMessageMetadataView;
  [(VMMessageMetadataView *)&v3 tintColorDidChange];
  [(VMMessageMetadataView *)self updateLabelColors];
}

- (void)updateLabelColors
{
  v3 = +[UIColor dynamicSecondaryLabelColor];
  v7 = [(VMMessageMetadataView *)self _accessibilityHigherContrastTintColorForColor:v3];

  subtitleLabel = [(VMMessageMetadataView *)self subtitleLabel];
  [subtitleLabel setTextColor:v7];

  shortDurationLabel = [(VMMessageMetadataView *)self shortDurationLabel];
  [shortDurationLabel setTextColor:v7];

  fullDateLabel = [(VMMessageMetadataView *)self fullDateLabel];
  [fullDateLabel setTextColor:v7];
}

- (void)createConstraints
{
  [(VMMessageMetadataView *)self setCurrentRequiredConstraints:&__NSArray0__struct];
  [(VMMessageMetadataView *)self setCurrentRequiredConstraintsKey:0];
  currentActiveFixedConstraints = [(VMMessageMetadataView *)self currentActiveFixedConstraints];
  [(VMMessageMetadataView *)self removeConstraints:currentActiveFixedConstraints];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  constraintsForLayouts = [(VMMessageMetadataView *)self constraintsForLayouts];
  allValues = [constraintsForLayouts allValues];

  v6 = [allValues countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [(VMMessageMetadataView *)self removeConstraints:*(*(&v37 + 1) + 8 * i)];
      }

      v7 = [allValues countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v32 = [objc_opt_class() constraintsKeyForAccessibleLayout:0 expanded:0 editing:0];
  v42[0] = v32;
  v31 = [(VMMessageMetadataView *)self createConstraintsForNonAccessibleNonExpandedLayoutForEditing:0];
  v43[0] = v31;
  v30 = [objc_opt_class() constraintsKeyForAccessibleLayout:0 expanded:0 editing:1];
  v42[1] = v30;
  v29 = [(VMMessageMetadataView *)self createConstraintsForNonAccessibleNonExpandedLayoutForEditing:1];
  v43[1] = v29;
  v10 = [objc_opt_class() constraintsKeyForAccessibleLayout:0 expanded:1 editing:0];
  v42[2] = v10;
  createConstraintsForNonAccessibleExpandedLayout = [(VMMessageMetadataView *)self createConstraintsForNonAccessibleExpandedLayout];
  v43[2] = createConstraintsForNonAccessibleExpandedLayout;
  v12 = [objc_opt_class() constraintsKeyForAccessibleLayout:1 expanded:0 editing:0];
  v42[3] = v12;
  v13 = [(VMMessageMetadataView *)self createConstraintsForAccessibleNonExpandedLayoutForEditing:0];
  v43[3] = v13;
  v14 = [objc_opt_class() constraintsKeyForAccessibleLayout:1 expanded:0 editing:1];
  v42[4] = v14;
  v15 = [(VMMessageMetadataView *)self createConstraintsForAccessibleNonExpandedLayoutForEditing:1];
  v43[4] = v15;
  v16 = [objc_opt_class() constraintsKeyForAccessibleLayout:1 expanded:1 editing:0];
  v42[5] = v16;
  createConstraintsForAccessibleExpandedLayout = [(VMMessageMetadataView *)self createConstraintsForAccessibleExpandedLayout];
  v43[5] = createConstraintsForAccessibleExpandedLayout;
  v18 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:6];
  [(VMMessageMetadataView *)self setConstraintsForLayouts:v18];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  constraintsForLayouts2 = [(VMMessageMetadataView *)self constraintsForLayouts];
  allValues2 = [constraintsForLayouts2 allValues];

  v21 = [allValues2 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v21)
  {
    v23 = v21;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(allValues2);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        LODWORD(v22) = 1132068864;
        [(VMMessageMetadataView *)self setPriorityOfConstraints:v26 to:v22, v29];
        [NSLayoutConstraint activateConstraints:v26];
      }

      v23 = [allValues2 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v23);
  }

  if ([(VMMessageMetadataView *)self layoutIsAccessible])
  {
    [(VMMessageMetadataView *)self createFixedConstraintsForAccessibleLayout];
  }

  else
  {
    [(VMMessageMetadataView *)self createFixedConstraintsForNonAccessibleLayout];
  }
  v27 = ;
  [(VMMessageMetadataView *)self setCurrentActiveFixedConstraints:v27, v29];

  currentActiveFixedConstraints2 = [(VMMessageMetadataView *)self currentActiveFixedConstraints];
  [NSLayoutConstraint activateConstraints:currentActiveFixedConstraints2];
}

- (void)removeConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [constraintsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138412290;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(constraintsCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        firstItem = [v9 firstItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          firstItem2 = [v9 firstItem];
LABEL_10:
          v15 = firstItem2;
          [firstItem2 removeConstraint:v9];
          goto LABEL_13;
        }

        secondItem = [v9 secondItem];
        objc_opt_class();
        v14 = objc_opt_isKindOfClass();

        if (v14)
        {
          firstItem2 = [v9 secondItem];
          goto LABEL_10;
        }

        v15 = PHDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v22 = v9;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to remove constraint: %@", buf, 0xCu);
        }

LABEL_13:
      }

      v6 = [constraintsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }
}

- (void)setPriorityOfConstraints:(id)constraints to:(float)to
{
  constraintsCopy = constraints;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [constraintsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(constraintsCopy);
        }

        *&v7 = to;
        [*(*(&v11 + 1) + 8 * v10) setPriority:v7];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [constraintsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)createFixedConstraintsForNonAccessibleLayout
{
  infoButton = [(VMMessageMetadataView *)self infoButton];
  centerYAnchor = [infoButton centerYAnchor];
  buttonLayoutGuide = [(VMMessageMetadataView *)self buttonLayoutGuide];
  centerYAnchor2 = [buttonLayoutGuide centerYAnchor];
  v60 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v65[0] = v60;
  infoButton2 = [(VMMessageMetadataView *)self infoButton];
  trailingAnchor = [infoButton2 trailingAnchor];
  layoutMarginsGuide = [(VMMessageMetadataView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v55 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v65[1] = v55;
  actionButton = [(VMMessageMetadataView *)self actionButton];
  firstBaselineAnchor = [actionButton firstBaselineAnchor];
  infoButton3 = [(VMMessageMetadataView *)self infoButton];
  firstBaselineAnchor2 = [infoButton3 firstBaselineAnchor];
  v50 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v65[2] = v50;
  actionButton2 = [(VMMessageMetadataView *)self actionButton];
  trailingAnchor3 = [actionButton2 trailingAnchor];
  infoButton4 = [(VMMessageMetadataView *)self infoButton];
  leadingAnchor = [infoButton4 leadingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-24.0];
  v65[3] = v45;
  titleLabel = [(VMMessageMetadataView *)self titleLabel];
  topAnchor = [titleLabel topAnchor];
  layoutMarginsGuide2 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide2 topAnchor];
  v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v65[4] = v40;
  titleLabel2 = [(VMMessageMetadataView *)self titleLabel];
  leadingAnchor2 = [titleLabel2 leadingAnchor];
  layoutMarginsGuide3 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  leadingAnchor3 = [layoutMarginsGuide3 leadingAnchor];
  v35 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  v65[5] = v35;
  subtitleLabel = [(VMMessageMetadataView *)self subtitleLabel];
  firstBaselineAnchor3 = [subtitleLabel firstBaselineAnchor];
  titleLabel3 = [(VMMessageMetadataView *)self titleLabel];
  lastBaselineAnchor = [titleLabel3 lastBaselineAnchor];
  v30 = [firstBaselineAnchor3 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
  v65[6] = v30;
  shortDateLabel = [(VMMessageMetadataView *)self shortDateLabel];
  firstBaselineAnchor4 = [shortDateLabel firstBaselineAnchor];
  titleLabel4 = [(VMMessageMetadataView *)self titleLabel];
  firstBaselineAnchor5 = [titleLabel4 firstBaselineAnchor];
  v25 = [firstBaselineAnchor4 constraintEqualToAnchor:firstBaselineAnchor5];
  v65[7] = v25;
  shortDurationLabel = [(VMMessageMetadataView *)self shortDurationLabel];
  firstBaselineAnchor6 = [shortDurationLabel firstBaselineAnchor];
  subtitleLabel2 = [(VMMessageMetadataView *)self subtitleLabel];
  firstBaselineAnchor7 = [subtitleLabel2 firstBaselineAnchor];
  v20 = [firstBaselineAnchor6 constraintEqualToAnchor:firstBaselineAnchor7];
  v65[8] = v20;
  fullDateLabel = [(VMMessageMetadataView *)self fullDateLabel];
  firstBaselineAnchor8 = [fullDateLabel firstBaselineAnchor];
  subtitleLabel3 = [(VMMessageMetadataView *)self subtitleLabel];
  lastBaselineAnchor2 = [subtitleLabel3 lastBaselineAnchor];
  v15 = [firstBaselineAnchor8 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.0];
  v65[9] = v15;
  fullDateLabel2 = [(VMMessageMetadataView *)self fullDateLabel];
  leadingAnchor4 = [fullDateLabel2 leadingAnchor];
  layoutMarginsGuide4 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  leadingAnchor5 = [layoutMarginsGuide4 leadingAnchor];
  v7 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v65[10] = v7;
  fullDateLabel3 = [(VMMessageMetadataView *)self fullDateLabel];
  trailingAnchor4 = [fullDateLabel3 trailingAnchor];
  layoutMarginsGuide5 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  trailingAnchor5 = [layoutMarginsGuide5 trailingAnchor];
  v12 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v65[11] = v12;
  v14 = [NSArray arrayWithObjects:v65 count:12];

  return v14;
}

- (id)createConstraintsForNonAccessibleNonExpandedLayoutForEditing:(BOOL)editing
{
  editingCopy = editing;
  shortDateLabel = [(VMMessageMetadataView *)self shortDateLabel];
  trailingAnchor = [shortDateLabel trailingAnchor];
  if (editingCopy)
  {
    layoutMarginsGuide = [(VMMessageMetadataView *)self layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[0] = v8;
    shortDurationLabel = [(VMMessageMetadataView *)self shortDurationLabel];
    trailingAnchor3 = [shortDurationLabel trailingAnchor];
    layoutMarginsGuide2 = [(VMMessageMetadataView *)self layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
    v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v37[1] = v13;
    v14 = v37;
  }

  else
  {
    layoutMarginsGuide = [(VMMessageMetadataView *)self infoButton];
    trailingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    v36[0] = v8;
    shortDurationLabel = [(VMMessageMetadataView *)self shortDurationLabel];
    trailingAnchor3 = [shortDurationLabel trailingAnchor];
    layoutMarginsGuide2 = [(VMMessageMetadataView *)self infoButton];
    trailingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
    v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-8.0];
    v36[1] = v13;
    v14 = v36;
  }

  v31 = [NSArray arrayWithObjects:v14 count:2];

  titleLabel = [(VMMessageMetadataView *)self titleLabel];
  trailingAnchor5 = [titleLabel trailingAnchor];
  shortDateLabel2 = [(VMMessageMetadataView *)self shortDateLabel];
  leadingAnchor = [shortDateLabel2 leadingAnchor];
  v28 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor constant:-8.0];
  v35[0] = v28;
  subtitleLabel = [(VMMessageMetadataView *)self subtitleLabel];
  trailingAnchor6 = [subtitleLabel trailingAnchor];
  shortDurationLabel2 = [(VMMessageMetadataView *)self shortDurationLabel];
  leadingAnchor2 = [shortDurationLabel2 leadingAnchor];
  v17 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:leadingAnchor2 constant:-8.0];
  v35[1] = v17;
  layoutMarginsGuide3 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide3 bottomAnchor];
  shortDurationLabel3 = [(VMMessageMetadataView *)self shortDurationLabel];
  bottomAnchor2 = [shortDurationLabel3 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v35[2] = v22;
  v23 = [NSArray arrayWithObjects:v35 count:3];
  v25 = [v23 arrayByAddingObjectsFromArray:v31];

  return v25;
}

- (id)createConstraintsForNonAccessibleExpandedLayout
{
  titleLabel = [(VMMessageMetadataView *)self titleLabel];
  trailingAnchor = [titleLabel trailingAnchor];
  actionButton = [(VMMessageMetadataView *)self actionButton];
  leadingAnchor = [actionButton leadingAnchor];
  v25 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor constant:-8.0];
  v30[0] = v25;
  subtitleLabel = [(VMMessageMetadataView *)self subtitleLabel];
  trailingAnchor2 = [subtitleLabel trailingAnchor];
  actionButton2 = [(VMMessageMetadataView *)self actionButton];
  leadingAnchor2 = [actionButton2 leadingAnchor];
  v20 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor2 constant:-8.0];
  v30[1] = v20;
  shortDateLabel = [(VMMessageMetadataView *)self shortDateLabel];
  trailingAnchor3 = [shortDateLabel trailingAnchor];
  infoButton = [(VMMessageMetadataView *)self infoButton];
  leadingAnchor3 = [infoButton leadingAnchor];
  v15 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-8.0];
  v30[2] = v15;
  shortDurationLabel = [(VMMessageMetadataView *)self shortDurationLabel];
  trailingAnchor4 = [shortDurationLabel trailingAnchor];
  infoButton2 = [(VMMessageMetadataView *)self infoButton];
  leadingAnchor4 = [infoButton2 leadingAnchor];
  v7 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor4 constant:-8.0];
  v30[3] = v7;
  layoutMarginsGuide = [(VMMessageMetadataView *)self layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide bottomAnchor];
  fullDateLabel = [(VMMessageMetadataView *)self fullDateLabel];
  bottomAnchor2 = [fullDateLabel bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[4] = v12;
  v14 = [NSArray arrayWithObjects:v30 count:5];

  return v14;
}

- (id)createFixedConstraintsForAccessibleLayout
{
  infoButton = [(VMMessageMetadataView *)self infoButton];
  firstBaselineAnchor = [infoButton firstBaselineAnchor];
  titleLabel = [(VMMessageMetadataView *)self titleLabel];
  firstBaselineAnchor2 = [titleLabel firstBaselineAnchor];
  v85 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v90[0] = v85;
  infoButton2 = [(VMMessageMetadataView *)self infoButton];
  trailingAnchor = [infoButton2 trailingAnchor];
  layoutMarginsGuide = [(VMMessageMetadataView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v80 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v90[1] = v80;
  actionButton = [(VMMessageMetadataView *)self actionButton];
  firstBaselineAnchor3 = [actionButton firstBaselineAnchor];
  titleLabel2 = [(VMMessageMetadataView *)self titleLabel];
  firstBaselineAnchor4 = [titleLabel2 firstBaselineAnchor];
  v75 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4];
  v90[2] = v75;
  actionButton2 = [(VMMessageMetadataView *)self actionButton];
  trailingAnchor3 = [actionButton2 trailingAnchor];
  infoButton3 = [(VMMessageMetadataView *)self infoButton];
  leadingAnchor = [infoButton3 leadingAnchor];
  v70 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-24.0];
  v90[3] = v70;
  titleLabel3 = [(VMMessageMetadataView *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  layoutMarginsGuide2 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide2 topAnchor];
  v65 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v90[4] = v65;
  titleLabel4 = [(VMMessageMetadataView *)self titleLabel];
  leadingAnchor2 = [titleLabel4 leadingAnchor];
  layoutMarginsGuide3 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  leadingAnchor3 = [layoutMarginsGuide3 leadingAnchor];
  v60 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  v90[5] = v60;
  subtitleLabel = [(VMMessageMetadataView *)self subtitleLabel];
  firstBaselineAnchor5 = [subtitleLabel firstBaselineAnchor];
  titleLabel5 = [(VMMessageMetadataView *)self titleLabel];
  lastBaselineAnchor = [titleLabel5 lastBaselineAnchor];
  v55 = [firstBaselineAnchor5 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
  v90[6] = v55;
  subtitleLabel2 = [(VMMessageMetadataView *)self subtitleLabel];
  trailingAnchor4 = [subtitleLabel2 trailingAnchor];
  layoutMarginsGuide4 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  trailingAnchor5 = [layoutMarginsGuide4 trailingAnchor];
  v50 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v90[7] = v50;
  shortDateLabel = [(VMMessageMetadataView *)self shortDateLabel];
  firstBaselineAnchor6 = [shortDateLabel firstBaselineAnchor];
  subtitleLabel3 = [(VMMessageMetadataView *)self subtitleLabel];
  lastBaselineAnchor2 = [subtitleLabel3 lastBaselineAnchor];
  v45 = [firstBaselineAnchor6 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.0];
  v90[8] = v45;
  shortDateLabel2 = [(VMMessageMetadataView *)self shortDateLabel];
  leadingAnchor4 = [shortDateLabel2 leadingAnchor];
  layoutMarginsGuide5 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  leadingAnchor5 = [layoutMarginsGuide5 leadingAnchor];
  v40 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v90[9] = v40;
  shortDateLabel3 = [(VMMessageMetadataView *)self shortDateLabel];
  trailingAnchor6 = [shortDateLabel3 trailingAnchor];
  layoutMarginsGuide6 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  trailingAnchor7 = [layoutMarginsGuide6 trailingAnchor];
  v35 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v90[10] = v35;
  shortDurationLabel = [(VMMessageMetadataView *)self shortDurationLabel];
  firstBaselineAnchor7 = [shortDurationLabel firstBaselineAnchor];
  shortDateLabel4 = [(VMMessageMetadataView *)self shortDateLabel];
  lastBaselineAnchor3 = [shortDateLabel4 lastBaselineAnchor];
  v30 = [firstBaselineAnchor7 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor3 multiplier:1.0];
  v90[11] = v30;
  shortDurationLabel2 = [(VMMessageMetadataView *)self shortDurationLabel];
  leadingAnchor6 = [shortDurationLabel2 leadingAnchor];
  layoutMarginsGuide7 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  leadingAnchor7 = [layoutMarginsGuide7 leadingAnchor];
  v25 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v90[12] = v25;
  shortDurationLabel3 = [(VMMessageMetadataView *)self shortDurationLabel];
  trailingAnchor8 = [shortDurationLabel3 trailingAnchor];
  layoutMarginsGuide8 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  trailingAnchor9 = [layoutMarginsGuide8 trailingAnchor];
  v20 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v90[13] = v20;
  fullDateLabel = [(VMMessageMetadataView *)self fullDateLabel];
  firstBaselineAnchor8 = [fullDateLabel firstBaselineAnchor];
  subtitleLabel4 = [(VMMessageMetadataView *)self subtitleLabel];
  lastBaselineAnchor4 = [subtitleLabel4 lastBaselineAnchor];
  v15 = [firstBaselineAnchor8 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor4 multiplier:1.0];
  v90[14] = v15;
  fullDateLabel2 = [(VMMessageMetadataView *)self fullDateLabel];
  leadingAnchor8 = [fullDateLabel2 leadingAnchor];
  layoutMarginsGuide9 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  leadingAnchor9 = [layoutMarginsGuide9 leadingAnchor];
  v7 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v90[15] = v7;
  fullDateLabel3 = [(VMMessageMetadataView *)self fullDateLabel];
  trailingAnchor10 = [fullDateLabel3 trailingAnchor];
  layoutMarginsGuide10 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  trailingAnchor11 = [layoutMarginsGuide10 trailingAnchor];
  v12 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
  v90[16] = v12;
  v14 = [NSArray arrayWithObjects:v90 count:17];

  return v14;
}

- (id)createConstraintsForAccessibleNonExpandedLayoutForEditing:(BOOL)editing
{
  editingCopy = editing;
  titleLabel = [(VMMessageMetadataView *)self titleLabel];
  trailingAnchor = [titleLabel trailingAnchor];
  v17 = trailingAnchor;
  if (editingCopy)
  {
    layoutMarginsGuide = [(VMMessageMetadataView *)self layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v8 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v20 = v8;
    v9 = &v20;
  }

  else
  {
    layoutMarginsGuide = [(VMMessageMetadataView *)self infoButton];
    trailingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v8 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-8.0];
    v19 = v8;
    v9 = &v19;
  }

  layoutMarginsGuide2 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide2 bottomAnchor];
  shortDurationLabel = [(VMMessageMetadataView *)self shortDurationLabel];
  bottomAnchor2 = [shortDurationLabel bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v9[1] = v14;
  v15 = [NSArray arrayWithObjects:v9 count:2];

  return v15;
}

- (id)createConstraintsForAccessibleExpandedLayout
{
  titleLabel = [(VMMessageMetadataView *)self titleLabel];
  trailingAnchor = [titleLabel trailingAnchor];
  actionButton = [(VMMessageMetadataView *)self actionButton];
  leadingAnchor = [actionButton leadingAnchor];
  v6 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor constant:-8.0];
  v15[0] = v6;
  layoutMarginsGuide = [(VMMessageMetadataView *)self layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide bottomAnchor];
  fullDateLabel = [(VMMessageMetadataView *)self fullDateLabel];
  bottomAnchor2 = [fullDateLabel bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];

  return v12;
}

- (VMMessageMetadataViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end