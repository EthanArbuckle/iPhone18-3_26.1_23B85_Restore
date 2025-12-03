@interface AKAuthorizationSubPaneInfoLabel
- (AKAuthorizationSubPaneInfoLabel)infoLabelWithString:(id)string;
- (AKAuthorizationSubPaneInfoLabel)initWithString:(id)string;
- (NSString)string;
- (void)addToConstraints:(id)constraints context:(id)context;
- (void)addToStackView:(id)view context:(id)context;
- (void)setInfoLabelType:(unint64_t)type;
- (void)setLabel:(id)label toInfoLabelType:(unint64_t)type;
- (void)setLabelColor:(id)color;
- (void)setString:(id)string;
- (void)setString:(id)string animated:(BOOL)animated;
@end

@implementation AKAuthorizationSubPaneInfoLabel

- (AKAuthorizationSubPaneInfoLabel)initWithString:(id)string
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v3 = [(AKAuthorizationSubPaneInfoLabel *)selfCopy infoLabelWithString:location[0]];
  infoLabel = selfCopy->_infoLabel;
  selfCopy->_infoLabel = v3;
  *&v5 = MEMORY[0x277D82BD8](infoLabel).n128_u64[0];
  v6 = selfCopy;
  v7 = selfCopy->_infoLabel;
  selfCopy = 0;
  v11.receiver = v6;
  v11.super_class = AKAuthorizationSubPaneInfoLabel;
  selfCopy = [(AKAuthorizationSubPane *)&v11 initWithView:v7, v5];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    +[AKAuthorizationSubPaneMetrics infoLabelMarginInset];
    selfCopy->_marginInset = v8;
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (NSString)string
{
  infoLabel = [(AKAuthorizationSubPaneInfoLabel *)self infoLabel];
  text = [(UILabel *)infoLabel text];
  MEMORY[0x277D82BD8](infoLabel);

  return text;
}

- (void)setString:(id)string
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v3 = location[0];
  infoLabel = [(AKAuthorizationSubPaneInfoLabel *)selfCopy infoLabel];
  [(UILabel *)infoLabel setText:v3];
  MEMORY[0x277D82BD8](infoLabel);
  objc_storeStrong(location, 0);
}

- (void)setString:(id)string animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  animatedCopy = animated;
  if (animated)
  {
    v4 = MEMORY[0x277D75D18];
    infoLabel = [(AKAuthorizationSubPaneInfoLabel *)selfCopy infoLabel];
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __54__AKAuthorizationSubPaneInfoLabel_setString_animated___block_invoke;
    v11 = &unk_2784A6420;
    v12 = MEMORY[0x277D82BE0](selfCopy);
    v13 = MEMORY[0x277D82BE0](location[0]);
    [v4 transitionWithView:infoLabel duration:5242880 options:&v7 animations:0.25 completion:?];
    MEMORY[0x277D82BD8](infoLabel);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    [(AKAuthorizationSubPaneInfoLabel *)selfCopy setString:location[0]];
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

- (void)addToStackView:(id)view context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, context);
  v5.receiver = selfCopy;
  v5.super_class = AKAuthorizationSubPaneInfoLabel;
  [(AKAuthorizationSubPane *)&v5 addToStackView:location[0] context:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)addToConstraints:(id)constraints context:(id)context
{
  v24[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, constraints);
  v21 = 0;
  objc_storeStrong(&v21, context);
  stackView = [v21 stackView];
  axis = [stackView axis];
  *&v4 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
  if (axis == 1)
  {
    v6 = location[0];
    infoLabel = [(AKAuthorizationSubPaneInfoLabel *)selfCopy infoLabel];
    leadingAnchor = [(UILabel *)infoLabel leadingAnchor];
    stackView2 = [v21 stackView];
    leadingAnchor2 = [stackView2 leadingAnchor];
    [(AKAuthorizationSubPaneInfoLabel *)selfCopy marginInset];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v24[0] = v13;
    infoLabel2 = [(AKAuthorizationSubPaneInfoLabel *)selfCopy infoLabel];
    trailingAnchor = [(UILabel *)infoLabel2 trailingAnchor];
    stackView3 = [v21 stackView];
    trailingAnchor2 = [stackView3 trailingAnchor];
    [(AKAuthorizationSubPaneInfoLabel *)selfCopy marginInset];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v5];
    v24[1] = v8;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    [v6 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](stackView3);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](infoLabel2);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](stackView2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](infoLabel);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (AKAuthorizationSubPaneInfoLabel)infoLabelWithString:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  [v11 setTextAlignment:v3];
  *&v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  [v11 setNumberOfLines:{0, v4}];
  [v11 setAdjustsFontSizeToFitWidth:0];
  [v11 setAdjustsFontForContentSizeCategory:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v11 setBackgroundColor:?];
  *&v5 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
  [v11 setText:{location[0], v5}];
  v9 = +[AKAuthorizationAppearance messageFont];
  [v11 setFont:?];
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (void)setLabel:(id)label toInfoLabelType:(unint64_t)type
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  if (type)
  {
    switch(type)
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

- (void)setInfoLabelType:(unint64_t)type
{
  if ([(AKAuthorizationSubPaneInfoLabel *)self internalInfoLabelType]!= type)
  {
    [(AKAuthorizationSubPaneInfoLabel *)self setInternalInfoLabelType:type];
    infoLabel = [(AKAuthorizationSubPaneInfoLabel *)self infoLabel];
    [AKAuthorizationSubPaneInfoLabel setLabel:"setLabel:toInfoLabelType:" toInfoLabelType:?];
    MEMORY[0x277D82BD8](infoLabel);
  }
}

- (void)setLabelColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  [(UILabel *)selfCopy->_infoLabel setColor:location[0]];
  objc_storeStrong(location, 0);
}

@end