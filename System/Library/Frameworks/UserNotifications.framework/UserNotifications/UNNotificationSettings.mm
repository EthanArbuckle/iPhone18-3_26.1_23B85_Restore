@interface UNNotificationSettings
+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)status soundSetting:(int64_t)setting badgeSetting:(int64_t)badgeSetting alertSetting:(int64_t)alertSetting notificationCenterSetting:(int64_t)centerSetting lockScreenSetting:(int64_t)screenSetting carPlaySetting:(int64_t)playSetting remoteNotificationsSetting:(int64_t)self0 announcementSetting:(int64_t)self1 criticalAlertSetting:(int64_t)self2 timeSensitiveSetting:(int64_t)self3 scheduledDeliverySetting:(int64_t)self4 directMessagesSetting:(int64_t)self5 alertStyle:(int64_t)self6 showPreviewsSetting:(int64_t)self7 groupingSetting:(int64_t)self8 providesAppNotificationSettings:(BOOL)self9;
+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)status soundSetting:(int64_t)setting badgeSetting:(int64_t)badgeSetting alertSetting:(int64_t)alertSetting notificationCenterSetting:(int64_t)centerSetting lockScreenSetting:(int64_t)screenSetting carPlaySetting:(int64_t)playSetting remoteNotificationsSetting:(int64_t)self0 announcementSetting:(int64_t)self1 criticalAlertSetting:(int64_t)self2 timeSensitiveSetting:(int64_t)self3 scheduledDeliverySetting:(int64_t)self4 directMessagesSetting:(int64_t)self5 summarizationSetting:(int64_t)self6 alertStyle:(int64_t)self7 showPreviewsSetting:(int64_t)self8 groupingSetting:(int64_t)self9 providesAppNotificationSettings:(BOOL)settings;
+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)status soundSetting:(int64_t)setting badgeSetting:(int64_t)badgeSetting alertSetting:(int64_t)alertSetting notificationCenterSetting:(int64_t)centerSetting lockScreenSetting:(int64_t)screenSetting carPlaySetting:(int64_t)playSetting remoteNotificationsSetting:(int64_t)self0 announcementSetting:(int64_t)self1 criticalAlertSetting:(int64_t)self2 timeSensitiveSetting:(int64_t)self3 scheduledDeliverySetting:(int64_t)self4 directMessagesSetting:(int64_t)self5 summarizationSetting:(int64_t)self6 prioritizationSetting:(int64_t)self7 alertStyle:(int64_t)self8 showPreviewsSetting:(int64_t)self9 groupingSetting:(int64_t)groupingSetting providesAppNotificationSettings:(BOOL)settings;
+ (id)emptySettings;
- (BOOL)isEligibleForIndexing;
- (BOOL)isEqual:(id)equal;
- (UNNotificationSettings)initWithAuthorizationStatus:(int64_t)status soundSetting:(int64_t)setting badgeSetting:(int64_t)badgeSetting alertSetting:(int64_t)alertSetting notificationCenterSetting:(int64_t)centerSetting lockScreenSetting:(int64_t)screenSetting carPlaySetting:(int64_t)playSetting remoteNotificationsSetting:(int64_t)self0 announcementSetting:(int64_t)self1 criticalAlertSetting:(int64_t)self2 timeSensitiveSetting:(int64_t)self3 scheduledDeliverySetting:(int64_t)self4 directMessagesSetting:(int64_t)self5 summarizationSetting:(int64_t)self6 prioritizationSetting:(int64_t)self7 alertStyle:(int64_t)self8 showPreviewsSetting:(int64_t)self9 groupingSetting:(int64_t)groupingSetting providesAppNotificationSettings:(BOOL)settings;
- (UNNotificationSettings)initWithCoder:(id)coder;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationSettings

