@interface HangEventTableViewCell
+ (id)_textColorForDurationLevel:(int64_t)level;
- (CGSize)_disclosureIndicatorSize;
- (HangEventTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConfigurationUsingState:(id)state;
- (void)updateConstraints;
- (void)updateDurationFont;
@end

@implementation HangEventTableViewCell

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  [(HangEventTableViewCell *)self setAutomaticallyUpdatesBackgroundConfiguration:0];
  v7 = [stateCopy copy];

  if ([(HangEventTableViewCell *)self editingStyle]== &dword_0 + 3)
  {
    [v7 setSelected:0];
    [v7 setHighlighted:0];
  }

  defaultBackgroundConfiguration = [(HangEventTableViewCell *)self defaultBackgroundConfiguration];
  v6 = [defaultBackgroundConfiguration updatedConfigurationForState:v7];
  [(HangEventTableViewCell *)self setBackgroundConfiguration:v6];
}

- (HangEventTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v109.receiver = self;
  v109.super_class = HangEventTableViewCell;
  v5 = [(HangEventTableViewCell *)&v109 initWithStyle:3 reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(HangEventTableViewCell *)v5 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v114 = objc_opt_class();
    v7 = [NSArray arrayWithObjects:&v114 count:1];
    v8 = [(HangEventTableViewCell *)v6 registerForTraitChanges:v7 withTarget:v6 action:"updateDurationFont"];

    v9 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    nameLabel = v6->_nameLabel;
    v6->_nameLabel = v13;

    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v6->_nameLabel setFont:v15];

    [(UILabel *)v6->_nameLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v6->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1132068864;
    [(UILabel *)v6->_nameLabel setContentCompressionResistancePriority:0 forAxis:v16];
    LODWORD(v17) = 1144750080;
    [(UILabel *)v6->_nameLabel setContentCompressionResistancePriority:1 forAxis:v17];
    LODWORD(v18) = 1144750080;
    [(UILabel *)v6->_nameLabel setContentHuggingPriority:0 forAxis:v18];
    LODWORD(v19) = 1144750080;
    [(UILabel *)v6->_nameLabel setContentHuggingPriority:1 forAxis:v19];
    v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    dateLabel = v6->_dateLabel;
    v6->_dateLabel = v20;

    v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v6->_dateLabel setFont:v22];

    v23 = +[UIColor secondaryLabelColor];
    [(UILabel *)v6->_dateLabel setTextColor:v23];

    [(UILabel *)v6->_dateLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v6->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v24) = 1132068864;
    [(UILabel *)v6->_dateLabel setContentCompressionResistancePriority:0 forAxis:v24];
    LODWORD(v25) = 1144750080;
    [(UILabel *)v6->_dateLabel setContentCompressionResistancePriority:1 forAxis:v25];
    LODWORD(v26) = 1144750080;
    [(UILabel *)v6->_dateLabel setContentHuggingPriority:0 forAxis:v26];
    LODWORD(v27) = 1144750080;
    [(UILabel *)v6->_dateLabel setContentHuggingPriority:1 forAxis:v27];
    v28 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    durationLabel = v6->_durationLabel;
    v6->_durationLabel = v28;

    [(UILabel *)v6->_durationLabel setAdjustsFontForContentSizeCategory:1];
    [(HangEventTableViewCell *)v6 updateDurationFont];
    [(UILabel *)v6->_durationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v30) = 1148846080;
    [(UILabel *)v6->_durationLabel setContentCompressionResistancePriority:0 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(UILabel *)v6->_durationLabel setContentCompressionResistancePriority:1 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [(UILabel *)v6->_durationLabel setContentHuggingPriority:0 forAxis:v32];
    LODWORD(v33) = 1148846080;
    [(UILabel *)v6->_durationLabel setContentHuggingPriority:1 forAxis:v33];
    v34 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:8];
    spinner = v6->_spinner;
    v6->_spinner = v34;

    v36 = +[UIColor secondaryLabelColor];
    [(UIActivityIndicatorView *)v6->_spinner setColor:v36];

    [(UIActivityIndicatorView *)v6->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HangEventTableViewCell *)v6 contentView];
    [contentView addSubview:v6->_spinner];

    v38 = [UIStackView alloc];
    v113[0] = v6->_nameLabel;
    v113[1] = v6->_dateLabel;
    v39 = [NSArray arrayWithObjects:v113 count:2];
    v40 = [v38 initWithArrangedSubviews:v39];

    [v40 setAxis:1];
    [v40 setAlignment:1];
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = v40;
    [v40 setCustomSpacing:v6->_nameLabel afterView:3.0];
    v42 = [UIStackView alloc];
    v112[0] = v41;
    v106 = v41;
    v112[1] = v6->_durationLabel;
    v43 = [NSArray arrayWithObjects:v112 count:2];
    v44 = [v42 initWithArrangedSubviews:v43];

    v45 = v44;
    [v44 setAlignment:3];
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    v107 = v44;
    [v44 setCustomSpacing:v41 afterView:1.17549435e-38];
    contentView2 = [(HangEventTableViewCell *)v6 contentView];
    [contentView2 addSubview:v45];

    contentView3 = [(HangEventTableViewCell *)v6 contentView];
    [contentView3 addSubview:v6->_spinner];

    [(HangEventTableViewCell *)v6 _disclosureIndicatorSize];
    v49 = v48;
    v51 = v50;
    v52 = objc_alloc_init(UIView);
    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v52 addSubview:v6->_spinner];
    contentView4 = [(HangEventTableViewCell *)v6 contentView];
    [contentView4 addSubview:v52];

    centerYAnchor = [v52 centerYAnchor];
    contentView5 = [(HangEventTableViewCell *)v6 contentView];
    centerYAnchor2 = [contentView5 centerYAnchor];
    v98 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v111[0] = v98;
    trailingAnchor = [v52 trailingAnchor];
    contentView6 = [(HangEventTableViewCell *)v6 contentView];
    layoutMarginsGuide = [contentView6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v90 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v111[1] = v90;
    widthAnchor = [v52 widthAnchor];
    v88 = [widthAnchor constraintEqualToConstant:v49];
    v111[2] = v88;
    heightAnchor = [v52 heightAnchor];
    v55 = [heightAnchor constraintEqualToConstant:v51];
    v111[3] = v55;
    centerYAnchor3 = [(UIActivityIndicatorView *)v6->_spinner centerYAnchor];
    v108 = v52;
    centerYAnchor4 = [v52 centerYAnchor];
    v58 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v111[4] = v58;
    centerXAnchor = [(UIActivityIndicatorView *)v6->_spinner centerXAnchor];
    centerXAnchor2 = [v52 centerXAnchor];
    v61 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v111[5] = v61;
    v62 = [NSArray arrayWithObjects:v111 count:6];
    [NSLayoutConstraint activateConstraints:v62];

    trailingAnchor3 = [v107 trailingAnchor];
    contentView7 = [(HangEventTableViewCell *)v6 contentView];
    trailingAnchor4 = [contentView7 trailingAnchor];
    v66 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    trailingConstraint = v6->_trailingConstraint;
    v6->_trailingConstraint = v66;

    trailingAnchor5 = [v107 trailingAnchor];
    contentView8 = [(HangEventTableViewCell *)v6 contentView];
    layoutMarginsGuide2 = [contentView8 layoutMarginsGuide];
    trailingAnchor6 = [layoutMarginsGuide2 trailingAnchor];
    v72 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    processingTrailingConstraint = v6->_processingTrailingConstraint;
    v6->_processingTrailingConstraint = v72;

    leadingAnchor = [v108 leadingAnchor];
    trailingAnchor7 = [v107 trailingAnchor];
    v76 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor7 multiplier:1.0];
    spinnerConstraint = v6->_spinnerConstraint;
    v6->_spinnerConstraint = v76;

    leadingAnchor2 = [v107 leadingAnchor];
    contentView9 = [(HangEventTableViewCell *)v6 contentView];
    layoutMarginsGuide3 = [contentView9 layoutMarginsGuide];
    leadingAnchor3 = [layoutMarginsGuide3 leadingAnchor];
    v97 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v110[0] = v97;
    v110[1] = v6->_trailingConstraint;
    topAnchor = [v107 topAnchor];
    contentView10 = [(HangEventTableViewCell *)v6 contentView];
    layoutMarginsGuide4 = [contentView10 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide4 topAnchor];
    v80 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:1.0];
    v110[2] = v80;
    bottomAnchor = [v107 bottomAnchor];
    contentView11 = [(HangEventTableViewCell *)v6 contentView];
    layoutMarginsGuide5 = [contentView11 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide5 bottomAnchor];
    v85 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-2.0];
    v110[3] = v85;
    v86 = [NSArray arrayWithObjects:v110 count:4];
    [NSLayoutConstraint activateConstraints:v86];
  }

  return v6;
}

