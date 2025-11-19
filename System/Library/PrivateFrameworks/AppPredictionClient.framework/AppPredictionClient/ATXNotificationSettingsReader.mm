@interface ATXNotificationSettingsReader
- (ATXNotificationSettingsReader)init;
- (ATXNotificationSettingsReader)initWithModeConfigurationClient:(id)a3 notificationSettingsCenter:(id)a4;
- (BOOL)appIsOnAllowList:(id)a3 dndModeUUID:(id)a4;
- (BOOL)appIsOnDenyList:(id)a3 dndModeUUID:(id)a4;
- (BOOL)contactIsOnAllowList:(id)a3 dndModeUUID:(id)a4;
- (BOOL)contactIsOnDenyList:(id)a3 dndModeUUID:(id)a4;
- (BOOL)digestSetupComplete;
- (BOOL)doesAppAllowMessageBreakthrough:(id)a3;
- (BOOL)doesAppSendNotificationsToDigest:(id)a3;
- (id)allConfiguredDigestApps;
- (id)areHighlightsEnabled;
- (id)areSummariesEnabled;
- (id)modeConfiguration:(id)a3;
- (id)notificationDigestDeliveryTimes;
- (id)numConfiguredModes;
- (unint64_t)applicationConfigurationTypeForDNDModeUUID:(id)a3 success:(BOOL *)a4;
- (unint64_t)senderConfigurationTypeForDNDModeUUID:(id)a3 success:(BOOL *)a4;
@end

@implementation ATXNotificationSettingsReader

- (ATXNotificationSettingsReader)init
{
  v3 = +[ATXDNDModeConfigurationClient sharedInstance];
  v4 = [MEMORY[0x1E69DF278] currentNotificationSettingsCenter];
  v5 = [(ATXNotificationSettingsReader *)self initWithModeConfigurationClient:v3 notificationSettingsCenter:v4];

  return v5;
}

- (ATXNotificationSettingsReader)initWithModeConfigurationClient:(id)a3 notificationSettingsCenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXNotificationSettingsReader;
  v9 = [(ATXNotificationSettingsReader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modeConfigClient, a3);
    objc_storeStrong(&v10->_notificationSettingsCenter, a4);
  }

  return v10;
}

- (BOOL)appIsOnAllowList:(id)a3 dndModeUUID:(id)a4
{
  v6 = a3;
  v7 = [(ATXNotificationSettingsReader *)self modeConfiguration:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 configuration];
    v10 = [v9 exceptionForApplication:v6] == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)appIsOnDenyList:(id)a3 dndModeUUID:(id)a4
{
  v6 = a3;
  v7 = [(ATXNotificationSettingsReader *)self modeConfiguration:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 configuration];
    v10 = [v9 exceptionForApplication:v6] == 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)contactIsOnAllowList:(id)a3 dndModeUUID:(id)a4
{
  v6 = a3;
  v7 = [(ATXNotificationSettingsReader *)self modeConfiguration:a4];
  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setContactIdentifier:v6];
    v9 = [v7 configuration];
    v10 = [v9 exceptionForContactHandle:v8] == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)contactIsOnDenyList:(id)a3 dndModeUUID:(id)a4
{
  v6 = a3;
  v7 = [(ATXNotificationSettingsReader *)self modeConfiguration:a4];
  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setContactIdentifier:v6];
    v9 = [v7 configuration];
    v10 = [v9 exceptionForContactHandle:v8] == 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)modeConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ATXDNDModeConfigurationClient *)self->_modeConfigClient modeConfigurationForDNDModeWithUUID:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ATXNotificationSettingsReader *)v4 modeConfiguration:v8];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)applicationConfigurationTypeForDNDModeUUID:(id)a3 success:(BOOL *)a4
{
  v5 = [(ATXNotificationSettingsReader *)self modeConfiguration:a3];
  v6 = v5;
  if (v5)
  {
    *a4 = 1;
    v7 = [v5 configuration];
    v8 = [v7 applicationConfigurationType];
  }

  else
  {
    *a4 = 0;
    v8 = 2;
  }

  return v8;
}

- (unint64_t)senderConfigurationTypeForDNDModeUUID:(id)a3 success:(BOOL *)a4
{
  v5 = [(ATXNotificationSettingsReader *)self modeConfiguration:a3];
  v6 = v5;
  if (v5)
  {
    *a4 = 1;
    v7 = [v5 configuration];
    v8 = [v7 senderConfigurationType];
  }

  else
  {
    *a4 = 0;
    v8 = 2;
  }

  return v8;
}

- (id)notificationDigestDeliveryTimes
{
  v2 = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSystemSettings];
  if ([v2 scheduledDeliverySetting] == 2)
  {
    v3 = [v2 scheduledDeliveryTimes];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (BOOL)digestSetupComplete
{
  v2 = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSystemSettings];
  v3 = [v2 scheduledDeliverySetting] == 2;

  return v3;
}

- (BOOL)doesAppSendNotificationsToDigest:(id)a3
{
  v3 = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSourceWithIdentifier:a3];
  v4 = [v3 sourceSettings];
  v5 = [v4 notificationSettings];

  LOBYTE(v4) = [v5 scheduledDeliverySetting] == 2;
  return v4;
}

- (BOOL)doesAppAllowMessageBreakthrough:(id)a3
{
  v3 = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSourceWithIdentifier:a3];
  v4 = [v3 sourceSettings];
  v5 = [v4 notificationSettings];

  LOBYTE(v4) = [v5 directMessagesSetting] == 2;
  return v4;
}

- (id)allConfiguredDigestApps
{
  v2 = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter allNotificationSources];
  v3 = [v2 _pas_filteredSetWithTest:&__block_literal_global_42];
  v4 = [v3 _pas_mappedSetWithTransform:&__block_literal_global_15];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  return v7;
}

BOOL __56__ATXNotificationSettingsReader_allConfiguredDigestApps__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHiddenFromSettings])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 sourceSettings];
    v5 = [v4 notificationSettings];
    v3 = [v5 scheduledDeliverySetting] == 2;
  }

  return v3;
}

- (id)numConfiguredModes
{
  v2 = [(ATXDNDModeConfigurationClient *)self->_modeConfigClient configuredModes];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)areHighlightsEnabled
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSystemSettings];
  v4 = [v2 numberWithInt:{objc_msgSend(v3, "prioritizationSetting") == 2}];

  return v4;
}

- (id)areSummariesEnabled
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSystemSettings];
  v4 = [v2 numberWithInt:{objc_msgSend(v3, "summarizationSetting") == 2}];

  return v4;
}

- (void)modeConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138412546;
  v3 = a1;
  v4 = 2080;
  v5 = "[ATXNotificationSettingsReader modeConfiguration:]";
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Unable to retrieve mode configuration for DNDMode UUID: %@. Returning nil in %s", &v2, 0x16u);
}

@end