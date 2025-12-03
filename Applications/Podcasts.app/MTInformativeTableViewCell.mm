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

  messageLabel = [(MTInformativeTableViewCell *)self messageLabel];
  [messageLabel setNumberOfLines:0];

  messageLabel2 = [(MTInformativeTableViewCell *)self messageLabel];
  [messageLabel2 setLineBreakMode:0];

  messageLabel3 = [(MTInformativeTableViewCell *)self messageLabel];
  [messageLabel3 setTextAlignment:1];

  messageLabel4 = [(MTInformativeTableViewCell *)self messageLabel];
  [messageLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  messageLabel5 = [(MTInformativeTableViewCell *)self messageLabel];
  [messageLabel5 setFont:v8];

  v10 = +[UIColor cellSecondaryTextColor];
  messageLabel6 = [(MTInformativeTableViewCell *)self messageLabel];
  [messageLabel6 setTextColor:v10];

  messageLabel7 = [(MTInformativeTableViewCell *)self messageLabel];
  LODWORD(v13) = 1144750080;
  [messageLabel7 setContentHuggingPriority:1 forAxis:v13];

  messageLabel8 = [(MTInformativeTableViewCell *)self messageLabel];
  LODWORD(v15) = 1144750080;
  [messageLabel8 setContentCompressionResistancePriority:1 forAxis:v15];

  messageLabel9 = [(MTInformativeTableViewCell *)self messageLabel];
  LODWORD(v17) = 1144750080;
  [messageLabel9 setContentCompressionResistancePriority:0 forAxis:v17];

  contentView = [(MTInformativeTableViewCell *)self contentView];
  [contentView setLayoutMargins:{27.0, 27.0, 27.0, 27.0}];

  contentView2 = [(MTInformativeTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];

  contentView3 = [(MTInformativeTableViewCell *)self contentView];
  messageLabel10 = [(MTInformativeTableViewCell *)self messageLabel];
  [contentView3 addSubview:messageLabel10];

  messageLabel11 = [(MTInformativeTableViewCell *)self messageLabel];
  topAnchor = [messageLabel11 topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[0] = v36;
  messageLabel12 = [(MTInformativeTableViewCell *)self messageLabel];
  trailingAnchor = [messageLabel12 trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v32;
  messageLabel13 = [(MTInformativeTableViewCell *)self messageLabel];
  bottomAnchor = [messageLabel13 bottomAnchor];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[2] = v26;
  messageLabel14 = [(MTInformativeTableViewCell *)self messageLabel];
  leadingAnchor = [messageLabel14 leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[3] = v30;
  v31 = [NSArray arrayWithObjects:v41 count:4];
  [NSLayoutConstraint activateConstraints:v31];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MTInformativeTableViewCell;
  [(MTTableViewCell *)&v7 layoutSubviews];
  contentView = [(MTInformativeTableViewCell *)self contentView];
  [contentView layoutIfNeeded];

  messageLabel = [(MTInformativeTableViewCell *)self messageLabel];
  [messageLabel frame];
  Width = CGRectGetWidth(v8);
  messageLabel2 = [(MTInformativeTableViewCell *)self messageLabel];
  [messageLabel2 setPreferredMaxLayoutWidth:Width];
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