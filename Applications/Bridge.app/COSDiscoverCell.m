@interface COSDiscoverCell
- (COSDiscoverCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3 title:(id)a4 subtitle:(id)a5 wantsCellDivider:(BOOL)a6;
@end

@implementation COSDiscoverCell

- (COSDiscoverCell)initWithFrame:(CGRect)a3
{
  v96.receiver = self;
  v96.super_class = COSDiscoverCell;
  v3 = [(COSDiscoverCell *)&v96 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(UIImageView *)v4->_heroImageView layer];
    [v8 setCornerCurve:kCACornerCurveContinuous];

    v9 = [(COSDiscoverCell *)v4 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    v11 = v10;
    v12 = [(UIImageView *)v4->_heroImageView layer];
    [v12 setCornerRadius:v11];

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
    v18 = [(COSDiscoverCell *)v4 _titleLabelFont];
    [(UILabel *)v17 setFont:v18];

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
    v23 = [(COSDiscoverCell *)v4 _subtitleLabelFont];
    [(UILabel *)v22 setFont:v23];

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
    v95 = [(COSDiscoverCell *)v4 leadingAnchor];
    v94 = [(UIImageView *)v4->_heroImageView leadingAnchor];
    v93 = [v95 constraintEqualToAnchor:v94 constant:-20.0];
    v97[0] = v93;
    v92 = [(UIImageView *)v4->_heroImageView heightAnchor];
    v91 = [v92 constraintEqualToConstant:102.0];
    v97[1] = v91;
    v90 = [(UIImageView *)v4->_heroImageView widthAnchor];
    v89 = [v90 constraintEqualToConstant:102.0];
    v97[2] = v89;
    v88 = [(COSDiscoverCell *)v4 topAnchor];
    v87 = [(UIView *)v4->_trayView topAnchor];
    v86 = [v88 constraintLessThanOrEqualToAnchor:v87];
    v97[3] = v86;
    v85 = [(UIView *)v4->_trayView leadingAnchor];
    v84 = [(UIImageView *)v4->_heroImageView trailingAnchor];
    v83 = [v85 constraintEqualToAnchor:v84 constant:8.0];
    v97[4] = v83;
    v82 = [(COSDiscoverCell *)v4 layoutMarginsGuide];
    v81 = [v82 trailingAnchor];
    v80 = [(UIView *)v4->_trayView trailingAnchor];
    v79 = [v81 constraintEqualToAnchor:v80];
    v97[5] = v79;
    v78 = [(COSDiscoverCell *)v4 bottomAnchor];
    v77 = [(UIView *)v4->_trayView bottomAnchor];
    v76 = [v78 constraintGreaterThanOrEqualToAnchor:v77];
    v97[6] = v76;
    v75 = [(COSDiscoverCell *)v4 topAnchor];
    v74 = [(UIView *)v4->_divider topAnchor];
    v73 = [v75 constraintLessThanOrEqualToAnchor:v74];
    v97[7] = v73;
    v72 = [(UIView *)v4->_divider leadingAnchor];
    v71 = [(UIImageView *)v4->_heroImageView trailingAnchor];
    v70 = [v72 constraintEqualToAnchor:v71 constant:8.0];
    v97[8] = v70;
    v68 = [(UIView *)v4->_divider heightAnchor];
    v69 = +[UIScreen mainScreen];
    v67 = [v69 traitCollection];
    [v67 displayScale];
    v66 = [v68 constraintEqualToConstant:1.0 / v30];
    v97[9] = v66;
    v65 = [(COSDiscoverCell *)v4 trailingAnchor];
    v64 = [(UIView *)v4->_divider trailingAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v97[10] = v63;
    v62 = [(COSDiscoverCell *)v4 bottomAnchor];
    v61 = [(UIView *)v4->_divider bottomAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v97[11] = v60;
    v59 = [(UILabel *)v4->_titleLabel topAnchor];
    v58 = [(UIView *)v4->_trayView topAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v97[12] = v57;
    v56 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v55 = [(UIView *)v4->_trayView leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v97[13] = v54;
    v53 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v52 = [(UIView *)v4->_trayView trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v97[14] = v51;
    v50 = [(UILabel *)v4->_subtitleLabel topAnchor];
    v49 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v97[15] = v48;
    v47 = [(UILabel *)v4->_subtitleLabel leadingAnchor];
    v46 = [(UIView *)v4->_trayView leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v97[16] = v45;
    v44 = [(UILabel *)v4->_subtitleLabel bottomAnchor];
    v43 = [(UIView *)v4->_trayView bottomAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v97[17] = v42;
    v41 = [(UILabel *)v4->_subtitleLabel trailingAnchor];
    v31 = [(UIView *)v4->_trayView trailingAnchor];
    v32 = [v41 constraintEqualToAnchor:v31];
    v97[18] = v32;
    v33 = [(UIImageView *)v4->_heroImageView centerYAnchor];
    v34 = [(COSDiscoverCell *)v4 centerYAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    v97[19] = v35;
    v36 = [(UIView *)v4->_trayView centerYAnchor];
    v37 = [(UIImageView *)v4->_heroImageView centerYAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    v97[20] = v38;
    v39 = [NSArray arrayWithObjects:v97 count:21];
    [NSLayoutConstraint activateConstraints:v39];
  }

  return v4;
}

- (void)setImage:(id)a3 title:(id)a4 subtitle:(id)a5 wantsCellDivider:(BOOL)a6
{
  v6 = a6;
  heroImageView = self->_heroImageView;
  v11 = a5;
  v12 = a4;
  [(UIImageView *)heroImageView setImage:a3];
  [(UILabel *)self->_titleLabel setText:v12];

  [(UILabel *)self->_subtitleLabel setAttributedText:v11];
  [(UIView *)self->_divider setHidden:!v6];

  [(COSDiscoverCell *)self layoutSubviews];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = COSDiscoverCell;
  [(COSDiscoverCell *)&v6 setHighlighted:?];
  if (v3)
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

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = COSDiscoverCell;
  v4 = [(COSDiscoverCell *)&v7 preferredLayoutAttributesFittingAttributes:a3];
  [(UIView *)self->_trayView systemLayoutSizeFittingSize:self->_preferredWidth + -102.0 + -8.0, UIViewNoIntrinsicMetric];
  [v4 setSize:{self->_preferredWidth, fmax(v5, 120.0)}];

  return v4;
}

@end