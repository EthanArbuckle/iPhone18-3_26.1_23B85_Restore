@interface AKAuthorizationBulletPointSubPane
- (AKAuthorizationBulletPointSubPane)initWithImage:(id)image title:(id)title message:(id)message;
- (CGSize)_sizeForBulletImage:(id)image;
- (id)_iconColor;
- (id)_imageViewWithImage:(id)image;
- (id)_labelWithString:(id)string title:(BOOL)title;
- (id)_verticalStackView;
- (void)addToConstraints:(id)constraints context:(id)context;
- (void)setImage:(id)image;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
@end

@implementation AKAuthorizationBulletPointSubPane

- (AKAuthorizationBulletPointSubPane)initWithImage:(id)image title:(id)title message:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v29 = 0;
  objc_storeStrong(&v29, title);
  v28 = 0;
  objc_storeStrong(&v28, message);
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  baseView = selfCopy->_baseView;
  selfCopy->_baseView = v6;
  *&v8 = MEMORY[0x277D82BD8](baseView).n128_u64[0];
  v9 = selfCopy;
  v10 = selfCopy->_baseView;
  selfCopy = 0;
  v27.receiver = v9;
  v27.super_class = AKAuthorizationBulletPointSubPane;
  selfCopy = [(AKAuthorizationSubPane *)&v27 initWithView:v10, v8];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(UIView *)selfCopy->_baseView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(AKAuthorizationBulletPointSubPane *)selfCopy _imageViewWithImage:location[0]];
    bulletImageView = selfCopy->_bulletImageView;
    selfCopy->_bulletImageView = v11;
    *&v13 = MEMORY[0x277D82BD8](bulletImageView).n128_u64[0];
    [(UIView *)selfCopy->_baseView addSubview:selfCopy->_bulletImageView, v13];
    _verticalStackView = [(AKAuthorizationBulletPointSubPane *)selfCopy _verticalStackView];
    messageStackView = selfCopy->_messageStackView;
    selfCopy->_messageStackView = _verticalStackView;
    *&v16 = MEMORY[0x277D82BD8](messageStackView).n128_u64[0];
    [(UIView *)selfCopy->_baseView addSubview:selfCopy->_messageStackView, v16];
    v17 = [(AKAuthorizationBulletPointSubPane *)selfCopy _labelWithString:v29 title:1];
    titleLabel = selfCopy->_titleLabel;
    selfCopy->_titleLabel = v17;
    *&v19 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
    v20 = [(AKAuthorizationBulletPointSubPane *)selfCopy _labelWithString:v28 title:0, v19];
    messageLabel = selfCopy->_messageLabel;
    selfCopy->_messageLabel = v20;
    *&v22 = MEMORY[0x277D82BD8](messageLabel).n128_u64[0];
    [(UIStackView *)selfCopy->_messageStackView addArrangedSubview:selfCopy->_titleLabel, v22];
    [(UIStackView *)selfCopy->_messageStackView addArrangedSubview:selfCopy->_messageLabel];
  }

  v24 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v24;
}

- (id)_labelWithString:(id)string title:(BOOL)title
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  titleCopy = title;
  v15 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = 0;
  v11 = 0;
  if (title)
  {
    v14 = +[AKAuthorizationAppearance bulletInfoLabelTitleFont];
    v13 = 1;
    v9 = v14;
  }

  else
  {
    v12 = +[AKAuthorizationAppearance bulletInfoLabelDescriptionFont];
    v11 = 1;
    v9 = v12;
  }

  [v15 setFont:v9];
  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  [v15 setTextAlignment:4];
  [v15 setNumberOfLines:0];
  [v15 setAdjustsFontSizeToFitWidth:0];
  [v15 setAdjustsFontForContentSizeCategory:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v15 setBackgroundColor:?];
  *&v4 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
  [v15 setText:{location[0], v4}];
  if (!titleCopy)
  {
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v15 setTextColor:?];
    MEMORY[0x277D82BD8](secondaryLabelColor);
  }

  v6 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_verticalStackView
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = objc_alloc_init(MEMORY[0x277D75A68]);
  [v5[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  +[AKAuthorizationSubPaneMetrics bulletInfoTitleToDescriptionVerticalSpacing];
  [v5[0] setSpacing:?];
  [v5[0] setAlignment:?];
  [v5[0] setAxis:1];
  [v5[0] setDistribution:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v5[0] setBackgroundColor:?];
  MEMORY[0x277D82BD8](clearColor);
  v4 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);

  return v4;
}

