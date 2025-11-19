@interface AXAuditDeviceSettingsManager
- (AXAuditDeviceSettingsManager)init;
- (AXAuditDeviceSettingsManagerDelegate)delegate;
- (id)settingForIdentifier:(id)a3;
- (void)cacheDeviceSettingsValues;
- (void)dealloc;
- (void)resetToDefaultAccessibilitySettings;
- (void)restoreDeviceSettingsValues;
- (void)updateSetting:(id)a3 withNumberValue:(id)a4;
@end

@implementation AXAuditDeviceSettingsManager

- (AXAuditDeviceSettingsManager)init
{
  v5.receiver = self;
  v5.super_class = AXAuditDeviceSettingsManager;
  v2 = [(AXAuditDeviceSettingsManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXAuditDeviceSettingsManager *)v2 updateCurrentValueForAllSettingsAndPostNotificationIfChanged:1];
  }

  return v3;
}

- (void)dealloc
{
  [(AXAuditDeviceSettingsManager *)self stopObservingChanges];
  v3.receiver = self;
  v3.super_class = AXAuditDeviceSettingsManager;
  [(AXAuditDeviceSettingsManager *)&v3 dealloc];
}

- (void)cacheDeviceSettingsValues
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(AXAuditDeviceSettingsManager *)self settingsToCache];
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) copy];
        [(AXAuditDeviceSettingsManager *)self updateCurrentValueForSetting:v10 postNotificationIfChanged:0];
        v11 = [v10 copy];
        [v4 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(AXAuditDeviceSettingsManager *)self set_cachedSettings:v4];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)restoreDeviceSettingsValues
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(AXAuditDeviceSettingsManager *)self deviceSettingsCanBeRestored])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(AXAuditDeviceSettingsManager *)self _cachedSettings];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = [v8 currentValueNumber];
          [(AXAuditDeviceSettingsManager *)self updateSetting:v8 withNumberValue:v9];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)settingForIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(AXAuditDeviceSettingsManager *)self settings];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)resetToDefaultAccessibilitySettings
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(AXAuditDeviceSettingsManager *)self defaultSettings];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 currentValueNumber];
        [(AXAuditDeviceSettingsManager *)self updateSetting:v8 withNumberValue:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(AXAuditDeviceSettingsManager *)self cacheDeviceSettingsValues];
  [(AXAuditDeviceSettingsManager *)self updateCurrentValueForAllSettingsAndPostNotificationIfChanged:1];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSetting:(id)a3 withNumberValue:(id)a4
{
  if (![(AXAuditDeviceSettingsManager *)self deviceSettingsCanBeRestored:a3])
  {
    [(AXAuditDeviceSettingsManager *)self cacheDeviceSettingsValues];
  }

  [(AXAuditDeviceSettingsManager *)self setDeviceSettingsCanBeRestored:1];
}

- (AXAuditDeviceSettingsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end