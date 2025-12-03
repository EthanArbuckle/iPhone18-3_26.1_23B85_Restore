@interface AMSUserNotificationSettingsResult
+ (id)_itemsMapForServiceIdentifier:(id)identifier dictionaryRepresentation:(id)representation;
- (AMSUserNotificationSettingsResult)initWithServiceIdentifier:(id)identifier dictionaryRepresentation:(id)representation;
@end

@implementation AMSUserNotificationSettingsResult

- (AMSUserNotificationSettingsResult)initWithServiceIdentifier:(id)identifier dictionaryRepresentation:(id)representation
{
  identifierCopy = identifier;
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = AMSUserNotificationSettingsResult;
  v9 = [(AMSUserNotificationSettingsResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceIdentifier, identifier);
    v11 = [objc_opt_class() _itemsMapForServiceIdentifier:identifierCopy dictionaryRepresentation:representationCopy];
    itemsMap = v10->_itemsMap;
    v10->_itemsMap = v11;
  }

  return v10;
}

+ (id)_itemsMapForServiceIdentifier:(id)identifier dictionaryRepresentation:(id)representation
{
  v5 = MEMORY[0x1E696AEC0];
  representationCopy = representation;
  identifier = [v5 stringWithFormat:@"results.notification-preferences.payload.%@", identifier];
  v8 = [representationCopy valueForKeyPath:identifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 ams_mapWithTransform:&__block_literal_global_152];

  return v10;
}

AMSPair *__92__AMSUserNotificationSettingsResult__itemsMapForServiceIdentifier_dictionaryRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [[AMSUserNotificationSettingsItem alloc] initWithIdentifier:v7 dictionaryRepresentation:v9];
  v11 = [[AMSPair alloc] initWithFirst:v7 second:v10];

  return v11;
}

@end