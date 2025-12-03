@interface AMSUserNotificationMetricsEvent
+ (id)_centerForBundleId:(id)id;
+ (id)_propertyValueClassesForKnownProperties;
+ (id)_stringFromInteruptionLevel:(unint64_t)level;
+ (id)eventForBadgingForMetricsDictionary:(id)dictionary bundleID:(id)d;
+ (id)eventForContentEngagementWithNotification:(id)notification;
+ (id)eventForPostedNotification:(id)notification;
+ (id)eventForSettingsChangedWithSettings:(id)settings bundleID:(id)d account:(id)account;
+ (id)eventForVideoPlaybackForNotification:(id)notification;
+ (id)eventFromMetricsDictionary:(id)dictionary centerBundleId:(id)id;
+ (id)eventFromNotificationCenterSettings:(id)settings centerBundleId:(id)id;
- (AMSUserNotificationMetricsEvent)initWithTopic:(id)topic settings:(id)settings notificationSettingsForTopic:(id)forTopic centerBundleId:(id)id;
- (BOOL)postedSuccessfully;
- (id)_createDisplayCriteriaFromSettings:(id)settings;
- (id)_stringFromNotificationSetting:(int64_t)setting;
- (void)setPostedSuccessfully:(BOOL)successfully;
@end

@implementation AMSUserNotificationMetricsEvent

- (AMSUserNotificationMetricsEvent)initWithTopic:(id)topic settings:(id)settings notificationSettingsForTopic:(id)forTopic centerBundleId:(id)id
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  forTopicCopy = forTopic;
  idCopy = id;
  v36.receiver = self;
  v36.super_class = AMSUserNotificationMetricsEvent;
  v13 = [(AMSMetricsEvent *)&v36 initWithTopic:topic];
  v14 = v13;
  if (v13)
  {
    if (idCopy)
    {
      [(AMSMetricsEvent *)v13 setProperty:idCopy forBodyKey:@"app"];
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (settingsCopy)
    {
      [(AMSMetricsEvent *)v14 setEventVersion:&unk_1F0779B68];
      v16 = [(AMSUserNotificationMetricsEvent *)v14 _createDisplayCriteriaFromSettings:settingsCopy];
      [v15 addEntriesFromDictionary:v16];

      if (forTopicCopy)
      {
        if ([forTopicCopy count])
        {
          v29 = v15;
          v30 = idCopy;
          v31 = settingsCopy;
          v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          keyEnumerator = [forTopicCopy keyEnumerator];
          v19 = [keyEnumerator countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v33;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v33 != v21)
                {
                  objc_enumerationMutation(keyEnumerator);
                }

                v23 = *(*(&v32 + 1) + 8 * i);
                v24 = [forTopicCopy objectForKeyedSubscript:v23];
                v25 = [(AMSUserNotificationMetricsEvent *)v14 _createDisplayCriteriaFromSettings:v24];
                [v17 setObject:v25 forKeyedSubscript:v23];
              }

              v20 = [keyEnumerator countByEnumeratingWithState:&v32 objects:v37 count:16];
            }

            while (v20);
          }

          v15 = v29;
          [v29 setObject:v17 forKeyedSubscript:@"subsections"];

          idCopy = v30;
          settingsCopy = v31;
        }
      }
    }

    v26 = [AMSRestrictions explicitContentSettingForBundleID:idCopy];
    if (v26 != -1)
    {
      if (v26 == 1)
      {
        v27 = @"explicit";
      }

      else
      {
        v27 = @"clean";
      }

      [v15 setObject:v27 forKeyedSubscript:@"explicitEnabled"];
    }

    [(AMSMetricsEvent *)v14 setProperty:v15 forBodyKey:@"displayCriteria"];
  }

  return v14;
}

+ (id)eventForBadgingForMetricsDictionary:(id)dictionary bundleID:(id)d
{
  v4 = [self eventFromMetricsDictionary:dictionary centerBundleId:d];
  [v4 setCheckDiagnosticsAndUsageSetting:1];
  [v4 setEventType:@"badgeRequest"];

  return v4;
}

+ (id)eventForPostedNotification:(id)notification
{
  notificationCopy = notification;
  metricsEvent = [notificationCopy metricsEvent];
  centerBundleIdentifier = [notificationCopy centerBundleIdentifier];
  v7 = [self eventFromMetricsDictionary:metricsEvent centerBundleId:centerBundleIdentifier];

  interruptionLevel = [notificationCopy interruptionLevel];
  v9 = [self _stringFromInteruptionLevel:interruptionLevel];
  [v7 setProperty:v9 forBodyKey:@"interruptionLevel"];

  return v7;
}

