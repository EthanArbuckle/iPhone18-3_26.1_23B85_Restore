@interface OfflineMapsManagementSearchAutocompleteSection
- (BOOL)isEqual:(id)equal;
- (NSString)headerText;
- (OfflineMapsManagementSearchAutocompleteSection)initWithSectionType:(unint64_t)type;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    sectionType = [(OfflineMapsManagementSearchAutocompleteSection *)v5 sectionType];
    v7 = sectionType == [(OfflineMapsManagementSearchAutocompleteSection *)self sectionType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (OfflineMapsManagementSearchAutocompleteSection)initWithSectionType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = OfflineMapsManagementSearchAutocompleteSection;
  result = [(OfflineMapsManagementSearchAutocompleteSection *)&v5 init];
  if (result)
  {
    result->_sectionType = type;
  }

  return result;
}

@end