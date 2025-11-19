@interface AKAuthorizationButton
- (void)addTarget:(id)a3 action:(SEL)a4;
- (void)setButtonText:(id)a3;
- (void)setupButton;
@end

@implementation AKAuthorizationButton

- (void)setupButton
{
  v29[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKAuthorizationButton *)self setTitleLabel:?];
  v6 = [(AKAuthorizationButton *)self titleLabel];
  v5 = +[AKAuthorizationAppearance continueButtonFont];
  [(UILabel *)v6 setFont:?];
  MEMORY[0x277D82BD8](v5);
  v7 = [(AKAuthorizationButton *)self titleLabel];
  [(UILabel *)v7 setTextAlignment:1];
  v9 = [(AKAuthorizationButton *)self titleLabel];
  v8 = +[AKAuthorizationAppearance continueButtonTextColor];
  [(UILabel *)v9 setTextColor:?];
  MEMORY[0x277D82BD8](v8);
  v10 = [(AKAuthorizationButton *)self titleLabel];
  [(UILabel *)v10 setAdjustsFontForContentSizeCategory:1];
  v11 = [(AKAuthorizationButton *)self titleLabel];
  [(UILabel *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(AKAuthorizationButton *)self titleLabel];
  [(AKAuthorizationButton *)self addSubview:?];
  v13 = [(AKAuthorizationButton *)self layer];
  +[AKAuthorizationPaneMetrics continueButtonCornerRadius];
  [v13 setCornerRadius:?];
  *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v14 = MEMORY[0x277CCAAD0];
  v27 = [(AKAuthorizationButton *)self titleLabel];
  v26 = [(UILabel *)v27 centerYAnchor];
  v25 = [(AKAuthorizationButton *)self centerYAnchor];
  v24 = [v26 constraintEqualToAnchor:?];
  v29[0] = v24;
  v23 = [(AKAuthorizationButton *)self titleLabel];
  v22 = [(UILabel *)v23 leadingAnchor];
  v21 = [(AKAuthorizationButton *)self leadingAnchor];
  +[AKAuthorizationPaneMetrics continueButtonTextHorizontalPadding];
  v20 = [v22 constraintEqualToAnchor:v21 constant:?];
  v29[1] = v20;
  v19 = [(AKAuthorizationButton *)self trailingAnchor];
  v18 = [(AKAuthorizationButton *)self titleLabel];
  v17 = [(UILabel *)v18 trailingAnchor];
  +[AKAuthorizationPaneMetrics continueButtonTextHorizontalPadding];
  v16 = [v19 constraintEqualToAnchor:v17 constant:?];
  v29[2] = v16;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [v14 activateConstraints:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  *MEMORY[0x277D85DE8];
}

- (void)setButtonText:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UILabel *)v4->_titleLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addTarget:(id)a3 action:(SEL)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAuthorizationButton *)v6 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  [(AKAuthorizationButton *)v6 addTarget:location[0] action:a4 forControlEvents:64];
  objc_storeStrong(location, 0);
}

@end