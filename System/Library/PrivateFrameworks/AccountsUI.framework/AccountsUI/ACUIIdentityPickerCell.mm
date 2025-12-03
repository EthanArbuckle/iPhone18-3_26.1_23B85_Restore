@interface ACUIIdentityPickerCell
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ACUIIdentityPickerCell

- (void)prepareForReuse
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = ACUIIdentityPickerCell;
  [(PSTableCell *)&v2 prepareForReuse];
  [(ACUIIdentityPickerCell *)selfCopy setContentConfiguration:0];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v28.receiver = selfCopy;
  v28.super_class = ACUIIdentityPickerCell;
  [(PSTableCell *)&v28 refreshCellContentsWithSpecifier:location[0]];
  userInfo = [location[0] userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"allowSelection"];
  bOOLValue = [v9 BOOLValue];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](userInfo);
  v27 = bOOLValue;
  userInfo2 = [location[0] userInfo];
  v12 = [userInfo2 objectForKeyedSubscript:@"identitySelected"];
  bOOLValue2 = [v12 BOOLValue];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](userInfo2);
  v26 = bOOLValue2;
  defaultContentConfiguration = [(ACUIIdentityPickerCell *)selfCopy defaultContentConfiguration];
  v24 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  [v24 size];
  v22 = v3;
  v23 = v4;
  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setReservedLayoutSize:{v22, v23}];
  MEMORY[0x277D82BD8](imageProperties);
  v20 = 0;
  if (bOOLValue & 1) != 0 && (v26)
  {
    v8 = v24;
  }

  else
  {
    v21 = objc_opt_new();
    v20 = 1;
    v8 = v21;
  }

  [defaultContentConfiguration setImage:v8];
  if (v20)
  {
    MEMORY[0x277D82BD8](v21);
  }

  name = [location[0] name];
  [defaultContentConfiguration setText:?];
  MEMORY[0x277D82BD8](name);
  v18 = 0;
  v16 = 0;
  if (v27)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    v18 = 1;
    v6 = labelColor;
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    v16 = 1;
    v6 = secondaryLabelColor;
  }

  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setColor:v6];
  MEMORY[0x277D82BD8](textProperties);
  if (v16)
  {
    MEMORY[0x277D82BD8](secondaryLabelColor);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](labelColor);
  }

  [(ACUIIdentityPickerCell *)selfCopy setSelectionStyle:(v27 & 1) != 0];
  [(ACUIIdentityPickerCell *)selfCopy setAccessoryType:2];
  [(ACUIIdentityPickerCell *)selfCopy setContentConfiguration:defaultContentConfiguration];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&defaultContentConfiguration, 0);
  objc_storeStrong(location, 0);
}

@end