- (id)description
{
  v45 = MEMORY[0x1E696AEC0];
  v44 = objc_opt_class();
  authorizationStatus = [(UNNotificationSettings *)self authorizationStatus];
  if (authorizationStatus > UNAuthorizationStatusEphemeral)
  {
    v43 = 0;
  }

  else
  {
    v43 = off_1E7CFF770[authorizationStatus];
  }

  notificationCenterSetting = [(UNNotificationSettings *)self notificationCenterSetting];
  if (notificationCenterSetting > UNNotificationSettingEnabled)
  {
    v42 = 0;
  }

  else
  {
    v42 = off_1E7CFF798[notificationCenterSetting];
  }

  soundSetting = [(UNNotificationSettings *)self soundSetting];
  if (soundSetting > UNNotificationSettingEnabled)
  {
    v41 = 0;
  }

  else
  {
    v41 = off_1E7CFF798[soundSetting];
  }

  badgeSetting = [(UNNotificationSettings *)self badgeSetting];
  if (badgeSetting > UNNotificationSettingEnabled)
  {
    v40 = 0;
  }

  else
  {
    v40 = off_1E7CFF798[badgeSetting];
  }

  lockScreenSetting = [(UNNotificationSettings *)self lockScreenSetting];
  if (lockScreenSetting > UNNotificationSettingEnabled)
  {
    v39 = 0;
  }

  else
  {
    v39 = off_1E7CFF798[lockScreenSetting];
  }

  carPlaySetting = [(UNNotificationSettings *)self carPlaySetting];
  if (carPlaySetting > UNNotificationSettingEnabled)
  {
    v38 = 0;
  }

  else
  {
    v38 = off_1E7CFF798[carPlaySetting];
  }

  remoteNotificationsSetting = [(UNNotificationSettings *)self remoteNotificationsSetting];
  if (remoteNotificationsSetting > 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = off_1E7CFF798[remoteNotificationsSetting];
  }

  announcementSetting = [(UNNotificationSettings *)self announcementSetting];
  if (announcementSetting > UNNotificationSettingEnabled)
  {
    v36 = 0;
  }

  else
  {
    v36 = off_1E7CFF798[announcementSetting];
  }

  criticalAlertSetting = [(UNNotificationSettings *)self criticalAlertSetting];
  if (criticalAlertSetting > UNNotificationSettingEnabled)
  {
    v35 = 0;
  }

  else
  {
    v35 = off_1E7CFF798[criticalAlertSetting];
  }

  timeSensitiveSetting = [(UNNotificationSettings *)self timeSensitiveSetting];
  if (timeSensitiveSetting > UNNotificationSettingEnabled)
  {
    v34 = 0;
  }

  else
  {
    v34 = off_1E7CFF798[timeSensitiveSetting];
  }

  alertSetting = [(UNNotificationSettings *)self alertSetting];
  if (alertSetting > UNNotificationSettingEnabled)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_1E7CFF798[alertSetting];
  }

  scheduledDeliverySetting = [(UNNotificationSettings *)self scheduledDeliverySetting];
  if (scheduledDeliverySetting > UNNotificationSettingEnabled)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_1E7CFF798[scheduledDeliverySetting];
  }

  directMessagesSetting = [(UNNotificationSettings *)self directMessagesSetting];
  if (directMessagesSetting > UNNotificationSettingEnabled)
  {
    v18 = 0;
  }

  else
  {
    v18 = off_1E7CFF798[directMessagesSetting];
  }

  summarizationSetting = [(UNNotificationSettings *)self summarizationSetting];
  if (summarizationSetting > 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = off_1E7CFF798[summarizationSetting];
  }

  prioritizationSetting = [(UNNotificationSettings *)self prioritizationSetting];
  if (prioritizationSetting > 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = off_1E7CFF798[prioritizationSetting];
  }

  showPreviewsSetting = [(UNNotificationSettings *)self showPreviewsSetting];
  if (showPreviewsSetting > UNShowPreviewsSettingNever)
  {
    v24 = 0;
  }

  else
  {
    v24 = off_1E7CFF7B0[showPreviewsSetting];
  }

  alertStyle = [(UNNotificationSettings *)self alertStyle];
  if (alertStyle > UNAlertStyleAlert)
  {
    v26 = 0;
  }

  else
  {
    v26 = off_1E7CFF7C8[alertStyle];
  }

  groupingSetting = [(UNNotificationSettings *)self groupingSetting];
  if (groupingSetting > 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = off_1E7CFF7E0[groupingSetting];
  }

  providesAppNotificationSettings = [(UNNotificationSettings *)self providesAppNotificationSettings];
  v30 = @"No";
  if (providesAppNotificationSettings)
  {
    v30 = @"Yes";
  }

  v31 = v30;
  v32 = [v45 stringWithFormat:@"<%@: %p authorizationStatus: %@, notificationCenterSetting: %@, soundSetting: %@, badgeSetting: %@, lockScreenSetting: %@, carPlaySetting: %@, remoteNotifications: %@, announcementSetting: %@, criticalAlertSetting: %@, timeSensitiveSetting: %@, alertSetting: %@, scheduledDeliverySetting: %@, directMessagesSetting: %@, summarizationSetting: %@, prioritizationSetting: %@, showsPreviewsSetting: %@, alertStyle: %@, groupingSetting: %@ providesAppNotificationSettings: %@>", v44, self, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v14, v16, v18, v20, v22, v24, v26, v28, v31];;

  return v32;
}