+ (id)eventForContentEngagementWithNotification:(id)notification
{
  notificationCopy = notification;
  metricsEvent = [notificationCopy metricsEvent];
  centerBundleIdentifier = [notificationCopy centerBundleIdentifier];
  v7 = [self eventFromMetricsDictionary:metricsEvent centerBundleId:centerBundleIdentifier];

  [v7 setProperty:@"longpress" forBodyKey:@"gestureType"];
  [v7 setProperty:@"navigate" forBodyKey:@"actionType"];
  [v7 setProperty:@"notification" forBodyKey:@"targetType"];
  interruptionLevel = [notificationCopy interruptionLevel];

  v9 = [self _stringFromInteruptionLevel:interruptionLevel];
  [v7 setProperty:v9 forBodyKey:@"interruptionLevel"];

  v10 = [v7 propertyForBodyKey:@"displayCriteria"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v15 = v14;

  [v7 setProperty:v15 forBodyKey:@"displayCriteria"];

  return v7;
}

+ (id)eventForSettingsChangedWithSettings:(id)settings bundleID:(id)d account:(id)account
{
  accountCopy = account;
  v8 = [AMSUserNotificationMetricsEvent eventFromNotificationCenterSettings:settings centerBundleId:d];
  [v8 setProperty:@"Settings" forBodyKey:@"pageType"];
  [v8 setProperty:@"Notifications" forBodyKey:@"pageContext"];
  [v8 setEventType:@"click"];
  if (accountCopy)
  {
    if (([accountCopy ams_isLocalAccount] & 1) == 0)
    {
      ams_DSID = [accountCopy ams_DSID];

      if (ams_DSID)
      {
        ams_DSID2 = [accountCopy ams_DSID];
        [v8 setProperty:ams_DSID2 forBodyKey:@"dsId"];
      }
    }
  }

  return v8;
}

+ (id)eventForVideoPlaybackForNotification:(id)notification
{
  notificationCopy = notification;
  metricsEvent = [notificationCopy metricsEvent];
  centerBundleIdentifier = [notificationCopy centerBundleIdentifier];

  v7 = [self eventFromMetricsDictionary:metricsEvent centerBundleId:centerBundleIdentifier];

  [v7 setProperty:@"notification" forBodyKey:@"actionContext"];
  [v7 setProperty:@"play" forBodyKey:@"actionType"];
  [v7 setProperty:@"play" forBodyKey:@"targetId"];
  [v7 setProperty:@"button" forBodyKey:@"targetType"];

  return v7;
}

+ (id)eventFromMetricsDictionary:(id)dictionary centerBundleId:(id)id
{
  dictionaryCopy = dictionary;
  idCopy = id;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"topic"];
  v8 = [AMSUserNotificationMetricsEvent _centerForBundleId:idCopy];
  notificationSettings = [v8 notificationSettings];
  notificationSettingsForTopics = [v8 notificationSettingsForTopics];
  v11 = [[AMSUserNotificationMetricsEvent alloc] initWithTopic:v7 settings:notificationSettings notificationSettingsForTopic:notificationSettingsForTopics centerBundleId:idCopy];

  if (dictionaryCopy)
  {
    [(AMSMetricsEvent *)v11 addPropertiesWithDictionary:dictionaryCopy];
  }

  return v11;
}

+ (id)eventFromNotificationCenterSettings:(id)settings centerBundleId:(id)id
{
  idCopy = id;
  settingsCopy = settings;
  v7 = [AMSUserNotificationMetricsEvent _centerForBundleId:idCopy];
  notificationSettingsForTopics = [v7 notificationSettingsForTopics];
  v9 = [[AMSUserNotificationMetricsEvent alloc] initWithTopic:@"xp_amp_notifications" settings:settingsCopy notificationSettingsForTopic:notificationSettingsForTopics centerBundleId:idCopy];

  return v9;
}

- (BOOL)postedSuccessfully
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"postedSuccessfully"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setPostedSuccessfully:(BOOL)successfully
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:successfully];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"postedSuccessfully"];
}

