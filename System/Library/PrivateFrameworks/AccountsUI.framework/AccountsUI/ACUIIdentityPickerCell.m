@interface ACUIIdentityPickerCell
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ACUIIdentityPickerCell

- (void)prepareForReuse
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = ACUIIdentityPickerCell;
  [(PSTableCell *)&v2 prepareForReuse];
  [(ACUIIdentityPickerCell *)v4 setContentConfiguration:0];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28.receiver = v30;
  v28.super_class = ACUIIdentityPickerCell;
  [(PSTableCell *)&v28 refreshCellContentsWithSpecifier:location[0]];
  v10 = [location[0] userInfo];
  v9 = [v10 objectForKeyedSubscript:@"allowSelection"];
  v11 = [v9 BOOLValue];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v27 = v11;
  v13 = [location[0] userInfo];
  v12 = [v13 objectForKeyedSubscript:@"identitySelected"];
  v14 = [v12 BOOLValue];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v26 = v14;
  v25 = [(ACUIIdentityPickerCell *)v30 defaultContentConfiguration];
  v24 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  [v24 size];
  v22 = v3;
  v23 = v4;
  v15 = [v25 imageProperties];
  [v15 setReservedLayoutSize:{v22, v23}];
  MEMORY[0x277D82BD8](v15);
  v20 = 0;
  if (v11 & 1) != 0 && (v26)
  {
    v8 = v24;
  }

  else
  {
    v21 = objc_opt_new();
    v20 = 1;
    v8 = v21;
  }

  [v25 setImage:v8];
  if (v20)
  {
    MEMORY[0x277D82BD8](v21);
  }

  v7 = [location[0] name];
  [v25 setText:?];
  MEMORY[0x277D82BD8](v7);
  v18 = 0;
  v16 = 0;
  if (v27)
  {
    v19 = [MEMORY[0x277D75348] labelColor];
    v18 = 1;
    v6 = v19;
  }

  else
  {
    v17 = [MEMORY[0x277D75348] secondaryLabelColor];
    v16 = 1;
    v6 = v17;
  }

  v5 = [v25 textProperties];
  [v5 setColor:v6];
  MEMORY[0x277D82BD8](v5);
  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  [(ACUIIdentityPickerCell *)v30 setSelectionStyle:(v27 & 1) != 0];
  [(ACUIIdentityPickerCell *)v30 setAccessoryType:2];
  [(ACUIIdentityPickerCell *)v30 setContentConfiguration:v25];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

@end