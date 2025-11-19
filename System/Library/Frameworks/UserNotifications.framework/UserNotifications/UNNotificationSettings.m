@interface UNNotificationSettings
+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)a3 soundSetting:(int64_t)a4 badgeSetting:(int64_t)a5 alertSetting:(int64_t)a6 notificationCenterSetting:(int64_t)a7 lockScreenSetting:(int64_t)a8 carPlaySetting:(int64_t)a9 remoteNotificationsSetting:(int64_t)a10 announcementSetting:(int64_t)a11 criticalAlertSetting:(int64_t)a12 timeSensitiveSetting:(int64_t)a13 scheduledDeliverySetting:(int64_t)a14 directMessagesSetting:(int64_t)a15 alertStyle:(int64_t)a16 showPreviewsSetting:(int64_t)a17 groupingSetting:(int64_t)a18 providesAppNotificationSettings:(BOOL)a19;
+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)a3 soundSetting:(int64_t)a4 badgeSetting:(int64_t)a5 alertSetting:(int64_t)a6 notificationCenterSetting:(int64_t)a7 lockScreenSetting:(int64_t)a8 carPlaySetting:(int64_t)a9 remoteNotificationsSetting:(int64_t)a10 announcementSetting:(int64_t)a11 criticalAlertSetting:(int64_t)a12 timeSensitiveSetting:(int64_t)a13 scheduledDeliverySetting:(int64_t)a14 directMessagesSetting:(int64_t)a15 summarizationSetting:(int64_t)a16 alertStyle:(int64_t)a17 showPreviewsSetting:(int64_t)a18 groupingSetting:(int64_t)a19 providesAppNotificationSettings:(BOOL)a20;
+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)a3 soundSetting:(int64_t)a4 badgeSetting:(int64_t)a5 alertSetting:(int64_t)a6 notificationCenterSetting:(int64_t)a7 lockScreenSetting:(int64_t)a8 carPlaySetting:(int64_t)a9 remoteNotificationsSetting:(int64_t)a10 announcementSetting:(int64_t)a11 criticalAlertSetting:(int64_t)a12 timeSensitiveSetting:(int64_t)a13 scheduledDeliverySetting:(int64_t)a14 directMessagesSetting:(int64_t)a15 summarizationSetting:(int64_t)a16 prioritizationSetting:(int64_t)a17 alertStyle:(int64_t)a18 showPreviewsSetting:(int64_t)a19 groupingSetting:(int64_t)a20 providesAppNotificationSettings:(BOOL)a21;
+ (id)emptySettings;
- (BOOL)isEligibleForIndexing;
- (BOOL)isEqual:(id)a3;
- (UNNotificationSettings)initWithAuthorizationStatus:(int64_t)a3 soundSetting:(int64_t)a4 badgeSetting:(int64_t)a5 alertSetting:(int64_t)a6 notificationCenterSetting:(int64_t)a7 lockScreenSetting:(int64_t)a8 carPlaySetting:(int64_t)a9 remoteNotificationsSetting:(int64_t)a10 announcementSetting:(int64_t)a11 criticalAlertSetting:(int64_t)a12 timeSensitiveSetting:(int64_t)a13 scheduledDeliverySetting:(int64_t)a14 directMessagesSetting:(int64_t)a15 summarizationSetting:(int64_t)a16 prioritizationSetting:(int64_t)a17 alertStyle:(int64_t)a18 showPreviewsSetting:(int64_t)a19 groupingSetting:(int64_t)a20 providesAppNotificationSettings:(BOOL)a21;
- (UNNotificationSettings)initWithCoder:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationSettings

