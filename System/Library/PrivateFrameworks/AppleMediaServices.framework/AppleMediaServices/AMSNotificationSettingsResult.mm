@interface AMSNotificationSettingsResult
+ (id)_sectionsFromDictionaryRepresentation:(id)representation;
- (AMSNotificationSettingsResult)initWithDictionaryRepresentation:(id)representation;
@end

@implementation AMSNotificationSettingsResult

- (AMSNotificationSettingsResult)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = AMSNotificationSettingsResult;
  v5 = [(AMSNotificationSettingsResult *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() _sectionsFromDictionaryRepresentation:representationCopy];
    sections = v5->_sections;
    v5->_sections = v6;
  }

  return v5;
}

+ (id)_sectionsFromDictionaryRepresentation:(id)representation
{
  v3 = [representation objectForKeyedSubscript:@"results"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKeyedSubscript:@"sections"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 ams_mapWithTransformIgnoresNil:&__block_literal_global_106];

  return v7;
}

AMSNotificationSettingsSection *__71__AMSNotificationSettingsResult__sectionsFromDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AMSNotificationSettingsSection alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

@end