@interface COSDiscoverCell
- (COSDiscoverCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image title:(id)title subtitle:(id)subtitle wantsCellDivider:(BOOL)divider;
@end

@implementation COSDiscoverCell

- (COSDiscoverCell)initWithFrame:(CGRect)frame
{
  v96.receiver = self;
  v96.super_class = COSDiscoverCell;
  v3 = [(COSDiscoverCell *)&v96 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(COSDiscoverCell *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_opt_new();
    heroImageView = v4->_heroImageView;
    v4->_heroImageView = v5;

    v7 = +[UIColor systemGray6Color];
    [(UIImageView *)v4->_heroImageView setBackgroundColor:v7];

    [(UIImageView *)v4->_heroImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_heroImageView setClipsToBounds:1];
    [(UIImageView *)v4->_heroImageView setContentMode:1];
    layer = [(UIImageView *)v4->_heroImageView layer];
    [layer setCornerCurve:kCACornerCurveContinuous];

    traitCollection = [(COSDiscoverCell *)v4 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    v11 = v10;
    layer2 = [(UIImageView *)v4->_heroImageView layer];
    [layer2 setCornerRadius:v11];

    [(COSDiscoverCell *)v4 addSubview:v4->_heroImageView];
    v13 = objc_opt_new();
    trayView = v4->_trayView;
    v4->_trayView = v13;

    [(UIView *)v4->_trayView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(COSDiscoverCell *)v4 addSubview:v4->_trayView];
    v15 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v15;

    v17 = v4->_titleLabel;
    _titleLabelFont = [(COSDiscoverCell *)v4 _titleLabelFont];
    [(UILabel *)v17 setFont:_titleLabelFont];

    v19 = +[UIColor systemWhiteColor];
    [(UILabel *)v4->_titleLabel setColor:v19];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_trayView addSubview:v4->_titleLabel];
    v20 = objc_opt_new();
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v20;

    v22 = v4->_subtitleLabel;
    _subtitleLabelFont = [(COSDiscoverCell *)v4 _subtitleLabelFont];
    [(UILabel *)v22 setFont:_subtitleLabelFont];

    v24 = v4->_subtitleLabel;
    v25 = +[UIColor systemGrayColor];
    [(UILabel *)v24 setTextColor:v25];

    [(UILabel *)v4->_subtitleLabel setLineBreakMode:0];
    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v4->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_trayView addSubview:v4->_subtitleLabel];
    v26 = objc_opt_new();
    divider = v4->_divider;
    v4->_divider = v26;

    v28 = v4->_divider;
    v29 = +[UIColor systemGray6Color];
    [(UIView *)v28 setBackgroundColor:v29];

    [(UIView *)v4->_divider setTranslatesAutoresizingMaskIntoConstraints:0];
    [(COSDiscoverCell *)v4 addSubview:v4->_divider];
    leadingAnchor = [(COSDiscoverCell *)v4 leadingAnchor];
    leadingAnchor2 = [(UIImageView *)v4->_heroImageView leadingAnchor];
    v93 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-20.0];
    v97[0] = v93;
    heightAnchor = [(UIImageView *)v4->_heroImageView heightAnchor];
    v91 = [heightAnchor constraintEqualToConstant:102.0];
    v97[1] = v91;
    widthAnchor = [(UIImageView *)v4->_heroImageView widthAnchor];
    v89 = [widthAnchor constraintEqualToConstant:102.0];
    v97[2] = v89;
    topAnchor = [(COSDiscoverCell *)v4 topAnchor];
    topAnchor2 = [(UIView *)v4->_trayView topAnchor];
    v86 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
    v97[3] = v86;
    leadingAnchor3 = [(UIView *)v4->_trayView leadingAnchor];
    trailingAnchor = [(UIImageView *)v4->_heroImageView trailingAnchor];
    v83 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
    v97[4] = v83;
    layoutMarginsGuide = [(COSDiscoverCell *)v4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    trailingAnchor3 = [(UIView *)v4->_trayView trailingAnchor];
    v79 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v97[5] = v79;
    bottomAnchor = [(COSDiscoverCell *)v4 bottomAnchor];
    bottomAnchor2 = [(UIView *)v4->_trayView bottomAnchor];
    v76 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v97[6] = v76;
    topAnchor3 = [(COSDiscoverCell *)v4 topAnchor];
    topAnchor4 = [(UIView *)v4->_divider topAnchor];
    v73 = [topAnchor3 constraintLessThanOrEqualToAnchor:topAnchor4];
    v97[7] = v73;
    leadingAnchor4 = [(UIView *)v4->_divider leadingAnchor];
    trailingAnchor4 = [(UIImageView *)v4->_heroImageView trailingAnchor];
    v70 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:8.0];
    v97[8] = v70;
    heightAnchor2 = [(UIView *)v4->_divider heightAnchor];
    v69 = +[UIScreen mainScreen];
    traitCollection2 = [v69 traitCollection];
    [traitCollection2 displayScale];
    v66 = [heightAnchor2 constraintEqualToConstant:1.0 / v30];
    v97[9] = v66;
    trailingAnchor5 = [(COSDiscoverCell *)v4 trailingAnchor];
    trailingAnchor6 = [(UIView *)v4->_divider trailingAnchor];
    v63 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v97[10] = v63;
    bottomAnchor3 = [(COSDiscoverCell *)v4 bottomAnchor];
    bottomAnchor4 = [(UIView *)v4->_divider bottomAnchor];
    v60 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v97[11] = v60;
    topAnchor5 = [(UILabel *)v4->_titleLabel topAnchor];
    topAnchor6 = [(UIView *)v4->_trayView topAnchor];
    v57 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v97[12] = v57;
    leadingAnchor5 = [(UILabel *)v4->_titleLabel leadingAnchor];
    leadingAnchor6 = [(UIView *)v4->_trayView leadingAnchor];
    v54 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v97[13] = v54;
    trailingAnchor7 = [(UILabel *)v4->_titleLabel trailingAnchor];
    trailingAnchor8 = [(UIView *)v4->_trayView trailingAnchor];
    v51 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v97[14] = v51;
    topAnchor7 = [(UILabel *)v4->_subtitleLabel topAnchor];
    bottomAnchor5 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v48 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5];
    v97[15] = v48;
    leadingAnchor7 = [(UILabel *)v4->_subtitleLabel leadingAnchor];
    leadingAnchor8 = [(UIView *)v4->_trayView leadingAnchor];
    v45 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v97[16] = v45;
    bottomAnchor6 = [(UILabel *)v4->_subtitleLabel bottomAnchor];
    bottomAnchor7 = [(UIView *)v4->_trayView bottomAnchor];
    v42 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v97[17] = v42;
    trailingAnchor9 = [(UILabel *)v4->_subtitleLabel trailingAnchor];
    trailingAnchor10 = [(UIView *)v4->_trayView trailingAnchor];
    v32 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v97[18] = v32;
    centerYAnchor = [(UIImageView *)v4->_heroImageView centerYAnchor];
    centerYAnchor2 = [(COSDiscoverCell *)v4 centerYAnchor];
    v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v97[19] = v35;
    centerYAnchor3 = [(UIView *)v4->_trayView centerYAnchor];
    centerYAnchor4 = [(UIImageView *)v4->_heroImageView centerYAnchor];
    v38 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v97[20] = v38;
    v39 = [NSArray arrayWithObjects:v97 count:21];
    [NSLayoutConstraint activateConstraints:v39];
  }

  return v4;
}

- (void)setImage:(id)image title:(id)title subtitle:(id)subtitle wantsCellDivider:(BOOL)divider
{
  dividerCopy = divider;
  heroImageView = self->_heroImageView;
  subtitleCopy = subtitle;
  titleCopy = title;
  [(UIImageView *)heroImageView setImage:image];
  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(UILabel *)self->_subtitleLabel setAttributedText:subtitleCopy];
  [(UIView *)self->_divider setHidden:!dividerCopy];

  [(COSDiscoverCell *)self layoutSubviews];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = COSDiscoverCell;
  [(COSDiscoverCell *)&v6 setHighlighted:?];
  if (highlightedCopy)
  {
    +[UIColor tertiarySystemBackgroundColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v5 = ;
  [(COSDiscoverCell *)self setBackgroundColor:v5];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = COSDiscoverCell;
  v4 = [(COSDiscoverCell *)&v7 preferredLayoutAttributesFittingAttributes:attributes];
  [(UIView *)self->_trayView systemLayoutSizeFittingSize:self->_preferredWidth + -102.0 + -8.0, UIViewNoIntrinsicMetric];
  [v4 setSize:{self->_preferredWidth, fmax(v5, 120.0)}];

  return v4;
}

@end