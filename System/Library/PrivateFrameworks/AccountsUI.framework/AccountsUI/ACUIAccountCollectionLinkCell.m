@interface ACUIAccountCollectionLinkCell
+ (id)specifierWithTitle:(id)a3 accounts:(id)a4;
- (ACUIAccountCollectionLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_detailTextForAccountSpecifiers:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ACUIAccountCollectionLinkCell

+ (id)specifierWithTitle:(id)a3 accounts:(id)a4
{
  obj = a4;
  location[2] = a1;
  location[1] = a2;
  v13 = location;
  v14 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = &v17;
  v17 = 0;
  objc_storeStrong(&v17, obj);
  v9 = MEMORY[0x277D3FAD8];
  v8 = location[0];
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:location[0] target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  v11 = &v16;
  v16 = v4;
  v10 = v4;
  [v4 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v16 setProperty:v17 forKey:@"ACUIAccountCollectionSpecifiers"];
  [v16 setProperty:location[0] forKey:@"ACUIAccountCollectionTitle"];
  v15 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(v11, v14);
  objc_storeStrong(v12, v14);
  objc_storeStrong(v13, v14);
  v5 = v15;

  return v5;
}

- (ACUIAccountCollectionLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v4 = v12;
  v12 = 0;
  v10.receiver = v4;
  v10.super_class = ACUIAccountCollectionLinkCell;
  v9 = [(PSTableCell *)&v10 initWithStyle:3 reuseIdentifier:location[0]];
  v12 = v9;
  objc_storeStrong(&v12, v9);
  if (v9)
  {
    v8 = [(PSTableCell *)v12 valueLabel];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [v8 setFont:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)prepareForReuse
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = ACUIAccountCollectionLinkCell;
  [(PSTableCell *)&v2 prepareForReuse];
  [(PSTableCell *)v4 setValue:&stru_2850054A0];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = ACUIAccountCollectionLinkCell;
  [(PSTableCell *)&v6 refreshCellContentsWithSpecifier:location[0]];
  v5 = [location[0] propertyForKey:@"ACUIAccountCollectionSpecifiers"];
  v3 = v8;
  v4 = [(ACUIAccountCollectionLinkCell *)v8 _detailTextForAccountSpecifiers:v5];
  [(PSTableCell *)v3 setValue:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)_detailTextForAccountSpecifiers:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  v18 = [v12 initWithCapacity:{objc_msgSend(location[0], "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v14 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v14)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v14;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v10);
      v15 = [v17 name];
      if (v15)
      {
        [v18 addObject:v15];
      }

      objc_storeStrong(&v15, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v4 = v18;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v7 localizedStringForKey:@"MIDDLE_SEPARATOR" value:&stru_2850054A0 table:@"Localizable"];
  v6 = [v4 componentsJoinedByString:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

- (void)layoutSubviews
{
  v19 = self;
  v18 = a2;
  v17.receiver = self;
  v17.super_class = ACUIAccountCollectionLinkCell;
  [(PSTableCell *)&v17 layoutSubviews];
  v16 = [(PSTableCell *)v19 titleLabel];
  [v16 frame];
  *&v14 = v2;
  *(&v14 + 1) = v3;
  *&v15 = v4;
  *(&v15 + 1) = v5;
  v13 = [(PSTableCell *)v19 valueLabel];
  [v13 frame];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  [(ACUIAccountCollectionLinkCell *)v19 bounds];
  *(&v14 + 1) = CGRound((v9 - (*(&v15 + 1) + v12 + 2.0)) / 2.0);
  [v16 setFrame:{v14, v15}];
  [v13 setFrame:{v10, *(&v14 + 1) + *(&v15 + 1) + 2.0, v11, v12}];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
}

@end