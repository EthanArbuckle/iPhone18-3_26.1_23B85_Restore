@interface AKBasicLoginTableViewCell
- (AKBasicLoginTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation AKBasicLoginTableViewCell

- (AKBasicLoginTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v45[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v43 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v40.receiver = v4;
  v40.super_class = AKBasicLoginTableViewCell;
  v33 = [(AKBasicLoginTableViewCell *)&v40 initWithStyle:styleCopy reuseIdentifier:location];
  selfCopy = v33;
  objc_storeStrong(&selfCopy, v33);
  if (v33)
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
    *&v5 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
    if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
    {
      v38 = *MEMORY[0x277D768C8];
      v39 = *(MEMORY[0x277D768C8] + 16);
      v36 = v38;
      v37 = v39;
      [(AKBasicLoginTableViewCell *)selfCopy setSeparatorInset:v38, v39];
    }

    v12 = +[AKBasicLoginAppearance tableCellBackgroundColor];
    [(AKBasicLoginTableViewCell *)selfCopy setBackgroundColor:?];
    *&v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    textLabel = [(AKBasicLoginTableViewCell *)selfCopy textLabel];
    [textLabel setHidden:1];
    MEMORY[0x277D82BD8](textLabel);
    v7 = objc_alloc(MEMORY[0x277D75BB8]);
    v35 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v35 setBorderStyle:?];
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v35 setAdjustsFontForContentSizeCategory:1];
    [v35 setAutocapitalizationType:0];
    [v35 setAutocorrectionType:1];
    [v35 setEnablesReturnKeyAutomatically:1];
    v14 = v35;
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v14 setFont:?];
    *&v8 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    contentView = [(AKBasicLoginTableViewCell *)selfCopy contentView];
    [contentView addSubview:v35];
    MEMORY[0x277D82BD8](contentView);
    objc_storeStrong(&selfCopy->_cellTextField, v35);
    leadingAnchor = [(UITextField *)selfCopy->_cellTextField leadingAnchor];
    leadingAnchor2 = [(AKBasicLoginTableViewCell *)selfCopy leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:16.0 constant:?];
    v45[0] = v28;
    trailingAnchor = [(UITextField *)selfCopy->_cellTextField trailingAnchor];
    trailingAnchor2 = [(AKBasicLoginTableViewCell *)selfCopy trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:-16.0 constant:?];
    v45[1] = v25;
    heightAnchor = [(UITextField *)selfCopy->_cellTextField heightAnchor];
    contentView2 = [(AKBasicLoginTableViewCell *)selfCopy contentView];
    heightAnchor2 = [contentView2 heightAnchor];
    v21 = [heightAnchor constraintEqualToAnchor:-20.0 constant:?];
    v45[2] = v21;
    centerYAnchor = [(UITextField *)selfCopy->_cellTextField centerYAnchor];
    contentView3 = [(AKBasicLoginTableViewCell *)selfCopy contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:?];
    v45[3] = v17;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](contentView3);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](heightAnchor2);
    MEMORY[0x277D82BD8](contentView2);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](leadingAnchor2);
    *&v9 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
    [MEMORY[0x277CCAAD0] activateConstraints:{v34, v9}];
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v11;
}

@end