@interface AKBasicLoginTableViewCell
- (AKBasicLoginTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation AKBasicLoginTableViewCell

- (AKBasicLoginTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v45[4] = *MEMORY[0x277D85DE8];
  v44 = self;
  v43 = a2;
  v42 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v44;
  v44 = 0;
  v40.receiver = v4;
  v40.super_class = AKBasicLoginTableViewCell;
  v33 = [(AKBasicLoginTableViewCell *)&v40 initWithStyle:v42 reuseIdentifier:location];
  v44 = v33;
  objc_storeStrong(&v44, v33);
  if (v33)
  {
    v31 = [MEMORY[0x277CF0228] sharedManager];
    v32 = [v31 isAuthKitSolariumFeatureEnabled];
    *&v5 = MEMORY[0x277D82BD8](v31).n128_u64[0];
    if ((v32 & 1) == 0)
    {
      v38 = *MEMORY[0x277D768C8];
      v39 = *(MEMORY[0x277D768C8] + 16);
      v36 = v38;
      v37 = v39;
      [(AKBasicLoginTableViewCell *)v44 setSeparatorInset:v38, v39];
    }

    v12 = +[AKBasicLoginAppearance tableCellBackgroundColor];
    [(AKBasicLoginTableViewCell *)v44 setBackgroundColor:?];
    *&v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v13 = [(AKBasicLoginTableViewCell *)v44 textLabel];
    [v13 setHidden:1];
    MEMORY[0x277D82BD8](v13);
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
    v16 = [(AKBasicLoginTableViewCell *)v44 contentView];
    [v16 addSubview:v35];
    MEMORY[0x277D82BD8](v16);
    objc_storeStrong(&v44->_cellTextField, v35);
    v30 = [(UITextField *)v44->_cellTextField leadingAnchor];
    v29 = [(AKBasicLoginTableViewCell *)v44 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:16.0 constant:?];
    v45[0] = v28;
    v27 = [(UITextField *)v44->_cellTextField trailingAnchor];
    v26 = [(AKBasicLoginTableViewCell *)v44 trailingAnchor];
    v25 = [v27 constraintEqualToAnchor:-16.0 constant:?];
    v45[1] = v25;
    v24 = [(UITextField *)v44->_cellTextField heightAnchor];
    v23 = [(AKBasicLoginTableViewCell *)v44 contentView];
    v22 = [v23 heightAnchor];
    v21 = [v24 constraintEqualToAnchor:-20.0 constant:?];
    v45[2] = v21;
    v20 = [(UITextField *)v44->_cellTextField centerYAnchor];
    v19 = [(AKBasicLoginTableViewCell *)v44 contentView];
    v18 = [v19 centerYAnchor];
    v17 = [v20 constraintEqualToAnchor:?];
    v45[3] = v17;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
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
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    *&v9 = MEMORY[0x277D82BD8](v30).n128_u64[0];
    [MEMORY[0x277CCAAD0] activateConstraints:{v34, v9}];
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  v11 = MEMORY[0x277D82BE0](v44);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v44, 0);
  *MEMORY[0x277D85DE8];
  return v11;
}

@end