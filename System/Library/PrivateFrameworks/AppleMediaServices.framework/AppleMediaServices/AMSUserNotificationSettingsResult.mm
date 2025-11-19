@interface AMSUserNotificationSettingsResult
+ (id)_itemsMapForServiceIdentifier:(id)a3 dictionaryRepresentation:(id)a4;
- (AMSUserNotificationSettingsResult)initWithServiceIdentifier:(id)a3 dictionaryRepresentation:(id)a4;
@end

@implementation AMSUserNotificationSettingsResult

- (AMSUserNotificationSettingsResult)initWithServiceIdentifier:(id)a3 dictionaryRepresentation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSUserNotificationSettingsResult;
  v9 = [(AMSUserNotificationSettingsResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceIdentifier, a3);
    v11 = [objc_opt_class() _itemsMapForServiceIdentifier:v7 dictionaryRepresentation:v8];
    itemsMap = v10->_itemsMap;
    v10->_itemsMap = v11;
  }

  return v10;
}

+ (id)_itemsMapForServiceIdentifier:(id)a3 dictionaryRepresentation:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = [v5 stringWithFormat:@"results.notification-preferences.payload.%@", a3];
  v8 = [v6 valueForKeyPath:v7];

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