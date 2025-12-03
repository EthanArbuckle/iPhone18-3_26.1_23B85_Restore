@interface MTButtonTableViewCell
- (CGSize)fittingSize;
- (void)layoutSubviews;
- (void)setupCell;
@end

@implementation MTButtonTableViewCell

- (void)setupCell
{
  v31.receiver = self;
  v31.super_class = MTButtonTableViewCell;
  [(MTTableViewCell *)&v31 setupCell];
  v3 = objc_alloc_init(UILabel);
  [(MTButtonTableViewCell *)self setButtonLabel:v3];

  buttonLabel = [(MTButtonTableViewCell *)self buttonLabel];
  [buttonLabel setNumberOfLines:0];

  buttonLabel2 = [(MTButtonTableViewCell *)self buttonLabel];
  [buttonLabel2 setLineBreakMode:0];

  buttonLabel3 = [(MTButtonTableViewCell *)self buttonLabel];
  [buttonLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [UIFont mt_preferredFontForTextStyle:UIFontTextStyleBody];
  buttonLabel4 = [(MTButtonTableViewCell *)self buttonLabel];
  [buttonLabel4 setFont:v7];

  contentView = [(MTButtonTableViewCell *)self contentView];
  [contentView setLayoutMargins:{12.0, 0.0, 12.0, 0.0}];

  contentView2 = [(MTButtonTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];

  contentView3 = [(MTButtonTableViewCell *)self contentView];
  buttonLabel5 = [(MTButtonTableViewCell *)self buttonLabel];
  [contentView3 addSubview:buttonLabel5];

  buttonLabel6 = [(MTButtonTableViewCell *)self buttonLabel];
  topAnchor = [buttonLabel6 topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[0] = v27;
  buttonLabel7 = [(MTButtonTableViewCell *)self buttonLabel];
  trailingAnchor = [buttonLabel7 trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[1] = v23;
  buttonLabel8 = [(MTButtonTableViewCell *)self buttonLabel];
  bottomAnchor = [buttonLabel8 bottomAnchor];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[2] = v17;
  buttonLabel9 = [(MTButtonTableViewCell *)self buttonLabel];
  leadingAnchor = [buttonLabel9 leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[3] = v21;
  v22 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MTButtonTableViewCell;
  [(MTTableViewCell *)&v7 layoutSubviews];
  contentView = [(MTButtonTableViewCell *)self contentView];
  [contentView layoutIfNeeded];

  buttonLabel = [(MTButtonTableViewCell *)self buttonLabel];
  [buttonLabel frame];
  Width = CGRectGetWidth(v8);
  buttonLabel2 = [(MTButtonTableViewCell *)self buttonLabel];
  [buttonLabel2 setPreferredMaxLayoutWidth:Width];
}

- (CGSize)fittingSize
{
  [(MTButtonTableViewCell *)self layoutIfNeeded];
  height = UILayoutFittingCompressedSize.height;

  [(MTButtonTableViewCell *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, height];
  result.height = v5;
  result.width = v4;
  return result;
}

@end