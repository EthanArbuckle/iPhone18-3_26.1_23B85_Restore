@interface AKAuthorizationBulletPointSubPane
- (AKAuthorizationBulletPointSubPane)initWithImage:(id)a3 title:(id)a4 message:(id)a5;
- (CGSize)_sizeForBulletImage:(id)a3;
- (id)_iconColor;
- (id)_imageViewWithImage:(id)a3;
- (id)_labelWithString:(id)a3 title:(BOOL)a4;
- (id)_verticalStackView;
- (void)addToConstraints:(id)a3 context:(id)a4;
- (void)setImage:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation AKAuthorizationBulletPointSubPane

- (AKAuthorizationBulletPointSubPane)initWithImage:(id)a3 title:(id)a4 message:(id)a5
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  baseView = v31->_baseView;
  v31->_baseView = v6;
  *&v8 = MEMORY[0x277D82BD8](baseView).n128_u64[0];
  v9 = v31;
  v10 = v31->_baseView;
  v31 = 0;
  v27.receiver = v9;
  v27.super_class = AKAuthorizationBulletPointSubPane;
  v31 = [(AKAuthorizationSubPane *)&v27 initWithView:v10, v8];
  objc_storeStrong(&v31, v31);
  if (v31)
  {
    [(UIView *)v31->_baseView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(AKAuthorizationBulletPointSubPane *)v31 _imageViewWithImage:location[0]];
    bulletImageView = v31->_bulletImageView;
    v31->_bulletImageView = v11;
    *&v13 = MEMORY[0x277D82BD8](bulletImageView).n128_u64[0];
    [(UIView *)v31->_baseView addSubview:v31->_bulletImageView, v13];
    v14 = [(AKAuthorizationBulletPointSubPane *)v31 _verticalStackView];
    messageStackView = v31->_messageStackView;
    v31->_messageStackView = v14;
    *&v16 = MEMORY[0x277D82BD8](messageStackView).n128_u64[0];
    [(UIView *)v31->_baseView addSubview:v31->_messageStackView, v16];
    v17 = [(AKAuthorizationBulletPointSubPane *)v31 _labelWithString:v29 title:1];
    titleLabel = v31->_titleLabel;
    v31->_titleLabel = v17;
    *&v19 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
    v20 = [(AKAuthorizationBulletPointSubPane *)v31 _labelWithString:v28 title:0, v19];
    messageLabel = v31->_messageLabel;
    v31->_messageLabel = v20;
    *&v22 = MEMORY[0x277D82BD8](messageLabel).n128_u64[0];
    [(UIStackView *)v31->_messageStackView addArrangedSubview:v31->_titleLabel, v22];
    [(UIStackView *)v31->_messageStackView addArrangedSubview:v31->_messageLabel];
  }

  v24 = MEMORY[0x277D82BE0](v31);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v31, 0);
  return v24;
}

- (id)_labelWithString:(id)a3 title:(BOOL)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v15 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = 0;
  v11 = 0;
  if (a4)
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
  v8 = [MEMORY[0x277D75348] clearColor];
  [v15 setBackgroundColor:?];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [v15 setText:{location[0], v4}];
  if (!v16)
  {
    v7 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v15 setTextColor:?];
    MEMORY[0x277D82BD8](v7);
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
  v3 = [MEMORY[0x277D75348] clearColor];
  [v5[0] setBackgroundColor:?];
  MEMORY[0x277D82BD8](v3);
  v4 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);

  return v4;
}

- (id)_imageViewWithImage:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAuthorizationBulletPointSubPane *)v13 _sizeForBulletImage:location[0]];
  v11[1] = v3;
  v11[2] = v4;
  v11[0] = [location[0] ak_copyScaledToSize:{*&v3, *&v4}];
  v5 = objc_alloc(MEMORY[0x277D755E8]);
  v10 = [v5 initWithImage:v11[0]];
  [v10 setContentMode:5];
  v8 = [(AKAuthorizationBulletPointSubPane *)v13 _iconColor];
  [v10 setTintColor:?];
  *&v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:{0, v6}];
  v9 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (CGSize)_sizeForBulletImage:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

