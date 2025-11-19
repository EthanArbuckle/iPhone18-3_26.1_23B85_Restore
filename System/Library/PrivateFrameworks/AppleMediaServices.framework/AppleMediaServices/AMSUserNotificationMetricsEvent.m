@interface AMSUserNotificationMetricsEvent
+ (id)_centerForBundleId:(id)a3;
+ (id)_propertyValueClassesForKnownProperties;
+ (id)_stringFromInteruptionLevel:(unint64_t)a3;
+ (id)eventForBadgingForMetricsDictionary:(id)a3 bundleID:(id)a4;
+ (id)eventForContentEngagementWithNotification:(id)a3;
+ (id)eventForPostedNotification:(id)a3;
+ (id)eventForSettingsChangedWithSettings:(id)a3 bundleID:(id)a4 account:(id)a5;
+ (id)eventForVideoPlaybackForNotification:(id)a3;
+ (id)eventFromMetricsDictionary:(id)a3 centerBundleId:(id)a4;
+ (id)eventFromNotificationCenterSettings:(id)a3 centerBundleId:(id)a4;
- (AMSUserNotificationMetricsEvent)initWithTopic:(id)a3 settings:(id)a4 notificationSettingsForTopic:(id)a5 centerBundleId:(id)a6;
- (BOOL)postedSuccessfully;
- (id)_createDisplayCriteriaFromSettings:(id)a3;
- (id)_stringFromNotificationSetting:(int64_t)a3;
- (void)setPostedSuccessfully:(BOOL)a3;
@end

@implementation AMSUserNotificationMetricsEvent

- (AMSUserNotificationMetricsEvent)initWithTopic:(id)a3 settings:(id)a4 notificationSettingsForTopic:(id)a5 centerBundleId:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v36.receiver = self;
  v36.super_class = AMSUserNotificationMetricsEvent;
  v13 = [(AMSMetricsEvent *)&v36 initWithTopic:a3];
  v14 = v13;
  if (v13)
  {
    if (v12)
    {
      [(AMSMetricsEvent *)v13 setProperty:v12 forBodyKey:@"app"];
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v10)
    {
      [(AMSMetricsEvent *)v14 setEventVersion:&unk_1F0779B68];
      v16 = [(AMSUserNotificationMetricsEvent *)v14 _createDisplayCriteriaFromSettings:v10];
      [v15 addEntriesFromDictionary:v16];

      if (v11)
      {
        if ([v11 count])
        {
          v29 = v15;
          v30 = v12;
          v31 = v10;
          v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v18 = [v11 keyEnumerator];
          v19 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v32 + 1) + 8 * i);
                v24 = [v11 objectForKeyedSubscript:v23];
                v25 = [(AMSUserNotificationMetricsEvent *)v14 _createDisplayCriteriaFromSettings:v24];
                [v17 setObject:v25 forKeyedSubscript:v23];
              }

              v20 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
            }

            while (v20);
          }

          v15 = v29;
          [v29 setObject:v17 forKeyedSubscript:@"subsections"];

          v12 = v30;
          v10 = v31;
        }
      }
    }

    v26 = [AMSRestrictions explicitContentSettingForBundleID:v12];
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

+ (id)eventForBadgingForMetricsDictionary:(id)a3 bundleID:(id)a4
{
  v4 = [a1 eventFromMetricsDictionary:a3 centerBundleId:a4];
  [v4 setCheckDiagnosticsAndUsageSetting:1];
  [v4 setEventType:@"badgeRequest"];

  return v4;
}

+ (id)eventForPostedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 metricsEvent];
  v6 = [v4 centerBundleIdentifier];
  v7 = [a1 eventFromMetricsDictionary:v5 centerBundleId:v6];

  v8 = [v4 interruptionLevel];
  v9 = [a1 _stringFromInteruptionLevel:v8];
  [v7 setProperty:v9 forBodyKey:@"interruptionLevel"];

  return v7;
}

+ (id)eventForContentEngagementWithNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 metricsEvent];
  v6 = [v4 centerBundleIdentifier];
  v7 = [a1 eventFromMetricsDictionary:v5 centerBundleId:v6];

  [v7 setProperty:@"longpress" forBodyKey:@"gestureType"];
  [v7 setProperty:@"navigate" forBodyKey:@"actionType"];
  [v7 setProperty:@"notification" forBodyKey:@"targetType"];
  v8 = [v4 interruptionLevel];

  v9 = [a1 _stringFromInteruptionLevel:v8];
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

+ (id)eventForSettingsChangedWithSettings:(id)a3 bundleID:(id)a4 account:(id)a5
{
  v7 = a5;
  v8 = [AMSUserNotificationMetricsEvent eventFromNotificationCenterSettings:a3 centerBundleId:a4];
  [v8 setProperty:@"Settings" forBodyKey:@"pageType"];
  [v8 setProperty:@"Notifications" forBodyKey:@"pageContext"];
  [v8 setEventType:@"click"];
  if (v7)
  {
    if (([v7 ams_isLocalAccount] & 1) == 0)
    {
      v9 = [v7 ams_DSID];

      if (v9)
      {
        v10 = [v7 ams_DSID];
        [v8 setProperty:v10 forBodyKey:@"dsId"];
      }
    }
  }

  return v8;
}

+ (id)eventForVideoPlaybackForNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 metricsEvent];
  v6 = [v4 centerBundleIdentifier];

  v7 = [a1 eventFromMetricsDictionary:v5 centerBundleId:v6];

  [v7 setProperty:@"notification" forBodyKey:@"actionContext"];
  [v7 setProperty:@"play" forBodyKey:@"actionType"];
  [v7 setProperty:@"play" forBodyKey:@"targetId"];
  [v7 setProperty:@"button" forBodyKey:@"targetType"];

  return v7;
}

+ (id)eventFromMetricsDictionary:(id)a3 centerBundleId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"topic"];
  v8 = [AMSUserNotificationMetricsEvent _centerForBundleId:v6];
  v9 = [v8 notificationSettings];
  v10 = [v8 notificationSettingsForTopics];
  v11 = [[AMSUserNotificationMetricsEvent alloc] initWithTopic:v7 settings:v9 notificationSettingsForTopic:v10 centerBundleId:v6];

  if (v5)
  {
    [(AMSMetricsEvent *)v11 addPropertiesWithDictionary:v5];
  }

  return v11;
}

+ (id)eventFromNotificationCenterSettings:(id)a3 centerBundleId:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [AMSUserNotificationMetricsEvent _centerForBundleId:v5];
  v8 = [v7 notificationSettingsForTopics];
  v9 = [[AMSUserNotificationMetricsEvent alloc] initWithTopic:@"xp_amp_notifications" settings:v6 notificationSettingsForTopic:v8 centerBundleId:v5];

  return v9;
}

- (BOOL)postedSuccessfully
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"postedSuccessfully"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setPostedSuccessfully:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"postedSuccessfully"];
}

+ (id)_centerForBundleId:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[AMSProcessInfo currentProcess];
    v5 = [v4 bundleIdentifier];
    v6 = [v3 isEqualToString:v5];

    if (v6)
    {
      v7 = [MEMORY[0x1E6983308] currentNotificationCenter];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:v3];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_createDisplayCriteriaFromSettings:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 alertSetting]);
  [v5 setObject:v6 forKeyedSubscript:@"alertSetting"];

  v7 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 badgeSetting]);
  [v5 setObject:v7 forKeyedSubscript:@"badgeSetting"];

  v8 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 carPlaySetting]);
  [v5 setObject:v8 forKeyedSubscript:@"carPlaySetting"];

  v9 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 criticalAlertSetting]);
  [v5 setObject:v9 forKeyedSubscript:@"criticalAlertSetting"];

  v10 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 directMessagesSetting]);
  [v5 setObject:v10 forKeyedSubscript:@"directMessagesSetting"];

  v11 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 lockScreenSetting]);
  [v5 setObject:v11 forKeyedSubscript:@"lockScreenSetting"];

  v12 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 notificationCenterSetting]);
  [v5 setObject:v12 forKeyedSubscript:@"notificationCenterSetting"];

  v13 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 scheduledDeliverySetting]);
  [v5 setObject:v13 forKeyedSubscript:@"scheduledDeliverySetting"];

  v14 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 soundSetting]);
  [v5 setObject:v14 forKeyedSubscript:@"soundSetting"];

  v15 = -[AMSUserNotificationMetricsEvent _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 timeSensitiveSetting]);
  [v5 setObject:v15 forKeyedSubscript:@"timeSensitiveSetting"];

  v16 = [v4 alertStyle];
  if (v16 > 2)
  {
    v17 = &stru_1F071BA78;
  }

  else
  {
    v17 = off_1E73BDFE8[v16];
  }

  [v5 setObject:v17 forKeyedSubscript:@"alertStyle"];
  v18 = [v4 authorizationStatus];
  if (v18 > 4)
  {
    v19 = &stru_1F071BA78;
  }

  else
  {
    v19 = off_1E73BE000[v18];
  }

  [v5 setObject:v19 forKeyedSubscript:@"authorizationStatus"];
  v20 = [v4 groupingSetting];
  if (v20 > 2)
  {
    v21 = &stru_1F071BA78;
  }

  else
  {
    v21 = off_1E73BE028[v20];
  }

  [v5 setObject:v21 forKeyedSubscript:@"groupingSetting"];
  if ([v4 providesAppNotificationSettings])
  {
    v22 = @"yes";
  }

  else
  {
    v22 = @"no";
  }

  [v5 setObject:v22 forKeyedSubscript:@"providesAppNotificationSettings"];
  v23 = [v4 showPreviewsSetting];
  if (v23 > 2)
  {
    v24 = &stru_1F071BA78;
  }

  else
  {
    v24 = off_1E73BE040[v23];
  }

  [v5 setObject:v24 forKeyedSubscript:@"showPreviewsSetting"];

  return v5;
}

+ (id)_stringFromInteruptionLevel:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"passive";
  }

  else
  {
    return off_1E73BE058[a3 - 1];
  }
}

- (id)_stringFromNotificationSetting:(int64_t)a3
{
  if (a3 > 2)
  {
    return &stru_1F071BA78;
  }

  else
  {
    return off_1E73BE070[a3];
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

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___AMSUserNotificationMetricsEvent;
  v5 = objc_msgSendSuper2(&v7, sel__propertyValueClassesForKnownProperties);
  [v4 addEntriesFromDictionary:v5];

  return v4;
}

@end