- (void)updateDurationFont
{
  traitCollection = [(HangEventTableViewCell *)self traitCollection];
  v11 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:traitCollection];

  [v11 pointSize];
  v5 = v4;
  fontAttributes = [v11 fontAttributes];
  v7 = [fontAttributes objectForKeyedSubscript:UIFontDescriptorTraitsAttribute];
  v8 = [v7 objectForKeyedSubscript:UIFontWeightTrait];
  [v8 floatValue];
  v10 = [UIFont monospacedDigitSystemFontOfSize:v5 weight:v9];
  [(UILabel *)self->_durationLabel setFont:v10];
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = HangEventTableViewCell;
  [(HangEventTableViewCell *)&v4 updateConstraints];
  isAnimating = [(UIActivityIndicatorView *)self->_spinner isAnimating];
  [(NSLayoutConstraint *)self->_trailingConstraint setActive:!([(HangEventTableViewCell *)self isEditing]| isAnimating)];
  [(NSLayoutConstraint *)self->_processingTrailingConstraint setActive:[(HangEventTableViewCell *)self isEditing]& !isAnimating];
  [(NSLayoutConstraint *)self->_spinnerConstraint setActive:isAnimating];
}

- (CGSize)_disclosureIndicatorSize
{
  traitCollection = [(HangEventTableViewCell *)self traitCollection];
  v3 = traitCollection;
  if (!qword_49E20)
  {
    goto LABEL_5;
  }

  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [qword_49E28 preferredContentSizeCategory];
  v6 = preferredContentSizeCategory2;
  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {

LABEL_5:
    v9 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:1];
    v10 = [UIImage systemImageNamed:@"chevron.forward" withConfiguration:v9];
    v11 = qword_49E20;
    qword_49E20 = v10;

    objc_storeStrong(&qword_49E28, v3);
    goto LABEL_6;
  }

  legibilityWeight = [v3 legibilityWeight];
  legibilityWeight2 = [qword_49E28 legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    goto LABEL_5;
  }

