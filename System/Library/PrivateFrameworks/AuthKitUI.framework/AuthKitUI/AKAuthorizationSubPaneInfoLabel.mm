@interface AKAuthorizationSubPaneInfoLabel
- (AKAuthorizationSubPaneInfoLabel)infoLabelWithString:(id)a3;
- (AKAuthorizationSubPaneInfoLabel)initWithString:(id)a3;
- (NSString)string;
- (void)addToConstraints:(id)a3 context:(id)a4;
- (void)addToStackView:(id)a3 context:(id)a4;
- (void)setInfoLabelType:(unint64_t)a3;
- (void)setLabel:(id)a3 toInfoLabelType:(unint64_t)a4;
- (void)setLabelColor:(id)a3;
- (void)setString:(id)a3;
- (void)setString:(id)a3 animated:(BOOL)a4;
@end

@implementation AKAuthorizationSubPaneInfoLabel

- (AKAuthorizationSubPaneInfoLabel)initWithString:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAuthorizationSubPaneInfoLabel *)v13 infoLabelWithString:location[0]];
  infoLabel = v13->_infoLabel;
  v13->_infoLabel = v3;
  *&v5 = MEMORY[0x277D82BD8](infoLabel).n128_u64[0];
  v6 = v13;
  v7 = v13->_infoLabel;
  v13 = 0;
  v11.receiver = v6;
  v11.super_class = AKAuthorizationSubPaneInfoLabel;
  v13 = [(AKAuthorizationSubPane *)&v11 initWithView:v7, v5];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    +[AKAuthorizationSubPaneMetrics infoLabelMarginInset];
    v13->_marginInset = v8;
  }

  v10 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v10;
}

- (NSString)string
{
  v3 = [(AKAuthorizationSubPaneInfoLabel *)self infoLabel];
  v4 = [(UILabel *)v3 text];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)setString:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(AKAuthorizationSubPaneInfoLabel *)v6 infoLabel];
  [(UILabel *)v4 setText:v3];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)setString:(id)a3 animated:(BOOL)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  if (a4)
  {
    v4 = MEMORY[0x277D75D18];
    v5 = [(AKAuthorizationSubPaneInfoLabel *)v16 infoLabel];
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __54__AKAuthorizationSubPaneInfoLabel_setString_animated___block_invoke;
    v11 = &unk_2784A6420;
    v12 = MEMORY[0x277D82BE0](v16);
    v13 = MEMORY[0x277D82BE0](location[0]);
    [v4 transitionWithView:v5 duration:5242880 options:&v7 animations:0.25 completion:?];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    [(AKAuthorizationSubPaneInfoLabel *)v16 setString:location[0]];
  }

  objc_storeStrong(location, 0);
}

double __54__AKAuthorizationSubPaneInfoLabel_setString_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) infoLabel];
  [v3 setText:v2];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)addToStackView:(id)a3 context:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = AKAuthorizationSubPaneInfoLabel;
  [(AKAuthorizationSubPane *)&v5 addToStackView:location[0] context:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)addToConstraints:(id)a3 context:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v19 = [v21 stackView];
  v20 = [v19 axis];
  *&v4 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  if (v20 == 1)
  {
    v6 = location[0];
    v17 = [(AKAuthorizationSubPaneInfoLabel *)v23 infoLabel];
    v16 = [(UILabel *)v17 leadingAnchor];
    v15 = [v21 stackView];
    v14 = [v15 leadingAnchor];
    [(AKAuthorizationSubPaneInfoLabel *)v23 marginInset];
    v13 = [v16 constraintEqualToAnchor:v14 constant:?];
    v24[0] = v13;
    v12 = [(AKAuthorizationSubPaneInfoLabel *)v23 infoLabel];
    v11 = [(UILabel *)v12 trailingAnchor];
    v10 = [v21 stackView];
    v9 = [v10 trailingAnchor];
    [(AKAuthorizationSubPaneInfoLabel *)v23 marginInset];
    v8 = [v11 constraintEqualToAnchor:v9 constant:-v5];
    v24[1] = v8;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    [v6 addObjectsFromArray:?];
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
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (AKAuthorizationSubPaneInfoLabel)infoLabelWithString:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [MEMORY[0x277CF0228] sharedManager];
  if ([v7 isAuthKitSolariumFeatureEnabled])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  [v11 setTextAlignment:v3];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [v11 setNumberOfLines:{0, v4}];
  [v11 setAdjustsFontSizeToFitWidth:0];
  [v11 setAdjustsFontForContentSizeCategory:1];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v11 setBackgroundColor:?];
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [v11 setText:{location[0], v5}];
  v9 = +[AKAuthorizationAppearance messageFont];
  [v11 setFont:?];
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (void)setLabel:(id)a3 toInfoLabelType:(unint64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4)
  {
    switch(a4)
    {
      case 1uLL:
        v10 = +[AKAuthorizationAppearance titleFont];
        [location[0] setFont:?];
        MEMORY[0x277D82BD8](v10);
        break;
      case 2uLL:
        v8 = +[AKAuthorizationAppearance scopeSubtitleTextColor];
        [location[0] setColor:?];
        v9 = +[AKAuthorizationAppearance scopeSubtitleFont];
        [location[0] setFont:?];
        MEMORY[0x277D82BD8](v9);
        break;
      case 3uLL:
        v6 = +[AKAuthorizationAppearance smallTitleTextColor];
        [location[0] setColor:?];
        v7 = +[AKAuthorizationAppearance smallTitleFont];
        [location[0] setFont:?];
        MEMORY[0x277D82BD8](v7);
        break;
      case 4uLL:
        v4 = +[AKAuthorizationAppearance captionTextColor];
        [location[0] setColor:?];
        v5 = +[AKAuthorizationAppearance captionFont];
        [location[0] setFont:?];
        MEMORY[0x277D82BD8](v5);
        break;
    }
  }

  else
  {
    v11 = +[AKAuthorizationAppearance messageFont];
    [location[0] setFont:?];
    MEMORY[0x277D82BD8](v11);
  }

  objc_storeStrong(location, 0);
}

- (void)setInfoLabelType:(unint64_t)a3
{
  if ([(AKAuthorizationSubPaneInfoLabel *)self internalInfoLabelType]!= a3)
  {
    [(AKAuthorizationSubPaneInfoLabel *)self setInternalInfoLabelType:a3];
    v3 = [(AKAuthorizationSubPaneInfoLabel *)self infoLabel];
    [AKAuthorizationSubPaneInfoLabel setLabel:"setLabel:toInfoLabelType:" toInfoLabelType:?];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)setLabelColor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UILabel *)v4->_infoLabel setColor:location[0]];
  objc_storeStrong(location, 0);
}

@end