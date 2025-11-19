@interface OfflineMapsManagementSection
- (BOOL)isEqual:(id)a3;
- (NSString)headerText;
- (OfflineMapsManagementSection)initWithSectionType:(unint64_t)a3;
@end

@implementation OfflineMapsManagementSection

- (NSString)headerText
{
  v2 = [(OfflineMapsManagementSection *)self sectionType];
  if (v2 == 4)
  {
    v3 = @"Suggested Maps [section title]";
    goto LABEL_5;
  }

  if (v2 == 5)
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
    v6 = [(OfflineMapsManagementSection *)v5 sectionType];
    v7 = v6 == [(OfflineMapsManagementSection *)self sectionType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (OfflineMapsManagementSection)initWithSectionType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = OfflineMapsManagementSection;
  result = [(OfflineMapsManagementSection *)&v5 init];
  if (result)
  {
    result->_sectionType = a3;
  }

  return result;
}

@end