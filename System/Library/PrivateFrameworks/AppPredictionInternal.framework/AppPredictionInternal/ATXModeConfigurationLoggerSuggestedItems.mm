@interface ATXModeConfigurationLoggerSuggestedItems
- (ATXModeConfigurationLoggerSuggestedItems)init;
@end

@implementation ATXModeConfigurationLoggerSuggestedItems

- (ATXModeConfigurationLoggerSuggestedItems)init
{
  v12.receiver = self;
  v12.super_class = ATXModeConfigurationLoggerSuggestedItems;
  v2 = [(ATXModeConfigurationLoggerSuggestedItems *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    suggestedDeniedApps = v2->_suggestedDeniedApps;
    v2->_suggestedDeniedApps = v3;

    v5 = objc_opt_new();
    suggestedAllowedApps = v2->_suggestedAllowedApps;
    v2->_suggestedAllowedApps = v5;

    v7 = objc_opt_new();
    suggestedDeniedContacts = v2->_suggestedDeniedContacts;
    v2->_suggestedDeniedContacts = v7;

    v9 = objc_opt_new();
    suggestedAllowedContacts = v2->_suggestedAllowedContacts;
    v2->_suggestedAllowedContacts = v9;
  }

  return v2;
}

@end