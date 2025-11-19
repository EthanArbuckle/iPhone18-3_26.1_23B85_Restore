@interface HangEventTableViewCell
+ (id)_textColorForDurationLevel:(int64_t)a3;
- (CGSize)_disclosureIndicatorSize;
- (HangEventTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
- (void)updateConstraints;
- (void)updateDurationFont;
@end

@implementation HangEventTableViewCell

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  [(HangEventTableViewCell *)self setAutomaticallyUpdatesBackgroundConfiguration:0];
  v7 = [v4 copy];

  if ([(HangEventTableViewCell *)self editingStyle]== &dword_0 + 3)
  {
    [v7 setSelected:0];
    [v7 setHighlighted:0];
  }

  v5 = [(HangEventTableViewCell *)self defaultBackgroundConfiguration];
  v6 = [v5 updatedConfigurationForState:v7];
  [(HangEventTableViewCell *)self setBackgroundConfiguration:v6];
}

- (HangEventTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v109.receiver = self;
  v109.super_class = HangEventTableViewCell;
  v5 = [(HangEventTableViewCell *)&v109 initWithStyle:3 reuseIdentifier:a4 specifier:a5];
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
    v37 = [(HangEventTableViewCell *)v6 contentView];
    [v37 addSubview:v6->_spinner];

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
    v46 = [(HangEventTableViewCell *)v6 contentView];
    [v46 addSubview:v45];

    v47 = [(HangEventTableViewCell *)v6 contentView];
    [v47 addSubview:v6->_spinner];

    [(HangEventTableViewCell *)v6 _disclosureIndicatorSize];
    v49 = v48;
    v51 = v50;
    v52 = objc_alloc_init(UIView);
    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v52 addSubview:v6->_spinner];
    v53 = [(HangEventTableViewCell *)v6 contentView];
    [v53 addSubview:v52];

    v102 = [v52 centerYAnchor];
    v104 = [(HangEventTableViewCell *)v6 contentView];
    v100 = [v104 centerYAnchor];
    v98 = [v102 constraintEqualToAnchor:v100];
    v111[0] = v98;
    v94 = [v52 trailingAnchor];
    v96 = [(HangEventTableViewCell *)v6 contentView];
    v93 = [v96 layoutMarginsGuide];
    v91 = [v93 trailingAnchor];
    v90 = [v94 constraintEqualToAnchor:v91];
    v111[1] = v90;
    v89 = [v52 widthAnchor];
    v88 = [v89 constraintEqualToConstant:v49];
    v111[2] = v88;
    v54 = [v52 heightAnchor];
    v55 = [v54 constraintEqualToConstant:v51];
    v111[3] = v55;
    v56 = [(UIActivityIndicatorView *)v6->_spinner centerYAnchor];
    v108 = v52;
    v57 = [v52 centerYAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];
    v111[4] = v58;
    v59 = [(UIActivityIndicatorView *)v6->_spinner centerXAnchor];
    v60 = [v52 centerXAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    v111[5] = v61;
    v62 = [NSArray arrayWithObjects:v111 count:6];
    [NSLayoutConstraint activateConstraints:v62];

    v63 = [v107 trailingAnchor];
    v64 = [(HangEventTableViewCell *)v6 contentView];
    v65 = [v64 trailingAnchor];
    v66 = [v63 constraintEqualToAnchor:v65];
    trailingConstraint = v6->_trailingConstraint;
    v6->_trailingConstraint = v66;

    v68 = [v107 trailingAnchor];
    v69 = [(HangEventTableViewCell *)v6 contentView];
    v70 = [v69 layoutMarginsGuide];
    v71 = [v70 trailingAnchor];
    v72 = [v68 constraintEqualToAnchor:v71];
    processingTrailingConstraint = v6->_processingTrailingConstraint;
    v6->_processingTrailingConstraint = v72;

    v74 = [v108 leadingAnchor];
    v75 = [v107 trailingAnchor];
    v76 = [v74 constraintEqualToSystemSpacingAfterAnchor:v75 multiplier:1.0];
    spinnerConstraint = v6->_spinnerConstraint;
    v6->_spinnerConstraint = v76;

    v103 = [v107 leadingAnchor];
    v105 = [(HangEventTableViewCell *)v6 contentView];
    v101 = [v105 layoutMarginsGuide];
    v99 = [v101 leadingAnchor];
    v97 = [v103 constraintEqualToAnchor:v99];
    v110[0] = v97;
    v110[1] = v6->_trailingConstraint;
    v92 = [v107 topAnchor];
    v95 = [(HangEventTableViewCell *)v6 contentView];
    v78 = [v95 layoutMarginsGuide];
    v79 = [v78 topAnchor];
    v80 = [v92 constraintEqualToAnchor:v79 constant:1.0];
    v110[2] = v80;
    v81 = [v107 bottomAnchor];
    v82 = [(HangEventTableViewCell *)v6 contentView];
    v83 = [v82 layoutMarginsGuide];
    v84 = [v83 bottomAnchor];
    v85 = [v81 constraintEqualToAnchor:v84 constant:-2.0];
    v110[3] = v85;
    v86 = [NSArray arrayWithObjects:v110 count:4];
    [NSLayoutConstraint activateConstraints:v86];
  }

  return v6;
}

