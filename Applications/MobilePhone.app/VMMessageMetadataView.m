@interface VMMessageMetadataView
- (VMMessageMetadataView)initWithAccessibleLayout:(BOOL)a3;
- (VMMessageMetadataViewDelegate)delegate;
- (id)createConstraintsForAccessibleExpandedLayout;
- (id)createConstraintsForAccessibleNonExpandedLayoutForEditing:(BOOL)a3;
- (id)createConstraintsForNonAccessibleExpandedLayout;
- (id)createConstraintsForNonAccessibleNonExpandedLayoutForEditing:(BOOL)a3;
- (id)createFixedConstraintsForAccessibleLayout;
- (id)createFixedConstraintsForNonAccessibleLayout;
- (void)configureWithViewModel:(id)a3;
- (void)createConstraints;
- (void)didTapAction:(id)a3;
- (void)didTapInfo:(id)a3;
- (void)removeConstraints:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setLayoutIsAccessible:(BOOL)a3;
- (void)setPriorityOfConstraints:(id)a3 to:(float)a4;
- (void)tintColorDidChange;
- (void)updateLabelColors;
- (void)updateSubviewConfiguration;
@end

@implementation VMMessageMetadataView

- (VMMessageMetadataView)initWithAccessibleLayout:(BOOL)a3
{
  v77.receiver = self;
  v77.super_class = VMMessageMetadataView;
  v4 = [(VMMessageMetadataView *)&v77 init];
  v5 = v4;
  if (v4)
  {
    v4->_layoutIsAccessible = a3;
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
    v76 = [(UILayoutGuide *)v5->_buttonLayoutGuide topAnchor];
    v75 = [(UIDateLabel *)v5->_shortDateLabel bottomAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v78[0] = v74;
    v73 = [(UILayoutGuide *)v5->_buttonLayoutGuide bottomAnchor];
    v72 = [(UILabel *)v5->_shortDurationLabel topAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v78[1] = v71;
    v50 = [(TPBadgeView *)v5->_badgeView leadingAnchor];
    v51 = [(VMMessageMetadataView *)v5 layoutMarginsGuide];
    v52 = [v51 leadingAnchor];
    v53 = [v50 constraintEqualToAnchor:v52];
    v78[2] = v53;
    v54 = [(TPBadgeView *)v5->_badgeView centerYAnchor];
    v55 = [(UILabel *)v5->_subtitleLabel centerYAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];
    v78[3] = v56;
    v57 = [NSArray arrayWithObjects:v78 count:4];
    [NSLayoutConstraint activateConstraints:v57];

    v58 = [(UILabel *)v5->_subtitleLabel leadingAnchor];
    v59 = [(VMMessageMetadataView *)v5 layoutMarginsGuide];
    v60 = [v59 leadingAnchor];
    v61 = [v58 constraintEqualToAnchor:v60];
    subtitleLeadingToLayoutMarginConstrant = v5->_subtitleLeadingToLayoutMarginConstrant;
    v5->_subtitleLeadingToLayoutMarginConstrant = v61;

    v63 = [(TPBadgeView *)v5->_badgeView trailingAnchor];
    v64 = [(UILabel *)v5->_subtitleLabel leadingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 constant:-8.0];
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

- (void)configureWithViewModel:(id)a3
{
  v22 = a3;
  v4 = [(VMMessageMetadataView *)self currentViewModel];
  v5 = [v22 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(VMMessageMetadataView *)self setCurrentViewModel:v22];
    v6 = [v22 localizedTitle];
    v7 = [(VMMessageMetadataView *)self titleLabel];
    [v7 setText:v6];

    v8 = [v22 localizedSubtitle];
    v9 = [(VMMessageMetadataView *)self subtitleLabel];
    [v9 setText:v8];

    v10 = [v22 date];
    v11 = [(VMMessageMetadataView *)self shortDateLabel];
    [v11 setDate:v10];

    v12 = [v22 localizedDuration];
    v13 = [(VMMessageMetadataView *)self shortDurationLabel];
    [v13 setText:v12];

    v14 = [v22 localizedDate];
    v15 = [(VMMessageMetadataView *)self fullDateLabel];
    [v15 setText:v14];

    LODWORD(v14) = [v22 showsRestrictedAlertView];
    v16 = [(VMMessageMetadataView *)self actionButton];
    [v16 setEnabled:v14 ^ 1];

    v17 = [v22 localizedSenderIdentityTitle];

    v18 = [(VMMessageMetadataView *)self badgeView];
    v19 = v18;
    if (v17)
    {
      v20 = [v22 localizedSenderIdentityTitle];
      [v19 setTitle:v20];

      v18 = [(VMMessageMetadataView *)self badgeView];
      v19 = v18;
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    [v18 setHidden:v21];

    [(VMMessageMetadataView *)self updateSubviewConfiguration];
  }
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    self->_expanded = a3;
    [(VMMessageMetadataView *)self updateSubviewConfiguration];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(VMMessageMetadataView *)self updateSubviewConfiguration];
  }
}

- (void)setLayoutIsAccessible:(BOOL)a3
{
  if (self->_layoutIsAccessible != a3)
  {
    self->_layoutIsAccessible = a3;
    [(VMMessageMetadataView *)self createConstraints];

    [(VMMessageMetadataView *)self updateSubviewConfiguration];
  }
}

- (void)didTapInfo:(id)a3
{
  v4 = [(VMMessageMetadataView *)self delegate];
  [v4 messageMetadataView:self didTapButtonType:2];
}

- (void)didTapAction:(id)a3
{
  v4 = [(VMMessageMetadataView *)self delegate];
  [v4 messageMetadataView:self didTapButtonType:1];
}

- (void)updateSubviewConfiguration
{
  v34 = [objc_opt_class() constraintsKeyForAccessibleLayout:-[VMMessageMetadataView layoutIsAccessible](self expanded:"layoutIsAccessible") editing:{-[VMMessageMetadataView isExpanded](self, "isExpanded"), -[VMMessageMetadataView isEditing](self, "isEditing")}];
  v3 = [(VMMessageMetadataView *)self currentRequiredConstraintsKey];
  v4 = [v34 isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [(VMMessageMetadataView *)self currentRequiredConstraints];
    LODWORD(v6) = 1132068864;
    [(VMMessageMetadataView *)self setPriorityOfConstraints:v5 to:v6];

    v7 = [(VMMessageMetadataView *)self constraintsForLayouts];
    v8 = [v7 objectForKeyedSubscript:v34];
    [(VMMessageMetadataView *)self setCurrentRequiredConstraints:v8];

    [(VMMessageMetadataView *)self setCurrentRequiredConstraintsKey:v34];
    v9 = [(VMMessageMetadataView *)self currentRequiredConstraints];
    LODWORD(v10) = 1148846080;
    [(VMMessageMetadataView *)self setPriorityOfConstraints:v9 to:v10];
  }

  v11 = [(VMMessageMetadataView *)self badgeView];
  v12 = [v11 isHidden];

  v13 = [(VMMessageMetadataView *)self subtitleLeadingToLayoutMarginConstrant];
  [v13 setActive:v12];

  v14 = [(VMMessageMetadataView *)self badgeViewTrailingToSubtitleLeadingConstrant];
  [v14 setActive:v12 ^ 1];

  if ([(VMMessageMetadataView *)self isExpanded])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = [(VMMessageMetadataView *)self shortDateLabel];
  [v16 setAlpha:v15];

  if ([(VMMessageMetadataView *)self isExpanded])
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = [(VMMessageMetadataView *)self shortDurationLabel];
  [v18 setAlpha:v17];

  if ([(VMMessageMetadataView *)self isExpanded])
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = [(VMMessageMetadataView *)self fullDateLabel];
  [v20 setAlpha:v19];

  if ([(VMMessageMetadataView *)self isExpanded])
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = [(VMMessageMetadataView *)self actionButton];
  [v22 setAlpha:v21];

  if ([(VMMessageMetadataView *)self isEditing])
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  v24 = [(VMMessageMetadataView *)self infoButton];
  [v24 setAlpha:v23];

  [(VMMessageMetadataView *)self updateLabelColors];
  v25 = [(VMMessageMetadataView *)self traitCollection];
  if ([v25 preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells])
  {
    v26 = 0;
  }

  else
  {
    v26 = 2;
  }

  v27 = [(VMMessageMetadataView *)self titleLabel];
  [v27 setNumberOfLines:v26];

  v28 = [(VMMessageMetadataView *)self layoutIsAccessible]^ 1;
  v29 = [(VMMessageMetadataView *)self subtitleLabel];
  [v29 setNumberOfLines:v28];

  v30 = [(VMMessageMetadataView *)self shortDateLabel];
  [v30 setNumberOfLines:1];

  v31 = [(VMMessageMetadataView *)self shortDurationLabel];
  [v31 setNumberOfLines:1];

  if ([(VMMessageMetadataView *)self layoutIsAccessible])
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  v33 = [(VMMessageMetadataView *)self fullDateLabel];
  [v33 setNumberOfLines:v32];
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

  v4 = [(VMMessageMetadataView *)self subtitleLabel];
  [v4 setTextColor:v7];

  v5 = [(VMMessageMetadataView *)self shortDurationLabel];
  [v5 setTextColor:v7];

  v6 = [(VMMessageMetadataView *)self fullDateLabel];
  [v6 setTextColor:v7];
}

- (void)createConstraints
{
  [(VMMessageMetadataView *)self setCurrentRequiredConstraints:&__NSArray0__struct];
  [(VMMessageMetadataView *)self setCurrentRequiredConstraintsKey:0];
  v3 = [(VMMessageMetadataView *)self currentActiveFixedConstraints];
  [(VMMessageMetadataView *)self removeConstraints:v3];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = [(VMMessageMetadataView *)self constraintsForLayouts];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(VMMessageMetadataView *)self removeConstraints:*(*(&v37 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
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
  v11 = [(VMMessageMetadataView *)self createConstraintsForNonAccessibleExpandedLayout];
  v43[2] = v11;
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
  v17 = [(VMMessageMetadataView *)self createConstraintsForAccessibleExpandedLayout];
  v43[5] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:6];
  [(VMMessageMetadataView *)self setConstraintsForLayouts:v18];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = [(VMMessageMetadataView *)self constraintsForLayouts];
  v20 = [v19 allValues];

  v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        LODWORD(v22) = 1132068864;
        [(VMMessageMetadataView *)self setPriorityOfConstraints:v26 to:v22, v29];
        [NSLayoutConstraint activateConstraints:v26];
      }

      v23 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
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

  v28 = [(VMMessageMetadataView *)self currentActiveFixedConstraints];
  [NSLayoutConstraint activateConstraints:v28];
}

- (void)removeConstraints:(id)a3
{
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 firstItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = [v9 firstItem];
LABEL_10:
          v15 = v12;
          [v12 removeConstraint:v9];
          goto LABEL_13;
        }

        v13 = [v9 secondItem];
        objc_opt_class();
        v14 = objc_opt_isKindOfClass();

        if (v14)
        {
          v12 = [v9 secondItem];
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

      v6 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }
}

- (void)setPriorityOfConstraints:(id)a3 to:(float)a4
{
  v5 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        *&v7 = a4;
        [*(*(&v11 + 1) + 8 * v10) setPriority:v7];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)createFixedConstraintsForNonAccessibleLayout
{
  v64 = [(VMMessageMetadataView *)self infoButton];
  v62 = [v64 centerYAnchor];
  v63 = [(VMMessageMetadataView *)self buttonLayoutGuide];
  v61 = [v63 centerYAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v65[0] = v60;
  v59 = [(VMMessageMetadataView *)self infoButton];
  v57 = [v59 trailingAnchor];
  v58 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v56 = [v58 trailingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v65[1] = v55;
  v54 = [(VMMessageMetadataView *)self actionButton];
  v52 = [v54 firstBaselineAnchor];
  v53 = [(VMMessageMetadataView *)self infoButton];
  v51 = [v53 firstBaselineAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v65[2] = v50;
  v49 = [(VMMessageMetadataView *)self actionButton];
  v47 = [v49 trailingAnchor];
  v48 = [(VMMessageMetadataView *)self infoButton];
  v46 = [v48 leadingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46 constant:-24.0];
  v65[3] = v45;
  v44 = [(VMMessageMetadataView *)self titleLabel];
  v42 = [v44 topAnchor];
  v43 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v41 = [v43 topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v65[4] = v40;
  v39 = [(VMMessageMetadataView *)self titleLabel];
  v37 = [v39 leadingAnchor];
  v38 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v36 = [v38 leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v65[5] = v35;
  v34 = [(VMMessageMetadataView *)self subtitleLabel];
  v32 = [v34 firstBaselineAnchor];
  v33 = [(VMMessageMetadataView *)self titleLabel];
  v31 = [v33 lastBaselineAnchor];
  v30 = [v32 constraintEqualToSystemSpacingBelowAnchor:v31 multiplier:1.0];
  v65[6] = v30;
  v29 = [(VMMessageMetadataView *)self shortDateLabel];
  v27 = [v29 firstBaselineAnchor];
  v28 = [(VMMessageMetadataView *)self titleLabel];
  v26 = [v28 firstBaselineAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v65[7] = v25;
  v24 = [(VMMessageMetadataView *)self shortDurationLabel];
  v22 = [v24 firstBaselineAnchor];
  v23 = [(VMMessageMetadataView *)self subtitleLabel];
  v21 = [v23 firstBaselineAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v65[8] = v20;
  v19 = [(VMMessageMetadataView *)self fullDateLabel];
  v17 = [v19 firstBaselineAnchor];
  v18 = [(VMMessageMetadataView *)self subtitleLabel];
  v16 = [v18 lastBaselineAnchor];
  v15 = [v17 constraintEqualToSystemSpacingBelowAnchor:v16 multiplier:1.0];
  v65[9] = v15;
  v3 = [(VMMessageMetadataView *)self fullDateLabel];
  v4 = [v3 leadingAnchor];
  v5 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v65[10] = v7;
  v8 = [(VMMessageMetadataView *)self fullDateLabel];
  v9 = [v8 trailingAnchor];
  v10 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v65[11] = v12;
  v14 = [NSArray arrayWithObjects:v65 count:12];

  return v14;
}

- (id)createConstraintsForNonAccessibleNonExpandedLayoutForEditing:(BOOL)a3
{
  v3 = a3;
  v33 = [(VMMessageMetadataView *)self shortDateLabel];
  v5 = [v33 trailingAnchor];
  if (v3)
  {
    v6 = [(VMMessageMetadataView *)self layoutMarginsGuide];
    v7 = [v6 trailingAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    v37[0] = v8;
    v9 = [(VMMessageMetadataView *)self shortDurationLabel];
    v10 = [v9 trailingAnchor];
    v11 = [(VMMessageMetadataView *)self layoutMarginsGuide];
    v12 = [v11 trailingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v37[1] = v13;
    v14 = v37;
  }

  else
  {
    v6 = [(VMMessageMetadataView *)self infoButton];
    v7 = [v6 leadingAnchor];
    v8 = [v5 constraintEqualToAnchor:v7 constant:-8.0];
    v36[0] = v8;
    v9 = [(VMMessageMetadataView *)self shortDurationLabel];
    v10 = [v9 trailingAnchor];
    v11 = [(VMMessageMetadataView *)self infoButton];
    v12 = [v11 leadingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:-8.0];
    v36[1] = v13;
    v14 = v36;
  }

  v31 = [NSArray arrayWithObjects:v14 count:2];

  v34 = [(VMMessageMetadataView *)self titleLabel];
  v30 = [v34 trailingAnchor];
  v32 = [(VMMessageMetadataView *)self shortDateLabel];
  v29 = [v32 leadingAnchor];
  v28 = [v30 constraintLessThanOrEqualToAnchor:v29 constant:-8.0];
  v35[0] = v28;
  v27 = [(VMMessageMetadataView *)self subtitleLabel];
  v26 = [v27 trailingAnchor];
  v15 = [(VMMessageMetadataView *)self shortDurationLabel];
  v16 = [v15 leadingAnchor];
  v17 = [v26 constraintLessThanOrEqualToAnchor:v16 constant:-8.0];
  v35[1] = v17;
  v18 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v19 = [v18 bottomAnchor];
  v20 = [(VMMessageMetadataView *)self shortDurationLabel];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v35[2] = v22;
  v23 = [NSArray arrayWithObjects:v35 count:3];
  v25 = [v23 arrayByAddingObjectsFromArray:v31];

  return v25;
}

- (id)createConstraintsForNonAccessibleExpandedLayout
{
  v29 = [(VMMessageMetadataView *)self titleLabel];
  v27 = [v29 trailingAnchor];
  v28 = [(VMMessageMetadataView *)self actionButton];
  v26 = [v28 leadingAnchor];
  v25 = [v27 constraintLessThanOrEqualToAnchor:v26 constant:-8.0];
  v30[0] = v25;
  v24 = [(VMMessageMetadataView *)self subtitleLabel];
  v22 = [v24 trailingAnchor];
  v23 = [(VMMessageMetadataView *)self actionButton];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintLessThanOrEqualToAnchor:v21 constant:-8.0];
  v30[1] = v20;
  v19 = [(VMMessageMetadataView *)self shortDateLabel];
  v17 = [v19 trailingAnchor];
  v18 = [(VMMessageMetadataView *)self infoButton];
  v16 = [v18 leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16 constant:-8.0];
  v30[2] = v15;
  v3 = [(VMMessageMetadataView *)self shortDurationLabel];
  v4 = [v3 trailingAnchor];
  v5 = [(VMMessageMetadataView *)self infoButton];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:-8.0];
  v30[3] = v7;
  v8 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v9 = [v8 bottomAnchor];
  v10 = [(VMMessageMetadataView *)self fullDateLabel];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v30[4] = v12;
  v14 = [NSArray arrayWithObjects:v30 count:5];

  return v14;
}

- (id)createFixedConstraintsForAccessibleLayout
{
  v89 = [(VMMessageMetadataView *)self infoButton];
  v87 = [v89 firstBaselineAnchor];
  v88 = [(VMMessageMetadataView *)self titleLabel];
  v86 = [v88 firstBaselineAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v90[0] = v85;
  v84 = [(VMMessageMetadataView *)self infoButton];
  v82 = [v84 trailingAnchor];
  v83 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v81 = [v83 trailingAnchor];
  v80 = [v82 constraintEqualToAnchor:v81];
  v90[1] = v80;
  v79 = [(VMMessageMetadataView *)self actionButton];
  v77 = [v79 firstBaselineAnchor];
  v78 = [(VMMessageMetadataView *)self titleLabel];
  v76 = [v78 firstBaselineAnchor];
  v75 = [v77 constraintEqualToAnchor:v76];
  v90[2] = v75;
  v74 = [(VMMessageMetadataView *)self actionButton];
  v72 = [v74 trailingAnchor];
  v73 = [(VMMessageMetadataView *)self infoButton];
  v71 = [v73 leadingAnchor];
  v70 = [v72 constraintEqualToAnchor:v71 constant:-24.0];
  v90[3] = v70;
  v69 = [(VMMessageMetadataView *)self titleLabel];
  v67 = [v69 topAnchor];
  v68 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v66 = [v68 topAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v90[4] = v65;
  v64 = [(VMMessageMetadataView *)self titleLabel];
  v62 = [v64 leadingAnchor];
  v63 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v61 = [v63 leadingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v90[5] = v60;
  v59 = [(VMMessageMetadataView *)self subtitleLabel];
  v57 = [v59 firstBaselineAnchor];
  v58 = [(VMMessageMetadataView *)self titleLabel];
  v56 = [v58 lastBaselineAnchor];
  v55 = [v57 constraintEqualToSystemSpacingBelowAnchor:v56 multiplier:1.0];
  v90[6] = v55;
  v54 = [(VMMessageMetadataView *)self subtitleLabel];
  v52 = [v54 trailingAnchor];
  v53 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v51 = [v53 trailingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v90[7] = v50;
  v49 = [(VMMessageMetadataView *)self shortDateLabel];
  v47 = [v49 firstBaselineAnchor];
  v48 = [(VMMessageMetadataView *)self subtitleLabel];
  v46 = [v48 lastBaselineAnchor];
  v45 = [v47 constraintEqualToSystemSpacingBelowAnchor:v46 multiplier:1.0];
  v90[8] = v45;
  v44 = [(VMMessageMetadataView *)self shortDateLabel];
  v42 = [v44 leadingAnchor];
  v43 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v41 = [v43 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v90[9] = v40;
  v39 = [(VMMessageMetadataView *)self shortDateLabel];
  v37 = [v39 trailingAnchor];
  v38 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v36 = [v38 trailingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v90[10] = v35;
  v34 = [(VMMessageMetadataView *)self shortDurationLabel];
  v32 = [v34 firstBaselineAnchor];
  v33 = [(VMMessageMetadataView *)self shortDateLabel];
  v31 = [v33 lastBaselineAnchor];
  v30 = [v32 constraintEqualToSystemSpacingBelowAnchor:v31 multiplier:1.0];
  v90[11] = v30;
  v29 = [(VMMessageMetadataView *)self shortDurationLabel];
  v27 = [v29 leadingAnchor];
  v28 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v26 = [v28 leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v90[12] = v25;
  v24 = [(VMMessageMetadataView *)self shortDurationLabel];
  v22 = [v24 trailingAnchor];
  v23 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v21 = [v23 trailingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v90[13] = v20;
  v19 = [(VMMessageMetadataView *)self fullDateLabel];
  v17 = [v19 firstBaselineAnchor];
  v18 = [(VMMessageMetadataView *)self subtitleLabel];
  v16 = [v18 lastBaselineAnchor];
  v15 = [v17 constraintEqualToSystemSpacingBelowAnchor:v16 multiplier:1.0];
  v90[14] = v15;
  v3 = [(VMMessageMetadataView *)self fullDateLabel];
  v4 = [v3 leadingAnchor];
  v5 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v90[15] = v7;
  v8 = [(VMMessageMetadataView *)self fullDateLabel];
  v9 = [v8 trailingAnchor];
  v10 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v90[16] = v12;
  v14 = [NSArray arrayWithObjects:v90 count:17];

  return v14;
}

- (id)createConstraintsForAccessibleNonExpandedLayoutForEditing:(BOOL)a3
{
  v3 = a3;
  v18 = [(VMMessageMetadataView *)self titleLabel];
  v5 = [v18 trailingAnchor];
  v17 = v5;
  if (v3)
  {
    v6 = [(VMMessageMetadataView *)self layoutMarginsGuide];
    v7 = [v6 trailingAnchor];
    v8 = [v5 constraintLessThanOrEqualToAnchor:v7];
    v20 = v8;
    v9 = &v20;
  }

  else
  {
    v6 = [(VMMessageMetadataView *)self infoButton];
    v7 = [v6 leadingAnchor];
    v8 = [v5 constraintLessThanOrEqualToAnchor:v7 constant:-8.0];
    v19 = v8;
    v9 = &v19;
  }

  v10 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v11 = [v10 bottomAnchor];
  v12 = [(VMMessageMetadataView *)self shortDurationLabel];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v9[1] = v14;
  v15 = [NSArray arrayWithObjects:v9 count:2];

  return v15;
}

- (id)createConstraintsForAccessibleExpandedLayout
{
  v14 = [(VMMessageMetadataView *)self titleLabel];
  v3 = [v14 trailingAnchor];
  v4 = [(VMMessageMetadataView *)self actionButton];
  v5 = [v4 leadingAnchor];
  v6 = [v3 constraintLessThanOrEqualToAnchor:v5 constant:-8.0];
  v15[0] = v6;
  v7 = [(VMMessageMetadataView *)self layoutMarginsGuide];
  v8 = [v7 bottomAnchor];
  v9 = [(VMMessageMetadataView *)self fullDateLabel];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
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