+ (id)emptySettings
{
  LOBYTE(v4) = 0;
  v2 = [objc_alloc(objc_opt_class()) initWithAuthorizationStatus:0 soundSetting:0 badgeSetting:0 alertSetting:0 notificationCenterSetting:0 lockScreenSetting:0 carPlaySetting:0 remoteNotificationsSetting:0 announcementSetting:0 criticalAlertSetting:0 timeSensitiveSetting:0 scheduledDeliverySetting:0 directMessagesSetting:0 summarizationSetting:0 prioritizationSetting:0 alertStyle:0 showPreviewsSetting:0 groupingSetting:0 providesAppNotificationSettings:v4];

  return v2;
}

+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)status soundSetting:(int64_t)setting badgeSetting:(int64_t)badgeSetting alertSetting:(int64_t)alertSetting notificationCenterSetting:(int64_t)centerSetting lockScreenSetting:(int64_t)screenSetting carPlaySetting:(int64_t)playSetting remoteNotificationsSetting:(int64_t)self0 announcementSetting:(int64_t)self1 criticalAlertSetting:(int64_t)self2 timeSensitiveSetting:(int64_t)self3 scheduledDeliverySetting:(int64_t)self4 directMessagesSetting:(int64_t)self5 alertStyle:(int64_t)self6 showPreviewsSetting:(int64_t)self7 groupingSetting:(int64_t)self8 providesAppNotificationSettings:(BOOL)self9
{
  LOBYTE(v21) = settings;
  v19 = [objc_alloc(objc_opt_class()) initWithAuthorizationStatus:status soundSetting:setting badgeSetting:badgeSetting alertSetting:alertSetting notificationCenterSetting:centerSetting lockScreenSetting:screenSetting carPlaySetting:playSetting remoteNotificationsSetting:notificationsSetting announcementSetting:announcementSetting criticalAlertSetting:criticalAlertSetting timeSensitiveSetting:sensitiveSetting scheduledDeliverySetting:deliverySetting directMessagesSetting:messagesSetting summarizationSetting:0 prioritizationSetting:0 alertStyle:style showPreviewsSetting:previewsSetting groupingSetting:groupingSetting providesAppNotificationSettings:v21];

  return v19;
}

+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)status soundSetting:(int64_t)setting badgeSetting:(int64_t)badgeSetting alertSetting:(int64_t)alertSetting notificationCenterSetting:(int64_t)centerSetting lockScreenSetting:(int64_t)screenSetting carPlaySetting:(int64_t)playSetting remoteNotificationsSetting:(int64_t)self0 announcementSetting:(int64_t)self1 criticalAlertSetting:(int64_t)self2 timeSensitiveSetting:(int64_t)self3 scheduledDeliverySetting:(int64_t)self4 directMessagesSetting:(int64_t)self5 summarizationSetting:(int64_t)self6 alertStyle:(int64_t)self7 showPreviewsSetting:(int64_t)self8 groupingSetting:(int64_t)self9 providesAppNotificationSettings:(BOOL)settings
{
  LOBYTE(v22) = settings;
  v20 = [objc_alloc(objc_opt_class()) initWithAuthorizationStatus:status soundSetting:setting badgeSetting:badgeSetting alertSetting:alertSetting notificationCenterSetting:centerSetting lockScreenSetting:screenSetting carPlaySetting:playSetting remoteNotificationsSetting:notificationsSetting announcementSetting:announcementSetting criticalAlertSetting:criticalAlertSetting timeSensitiveSetting:sensitiveSetting scheduledDeliverySetting:deliverySetting directMessagesSetting:messagesSetting summarizationSetting:summarizationSetting prioritizationSetting:0 alertStyle:style showPreviewsSetting:previewsSetting groupingSetting:groupingSetting providesAppNotificationSettings:v22];

  return v20;
}

