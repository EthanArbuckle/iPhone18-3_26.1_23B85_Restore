@interface FocusBannerView
- (FocusBannerView)initWithDelegate:(id)delegate;
- (FocusBannerViewDelegate)delegate;
- (double)preferredHeight;
- (id)_focusButtonConfiguration;
- (void)_focusFilterToggleButtonSelected;
- (void)_updateTitleAndImage;
- (void)setFocusFilterEnabled:(BOOL)enabled;
@end

@implementation FocusBannerView

- (FocusBannerView)initWithDelegate:(id)delegate
{
  obj = delegate;
  v67.receiver = self;
  v67.super_class = FocusBannerView;
  v4 = [(FocusBannerView *)&v67 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  p_isa = &v4->super.super.super.isa;
  v6 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_delegate, obj);
    v6->_focusFilterEnabled = 1;
    v7 = objc_alloc_init(UIView);
    v8 = p_isa[7];
    p_isa[7] = v7;

    [p_isa[7] setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = +[UIColor separatorColor];
    [(UIView *)v6->_topSeparatorView setBackgroundColor:v9];

    if (MUISolariumFeatureEnabled())
    {
      [(UIView *)v6->_topSeparatorView setHidden:1];
    }

    v10 = [UIImageView alloc];
    v11 = [UIImage systemImageNamed:MFImageGlyphFocusCircle];
    v12 = [v10 initWithImage:v11];
    v13 = p_isa[3];
    p_isa[3] = v12;

    [p_isa[3] setContentMode:4];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v15 = [UIImageSymbolConfiguration configurationWithFont:v14];
    [(UIImageView *)v6->_focusIconView setPreferredSymbolConfiguration:v15];

    LODWORD(v16) = 1148846080;
    [(UIImageView *)v6->_focusIconView setContentCompressionResistancePriority:0 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [(UIImageView *)v6->_focusIconView setContentCompressionResistancePriority:1 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(UIImageView *)v6->_focusIconView setContentHuggingPriority:0 forAxis:v18];
    v19 = objc_alloc_init(UILabel);
    v20 = p_isa[4];
    p_isa[4] = v19;

    [p_isa[4] setAdjustsFontForContentSizeCategory:1];
    objc_initWeak(&location, v6);
    _focusButtonConfiguration = [(FocusBannerView *)v6 _focusButtonConfiguration];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1000BB034;
    v64[3] = &unk_10064F278;
    objc_copyWeak(&v65, &location);
    v22 = [UIAction actionWithHandler:v64];
    v23 = [UIButton buttonWithConfiguration:_focusButtonConfiguration primaryAction:v22];
    v24 = p_isa[5];
    p_isa[5] = v23;

    LODWORD(v25) = 1148846080;
    [p_isa[5] setContentCompressionResistancePriority:0 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [(UIButton *)v6->_focusFilterToggleButton setContentHuggingPriority:0 forAxis:v26];
    titleLabel = [(UIButton *)v6->_focusFilterToggleButton titleLabel];
    [titleLabel setNumberOfLines:1];

    v28 = [UIStackView alloc];
    v69[0] = v6->_focusIconView;
    v69[1] = v6->_focusFilterStateDescriptionLabel;
    v69[2] = v6->_focusFilterToggleButton;
    v29 = [NSArray arrayWithObjects:v69 count:3];
    v30 = [v28 initWithArrangedSubviews:v29];
    v31 = p_isa[6];
    p_isa[6] = v30;

    [p_isa[6] setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v6->_stackView setSpacing:5.0];
    [(UIStackView *)v6->_stackView setAlignment:3];
    [(FocusBannerView *)v6 addSubview:v6->_topSeparatorView];
    [(FocusBannerView *)v6 addSubview:v6->_stackView];
    [(FocusBannerView *)v6 _updateTitleAndImage];
    v32 = +[UIScreen mainScreen];
    [v32 scale];
    v34 = v33;

    heightAnchor = [(UIView *)v6->_topSeparatorView heightAnchor];
    v56 = [heightAnchor constraintEqualToConstant:1.0 / v34];
    v68[0] = v56;
    topAnchor = [(UIView *)v6->_topSeparatorView topAnchor];
    topAnchor2 = [(FocusBannerView *)v6 topAnchor];
    v54 = [topAnchor constraintEqualToAnchor:?];
    v68[1] = v54;
    leadingAnchor = [(UIView *)v6->_topSeparatorView leadingAnchor];
    focusFilterStateDescriptionLabel = [(FocusBannerView *)v6 focusFilterStateDescriptionLabel];
    leadingAnchor2 = [focusFilterStateDescriptionLabel leadingAnchor];
    v51 = [leadingAnchor constraintEqualToAnchor:?];
    v68[2] = v51;
    trailingAnchor = [(UIView *)v6->_topSeparatorView trailingAnchor];
    trailingAnchor2 = [(FocusBannerView *)v6 trailingAnchor];
    v49 = [trailingAnchor constraintEqualToAnchor:?];
    v68[3] = v49;
    leadingAnchor3 = [(UIStackView *)v6->_stackView leadingAnchor];
    layoutMarginsGuide = [(FocusBannerView *)v6 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v46 = [leadingAnchor3 constraintEqualToAnchor:?];
    v68[4] = v46;
    trailingAnchor3 = [(UIStackView *)v6->_stackView trailingAnchor];
    layoutMarginsGuide2 = [(FocusBannerView *)v6 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
    v35 = [trailingAnchor3 constraintEqualToAnchor:?];
    v68[5] = v35;
    topAnchor3 = [(UIStackView *)v6->_stackView topAnchor];
    topAnchor4 = [(FocusBannerView *)v6 topAnchor];
    v38 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:11.0];
    v68[6] = v38;
    bottomAnchor = [(UIStackView *)v6->_stackView bottomAnchor];
    bottomAnchor2 = [(FocusBannerView *)v6 bottomAnchor];
    v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-11.0];
    v68[7] = v41;
    v42 = [NSArray arrayWithObjects:v68 count:8];
    [NSLayoutConstraint activateConstraints:v42];

    objc_destroyWeak(&v65);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)setFocusFilterEnabled:(BOOL)enabled
{
  if (self->_focusFilterEnabled != enabled)
  {
    self->_focusFilterEnabled = enabled;
    [(FocusBannerView *)self _updateTitleAndImage];
  }
}

- (void)_updateTitleAndImage
{
  if ([(FocusBannerView *)self isFocusFilterEnabled])
  {
    v3 = _EFLocalizedString();
    +[UIColor mailFocusBannerTitleColor];
  }

  else
  {
    v3 = _EFLocalizedString();
    +[UIColor secondaryLabelColor];
  }
  v4 = ;
  v14 = v3;
  focusFilterStateDescriptionLabel = [(FocusBannerView *)self focusFilterStateDescriptionLabel];
  [focusFilterStateDescriptionLabel setText:v14];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  focusFilterStateDescriptionLabel2 = [(FocusBannerView *)self focusFilterStateDescriptionLabel];
  [focusFilterStateDescriptionLabel2 setFont:v6];

  focusFilterStateDescriptionLabel3 = [(FocusBannerView *)self focusFilterStateDescriptionLabel];
  [focusFilterStateDescriptionLabel3 setTextColor:v4];

  focusFilterStateDescriptionLabel4 = [(FocusBannerView *)self focusFilterStateDescriptionLabel];
  [focusFilterStateDescriptionLabel4 setLargeContentTitle:v14];

  _focusButtonConfiguration = [(FocusBannerView *)self _focusButtonConfiguration];
  focusFilterToggleButton = [(FocusBannerView *)self focusFilterToggleButton];
  [focusFilterToggleButton setConfiguration:_focusButtonConfiguration];

  if ([(FocusBannerView *)self isFocusFilterEnabled])
  {
    +[UIColor systemIndigoColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v12 = ;
  focusIconView = [(FocusBannerView *)self focusIconView];
  [focusIconView setTintColor:v12];
}

- (void)_focusFilterToggleButtonSelected
{
  [(FocusBannerView *)self setFocusFilterEnabled:[(FocusBannerView *)self isFocusFilterEnabled]^ 1];
  delegate = [(FocusBannerView *)self delegate];
  [delegate focusBannerView:self stateDidChange:{-[FocusBannerView isFocusFilterEnabled](self, "isFocusFilterEnabled")}];
}

- (double)preferredHeight
{
  focusFilterStateDescriptionLabel = [(FocusBannerView *)self focusFilterStateDescriptionLabel];
  [focusFilterStateDescriptionLabel intrinsicContentSize];
  v4 = v3 + 11.0 + 11.0;

  return v4;
}

- (id)_focusButtonConfiguration
{
  focusFilterToggleButton = [(FocusBannerView *)self focusFilterToggleButton];
  configuration = [focusFilterToggleButton configuration];
  v5 = configuration;
  if (configuration)
  {
    v6 = configuration;
  }

  else
  {
    v6 = +[UIButtonConfiguration plainButtonConfiguration];
  }

  v7 = v6;

  [(FocusBannerView *)self isFocusFilterEnabled];
  v8 = _EFLocalizedString();
  v9 = +[UIColor mailFocusBannerTitleColor];
  [v7 setBaseForegroundColor:v9];

  v10 = [NSAttributedString alloc];
  v15 = NSFontAttributeName;
  v11 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightMedium];
  v16 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [v10 initWithString:v8 attributes:v12];
  [v7 setAttributedTitle:v13];

  [v7 setTitleLineBreakMode:4];
  [v7 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];

  return v7;
}

- (FocusBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end