- (id)description
{
  v45 = MEMORY[0x1E696AEC0];
  v44 = objc_opt_class();
  v3 = [(UNNotificationSettings *)self authorizationStatus];
  if (v3 > UNAuthorizationStatusEphemeral)
  {
    v43 = 0;
  }

  else
  {
    v43 = off_1E7CFF770[v3];
  }

  v4 = [(UNNotificationSettings *)self notificationCenterSetting];
  if (v4 > UNNotificationSettingEnabled)
  {
    v42 = 0;
  }

  else
  {
    v42 = off_1E7CFF798[v4];
  }

  v5 = [(UNNotificationSettings *)self soundSetting];
  if (v5 > UNNotificationSettingEnabled)
  {
    v41 = 0;
  }

  else
  {
    v41 = off_1E7CFF798[v5];
  }

  v6 = [(UNNotificationSettings *)self badgeSetting];
  if (v6 > UNNotificationSettingEnabled)
  {
    v40 = 0;
  }

  else
  {
    v40 = off_1E7CFF798[v6];
  }

  v7 = [(UNNotificationSettings *)self lockScreenSetting];
  if (v7 > UNNotificationSettingEnabled)
  {
    v39 = 0;
  }

  else
  {
    v39 = off_1E7CFF798[v7];
  }

  v8 = [(UNNotificationSettings *)self carPlaySetting];
  if (v8 > UNNotificationSettingEnabled)
  {
    v38 = 0;
  }

  else
  {
    v38 = off_1E7CFF798[v8];
  }

  v9 = [(UNNotificationSettings *)self remoteNotificationsSetting];
  if (v9 > 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = off_1E7CFF798[v9];
  }

  v10 = [(UNNotificationSettings *)self announcementSetting];
  if (v10 > UNNotificationSettingEnabled)
  {
    v36 = 0;
  }

  else
  {
    v36 = off_1E7CFF798[v10];
  }

  v11 = [(UNNotificationSettings *)self criticalAlertSetting];
  if (v11 > UNNotificationSettingEnabled)
  {
    v35 = 0;
  }

  else
  {
    v35 = off_1E7CFF798[v11];
  }

  v12 = [(UNNotificationSettings *)self timeSensitiveSetting];
  if (v12 > UNNotificationSettingEnabled)
  {
    v34 = 0;
  }

  else
  {
    v34 = off_1E7CFF798[v12];
  }

  v13 = [(UNNotificationSettings *)self alertSetting];
  if (v13 > UNNotificationSettingEnabled)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_1E7CFF798[v13];
  }

  v15 = [(UNNotificationSettings *)self scheduledDeliverySetting];
  if (v15 > UNNotificationSettingEnabled)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_1E7CFF798[v15];
  }

  v17 = [(UNNotificationSettings *)self directMessagesSetting];
  if (v17 > UNNotificationSettingEnabled)
  {
    v18 = 0;
  }

  else
  {
    v18 = off_1E7CFF798[v17];
  }

  v19 = [(UNNotificationSettings *)self summarizationSetting];
  if (v19 > 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = off_1E7CFF798[v19];
  }

  v21 = [(UNNotificationSettings *)self prioritizationSetting];
  if (v21 > 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = off_1E7CFF798[v21];
  }

  v23 = [(UNNotificationSettings *)self showPreviewsSetting];
  if (v23 > UNShowPreviewsSettingNever)
  {
    v24 = 0;
  }

  else
  {
    v24 = off_1E7CFF7B0[v23];
  }

  v25 = [(UNNotificationSettings *)self alertStyle];
  if (v25 > UNAlertStyleAlert)
  {
    v26 = 0;
  }

  else
  {
    v26 = off_1E7CFF7C8[v25];
  }

  v27 = [(UNNotificationSettings *)self groupingSetting];
  if (v27 > 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = off_1E7CFF7E0[v27];
  }

  v29 = [(UNNotificationSettings *)self providesAppNotificationSettings];
  v30 = @"No";
  if (v29)
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