+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)status soundSetting:(int64_t)setting badgeSetting:(int64_t)badgeSetting alertSetting:(int64_t)alertSetting notificationCenterSetting:(int64_t)centerSetting lockScreenSetting:(int64_t)screenSetting carPlaySetting:(int64_t)playSetting remoteNotificationsSetting:(int64_t)self0 announcementSetting:(int64_t)self1 criticalAlertSetting:(int64_t)self2 timeSensitiveSetting:(int64_t)self3 scheduledDeliverySetting:(int64_t)self4 directMessagesSetting:(int64_t)self5 summarizationSetting:(int64_t)self6 prioritizationSetting:(int64_t)self7 alertStyle:(int64_t)self8 showPreviewsSetting:(int64_t)self9 groupingSetting:(int64_t)groupingSetting providesAppNotificationSettings:(BOOL)settings
{
  LOBYTE(v23) = settings;
  v21 = [objc_alloc(objc_opt_class()) initWithAuthorizationStatus:status soundSetting:setting badgeSetting:badgeSetting alertSetting:alertSetting notificationCenterSetting:centerSetting lockScreenSetting:screenSetting carPlaySetting:playSetting remoteNotificationsSetting:notificationsSetting announcementSetting:announcementSetting criticalAlertSetting:criticalAlertSetting timeSensitiveSetting:sensitiveSetting scheduledDeliverySetting:deliverySetting directMessagesSetting:messagesSetting summarizationSetting:summarizationSetting prioritizationSetting:prioritizationSetting alertStyle:style showPreviewsSetting:previewsSetting groupingSetting:groupingSetting providesAppNotificationSettings:v23];

  return v21;
}

- (UNNotificationSettings)initWithAuthorizationStatus:(int64_t)status soundSetting:(int64_t)setting badgeSetting:(int64_t)badgeSetting alertSetting:(int64_t)alertSetting notificationCenterSetting:(int64_t)centerSetting lockScreenSetting:(int64_t)screenSetting carPlaySetting:(int64_t)playSetting remoteNotificationsSetting:(int64_t)self0 announcementSetting:(int64_t)self1 criticalAlertSetting:(int64_t)self2 timeSensitiveSetting:(int64_t)self3 scheduledDeliverySetting:(int64_t)self4 directMessagesSetting:(int64_t)self5 summarizationSetting:(int64_t)self6 prioritizationSetting:(int64_t)self7 alertStyle:(int64_t)self8 showPreviewsSetting:(int64_t)self9 groupingSetting:(int64_t)groupingSetting providesAppNotificationSettings:(BOOL)settings
{
  v28.receiver = self;
  v28.super_class = UNNotificationSettings;
  result = [(UNNotificationSettings *)&v28 init];
  if (result)
  {
    result->_authorizationStatus = status;
    result->_soundSetting = setting;
    result->_badgeSetting = badgeSetting;
    result->_alertSetting = alertSetting;
    result->_notificationCenterSetting = centerSetting;
    result->_lockScreenSetting = screenSetting;
    result->_carPlaySetting = playSetting;
    result->_remoteNotificationsSetting = notificationsSetting;
    result->_showPreviewsSetting = previewsSetting;
    result->_criticalAlertSetting = criticalAlertSetting;
    result->_timeSensitiveSetting = sensitiveSetting;
    result->_scheduledDeliverySetting = deliverySetting;
    result->_directMessagesSetting = messagesSetting;
    result->_summarizationSetting = summarizationSetting;
    result->_prioritizationSetting = prioritizationSetting;
    result->_alertStyle = style;
    result->_announcementSetting = announcementSetting;
    result->_groupingSetting = groupingSetting;
    result->_providesAppNotificationSettings = settings;
  }

  return result;
}