+ (id)_centerForBundleId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    v4 = +[AMSProcessInfo currentProcess];
    bundleIdentifier = [v4 bundleIdentifier];
    v6 = [idCopy isEqualToString:bundleIdentifier];

    if (v6)
    {
      currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
    }

    else
    {
      currentNotificationCenter = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:idCopy];
    }

    v8 = currentNotificationCenter;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_createDisplayCriteriaFromSettings:(id)settings
{
  settingsCopy = settings;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [settingsCopy alertSetting]);
  [v5 setObject:v6 forKeyedSubscript:@"alertSetting"];

  v7 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [settingsCopy badgeSetting]);
  [v5 setObject:v7 forKeyedSubscript:@"badgeSetting"];

  v8 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [settingsCopy carPlaySetting]);
  [v5 setObject:v8 forKeyedSubscript:@"carPlaySetting"];

  v9 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [settingsCopy criticalAlertSetting]);
  [v5 setObject:v9 forKeyedSubscript:@"criticalAlertSetting"];

  v10 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [settingsCopy directMessagesSetting]);
  [v5 setObject:v10 forKeyedSubscript:@"directMessagesSetting"];

  v11 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [settingsCopy lockScreenSetting]);
  [v5 setObject:v11 forKeyedSubscript:@"lockScreenSetting"];

  v12 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [settingsCopy notificationCenterSetting]);
  [v5 setObject:v12 forKeyedSubscript:@"notificationCenterSetting"];

  v13 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [settingsCopy scheduledDeliverySetting]);
  [v5 setObject:v13 forKeyedSubscript:@"scheduledDeliverySetting"];

  v14 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [settingsCopy soundSetting]);
  [v5 setObject:v14 forKeyedSubscript:@"soundSetting"];

  v15 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [settingsCopy timeSensitiveSetting]);
  [v5 setObject:v15 forKeyedSubscript:@"timeSensitiveSetting"];

  alertStyle = [settingsCopy alertStyle];
  if (alertStyle > 2)
  {
    v17 = &stru_1F071BA78;
  }

  else
  {
    v17 = off_1E73BDFE8[alertStyle];
  }

  [v5 setObject:v17 forKeyedSubscript:@"alertStyle"];
  authorizationStatus = [settingsCopy authorizationStatus];
  if (authorizationStatus > 4)
  {
    v19 = &stru_1F071BA78;
  }

  else
  {
    v19 = off_1E73BE000[authorizationStatus];
  }

  [v5 setObject:v19 forKeyedSubscript:@"authorizationStatus"];
  groupingSetting = [settingsCopy groupingSetting];
  if (groupingSetting > 2)
  {
    v21 = &stru_1F071BA78;
  }

  else
  {
    v21 = off_1E73BE028[groupingSetting];
  }

  [v5 setObject:v21 forKeyedSubscript:@"groupingSetting"];
  if ([settingsCopy providesAppNotificationSettings])
  {
    v22 = @"yes";
  }

  else
  {
    v22 = @"no";
  }

  [v5 setObject:v22 forKeyedSubscript:@"providesAppNotificationSettings"];
  showPreviewsSetting = [settingsCopy showPreviewsSetting];
  if (showPreviewsSetting > 2)
  {
    v24 = &stru_1F071BA78;
  }

  else
  {
    v24 = off_1E73BE040[showPreviewsSetting];
  }

  [v5 setObject:v24 forKeyedSubscript:@"showPreviewsSetting"];

  return v5;
}

+ (id)_stringFromInteruptionLevel:(unint64_t)level
{
  if (level - 1 > 2)
  {
    return @"passive";
  }

  else
  {
    return off_1E73BE058[level - 1];
  }
}

- (id)_stringFromNotificationSetting:(int64_t)setting
{
  if (setting > 2)
  {
    return &stru_1F071BA78;
  }

  else
  {
    return off_1E73BE070[setting];
  }
}

+ (id)_propertyValueClassesForKnownProperties
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"errorDescription";
  v9[0] = objc_opt_class();
  v8[1] = @"postedSuccessfully";
  v9[1] = objc_opt_class();
  v8[2] = @"displayScheduledTime";
  v9[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v4 = [v3 mutableCopy];

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___AMSUserNotificationMetricsEvent;
  v5 = objc_msgSendSuper2(&v7, sel__propertyValueClassesForKnownProperties);
  [v4 addEntriesFromDictionary:v5];

  return v4;
}

@end