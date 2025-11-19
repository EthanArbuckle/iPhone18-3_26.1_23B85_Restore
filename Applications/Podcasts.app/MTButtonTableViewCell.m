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

  v4 = [(MTButtonTableViewCell *)self buttonLabel];
  [v4 setNumberOfLines:0];

  v5 = [(MTButtonTableViewCell *)self buttonLabel];
  [v5 setLineBreakMode:0];

  v6 = [(MTButtonTableViewCell *)self buttonLabel];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [UIFont mt_preferredFontForTextStyle:UIFontTextStyleBody];
  v8 = [(MTButtonTableViewCell *)self buttonLabel];
  [v8 setFont:v7];

  v9 = [(MTButtonTableViewCell *)self contentView];
  [v9 setLayoutMargins:{12.0, 0.0, 12.0, 0.0}];

  v10 = [(MTButtonTableViewCell *)self contentView];
  v11 = [v10 layoutMarginsGuide];

  v12 = [(MTButtonTableViewCell *)self contentView];
  v13 = [(MTButtonTableViewCell *)self buttonLabel];
  [v12 addSubview:v13];

  v30 = [(MTButtonTableViewCell *)self buttonLabel];
  v29 = [v30 topAnchor];
  v28 = [v11 topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v32[0] = v27;
  v26 = [(MTButtonTableViewCell *)self buttonLabel];
  v25 = [v26 trailingAnchor];
  v24 = [v11 trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v32[1] = v23;
  v14 = [(MTButtonTableViewCell *)self buttonLabel];
  v15 = [v14 bottomAnchor];
  v16 = [v11 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v32[2] = v17;
  v18 = [(MTButtonTableViewCell *)self buttonLabel];
  v19 = [v18 leadingAnchor];
  v20 = [v11 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v32[3] = v21;
  v22 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MTButtonTableViewCell;
  [(MTTableViewCell *)&v7 layoutSubviews];
  v3 = [(MTButtonTableViewCell *)self contentView];
  [v3 layoutIfNeeded];

  v4 = [(MTButtonTableViewCell *)self buttonLabel];
  [v4 frame];
  Width = CGRectGetWidth(v8);
  v6 = [(MTButtonTableViewCell *)self buttonLabel];
  [v6 setPreferredMaxLayoutWidth:Width];
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