- (unint64_t)hash
{
  v39 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings alertSetting](self, "alertSetting")}];
  v3 = [v39 hash];
  v38 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings alertStyle](self, "alertStyle")}];
  v4 = [v38 hash] ^ v3;
  v37 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings authorizationStatus](self, "authorizationStatus")}];
  v5 = [v37 hash];
  v36 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings badgeSetting](self, "badgeSetting")}];
  v6 = v4 ^ v5 ^ [v36 hash];
  v35 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings carPlaySetting](self, "carPlaySetting")}];
  v7 = [v35 hash];
  v34 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings remoteNotificationsSetting](self, "remoteNotificationsSetting")}];
  v8 = v7 ^ [v34 hash];
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings announcementSetting](self, "announcementSetting")}];
  v9 = v6 ^ v8 ^ [v33 hash];
  v32 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings criticalAlertSetting](self, "criticalAlertSetting")}];
  v10 = [v32 hash];
  v31 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings timeSensitiveSetting](self, "timeSensitiveSetting")}];
  v11 = v10 ^ [v31 hash];
  v30 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings lockScreenSetting](self, "lockScreenSetting")}];
  v12 = v11 ^ [v30 hash];
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings notificationCenterSetting](self, "notificationCenterSetting")}];
  v13 = v9 ^ v12 ^ [v29 hash];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings soundSetting](self, "soundSetting")}];
  v15 = [v14 hash];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings groupingSetting](self, "groupingSetting")}];
  v17 = v15 ^ [v16 hash];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings scheduledDeliverySetting](self, "scheduledDeliverySetting")}];
  v19 = v17 ^ [v18 hash];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings directMessagesSetting](self, "directMessagesSetting")}];
  v21 = v19 ^ [v20 hash];
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings summarizationSetting](self, "summarizationSetting")}];
  v28 = v13 ^ v21 ^ [v22 hash];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UNNotificationSettings prioritizationSetting](self, "prioritizationSetting")}];
  v24 = [v23 hash];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNNotificationSettings providesAppNotificationSettings](self, "providesAppNotificationSettings")}];
  v26 = v24 ^ [v25 hash];

  return v28 ^ v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  alertSetting = [(UNNotificationSettings *)self alertSetting];
  if (alertSetting != [equalCopy alertSetting])
  {
    goto LABEL_20;
  }

  alertStyle = [(UNNotificationSettings *)self alertStyle];
  if (alertStyle != [equalCopy alertStyle])
  {
    goto LABEL_20;
  }

  authorizationStatus = [(UNNotificationSettings *)self authorizationStatus];
  if (authorizationStatus != [equalCopy authorizationStatus])
  {
    goto LABEL_20;
  }

  badgeSetting = [(UNNotificationSettings *)self badgeSetting];
  if (badgeSetting != [equalCopy badgeSetting])
  {
    goto LABEL_20;
  }

  carPlaySetting = [(UNNotificationSettings *)self carPlaySetting];
  if (carPlaySetting != [equalCopy carPlaySetting])
  {
    goto LABEL_20;
  }

  remoteNotificationsSetting = [(UNNotificationSettings *)self remoteNotificationsSetting];
  if (remoteNotificationsSetting != [equalCopy remoteNotificationsSetting])
  {
    goto LABEL_20;
  }

  announcementSetting = [(UNNotificationSettings *)self announcementSetting];
  if (announcementSetting != [equalCopy announcementSetting])
  {
    goto LABEL_20;
  }

  lockScreenSetting = [(UNNotificationSettings *)self lockScreenSetting];
  if (lockScreenSetting != [equalCopy lockScreenSetting])
  {
    goto LABEL_20;
  }

  notificationCenterSetting = [(UNNotificationSettings *)self notificationCenterSetting];
  if (notificationCenterSetting != [equalCopy notificationCenterSetting])
  {
    goto LABEL_20;
  }

  soundSetting = [(UNNotificationSettings *)self soundSetting];
  if (soundSetting != [equalCopy soundSetting])
  {
    goto LABEL_20;
  }

  groupingSetting = [(UNNotificationSettings *)self groupingSetting];
  if (groupingSetting == [equalCopy groupingSetting] && (v16 = -[UNNotificationSettings providesAppNotificationSettings](self, "providesAppNotificationSettings"), v16 == objc_msgSend(equalCopy, "providesAppNotificationSettings")) && (v17 = -[UNNotificationSettings criticalAlertSetting](self, "criticalAlertSetting"), v17 == objc_msgSend(equalCopy, "criticalAlertSetting")) && (v18 = -[UNNotificationSettings timeSensitiveSetting](self, "timeSensitiveSetting"), v18 == objc_msgSend(equalCopy, "timeSensitiveSetting")) && (v19 = -[UNNotificationSettings scheduledDeliverySetting](self, "scheduledDeliverySetting"), v19 == objc_msgSend(equalCopy, "scheduledDeliverySetting")) && (v20 = -[UNNotificationSettings directMessagesSetting](self, "directMessagesSetting"), v20 == objc_msgSend(equalCopy, "directMessagesSetting")) && (v21 = -[UNNotificationSettings summarizationSetting](self, "summarizationSetting"), v21 == objc_msgSend(equalCopy, "summarizationSetting")))
  {
    prioritizationSetting = [(UNNotificationSettings *)self prioritizationSetting];
    v23 = prioritizationSetting == [equalCopy prioritizationSetting];
  }

  else
  {
LABEL_20:
    v23 = 0;
  }

  return v23;
}

