@interface HOTitleDescriptionView
- (HOTitleDescriptionView)initWithFrame:(CGRect)frame;
- (UILabel)descriptionLabel;
@end

@implementation HOTitleDescriptionView

- (HOTitleDescriptionView)initWithFrame:(CGRect)frame
{
  v33.receiver = self;
  v33.super_class = HOTitleDescriptionView;
  v3 = [(HOTitleDescriptionView *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    leadingAnchor = [(UIStackView *)v3->_stackView leadingAnchor];
    layoutMarginsGuide = [(HOTitleDescriptionView *)v3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v11 addObject:v15];

    trailingAnchor = [(UIStackView *)v3->_stackView trailingAnchor];
    layoutMarginsGuide2 = [(HOTitleDescriptionView *)v3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v11 addObject:v19];

    topAnchor = [(UIStackView *)v3->_stackView topAnchor];
    layoutMarginsGuide3 = [(HOTitleDescriptionView *)v3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v23 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [v11 addObject:v23];

    bottomAnchor = [(UIStackView *)v3->_stackView bottomAnchor];
    layoutMarginsGuide4 = [(HOTitleDescriptionView *)v3 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v27 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    [v11 addObject:v27];

    centerYAnchor = [(UIStackView *)v3->_stackView centerYAnchor];
    layoutMarginsGuide5 = [(HOTitleDescriptionView *)v3 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide5 centerYAnchor];
    v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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