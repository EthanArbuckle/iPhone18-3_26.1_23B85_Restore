@interface CARSettingsCellSpecifierSection
- (BOOL)hasEqualFooter:(id)a3;
- (BOOL)hasEqualHeader:(id)a3;
- (BOOL)hasEqualSpecifiers:(id)a3;
- (BOOL)isEqualToSpecifierSection:(id)a3;
- (CARSettingsCellSpecifierSection)initWithTitle:(id)a3 footer:(id)a4 specifiers:(id)a5;
@end

@implementation CARSettingsCellSpecifierSection

- (CARSettingsCellSpecifierSection)initWithTitle:(id)a3 footer:(id)a4 specifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CARSettingsCellSpecifierSection;
  v11 = [(CARSettingsCellSpecifierSection *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v9 copy];
    footer = v11->_footer;
    v11->_footer = v14;

    objc_storeStrong(&v11->_specifiers, a5);
  }

  return v11;
}

- (BOOL)isEqualToSpecifierSection:(id)a3
{
  v4 = a3;
  if ([(CARSettingsCellSpecifierSection *)self hasEqualSpecifiers:v4]&& [(CARSettingsCellSpecifierSection *)self hasEqualHeader:v4])
  {
    v5 = [(CARSettingsCellSpecifierSection *)self hasEqualFooter:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasEqualSpecifiers:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsCellSpecifierSection *)self specifiers];
  v6 = [v4 specifiers];

  LOBYTE(v4) = [v5 isEqualToArray:v6];
  return v4;
}

- (BOOL)hasEqualHeader:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsCellSpecifierSection *)self title];
  v6 = [v4 title];

  LOBYTE(v4) = BSEqualStrings();
  return v4;
}

- (BOOL)hasEqualFooter:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsCellSpecifierSection *)self footer];
  v6 = [v4 footer];

  LOBYTE(v4) = BSEqualStrings();
  return v4;
}

@end