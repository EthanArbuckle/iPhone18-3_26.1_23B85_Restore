@interface ExtensionsFeedbackView
- (ExtensionsFeedbackView)initWithSubmitHandler:(id)handler;
- (void)_commonInit;
- (void)_submitTapped:(id)tapped;
- (void)_updateConstraints;
- (void)_updateSubmitButton;
- (void)configureHeaderImage:(id)image;
- (void)configureSubmitButtonTitle:(id)title;
- (void)setTippingOptions:(id)options;
- (void)updateTheme;
@end

@implementation ExtensionsFeedbackView

- (void)setTippingOptions:(id)options
{
  optionsCopy = options;
  if (![(NSArray *)self->_tippingOptions isEqualToArray:?])
  {
    objc_storeStrong(&self->_tippingOptions, options);
    [(RidesharingTippingView *)self->_tippingView setHidden:optionsCopy == 0];
    [(RidesharingTippingView *)self->_tippingView setTippingOptions:optionsCopy];
  }
}

- (void)configureSubmitButtonTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(ProminentActionButton *)self->_submitButton titleLabel];
  text = [titleLabel text];
  v6 = [text isEqualToString:titleCopy];

  if ((v6 & 1) == 0)
  {
    [(ProminentActionButton *)self->_submitButton setTitle:titleCopy forState:0];
  }
}

- (void)configureHeaderImage:(id)image
{
  [(UIImageView *)self->_headerImageView setImage:?];
  headerImageView = self->_headerImageView;

  [(UIImageView *)headerImageView setHidden:image == 0];
}

- (void)_submitTapped:(id)tapped
{
  submitHandler = self->_submitHandler;
  if (submitHandler)
  {
    submitHandler[2](submitHandler, self->_selectedRating, self->_selectedTip);
  }
}

- (void)_updateSubmitButton
{
  if (self->_selectedTip)
  {
    v3 = 1;
  }

  else
  {
    v3 = self->_selectedRating != 0;
  }

  [(ProminentActionButton *)self->_submitButton setEnabled:v3];
  submitButton = self->_submitButton;
  v5 = 0.300000012;
  if (v3)
  {
    v5 = 1.0;
  }

  [(ProminentActionButton *)submitButton setAlpha:v5];
}

- (void)_updateConstraints
{
  constraints = self->_constraints;
  if (constraints && [(NSArray *)constraints count])
  {
    [NSLayoutConstraint deactivateConstraints:self->_constraints];
  }

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [(ExtensionsFeedbackView *)self topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:7.5];
  v25[0] = v22;
  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [(ExtensionsFeedbackView *)self leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v25[1] = v19;
  trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [(ExtensionsFeedbackView *)self trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v25[2] = v16;
  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [(ExtensionsFeedbackView *)self bottomAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-15.0];
  v25[3] = v5;
  heightAnchor = [(UIImageView *)self->_headerImageView heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:57.0];
  v25[4] = v7;
  widthAnchor = [(UIImageView *)self->_headerImageView widthAnchor];
  v9 = [widthAnchor constraintEqualToConstant:57.0];
  v25[5] = v9;
  heightAnchor2 = [(ProminentActionButton *)self->_submitButton heightAnchor];
  v11 = [heightAnchor2 constraintEqualToConstant:50.0];
  v25[6] = v11;
  v12 = [NSArray arrayWithObjects:v25 count:7];

  v13 = self->_constraints;
  self->_constraints = v12;
  v14 = v12;

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)updateTheme
{
  theme = [(ExtensionsFeedbackView *)self theme];
  hairlineColor = [theme hairlineColor];
  [(ExtensionsFeedbackView *)self setHairlineColor:hairlineColor];
}

- (void)_commonInit
{
  [(ExtensionsFeedbackView *)self setLeftHairlineInset:16.0];
  [(ExtensionsFeedbackView *)self setRightHairlineInset:0.0];
  [(ExtensionsFeedbackView *)self setTopHairlineHidden:1];
  [(ExtensionsFeedbackView *)self setBottomHairlineHidden:0];
  v3 = objc_alloc_init(UIStackView);
  stackView = self->_stackView;
  self->_stackView = v3;

  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setDistribution:3];
  [(UIStackView *)self->_stackView setAlignment:0];
  [(UIStackView *)self->_stackView setSpacing:15.0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100AC1208;
  v15[3] = &unk_101637200;
  v15[4] = self;
  v5 = [[RidesharingRatingView alloc] initWithSelectedStars:0 updateBlock:v15];
  ratingView = self->_ratingView;
  self->_ratingView = v5;

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100AC1268;
  v14[3] = &unk_101637228;
  v14[4] = self;
  v7 = [[RidesharingTippingView alloc] initWithOptions:0 updateBlock:v14];
  tippingView = self->_tippingView;
  self->_tippingView = v7;

  v9 = +[ProminentActionButton button];
  submitButton = self->_submitButton;
  self->_submitButton = v9;

  [(ProminentActionButton *)self->_submitButton addTarget:self action:"_submitTapped:" forControlEvents:64];
  [(ExtensionsFeedbackView *)self _updateSubmitButton];
  titleLabel = [(ProminentActionButton *)self->_submitButton titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_10165DAA8];

  v12 = objc_alloc_init(UIImageView);
  headerImageView = self->_headerImageView;
  self->_headerImageView = v12;

  [(UIImageView *)self->_headerImageView setContentMode:1];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_headerImageView];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_ratingView];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_tippingView];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_submitButton];
  [(ExtensionsFeedbackView *)self addSubview:self->_stackView];
  [(ExtensionsFeedbackView *)self _updateConstraints];
  [(ExtensionsFeedbackView *)self updateTheme];
}

- (ExtensionsFeedbackView)initWithSubmitHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = ExtensionsFeedbackView;
  v5 = [(ExtensionsFeedbackView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = [handlerCopy copy];
    submitHandler = v5->_submitHandler;
    v5->_submitHandler = v6;

    [(ExtensionsFeedbackView *)v5 _commonInit];
  }

  return v5;
}

@end