@interface PerformanceTraceFileTableViewCell
- (PerformanceTraceFileTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PerformanceTraceFileTableViewCell

- (PerformanceTraceFileTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v64.receiver = self;
  v64.super_class = PerformanceTraceFileTableViewCell;
  v59 = a4;
  v5 = [(PerformanceTraceFileTableViewCell *)&v64 initWithStyle:a3 reuseIdentifier:?];
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
    v32 = [(PerformanceTraceFileTableViewCell *)v6 shareButton];
    v66[1] = v32;
    v33 = [NSArray arrayWithObjects:v66 count:2];
    v34 = [v31 initWithArrangedSubviews:v33];

    [v34 setAxis:0];
    [v34 setAlignment:3];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v34 setCustomSpacing:v60 afterView:1.17549435e-38];
    v35 = [(PerformanceTraceFileTableViewCell *)v6 contentView];
    [v35 addSubview:v34];

    v36 = [v34 trailingAnchor];
    v37 = [(PerformanceTraceFileTableViewCell *)v6 contentView];
    v38 = [v37 trailingAnchor];
    v39 = [v36 constraintEqualToAnchor:v38];
    trailingConstraint = v6->_trailingConstraint;
    v6->_trailingConstraint = v39;

    v55 = [v34 leadingAnchor];
    v57 = [(PerformanceTraceFileTableViewCell *)v6 contentView];
    v56 = [v57 layoutMarginsGuide];
    v54 = [v56 leadingAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v65[0] = v53;
    v65[1] = v6->_trailingConstraint;
    v50 = [v34 topAnchor];
    v52 = [(PerformanceTraceFileTableViewCell *)v6 contentView];
    v51 = [v52 layoutMarginsGuide];
    v41 = [v51 topAnchor];
    v42 = [v50 constraintEqualToAnchor:v41 constant:1.0];
    v65[2] = v42;
    v43 = [v34 bottomAnchor];
    v44 = [(PerformanceTraceFileTableViewCell *)v6 contentView];
    v45 = [v44 layoutMarginsGuide];
    v46 = [v45 bottomAnchor];
    v47 = [v43 constraintEqualToAnchor:v46 constant:-2.0];
    v65[3] = v47;
    v48 = [NSArray arrayWithObjects:v65 count:4];
    [NSLayoutConstraint activateConstraints:v48];

    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v21.receiver = self;
  v21.super_class = PerformanceTraceFileTableViewCell;
  v4 = a3;
  [(PerformanceTraceFileTableViewCell *)&v21 refreshCellContentsWithSpecifier:v4];
  objc_storeWeak(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier], v4);
  v5 = [(PerformanceTraceFileTableViewCell *)self textLabel];
  v6 = [v5 text];
  [(UILabel *)self->_nameLabel setText:v6];

  [(UILabel *)self->_detailLabel setText:@"Could not inspect file"];
  v7 = [v4 objectForKeyedSubscript:kPTFileKeyPath];

  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v20 = 0;
    v9 = [v8 attributesOfItemAtPath:v7 error:&v20];
    v10 = v20;

    if (v9)
    {
      v11 = [v9 fileSize];
      v12 = [v9 fileCreationDate];
      if (v12 && v11)
      {
        v13 = [NSByteCountFormatter stringFromByteCount:v11 countStyle:0];
        if (qword_10E18[0] != -1)
        {
          sub_71F4();
        }

        v14 = [qword_10E10 stringFromDate:v12];
        v15 = [NSString stringWithFormat:@"%@, %@", v14, v13];
        [(UILabel *)self->_detailLabel setText:v15];
      }
    }
  }

  v16 = [(PerformanceTraceFileTableViewCell *)self textLabel];
  [v16 setHidden:1];

  v17 = [(PerformanceTraceFileTableViewCell *)self detailTextLabel];
  [v17 setHidden:1];

  v18 = [(PerformanceTraceFileTableViewCell *)self isSelected];
  [(PerformanceTraceFileTableViewCell *)self setSelected:0 animated:0];
  v19 = [(PerformanceTraceFileTableViewCell *)self configurationState];
  [(PerformanceTraceFileTableViewCell *)self updateConfigurationUsingState:v19];

  [(PerformanceTraceFileTableViewCell *)self setSelected:v18 animated:0];
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