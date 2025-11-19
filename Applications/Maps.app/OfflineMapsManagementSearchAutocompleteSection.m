@interface OfflineMapsManagementSearchAutocompleteSection
- (BOOL)isEqual:(id)a3;
- (NSString)headerText;
- (OfflineMapsManagementSearchAutocompleteSection)initWithSectionType:(unint64_t)a3;
@end

@implementation OfflineMapsManagementSearchAutocompleteSection

- (NSString)headerText
{
  if ([(OfflineMapsManagementSearchAutocompleteSection *)self sectionType]== 1)
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"Recent Searches [section title]" value:@"localized string not found" table:@"Offline"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(OfflineMapsManagementSearchAutocompleteSection *)v5 sectionType];
    v7 = v6 == [(OfflineMapsManagementSearchAutocompleteSection *)self sectionType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (OfflineMapsManagementSearchAutocompleteSection)initWithSectionType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = OfflineMapsManagementSearchAutocompleteSection;
  result = [(OfflineMapsManagementSearchAutocompleteSection *)&v5 init];
  if (result)
  {
    result->_sectionType = a3;
  }

  return result;
}

@end