- (id)_imageViewWithImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  [(AKAuthorizationBulletPointSubPane *)selfCopy _sizeForBulletImage:location[0]];
  v11[1] = v3;
  v11[2] = v4;
  v11[0] = [location[0] ak_copyScaledToSize:{*&v3, *&v4}];
  v5 = objc_alloc(MEMORY[0x277D755E8]);
  v10 = [v5 initWithImage:v11[0]];
  [v10 setContentMode:5];
  _iconColor = [(AKAuthorizationBulletPointSubPane *)selfCopy _iconColor];
  [v10 setTintColor:?];
  *&v6 = MEMORY[0x277D82BD8](_iconColor).n128_u64[0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:{0, v6}];
  v9 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (CGSize)_sizeForBulletImage:(id)image
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  [location[0] size];
  v15 = v3;
  [location[0] size];
  if (v15 <= v4)
  {
    [location[0] size];
    v16 = v10;
    v17 = v11;
    +[AKAuthorizationSubPaneMetrics bulletImageSize];
    [AKSizing size:v16 scaledForHeight:v17, v12];
  }

  else
  {
    [location[0] size];
    v18 = v5;
    v19 = v6;
    +[AKAuthorizationSubPaneMetrics bulletImageSize];
    [AKSizing size:v18 scaledForWidth:v19, v7];
  }

  v21 = v8;
  v22 = v9;
  objc_storeStrong(location, 0);
  v13 = v21;
  v14 = v22;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)addToConstraints:(id)constraints context:(id)context
{
  v55[10] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, constraints);
  v52 = 0;
  objc_storeStrong(&v52, context);
  v20 = location[0];
  leadingAnchor = [(UIView *)selfCopy->_baseView leadingAnchor];
  stackView = [v52 stackView];
  leadingAnchor2 = [stackView leadingAnchor];
  v24 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:?];
  v55[0] = v24;
  trailingAnchor = [(UIView *)selfCopy->_baseView trailingAnchor];
  stackView2 = [v52 stackView];
  trailingAnchor2 = [stackView2 trailingAnchor];
  v28 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:?];
  v55[1] = v28;
  topAnchor = [(UIView *)selfCopy->_baseView topAnchor];
  stackView3 = [v52 stackView];
  arrangedSubviews = [stackView3 arrangedSubviews];
  lastObject = [arrangedSubviews lastObject];
  topAnchor2 = [lastObject topAnchor];
  v34 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:?];
  v55[2] = v34;
  topAnchor3 = [(UIImageView *)selfCopy->_bulletImageView topAnchor];
  firstBaselineAnchor = [(UILabel *)selfCopy->_titleLabel firstBaselineAnchor];
  font = [(UILabel *)selfCopy->_titleLabel font];
  [(UIFont *)font ascender];
  v38 = v4;
  +[AKAuthorizationSubPaneMetrics bulletImagePixelAdjustmentOffset];
  v39 = [topAnchor3 constraintEqualToAnchor:firstBaselineAnchor constant:-(v38 - v5)];
  v55[3] = v39;
  leadingAnchor3 = [(UIImageView *)selfCopy->_bulletImageView leadingAnchor];
  leadingAnchor4 = [(UIView *)selfCopy->_baseView leadingAnchor];
  +[AKAuthorizationSubPaneMetrics bulletLeadingSpacing];
  v42 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
  v55[4] = v42;
  widthAnchor = [(UIImageView *)selfCopy->_bulletImageView widthAnchor];
  +[AKAuthorizationSubPaneMetrics bulletImageSize];
  v44 = [widthAnchor constraintEqualToConstant:?];
  v55[5] = v44;
  leadingAnchor5 = [(UIStackView *)selfCopy->_messageStackView leadingAnchor];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v50 = 0;
  v48 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    leadingAnchor6 = [(UIView *)selfCopy->_baseView leadingAnchor];
    v50 = 1;
    v18 = leadingAnchor6;
  }

  else
  {
    trailingAnchor3 = [(UIImageView *)selfCopy->_bulletImageView trailingAnchor];
    v48 = 1;
    v18 = trailingAnchor3;
  }

  +[AKAuthorizationSubPaneMetrics bulletImageToInfoLabelSpacing];
  v17 = [leadingAnchor5 constraintEqualToAnchor:v18 constant:?];
  v55[6] = v17;
  trailingAnchor4 = [(UIStackView *)selfCopy->_messageStackView trailingAnchor];
  trailingAnchor5 = [(UIView *)selfCopy->_baseView trailingAnchor];
  +[AKAuthorizationSubPaneMetrics bulletTrailingSpacing];
  v14 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:?];
  v55[7] = v14;
  topAnchor4 = [(UIStackView *)selfCopy->_messageStackView topAnchor];
  topAnchor5 = [(UIView *)selfCopy->_baseView topAnchor];
  v11 = [topAnchor4 constraintEqualToAnchor:?];
  v55[8] = v11;
  bottomAnchor = [(UIStackView *)selfCopy->_messageStackView bottomAnchor];
  bottomAnchor2 = [(UIView *)selfCopy->_baseView bottomAnchor];
  v8 = [bottomAnchor constraintLessThanOrEqualToAnchor:?];
  v55[9] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:10];
  [v20 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](topAnchor5);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](v17);
  if (v48)
  {
    MEMORY[0x277D82BD8](trailingAnchor3);
  }

  if (v50)
  {
    MEMORY[0x277D82BD8](leadingAnchor6);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](font);
  MEMORY[0x277D82BD8](firstBaselineAnchor);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](lastObject);
  MEMORY[0x277D82BD8](arrangedSubviews);
  MEMORY[0x277D82BD8](stackView3);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](stackView2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](stackView);
  *&v6 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
  v47.receiver = selfCopy;
  v47.super_class = AKAuthorizationBulletPointSubPane;
  [(AKAuthorizationSubPane *)&v47 addToConstraints:location[0] context:v52, v6];
  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)setImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  [(UIImageView *)selfCopy->_bulletImageView setImage:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  [(UILabel *)selfCopy->_titleLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  [(UILabel *)selfCopy->_messageLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (id)_iconColor
{
  v3 = MEMORY[0x277D75348];
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  v6 = [v3 colorNamed:@"firstTimeColor" inBundle:v5 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](currentTraitCollection);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

@end