- (void)addToConstraints:(id)a3 context:(id)a4
{
  v55[10] = *MEMORY[0x277D85DE8];
  v54 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v52 = 0;
  objc_storeStrong(&v52, a4);
  v20 = location[0];
  v22 = [(UIView *)v54->_baseView leadingAnchor];
  v21 = [v52 stackView];
  v23 = [v21 leadingAnchor];
  v24 = [(NSLayoutXAxisAnchor *)v22 constraintEqualToAnchor:?];
  v55[0] = v24;
  v26 = [(UIView *)v54->_baseView trailingAnchor];
  v25 = [v52 stackView];
  v27 = [v25 trailingAnchor];
  v28 = [(NSLayoutXAxisAnchor *)v26 constraintEqualToAnchor:?];
  v55[1] = v28;
  v32 = [(UIView *)v54->_baseView topAnchor];
  v29 = [v52 stackView];
  v30 = [v29 arrangedSubviews];
  v31 = [v30 lastObject];
  v33 = [v31 topAnchor];
  v34 = [(NSLayoutYAxisAnchor *)v32 constraintEqualToAnchor:?];
  v55[2] = v34;
  v36 = [(UIImageView *)v54->_bulletImageView topAnchor];
  v37 = [(UILabel *)v54->_titleLabel firstBaselineAnchor];
  v35 = [(UILabel *)v54->_titleLabel font];
  [(UIFont *)v35 ascender];
  v38 = v4;
  +[AKAuthorizationSubPaneMetrics bulletImagePixelAdjustmentOffset];
  v39 = [v36 constraintEqualToAnchor:v37 constant:-(v38 - v5)];
  v55[3] = v39;
  v40 = [(UIImageView *)v54->_bulletImageView leadingAnchor];
  v41 = [(UIView *)v54->_baseView leadingAnchor];
  +[AKAuthorizationSubPaneMetrics bulletLeadingSpacing];
  v42 = [v40 constraintEqualToAnchor:v41 constant:?];
  v55[4] = v42;
  v43 = [(UIImageView *)v54->_bulletImageView widthAnchor];
  +[AKAuthorizationSubPaneMetrics bulletImageSize];
  v44 = [v43 constraintEqualToConstant:?];
  v55[5] = v44;
  v45 = [(UIStackView *)v54->_messageStackView leadingAnchor];
  v46 = [MEMORY[0x277CF0228] sharedManager];
  v50 = 0;
  v48 = 0;
  if ([v46 isAuthKitSolariumFeatureEnabled])
  {
    v51 = [(UIView *)v54->_baseView leadingAnchor];
    v50 = 1;
    v18 = v51;
  }

  else
  {
    v49 = [(UIImageView *)v54->_bulletImageView trailingAnchor];
    v48 = 1;
    v18 = v49;
  }

  +[AKAuthorizationSubPaneMetrics bulletImageToInfoLabelSpacing];
  v17 = [v45 constraintEqualToAnchor:v18 constant:?];
  v55[6] = v17;
  v16 = [(UIStackView *)v54->_messageStackView trailingAnchor];
  v15 = [(UIView *)v54->_baseView trailingAnchor];
  +[AKAuthorizationSubPaneMetrics bulletTrailingSpacing];
  v14 = [v16 constraintEqualToAnchor:v15 constant:?];
  v55[7] = v14;
  v13 = [(UIStackView *)v54->_messageStackView topAnchor];
  v12 = [(UIView *)v54->_baseView topAnchor];
  v11 = [v13 constraintEqualToAnchor:?];
  v55[8] = v11;
  v10 = [(UIStackView *)v54->_messageStackView bottomAnchor];
  v9 = [(UIView *)v54->_baseView bottomAnchor];
  v8 = [v10 constraintLessThanOrEqualToAnchor:?];
  v55[9] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:10];
  [v20 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  if (v48)
  {
    MEMORY[0x277D82BD8](v49);
  }

  if (v50)
  {
    MEMORY[0x277D82BD8](v51);
  }

  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v21);
  *&v6 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v47.receiver = v54;
  v47.super_class = AKAuthorizationBulletPointSubPane;
  [(AKAuthorizationSubPane *)&v47 addToConstraints:location[0] context:v52, v6];
  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)setImage:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UIImageView *)v4->_bulletImageView setImage:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setTitle:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UILabel *)v4->_titleLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setMessage:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UILabel *)v4->_messageLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (id)_iconColor
{
  v3 = MEMORY[0x277D75348];
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v4 = [MEMORY[0x277D75C80] currentTraitCollection];
  v6 = [v3 colorNamed:@"firstTimeColor" inBundle:v5 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

@end