+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)a3 soundSetting:(int64_t)a4 badgeSetting:(int64_t)a5 alertSetting:(int64_t)a6 notificationCenterSetting:(int64_t)a7 lockScreenSetting:(int64_t)a8 carPlaySetting:(int64_t)a9 remoteNotificationsSetting:(int64_t)a10 announcementSetting:(int64_t)a11 criticalAlertSetting:(int64_t)a12 timeSensitiveSetting:(int64_t)a13 scheduledDeliverySetting:(int64_t)a14 directMessagesSetting:(int64_t)a15 alertStyle:(int64_t)a16 showPreviewsSetting:(int64_t)a17 groupingSetting:(int64_t)a18 providesAppNotificationSettings:(BOOL)a19
{
  LOBYTE(v21) = a19;
  v19 = [objc_alloc(objc_opt_class()) initWithAuthorizationStatus:a3 soundSetting:a4 badgeSetting:a5 alertSetting:a6 notificationCenterSetting:a7 lockScreenSetting:a8 carPlaySetting:a9 remoteNotificationsSetting:a10 announcementSetting:a11 criticalAlertSetting:a12 timeSensitiveSetting:a13 scheduledDeliverySetting:a14 directMessagesSetting:a15 summarizationSetting:0 prioritizationSetting:0 alertStyle:a16 showPreviewsSetting:a17 groupingSetting:a18 providesAppNotificationSettings:v21];

  return v19;
}

+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)a3 soundSetting:(int64_t)a4 badgeSetting:(int64_t)a5 alertSetting:(int64_t)a6 notificationCenterSetting:(int64_t)a7 lockScreenSetting:(int64_t)a8 carPlaySetting:(int64_t)a9 remoteNotificationsSetting:(int64_t)a10 announcementSetting:(int64_t)a11 criticalAlertSetting:(int64_t)a12 timeSensitiveSetting:(int64_t)a13 scheduledDeliverySetting:(int64_t)a14 directMessagesSetting:(int64_t)a15 summarizationSetting:(int64_t)a16 alertStyle:(int64_t)a17 showPreviewsSetting:(int64_t)a18 groupingSetting:(int64_t)a19 providesAppNotificationSettings:(BOOL)a20
{
  LOBYTE(v22) = a20;
  v20 = [objc_alloc(objc_opt_class()) initWithAuthorizationStatus:a3 soundSetting:a4 badgeSetting:a5 alertSetting:a6 notificationCenterSetting:a7 lockScreenSetting:a8 carPlaySetting:a9 remoteNotificationsSetting:a10 announcementSetting:a11 criticalAlertSetting:a12 timeSensitiveSetting:a13 scheduledDeliverySetting:a14 directMessagesSetting:a15 summarizationSetting:a16 prioritizationSetting:0 alertStyle:a17 showPreviewsSetting:a18 groupingSetting:a19 providesAppNotificationSettings:v22];

  return v20;
}

+ (UNNotificationSettings)settingsWithAuthorizationStatus:(int64_t)a3 soundSetting:(int64_t)a4 badgeSetting:(int64_t)a5 alertSetting:(int64_t)a6 notificationCenterSetting:(int64_t)a7 lockScreenSetting:(int64_t)a8 carPlaySetting:(int64_t)a9 remoteNotificationsSetting:(int64_t)a10 announcementSetting:(int64_t)a11 criticalAlertSetting:(int64_t)a12 timeSensitiveSetting:(int64_t)a13 scheduledDeliverySetting:(int64_t)a14 directMessagesSetting:(int64_t)a15 summarizationSetting:(int64_t)a16 prioritizationSetting:(int64_t)a17 alertStyle:(int64_t)a18 showPreviewsSetting:(int64_t)a19 groupingSetting:(int64_t)a20 providesAppNotificationSettings:(BOOL)a21
{
  LOBYTE(v23) = a21;
  v21 = [objc_alloc(objc_opt_class()) initWithAuthorizationStatus:a3 soundSetting:a4 badgeSetting:a5 alertSetting:a6 notificationCenterSetting:a7 lockScreenSetting:a8 carPlaySetting:a9 remoteNotificationsSetting:a10 announcementSetting:a11 criticalAlertSetting:a12 timeSensitiveSetting:a13 scheduledDeliverySetting:a14 directMessagesSetting:a15 summarizationSetting:a16 prioritizationSetting:a17 alertStyle:a18 showPreviewsSetting:a19 groupingSetting:a20 providesAppNotificationSettings:v23];

  return v21;
}

