@interface MTInformativeTableViewCell
- (CGSize)fittingSize;
- (void)layoutSubviews;
- (void)setupCell;
@end

@implementation MTInformativeTableViewCell

- (void)setupCell
{
  v40.receiver = self;
  v40.super_class = MTInformativeTableViewCell;
  [(MTTableViewCell *)&v40 setupCell];
  [(MTInformativeTableViewCell *)self setSelectionStyle:0];
  v3 = objc_alloc_init(UILabel);
  [(MTInformativeTableViewCell *)self setMessageLabel:v3];

  v4 = [(MTInformativeTableViewCell *)self messageLabel];
  [v4 setNumberOfLines:0];

  v5 = [(MTInformativeTableViewCell *)self messageLabel];
  [v5 setLineBreakMode:0];

  v6 = [(MTInformativeTableViewCell *)self messageLabel];
  [v6 setTextAlignment:1];

  v7 = [(MTInformativeTableViewCell *)self messageLabel];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v9 = [(MTInformativeTableViewCell *)self messageLabel];
  [v9 setFont:v8];

  v10 = +[UIColor cellSecondaryTextColor];
  v11 = [(MTInformativeTableViewCell *)self messageLabel];
  [v11 setTextColor:v10];

  v12 = [(MTInformativeTableViewCell *)self messageLabel];
  LODWORD(v13) = 1144750080;
  [v12 setContentHuggingPriority:1 forAxis:v13];

  v14 = [(MTInformativeTableViewCell *)self messageLabel];
  LODWORD(v15) = 1144750080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v15];

  v16 = [(MTInformativeTableViewCell *)self messageLabel];
  LODWORD(v17) = 1144750080;
  [v16 setContentCompressionResistancePriority:0 forAxis:v17];

  v18 = [(MTInformativeTableViewCell *)self contentView];
  [v18 setLayoutMargins:{27.0, 27.0, 27.0, 27.0}];

  v19 = [(MTInformativeTableViewCell *)self contentView];
  v20 = [v19 layoutMarginsGuide];

  v21 = [(MTInformativeTableViewCell *)self contentView];
  v22 = [(MTInformativeTableViewCell *)self messageLabel];
  [v21 addSubview:v22];

  v39 = [(MTInformativeTableViewCell *)self messageLabel];
  v38 = [v39 topAnchor];
  v37 = [v20 topAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v41[0] = v36;
  v35 = [(MTInformativeTableViewCell *)self messageLabel];
  v34 = [v35 trailingAnchor];
  v33 = [v20 trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v41[1] = v32;
  v23 = [(MTInformativeTableViewCell *)self messageLabel];
  v24 = [v23 bottomAnchor];
  v25 = [v20 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v41[2] = v26;
  v27 = [(MTInformativeTableViewCell *)self messageLabel];
  v28 = [v27 leadingAnchor];
  v29 = [v20 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v41[3] = v30;
  v31 = [NSArray arrayWithObjects:v41 count:4];
  [NSLayoutConstraint activateConstraints:v31];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MTInformativeTableViewCell;
  [(MTTableViewCell *)&v7 layoutSubviews];
  v3 = [(MTInformativeTableViewCell *)self contentView];
  [v3 layoutIfNeeded];

  v4 = [(MTInformativeTableViewCell *)self messageLabel];
  [v4 frame];
  Width = CGRectGetWidth(v8);
  v6 = [(MTInformativeTableViewCell *)self messageLabel];
  [v6 setPreferredMaxLayoutWidth:Width];
}

- (CGSize)fittingSize
{
  [(MTInformativeTableViewCell *)self layoutIfNeeded];
  height = UILayoutFittingCompressedSize.height;

  [(MTInformativeTableViewCell *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, height];
  result.height = v5;
  result.width = v4;
  return result;
}

@end