- (void)updateDurationFont
{
  v3 = [(HangEventTableViewCell *)self traitCollection];
  v11 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:v3];

  [v11 pointSize];
  v5 = v4;
  v6 = [v11 fontAttributes];
  v7 = [v6 objectForKeyedSubscript:UIFontDescriptorTraitsAttribute];
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
  v3 = [(UIActivityIndicatorView *)self->_spinner isAnimating];
  [(NSLayoutConstraint *)self->_trailingConstraint setActive:!([(HangEventTableViewCell *)self isEditing]| v3)];
  [(NSLayoutConstraint *)self->_processingTrailingConstraint setActive:[(HangEventTableViewCell *)self isEditing]& !v3];
  [(NSLayoutConstraint *)self->_spinnerConstraint setActive:v3];
}

- (CGSize)_disclosureIndicatorSize
{
  v2 = [(HangEventTableViewCell *)self traitCollection];
  v3 = v2;
  if (!qword_49E20)
  {
    goto LABEL_5;
  }

  v4 = [v2 preferredContentSizeCategory];
  v5 = [qword_49E28 preferredContentSizeCategory];
  v6 = v5;
  if (v4 != v5)
  {

LABEL_5:
    v9 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:1];
    v10 = [UIImage systemImageNamed:@"chevron.forward" withConfiguration:v9];
    v11 = qword_49E20;
    qword_49E20 = v10;

    objc_storeStrong(&qword_49E28, v3);
    goto LABEL_6;
  }

  v7 = [v3 legibilityWeight];
  v8 = [qword_49E28 legibilityWeight];

  if (v7 != v8)
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v18.receiver = self;
  v18.super_class = HangEventTableViewCell;
  v4 = a3;
  [(HangEventTableViewCell *)&v18 refreshCellContentsWithSpecifier:v4];
  v5 = [(HangEventTableViewCell *)self textLabel:v18.receiver];
  v6 = [v5 text];
  [(UILabel *)self->_nameLabel setText:v6];

  v7 = [(HangEventTableViewCell *)self detailTextLabel];
  v8 = [v7 text];
  [(UILabel *)self->_dateLabel setText:v8];

  v9 = [(HangEventTableViewCell *)self textLabel];
  [v9 setHidden:1];

  v10 = [(HangEventTableViewCell *)self detailTextLabel];
  [v10 setHidden:1];

  v11 = [v4 objectForKeyedSubscript:@"HangsDataControllerFormattedDuration"];
  [(UILabel *)self->_durationLabel setText:v11];

  v12 = [v4 objectForKeyedSubscript:@"HangsDataControllerDurationLevel"];
  v13 = +[HangEventTableViewCell _textColorForDurationLevel:](HangEventTableViewCell, "_textColorForDurationLevel:", [v12 integerValue]);
  [(UILabel *)self->_durationLabel setTextColor:v13];

  v14 = [v4 objectForKeyedSubscript:@"HangsDataControllerIsProcessing"];

  LODWORD(v4) = [v14 BOOLValue];
  spinner = self->_spinner;
  if (v4)
  {
    [(UIActivityIndicatorView *)spinner startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)spinner stopAnimating];
  }

  v16 = [(HangEventTableViewCell *)self isSelected];
  [(HangEventTableViewCell *)self setSelected:0 animated:0];
  v17 = [(HangEventTableViewCell *)self configurationState];
  [(HangEventTableViewCell *)self updateConfigurationUsingState:v17];

  [(HangEventTableViewCell *)self setSelected:v16 animated:0];
  [(HangEventTableViewCell *)self setNeedsUpdateConstraints];
}

+ (id)_textColorForDurationLevel:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = +[UIColor systemRedColor];
  }

  else
  {
    if (a3 == 1)
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