- (UNNotificationSettings)initWithAuthorizationStatus:(int64_t)a3 soundSetting:(int64_t)a4 badgeSetting:(int64_t)a5 alertSetting:(int64_t)a6 notificationCenterSetting:(int64_t)a7 lockScreenSetting:(int64_t)a8 carPlaySetting:(int64_t)a9 remoteNotificationsSetting:(int64_t)a10 announcementSetting:(int64_t)a11 criticalAlertSetting:(int64_t)a12 timeSensitiveSetting:(int64_t)a13 scheduledDeliverySetting:(int64_t)a14 directMessagesSetting:(int64_t)a15 summarizationSetting:(int64_t)a16 prioritizationSetting:(int64_t)a17 alertStyle:(int64_t)a18 showPreviewsSetting:(int64_t)a19 groupingSetting:(int64_t)a20 providesAppNotificationSettings:(BOOL)a21
{
  v28.receiver = self;
  v28.super_class = UNNotificationSettings;
  result = [(UNNotificationSettings *)&v28 init];
  if (result)
  {
    result->_authorizationStatus = a3;
    result->_soundSetting = a4;
    result->_badgeSetting = a5;
    result->_alertSetting = a6;
    result->_notificationCenterSetting = a7;
    result->_lockScreenSetting = a8;
    result->_carPlaySetting = a9;
    result->_remoteNotificationsSetting = a10;
    result->_showPreviewsSetting = a19;
    result->_criticalAlertSetting = a12;
    result->_timeSensitiveSetting = a13;
    result->_scheduledDeliverySetting = a14;
    result->_directMessagesSetting = a15;
    result->_summarizationSetting = a16;
    result->_prioritizationSetting = a17;
    result->_alertStyle = a18;
    result->_announcementSetting = a11;
    result->_groupingSetting = a20;
    result->_providesAppNotificationSettings = a21;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = [(UNNotificationSettings *)self alertSetting];
  if (v5 != [v4 alertSetting])
  {
    goto LABEL_20;
  }

  v6 = [(UNNotificationSettings *)self alertStyle];
  if (v6 != [v4 alertStyle])
  {
    goto LABEL_20;
  }

  v7 = [(UNNotificationSettings *)self authorizationStatus];
  if (v7 != [v4 authorizationStatus])
  {
    goto LABEL_20;
  }

  v8 = [(UNNotificationSettings *)self badgeSetting];
  if (v8 != [v4 badgeSetting])
  {
    goto LABEL_20;
  }

  v9 = [(UNNotificationSettings *)self carPlaySetting];
  if (v9 != [v4 carPlaySetting])
  {
    goto LABEL_20;
  }

  v10 = [(UNNotificationSettings *)self remoteNotificationsSetting];
  if (v10 != [v4 remoteNotificationsSetting])
  {
    goto LABEL_20;
  }

  v11 = [(UNNotificationSettings *)self announcementSetting];
  if (v11 != [v4 announcementSetting])
  {
    goto LABEL_20;
  }

  v12 = [(UNNotificationSettings *)self lockScreenSetting];
  if (v12 != [v4 lockScreenSetting])
  {
    goto LABEL_20;
  }

  v13 = [(UNNotificationSettings *)self notificationCenterSetting];
  if (v13 != [v4 notificationCenterSetting])
  {
    goto LABEL_20;
  }

  v14 = [(UNNotificationSettings *)self soundSetting];
  if (v14 != [v4 soundSetting])
  {
    goto LABEL_20;
  }

  v15 = [(UNNotificationSettings *)self groupingSetting];
  if (v15 == [v4 groupingSetting] && (v16 = -[UNNotificationSettings providesAppNotificationSettings](self, "providesAppNotificationSettings"), v16 == objc_msgSend(v4, "providesAppNotificationSettings")) && (v17 = -[UNNotificationSettings criticalAlertSetting](self, "criticalAlertSetting"), v17 == objc_msgSend(v4, "criticalAlertSetting")) && (v18 = -[UNNotificationSettings timeSensitiveSetting](self, "timeSensitiveSetting"), v18 == objc_msgSend(v4, "timeSensitiveSetting")) && (v19 = -[UNNotificationSettings scheduledDeliverySetting](self, "scheduledDeliverySetting"), v19 == objc_msgSend(v4, "scheduledDeliverySetting")) && (v20 = -[UNNotificationSettings directMessagesSetting](self, "directMessagesSetting"), v20 == objc_msgSend(v4, "directMessagesSetting")) && (v21 = -[UNNotificationSettings summarizationSetting](self, "summarizationSetting"), v21 == objc_msgSend(v4, "summarizationSetting")))
  {
    v22 = [(UNNotificationSettings *)self prioritizationSetting];
    v23 = v22 == [v4 prioritizationSetting];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v24 = [UNMutableNotificationSettings alloc];
  v23 = [(UNNotificationSettings *)self authorizationStatus];
  v22 = [(UNNotificationSettings *)self soundSetting];
  v21 = [(UNNotificationSettings *)self badgeSetting];
  v20 = [(UNNotificationSettings *)self alertSetting];
  v19 = [(UNNotificationSettings *)self notificationCenterSetting];
  v18 = [(UNNotificationSettings *)self lockScreenSetting];
  v17 = [(UNNotificationSettings *)self carPlaySetting];
  v16 = [(UNNotificationSettings *)self remoteNotificationsSetting];
  v15 = [(UNNotificationSettings *)self announcementSetting];
  v4 = [(UNNotificationSettings *)self criticalAlertSetting];
  v5 = [(UNNotificationSettings *)self timeSensitiveSetting];
  v6 = [(UNNotificationSettings *)self scheduledDeliverySetting];
  v7 = [(UNNotificationSettings *)self directMessagesSetting];
  v8 = [(UNNotificationSettings *)self summarizationSetting];
  v9 = [(UNNotificationSettings *)self prioritizationSetting];
  v10 = [(UNNotificationSettings *)self alertStyle];
  v11 = [(UNNotificationSettings *)self showPreviewsSetting];
  v12 = [(UNNotificationSettings *)self groupingSetting];
  LOBYTE(v14) = [(UNNotificationSettings *)self providesAppNotificationSettings];
  return [(UNNotificationSettings *)v24 initWithAuthorizationStatus:v23 soundSetting:v22 badgeSetting:v21 alertSetting:v20 notificationCenterSetting:v19 lockScreenSetting:v18 carPlaySetting:v17 remoteNotificationsSetting:v16 announcementSetting:v15 criticalAlertSetting:v4 timeSensitiveSetting:v5 scheduledDeliverySetting:v6 directMessagesSetting:v7 summarizationSetting:v8 prioritizationSetting:v9 alertStyle:v10 showPreviewsSetting:v11 groupingSetting:v12 providesAppNotificationSettings:v14];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[UNNotificationSettings alertSetting](self forKey:{"alertSetting"), @"alertSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings alertStyle](self forKey:{"alertStyle"), @"alertStyle"}];
  [v4 encodeInteger:-[UNNotificationSettings authorizationStatus](self forKey:{"authorizationStatus"), @"authorizationStatus"}];
  [v4 encodeInteger:-[UNNotificationSettings badgeSetting](self forKey:{"badgeSetting"), @"badgeSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings carPlaySetting](self forKey:{"carPlaySetting"), @"carPlaySetting"}];
  [v4 encodeInteger:-[UNNotificationSettings remoteNotificationsSetting](self forKey:{"remoteNotificationsSetting"), @"remoteNotificationsSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings announcementSetting](self forKey:{"announcementSetting"), @"announcementSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings criticalAlertSetting](self forKey:{"criticalAlertSetting"), @"criticalAlertSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings timeSensitiveSetting](self forKey:{"timeSensitiveSetting"), @"timeSensitiveSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings lockScreenSetting](self forKey:{"lockScreenSetting"), @"lockScreenSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings notificationCenterSetting](self forKey:{"notificationCenterSetting"), @"notificationCenterSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings soundSetting](self forKey:{"soundSetting"), @"soundSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings showPreviewsSetting](self forKey:{"showPreviewsSetting"), @"showPreviewsSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings groupingSetting](self forKey:{"groupingSetting"), @"groupingSetting"}];
  [v4 encodeBool:-[UNNotificationSettings providesAppNotificationSettings](self forKey:{"providesAppNotificationSettings"), @"providesAppNotificationSettings"}];
  [v4 encodeInteger:-[UNNotificationSettings scheduledDeliverySetting](self forKey:{"scheduledDeliverySetting"), @"scheduledDeliverySetting"}];
  [v4 encodeInteger:-[UNNotificationSettings directMessagesSetting](self forKey:{"directMessagesSetting"), @"directMessagesSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings summarizationSetting](self forKey:{"summarizationSetting"), @"summarizationSetting"}];
  [v4 encodeInteger:-[UNNotificationSettings prioritizationSetting](self forKey:{"prioritizationSetting"), @"prioritizationSetting"}];
}

- (UNNotificationSettings)initWithCoder:(id)a3
{
  v3 = a3;
  v24 = [v3 decodeIntegerForKey:@"authorizationStatus"];
  v23 = [v3 decodeIntegerForKey:@"soundSetting"];
  v22 = [v3 decodeIntegerForKey:@"badgeSetting"];
  v21 = [v3 decodeIntegerForKey:@"alertSetting"];
  v20 = [v3 decodeIntegerForKey:@"criticalAlertSetting"];
  v18 = [v3 decodeIntegerForKey:@"timeSensitiveSetting"];
  v19 = [v3 decodeIntegerForKey:@"notificationCenterSetting"];
  v17 = [v3 decodeIntegerForKey:@"lockScreenSetting"];
  v16 = [v3 decodeIntegerForKey:@"carPlaySetting"];
  v15 = [v3 decodeIntegerForKey:@"remoteNotificationsSetting"];
  v4 = [v3 decodeIntegerForKey:@"announcementSetting"];
  v5 = [v3 decodeIntegerForKey:@"scheduledDeliverySetting"];
  v6 = [v3 decodeIntegerForKey:@"directMessagesSetting"];
  v7 = [v3 decodeIntegerForKey:@"summarizationSetting"];
  v8 = [v3 decodeIntegerForKey:@"prioritizationSetting"];
  v9 = [v3 decodeIntegerForKey:@"alertStyle"];
  v10 = [v3 decodeIntegerForKey:@"showPreviewsSetting"];
  v11 = [v3 decodeIntegerForKey:@"groupingSetting"];
  v12 = [v3 decodeBoolForKey:@"providesAppNotificationSettings"];

  LOBYTE(v14) = v12;
  return [(UNNotificationSettings *)self initWithAuthorizationStatus:v24 soundSetting:v23 badgeSetting:v22 alertSetting:v21 notificationCenterSetting:v19 lockScreenSetting:v17 carPlaySetting:v16 remoteNotificationsSetting:v15 announcementSetting:v4 criticalAlertSetting:v20 timeSensitiveSetting:v18 scheduledDeliverySetting:v5 directMessagesSetting:v6 summarizationSetting:v7 prioritizationSetting:v8 alertStyle:v9 showPreviewsSetting:v10 groupingSetting:v11 providesAppNotificationSettings:v14];
}

@end