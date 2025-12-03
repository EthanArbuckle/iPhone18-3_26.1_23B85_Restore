@interface OfflineMapsManagementSection
- (BOOL)isEqual:(id)equal;
- (NSString)headerText;
- (OfflineMapsManagementSection)initWithSectionType:(unint64_t)type;
@end

@implementation OfflineMapsManagementSection

- (NSString)headerText
{
  sectionType = [(OfflineMapsManagementSection *)self sectionType];
  if (sectionType == 4)
  {
    v3 = @"Suggested Maps [section title]";
    goto LABEL_5;
  }

  if (sectionType == 5)
  {
    v3 = @"Settings [section title]";
LABEL_5:
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:@"Offline"];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
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
    sectionType = [(OfflineMapsManagementSection *)v5 sectionType];
    v7 = sectionType == [(OfflineMapsManagementSection *)self sectionType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (OfflineMapsManagementSection)initWithSectionType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = OfflineMapsManagementSection;
  result = [(OfflineMapsManagementSection *)&v5 init];
  if (result)
  {
    result->_sectionType = type;
  }

  return result;
}

@end