- (BOOL)isEligibleForIndexing
{
  if ([(UNNotificationSettings *)self authorizationStatus]!= UNAuthorizationStatusAuthorized)
  {
    return 0;
  }

  if ([(UNNotificationSettings *)self alertSetting]== UNNotificationSettingEnabled && [(UNNotificationSettings *)self alertStyle]|| [(UNNotificationSettings *)self lockScreenSetting]== UNNotificationSettingEnabled)
  {
    return 1;
  }

  return [(UNNotificationSettings *)self notificationCenterSetting]== UNNotificationSettingEnabled;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v24 = [UNMutableNotificationSettings alloc];
  authorizationStatus = [(UNNotificationSettings *)self authorizationStatus];
  soundSetting = [(UNNotificationSettings *)self soundSetting];
  badgeSetting = [(UNNotificationSettings *)self badgeSetting];
  alertSetting = [(UNNotificationSettings *)self alertSetting];
  notificationCenterSetting = [(UNNotificationSettings *)self notificationCenterSetting];
  lockScreenSetting = [(UNNotificationSettings *)self lockScreenSetting];
  carPlaySetting = [(UNNotificationSettings *)self carPlaySetting];
  remoteNotificationsSetting = [(UNNotificationSettings *)self remoteNotificationsSetting];
  announcementSetting = [(UNNotificationSettings *)self announcementSetting];
  criticalAlertSetting = [(UNNotificationSettings *)self criticalAlertSetting];
  timeSensitiveSetting = [(UNNotificationSettings *)self timeSensitiveSetting];
  scheduledDeliverySetting = [(UNNotificationSettings *)self scheduledDeliverySetting];
  directMessagesSetting = [(UNNotificationSettings *)self directMessagesSetting];
  summarizationSetting = [(UNNotificationSettings *)self summarizationSetting];
  prioritizationSetting = [(UNNotificationSettings *)self prioritizationSetting];
  alertStyle = [(UNNotificationSettings *)self alertStyle];
  showPreviewsSetting = [(UNNotificationSettings *)self showPreviewsSetting];
  groupingSetting = [(UNNotificationSettings *)self groupingSetting];
  LOBYTE(v14) = [(UNNotificationSettings *)self providesAppNotificationSettings];
  return [(UNNotificationSettings *)v24 initWithAuthorizationStatus:authorizationStatus soundSetting:soundSetting badgeSetting:badgeSetting alertSetting:alertSetting notificationCenterSetting:notificationCenterSetting lockScreenSetting:lockScreenSetting carPlaySetting:carPlaySetting remoteNotificationsSetting:remoteNotificationsSetting announcementSetting:announcementSetting criticalAlertSetting:criticalAlertSetting timeSensitiveSetting:timeSensitiveSetting scheduledDeliverySetting:scheduledDeliverySetting directMessagesSetting:directMessagesSetting summarizationSetting:summarizationSetting prioritizationSetting:prioritizationSetting alertStyle:alertStyle showPreviewsSetting:showPreviewsSetting groupingSetting:groupingSetting providesAppNotificationSettings:v14];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[UNNotificationSettings alertSetting](self forKey:{"alertSetting"), @"alertSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings alertStyle](self forKey:{"alertStyle"), @"alertStyle"}];
  [coderCopy encodeInteger:-[UNNotificationSettings authorizationStatus](self forKey:{"authorizationStatus"), @"authorizationStatus"}];
  [coderCopy encodeInteger:-[UNNotificationSettings badgeSetting](self forKey:{"badgeSetting"), @"badgeSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings carPlaySetting](self forKey:{"carPlaySetting"), @"carPlaySetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings remoteNotificationsSetting](self forKey:{"remoteNotificationsSetting"), @"remoteNotificationsSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings announcementSetting](self forKey:{"announcementSetting"), @"announcementSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings criticalAlertSetting](self forKey:{"criticalAlertSetting"), @"criticalAlertSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings timeSensitiveSetting](self forKey:{"timeSensitiveSetting"), @"timeSensitiveSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings lockScreenSetting](self forKey:{"lockScreenSetting"), @"lockScreenSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings notificationCenterSetting](self forKey:{"notificationCenterSetting"), @"notificationCenterSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings soundSetting](self forKey:{"soundSetting"), @"soundSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings showPreviewsSetting](self forKey:{"showPreviewsSetting"), @"showPreviewsSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings groupingSetting](self forKey:{"groupingSetting"), @"groupingSetting"}];
  [coderCopy encodeBool:-[UNNotificationSettings providesAppNotificationSettings](self forKey:{"providesAppNotificationSettings"), @"providesAppNotificationSettings"}];
  [coderCopy encodeInteger:-[UNNotificationSettings scheduledDeliverySetting](self forKey:{"scheduledDeliverySetting"), @"scheduledDeliverySetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings directMessagesSetting](self forKey:{"directMessagesSetting"), @"directMessagesSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings summarizationSetting](self forKey:{"summarizationSetting"), @"summarizationSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSettings prioritizationSetting](self forKey:{"prioritizationSetting"), @"prioritizationSetting"}];
}

- (UNNotificationSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24 = [coderCopy decodeIntegerForKey:@"authorizationStatus"];
  v23 = [coderCopy decodeIntegerForKey:@"soundSetting"];
  v22 = [coderCopy decodeIntegerForKey:@"badgeSetting"];
  v21 = [coderCopy decodeIntegerForKey:@"alertSetting"];
  v20 = [coderCopy decodeIntegerForKey:@"criticalAlertSetting"];
  v18 = [coderCopy decodeIntegerForKey:@"timeSensitiveSetting"];
  v19 = [coderCopy decodeIntegerForKey:@"notificationCenterSetting"];
  v17 = [coderCopy decodeIntegerForKey:@"lockScreenSetting"];
  v16 = [coderCopy decodeIntegerForKey:@"carPlaySetting"];
  v15 = [coderCopy decodeIntegerForKey:@"remoteNotificationsSetting"];
  v4 = [coderCopy decodeIntegerForKey:@"announcementSetting"];
  v5 = [coderCopy decodeIntegerForKey:@"scheduledDeliverySetting"];
  v6 = [coderCopy decodeIntegerForKey:@"directMessagesSetting"];
  v7 = [coderCopy decodeIntegerForKey:@"summarizationSetting"];
  v8 = [coderCopy decodeIntegerForKey:@"prioritizationSetting"];
  v9 = [coderCopy decodeIntegerForKey:@"alertStyle"];
  v10 = [coderCopy decodeIntegerForKey:@"showPreviewsSetting"];
  v11 = [coderCopy decodeIntegerForKey:@"groupingSetting"];
  v12 = [coderCopy decodeBoolForKey:@"providesAppNotificationSettings"];

  LOBYTE(v14) = v12;
  return [(UNNotificationSettings *)self initWithAuthorizationStatus:v24 soundSetting:v23 badgeSetting:v22 alertSetting:v21 notificationCenterSetting:v19 lockScreenSetting:v17 carPlaySetting:v16 remoteNotificationsSetting:v15 announcementSetting:v4 criticalAlertSetting:v20 timeSensitiveSetting:v18 scheduledDeliverySetting:v5 directMessagesSetting:v6 summarizationSetting:v7 prioritizationSetting:v8 alertStyle:v9 showPreviewsSetting:v10 groupingSetting:v11 providesAppNotificationSettings:v14];
}

@end