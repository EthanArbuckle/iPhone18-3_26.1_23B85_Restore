@interface CARSettingsCellSpecifierSection
- (BOOL)hasEqualFooter:(id)footer;
- (BOOL)hasEqualHeader:(id)header;
- (BOOL)hasEqualSpecifiers:(id)specifiers;
- (BOOL)isEqualToSpecifierSection:(id)section;
- (CARSettingsCellSpecifierSection)initWithTitle:(id)title footer:(id)footer specifiers:(id)specifiers;
@end

@implementation CARSettingsCellSpecifierSection

- (CARSettingsCellSpecifierSection)initWithTitle:(id)title footer:(id)footer specifiers:(id)specifiers
{
  titleCopy = title;
  footerCopy = footer;
  specifiersCopy = specifiers;
  v17.receiver = self;
  v17.super_class = CARSettingsCellSpecifierSection;
  v11 = [(CARSettingsCellSpecifierSection *)&v17 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [footerCopy copy];
    footer = v11->_footer;
    v11->_footer = v14;

    objc_storeStrong(&v11->_specifiers, specifiers);
  }

  return v11;
}

- (BOOL)isEqualToSpecifierSection:(id)section
{
  sectionCopy = section;
  if ([(CARSettingsCellSpecifierSection *)self hasEqualSpecifiers:sectionCopy]&& [(CARSettingsCellSpecifierSection *)self hasEqualHeader:sectionCopy])
  {
    v5 = [(CARSettingsCellSpecifierSection *)self hasEqualFooter:sectionCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasEqualSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  specifiers = [(CARSettingsCellSpecifierSection *)self specifiers];
  specifiers2 = [specifiersCopy specifiers];

  LOBYTE(specifiersCopy) = [specifiers isEqualToArray:specifiers2];
  return specifiersCopy;
}

- (BOOL)hasEqualHeader:(id)header
{
  headerCopy = header;
  title = [(CARSettingsCellSpecifierSection *)self title];
  title2 = [headerCopy title];

  LOBYTE(headerCopy) = BSEqualStrings();
  return headerCopy;
}

- (BOOL)hasEqualFooter:(id)footer
{
  footerCopy = footer;
  footer = [(CARSettingsCellSpecifierSection *)self footer];
  footer2 = [footerCopy footer];

  LOBYTE(footerCopy) = BSEqualStrings();
  return footerCopy;
}

@end