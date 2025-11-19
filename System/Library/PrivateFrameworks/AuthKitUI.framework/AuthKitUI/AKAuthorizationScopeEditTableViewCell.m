@interface AKAuthorizationScopeEditTableViewCell
- (AKAuthorizationScopeEditTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setup;
- (void)_setupDetailTextField;
@end

@implementation AKAuthorizationScopeEditTableViewCell

- (AKAuthorizationScopeEditTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v4 = v9;
  v9 = 0;
  v7.receiver = v4;
  v7.super_class = AKAuthorizationScopeEditTableViewCell;
  v9 = [(AKAuthorizationScopeEditTableViewCell *)&v7 initWithStyle:2 reuseIdentifier:location[0]];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    [(AKAuthorizationScopeEditTableViewCell *)v9 _setup];
  }

  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v6;
}

- (void)_setup
{
  v2 = +[AKAuthorizationAppearance editScopeRowBackgroundColor];
  [(AKAuthorizationScopeEditTableViewCell *)self setBackgroundColor:?];
  MEMORY[0x277D82BD8](v2);
  [(AKAuthorizationScopeEditTableViewCell *)self setSelectionStyle:1];
  [(AKAuthorizationScopeEditTableViewCell *)self setAccessoryType:0];
  v4 = +[AKAuthorizationAppearance editScopeInfoLabelTextColor];
  v3 = [(AKAuthorizationScopeEditTableViewCell *)self textLabel];
  [v3 setTextColor:v4];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v6 = +[AKAuthorizationAppearance editScopeInfoLabelFont];
  v5 = [(AKAuthorizationScopeEditTableViewCell *)self textLabel];
  [v5 setFont:v6];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v7 = [(AKAuthorizationScopeEditTableViewCell *)self textLabel];
  [v7 setAdjustsFontSizeToFitWidth:1];
  MEMORY[0x277D82BD8](v7);
  [(AKAuthorizationScopeEditTableViewCell *)self _setupDetailTextField];
}

- (void)_setupDetailTextField
{
  v30[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D75BB8]);
  detailTextField = self->_detailTextField;
  self->_detailTextField = v2;
  MEMORY[0x277D82BD8](detailTextField);
  [(UITextField *)self->_detailTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_detailTextField setAutocorrectionType:1];
  [(UITextField *)self->_detailTextField setReturnKeyType:?];
  v4 = +[AKAuthorizationAppearance editScopeInputFieldFont];
  [(UITextField *)self->_detailTextField setFont:?];
  MEMORY[0x277D82BD8](v4);
  v5 = +[AKAuthorizationAppearance editScopeInputFieldTextColor];
  [(UITextField *)self->_detailTextField setTextColor:?];
  MEMORY[0x277D82BD8](v5);
  v6 = [(AKAuthorizationScopeEditTableViewCell *)self detailTextLabel];
  [v6 setHidden:1];
  MEMORY[0x277D82BD8](v6);
  v8 = [(AKAuthorizationScopeEditTableViewCell *)self contentView];
  v7 = [(AKAuthorizationScopeEditTableViewCell *)self detailTextField];
  [v8 addSubview:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = MEMORY[0x277CCAAD0];
  v28 = [(AKAuthorizationScopeEditTableViewCell *)self contentView];
  v27 = [v28 heightAnchor];
  +[AKAuthorizationPaneMetrics nameCellHeight];
  v26 = [v27 constraintEqualToConstant:?];
  v30[0] = v26;
  v25 = [(AKAuthorizationScopeEditTableViewCell *)self detailTextField];
  v24 = [(UITextField *)v25 leadingAnchor];
  v23 = [(AKAuthorizationScopeEditTableViewCell *)self textLabel];
  v22 = [v23 trailingAnchor];
  +[AKAuthorizationSubPaneMetrics editInfoLabelToInputFieldSpacing];
  v21 = [v24 constraintEqualToAnchor:v22 constant:?];
  v30[1] = v21;
  v20 = [(AKAuthorizationScopeEditTableViewCell *)self detailTextField];
  v19 = [(UITextField *)v20 trailingAnchor];
  v18 = [(AKAuthorizationScopeEditTableViewCell *)self contentView];
  v17 = [v18 trailingAnchor];
  v16 = [v19 constraintEqualToAnchor:?];
  v30[2] = v16;
  v15 = [(AKAuthorizationScopeEditTableViewCell *)self detailTextField];
  v14 = [(UITextField *)v15 centerYAnchor];
  v13 = [(AKAuthorizationScopeEditTableViewCell *)self contentView];
  v12 = [v13 centerYAnchor];
  v11 = [v14 constraintEqualToAnchor:?];
  v30[3] = v11;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v9 activateConstraints:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
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
  MEMORY[0x277D82BD8](v28);
  *MEMORY[0x277D85DE8];
}

@end