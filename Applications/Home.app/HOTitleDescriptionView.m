@interface HOTitleDescriptionView
- (HOTitleDescriptionView)initWithFrame:(CGRect)a3;
- (UILabel)descriptionLabel;
@end

@implementation HOTitleDescriptionView

- (HOTitleDescriptionView)initWithFrame:(CGRect)a3
{
  v33.receiver = self;
  v33.super_class = HOTitleDescriptionView;
  v3 = [(HOTitleDescriptionView *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    [(UILabel *)v3->_titleLabel setFont:v6];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    v7 = [UIStackView alloc];
    v34 = v3->_titleLabel;
    v8 = [NSArray arrayWithObjects:&v34 count:1];
    v9 = [v7 initWithArrangedSubviews:v8];
    stackView = v3->_stackView;
    v3->_stackView = v9;

    [(UIStackView *)v3->_stackView setAxis:1];
    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HOTitleDescriptionView *)v3 addSubview:v3->_stackView];
    v11 = objc_alloc_init(NSMutableArray);
    v12 = [(UIStackView *)v3->_stackView leadingAnchor];
    v13 = [(HOTitleDescriptionView *)v3 layoutMarginsGuide];
    v14 = [v13 leadingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v11 addObject:v15];

    v16 = [(UIStackView *)v3->_stackView trailingAnchor];
    v17 = [(HOTitleDescriptionView *)v3 layoutMarginsGuide];
    v18 = [v17 trailingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v11 addObject:v19];

    v20 = [(UIStackView *)v3->_stackView topAnchor];
    v21 = [(HOTitleDescriptionView *)v3 layoutMarginsGuide];
    v22 = [v21 topAnchor];
    v23 = [v20 constraintGreaterThanOrEqualToAnchor:v22];
    [v11 addObject:v23];

    v24 = [(UIStackView *)v3->_stackView bottomAnchor];
    v25 = [(HOTitleDescriptionView *)v3 layoutMarginsGuide];
    v26 = [v25 bottomAnchor];
    v27 = [v24 constraintLessThanOrEqualToAnchor:v26];
    [v11 addObject:v27];

    v28 = [(UIStackView *)v3->_stackView centerYAnchor];
    v29 = [(HOTitleDescriptionView *)v3 layoutMarginsGuide];
    v30 = [v29 centerYAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    [v11 addObject:v31];

    [NSLayoutConstraint activateConstraints:v11];
  }

  return v3;
}

- (UILabel)descriptionLabel
{
  descriptionLabel = self->_descriptionLabel;
  if (!descriptionLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_descriptionLabel;
    self->_descriptionLabel = v4;

    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)self->_descriptionLabel setFont:v6];

    [(UILabel *)self->_descriptionLabel setTextAlignment:1];
    [(UIStackView *)self->_stackView addArrangedSubview:self->_descriptionLabel];
    [(HOTitleDescriptionView *)self setNeedsUpdateConstraints];
    descriptionLabel = self->_descriptionLabel;
  }

  return descriptionLabel;
}

@end