LABEL_6:
  [qword_49E20 size];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v18.receiver = self;
  v18.super_class = HangEventTableViewCell;
  specifierCopy = specifier;
  [(HangEventTableViewCell *)&v18 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(HangEventTableViewCell *)self textLabel:v18.receiver];
  text = [v5 text];
  [(UILabel *)self->_nameLabel setText:text];

  detailTextLabel = [(HangEventTableViewCell *)self detailTextLabel];
  text2 = [detailTextLabel text];
  [(UILabel *)self->_dateLabel setText:text2];

  textLabel = [(HangEventTableViewCell *)self textLabel];
  [textLabel setHidden:1];

  detailTextLabel2 = [(HangEventTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setHidden:1];

  v11 = [specifierCopy objectForKeyedSubscript:@"HangsDataControllerFormattedDuration"];
  [(UILabel *)self->_durationLabel setText:v11];

  v12 = [specifierCopy objectForKeyedSubscript:@"HangsDataControllerDurationLevel"];
  v13 = +[HangEventTableViewCell _textColorForDurationLevel:](HangEventTableViewCell, "_textColorForDurationLevel:", [v12 integerValue]);
  [(UILabel *)self->_durationLabel setTextColor:v13];

  v14 = [specifierCopy objectForKeyedSubscript:@"HangsDataControllerIsProcessing"];

  LODWORD(specifierCopy) = [v14 BOOLValue];
  spinner = self->_spinner;
  if (specifierCopy)
  {
    [(UIActivityIndicatorView *)spinner startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)spinner stopAnimating];
  }

  isSelected = [(HangEventTableViewCell *)self isSelected];
  [(HangEventTableViewCell *)self setSelected:0 animated:0];
  configurationState = [(HangEventTableViewCell *)self configurationState];
  [(HangEventTableViewCell *)self updateConfigurationUsingState:configurationState];

  [(HangEventTableViewCell *)self setSelected:isSelected animated:0];
  [(HangEventTableViewCell *)self setNeedsUpdateConstraints];
}

+ (id)_textColorForDurationLevel:(int64_t)level
{
  if (level == 2)
  {
    v3 = +[UIColor systemRedColor];
  }

  else
  {
    if (level == 1)
    {
      +[UIColor systemOrangeColor];
    }

    else
    {
      +[UIColor labelColor];
    }
    v3 = ;
  }

  return v3;
}

@end