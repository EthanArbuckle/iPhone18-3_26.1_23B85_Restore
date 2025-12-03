@interface ATXNotificationSettingsReader
- (ATXNotificationSettingsReader)init;
- (ATXNotificationSettingsReader)initWithModeConfigurationClient:(id)client notificationSettingsCenter:(id)center;
- (BOOL)appIsOnAllowList:(id)list dndModeUUID:(id)d;
- (BOOL)appIsOnDenyList:(id)list dndModeUUID:(id)d;
- (BOOL)contactIsOnAllowList:(id)list dndModeUUID:(id)d;
- (BOOL)contactIsOnDenyList:(id)list dndModeUUID:(id)d;
- (BOOL)digestSetupComplete;
- (BOOL)doesAppAllowMessageBreakthrough:(id)breakthrough;
- (BOOL)doesAppSendNotificationsToDigest:(id)digest;
- (id)allConfiguredDigestApps;
- (id)areHighlightsEnabled;
- (id)areSummariesEnabled;
- (id)modeConfiguration:(id)configuration;
- (id)notificationDigestDeliveryTimes;
- (id)numConfiguredModes;
- (unint64_t)applicationConfigurationTypeForDNDModeUUID:(id)d success:(BOOL *)success;
- (unint64_t)senderConfigurationTypeForDNDModeUUID:(id)d success:(BOOL *)success;
@end

@implementation ATXNotificationSettingsReader

- (ATXNotificationSettingsReader)init
{
  v3 = +[ATXDNDModeConfigurationClient sharedInstance];
  currentNotificationSettingsCenter = [MEMORY[0x1E69DF278] currentNotificationSettingsCenter];
  v5 = [(ATXNotificationSettingsReader *)self initWithModeConfigurationClient:v3 notificationSettingsCenter:currentNotificationSettingsCenter];

  return v5;
}

- (ATXNotificationSettingsReader)initWithModeConfigurationClient:(id)client notificationSettingsCenter:(id)center
{
  clientCopy = client;
  centerCopy = center;
  v12.receiver = self;
  v12.super_class = ATXNotificationSettingsReader;
  v9 = [(ATXNotificationSettingsReader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modeConfigClient, client);
    objc_storeStrong(&v10->_notificationSettingsCenter, center);
  }

  return v10;
}

- (BOOL)appIsOnAllowList:(id)list dndModeUUID:(id)d
{
  listCopy = list;
  v7 = [(ATXNotificationSettingsReader *)self modeConfiguration:d];
  v8 = v7;
  if (v7)
  {
    configuration = [v7 configuration];
    v10 = [configuration exceptionForApplication:listCopy] == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)appIsOnDenyList:(id)list dndModeUUID:(id)d
{
  listCopy = list;
  v7 = [(ATXNotificationSettingsReader *)self modeConfiguration:d];
  v8 = v7;
  if (v7)
  {
    configuration = [v7 configuration];
    v10 = [configuration exceptionForApplication:listCopy] == 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)contactIsOnAllowList:(id)list dndModeUUID:(id)d
{
  listCopy = list;
  v7 = [(ATXNotificationSettingsReader *)self modeConfiguration:d];
  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setContactIdentifier:listCopy];
    configuration = [v7 configuration];
    v10 = [configuration exceptionForContactHandle:v8] == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)contactIsOnDenyList:(id)list dndModeUUID:(id)d
{
  listCopy = list;
  v7 = [(ATXNotificationSettingsReader *)self modeConfiguration:d];
  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setContactIdentifier:listCopy];
    configuration = [v7 configuration];
    v10 = [configuration exceptionForContactHandle:v8] == 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)modeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v5 = [(ATXDNDModeConfigurationClient *)self->_modeConfigClient modeConfigurationForDNDModeWithUUID:configurationCopy];
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
        [(ATXNotificationSettingsReader *)configurationCopy modeConfiguration:v8];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)applicationConfigurationTypeForDNDModeUUID:(id)d success:(BOOL *)success
{
  v5 = [(ATXNotificationSettingsReader *)self modeConfiguration:d];
  v6 = v5;
  if (v5)
  {
    *success = 1;
    configuration = [v5 configuration];
    applicationConfigurationType = [configuration applicationConfigurationType];
  }

  else
  {
    *success = 0;
    applicationConfigurationType = 2;
  }

  return applicationConfigurationType;
}

- (unint64_t)senderConfigurationTypeForDNDModeUUID:(id)d success:(BOOL *)success
{
  v5 = [(ATXNotificationSettingsReader *)self modeConfiguration:d];
  v6 = v5;
  if (v5)
  {
    *success = 1;
    configuration = [v5 configuration];
    senderConfigurationType = [configuration senderConfigurationType];
  }

  else
  {
    *success = 0;
    senderConfigurationType = 2;
  }

  return senderConfigurationType;
}

- (id)notificationDigestDeliveryTimes
{
  notificationSystemSettings = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSystemSettings];
  if ([notificationSystemSettings scheduledDeliverySetting] == 2)
  {
    scheduledDeliveryTimes = [notificationSystemSettings scheduledDeliveryTimes];
  }

  else
  {
    scheduledDeliveryTimes = MEMORY[0x1E695E0F0];
  }

  return scheduledDeliveryTimes;
}

- (BOOL)digestSetupComplete
{
  notificationSystemSettings = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSystemSettings];
  v3 = [notificationSystemSettings scheduledDeliverySetting] == 2;

  return v3;
}

- (BOOL)doesAppSendNotificationsToDigest:(id)digest
{
  v3 = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSourceWithIdentifier:digest];
  sourceSettings = [v3 sourceSettings];
  notificationSettings = [sourceSettings notificationSettings];

  LOBYTE(sourceSettings) = [notificationSettings scheduledDeliverySetting] == 2;
  return sourceSettings;
}

- (BOOL)doesAppAllowMessageBreakthrough:(id)breakthrough
{
  v3 = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSourceWithIdentifier:breakthrough];
  sourceSettings = [v3 sourceSettings];
  notificationSettings = [sourceSettings notificationSettings];

  LOBYTE(sourceSettings) = [notificationSettings directMessagesSetting] == 2;
  return sourceSettings;
}

- (id)allConfiguredDigestApps
{
  allNotificationSources = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter allNotificationSources];
  v3 = [allNotificationSources _pas_filteredSetWithTest:&__block_literal_global_42];
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
  configuredModes = [(ATXDNDModeConfigurationClient *)self->_modeConfigClient configuredModes];
  v3 = configuredModes;
  if (configuredModes)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(configuredModes, "count")}];
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
  notificationSystemSettings = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSystemSettings];
  v4 = [v2 numberWithInt:{objc_msgSend(notificationSystemSettings, "prioritizationSetting") == 2}];

  return v4;
}

- (id)areSummariesEnabled
{
  v2 = MEMORY[0x1E696AD98];
  notificationSystemSettings = [(UNNotificationSettingsCenter *)self->_notificationSettingsCenter notificationSystemSettings];
  v4 = [v2 numberWithInt:{objc_msgSend(notificationSystemSettings, "summarizationSetting") == 2}];

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