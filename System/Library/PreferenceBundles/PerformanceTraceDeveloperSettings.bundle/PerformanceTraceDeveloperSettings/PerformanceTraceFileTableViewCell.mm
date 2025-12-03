@interface PerformanceTraceFileTableViewCell
- (PerformanceTraceFileTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PerformanceTraceFileTableViewCell

- (PerformanceTraceFileTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v64.receiver = self;
  v64.super_class = PerformanceTraceFileTableViewCell;
  identifierCopy = identifier;
  v5 = [(PerformanceTraceFileTableViewCell *)&v64 initWithStyle:style reuseIdentifier:?];
  v6 = v5;
  if (v5)
  {
    [(PerformanceTraceFileTableViewCell *)v5 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v7 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    nameLabel = v6->_nameLabel;
    v6->_nameLabel = v11;

    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v6->_nameLabel setFont:v13];

    [(UILabel *)v6->_nameLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v6->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1132068864;
    [(UILabel *)v6->_nameLabel setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1144750080;
    [(UILabel *)v6->_nameLabel setContentCompressionResistancePriority:1 forAxis:v15];
    LODWORD(v16) = 1144750080;
    [(UILabel *)v6->_nameLabel setContentHuggingPriority:0 forAxis:v16];
    LODWORD(v17) = 1144750080;
    [(UILabel *)v6->_nameLabel setContentHuggingPriority:1 forAxis:v17];
    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    detailLabel = v6->_detailLabel;
    v6->_detailLabel = v18;

    v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v6->_detailLabel setFont:v20];

    v21 = +[UIColor secondaryLabelColor];
    [(UILabel *)v6->_detailLabel setTextColor:v21];

    [(UILabel *)v6->_detailLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v6->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v22) = 1132068864;
    [(UILabel *)v6->_detailLabel setContentCompressionResistancePriority:0 forAxis:v22];
    LODWORD(v23) = 1144750080;
    [(UILabel *)v6->_detailLabel setContentCompressionResistancePriority:1 forAxis:v23];
    LODWORD(v24) = 1144750080;
    [(UILabel *)v6->_detailLabel setContentHuggingPriority:0 forAxis:v24];
    LODWORD(v25) = 1144750080;
    [(UILabel *)v6->_detailLabel setContentHuggingPriority:1 forAxis:v25];
    objc_initWeak(&location, v6);
    v26 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_6174;
    v61[3] = &unk_C6E8;
    objc_copyWeak(&v62, &location);
    v58 = [UIAction actionWithTitle:@"  " image:v26 identifier:0 handler:v61];

    v27 = [[UIButton alloc] initWithFrame:v58 primaryAction:{CGRectZero.origin.x, y, width, height}];
    shareButton = v6->_shareButton;
    v6->_shareButton = v27;

    v29 = [UIStackView alloc];
    v67[0] = v6->_nameLabel;
    v67[1] = v6->_detailLabel;
    v30 = [NSArray arrayWithObjects:v67 count:2];
    v60 = [v29 initWithArrangedSubviews:v30];

    [v60 setAxis:1];
    [v60 setAlignment:1];
    [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v60 setCustomSpacing:v6->_nameLabel afterView:3.0];
    v31 = [UIStackView alloc];
    v66[0] = v60;
    shareButton = [(PerformanceTraceFileTableViewCell *)v6 shareButton];
    v66[1] = shareButton;
    v33 = [NSArray arrayWithObjects:v66 count:2];
    v34 = [v31 initWithArrangedSubviews:v33];

    [v34 setAxis:0];
    [v34 setAlignment:3];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v34 setCustomSpacing:v60 afterView:1.17549435e-38];
    contentView = [(PerformanceTraceFileTableViewCell *)v6 contentView];
    [contentView addSubview:v34];

    trailingAnchor = [v34 trailingAnchor];
    contentView2 = [(PerformanceTraceFileTableViewCell *)v6 contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    trailingConstraint = v6->_trailingConstraint;
    v6->_trailingConstraint = v39;

    leadingAnchor = [v34 leadingAnchor];
    contentView3 = [(PerformanceTraceFileTableViewCell *)v6 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v65[0] = v53;
    v65[1] = v6->_trailingConstraint;
    topAnchor = [v34 topAnchor];
    contentView4 = [(PerformanceTraceFileTableViewCell *)v6 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:1.0];
    v65[2] = v42;
    bottomAnchor = [v34 bottomAnchor];
    contentView5 = [(PerformanceTraceFileTableViewCell *)v6 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide3 bottomAnchor];
    v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-2.0];
    v65[3] = v47;
    v48 = [NSArray arrayWithObjects:v65 count:4];
    [NSLayoutConstraint activateConstraints:v48];

    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v21.receiver = self;
  v21.super_class = PerformanceTraceFileTableViewCell;
  specifierCopy = specifier;
  [(PerformanceTraceFileTableViewCell *)&v21 refreshCellContentsWithSpecifier:specifierCopy];
  objc_storeWeak(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier], specifierCopy);
  textLabel = [(PerformanceTraceFileTableViewCell *)self textLabel];
  text = [textLabel text];
  [(UILabel *)self->_nameLabel setText:text];

  [(UILabel *)self->_detailLabel setText:@"Could not inspect file"];
  v7 = [specifierCopy objectForKeyedSubscript:kPTFileKeyPath];

  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v20 = 0;
    v9 = [v8 attributesOfItemAtPath:v7 error:&v20];
    v10 = v20;

    if (v9)
    {
      fileSize = [v9 fileSize];
      fileCreationDate = [v9 fileCreationDate];
      if (fileCreationDate && fileSize)
      {
        v13 = [NSByteCountFormatter stringFromByteCount:fileSize countStyle:0];
        if (qword_10E18[0] != -1)
        {
          sub_71F4();
        }

        v14 = [qword_10E10 stringFromDate:fileCreationDate];
        v15 = [NSString stringWithFormat:@"%@, %@", v14, v13];
        [(UILabel *)self->_detailLabel setText:v15];
      }
    }
  }

  textLabel2 = [(PerformanceTraceFileTableViewCell *)self textLabel];
  [textLabel2 setHidden:1];

  detailTextLabel = [(PerformanceTraceFileTableViewCell *)self detailTextLabel];
  [detailTextLabel setHidden:1];

  isSelected = [(PerformanceTraceFileTableViewCell *)self isSelected];
  [(PerformanceTraceFileTableViewCell *)self setSelected:0 animated:0];
  configurationState = [(PerformanceTraceFileTableViewCell *)self configurationState];
  [(PerformanceTraceFileTableViewCell *)self updateConfigurationUsingState:configurationState];

  [(PerformanceTraceFileTableViewCell *)self setSelected:isSelected animated:0];
  [(PerformanceTraceFileTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PerformanceTraceFileTableViewCell;
  [(PerformanceTraceFileTableViewCell *)&v3 prepareForReuse];
  objc_storeWeak(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier], 0);
  [(UILabel *)self->_nameLabel setText:0];
  [(UILabel *)self->_detailLabel setText:0];
}

@end