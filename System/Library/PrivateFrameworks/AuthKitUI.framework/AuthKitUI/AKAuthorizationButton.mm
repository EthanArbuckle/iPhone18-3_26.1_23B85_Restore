@interface AKAuthorizationButton
- (void)addTarget:(id)target action:(SEL)action;
- (void)setButtonText:(id)text;
- (void)setupButton;
@end

@implementation AKAuthorizationButton

- (void)setupButton
{
  v29[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKAuthorizationButton *)self setTitleLabel:?];
  titleLabel = [(AKAuthorizationButton *)self titleLabel];
  v5 = +[AKAuthorizationAppearance continueButtonFont];
  [(UILabel *)titleLabel setFont:?];
  MEMORY[0x277D82BD8](v5);
  titleLabel2 = [(AKAuthorizationButton *)self titleLabel];
  [(UILabel *)titleLabel2 setTextAlignment:1];
  titleLabel3 = [(AKAuthorizationButton *)self titleLabel];
  v8 = +[AKAuthorizationAppearance continueButtonTextColor];
  [(UILabel *)titleLabel3 setTextColor:?];
  MEMORY[0x277D82BD8](v8);
  titleLabel4 = [(AKAuthorizationButton *)self titleLabel];
  [(UILabel *)titleLabel4 setAdjustsFontForContentSizeCategory:1];
  titleLabel5 = [(AKAuthorizationButton *)self titleLabel];
  [(UILabel *)titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel6 = [(AKAuthorizationButton *)self titleLabel];
  [(AKAuthorizationButton *)self addSubview:?];
  layer = [(AKAuthorizationButton *)self layer];
  +[AKAuthorizationPaneMetrics continueButtonCornerRadius];
  [layer setCornerRadius:?];
  *&v3 = MEMORY[0x277D82BD8](layer).n128_u64[0];
  v14 = MEMORY[0x277CCAAD0];
  titleLabel7 = [(AKAuthorizationButton *)self titleLabel];
  centerYAnchor = [(UILabel *)titleLabel7 centerYAnchor];
  centerYAnchor2 = [(AKAuthorizationButton *)self centerYAnchor];
  v24 = [centerYAnchor constraintEqualToAnchor:?];
  v29[0] = v24;
  titleLabel8 = [(AKAuthorizationButton *)self titleLabel];
  leadingAnchor = [(UILabel *)titleLabel8 leadingAnchor];
  leadingAnchor2 = [(AKAuthorizationButton *)self leadingAnchor];
  +[AKAuthorizationPaneMetrics continueButtonTextHorizontalPadding];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v29[1] = v20;
  trailingAnchor = [(AKAuthorizationButton *)self trailingAnchor];
  titleLabel9 = [(AKAuthorizationButton *)self titleLabel];
  trailingAnchor2 = [(UILabel *)titleLabel9 trailingAnchor];
  +[AKAuthorizationPaneMetrics continueButtonTextHorizontalPadding];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
  v29[2] = v16;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [v14 activateConstraints:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](titleLabel9);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](titleLabel8);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](titleLabel7);
  *MEMORY[0x277D85DE8];
}

- (void)setButtonText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  [(UILabel *)selfCopy->_titleLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addTarget:(id)target action:(SEL)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, target);
  [(AKAuthorizationButton *)selfCopy removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  [(AKAuthorizationButton *)selfCopy addTarget:location[0] action:action forControlEvents:64];
  objc_storeStrong(location, 0);
}

@end