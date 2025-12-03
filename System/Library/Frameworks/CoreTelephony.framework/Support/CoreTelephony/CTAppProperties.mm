@interface CTAppProperties
- (BOOL)isHiddenApp;
- (BOOL)isInstalledApp;
- (BOOL)isInternalApp;
- (BOOL)isRemoteApp;
- (BOOL)isSystemService;
- (BOOL)isUninstalledApp;
- (id)bundleId;
- (id)init:(id)init;
- (id)localizedName:(id)name;
- (id)remoteLocalizedName:(id)name;
@end

@implementation CTAppProperties

- (id)init:(id)init
{
  initCopy = init;
  initCopy2 = init;
  v49.receiver = self;
  v49.super_class = CTAppProperties;
  v5 = [(CTAppProperties *)&v49 init];
  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:initCopy2 allowPlaceholder:1 error:0];
  lsAppRecord = v5->_lsAppRecord;
  v5->_lsAppRecord = v6;

  remoteAppInfo = v5->_remoteAppInfo;
  location = &v5->_remoteAppInfo;
  v5->_remoteAppInfo = 0;

  v9 = v5->_lsAppRecord;
  v10 = v9;
  if (!v9)
  {
    v13 = 0;
    goto LABEL_15;
  }

  entitlements = [(LSApplicationRecord *)v9 entitlements];
  v12 = [entitlements objectForKey:@"com.apple.private.data-usage-classification-override" ofClass:objc_opt_class()];

  if (!v12)
  {
    goto LABEL_13;
  }

  if (([v12 isEqualToString:@"app"] & 1) == 0)
  {
    if ([v12 isEqualToString:@"internal app"])
    {
      v13 = 2;
      goto LABEL_14;
    }

    if ([v12 isEqualToString:@"system service"])
    {
      v13 = 3;
      goto LABEL_14;
    }

    v14 = sCTOsLogDefault;
    if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_FAULT))
    {
      sub_100057CB4(v12, v14);
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v13 = 1;
LABEL_14:

LABEL_15:
  v5->_bucketOverride = v13;
  objc_storeStrong(&v5->_givenBundleId, initCopy);
  v15 = v5->_lsAppRecord;
  if (v15)
  {
    initCopy = [(LSApplicationRecord *)v5->_lsAppRecord applicationState];
    if ([initCopy isValid])
    {
      goto LABEL_41;
    }
  }

  if (qword_10008DB88 != -1)
  {
    sub_100057D2C();
  }

  v16 = byte_10008DB90;
  if (v15)
  {

    if ((v16 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_23:
    initCopy = +[ACXDeviceConnection sharedDeviceConnection];
    v17 = +[NRPairedDeviceRegistry sharedInstance];
    getPairedDevices = [v17 getPairedDevices];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v19 = getPairedDevices;
    v20 = [v19 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (!v20)
    {
      goto LABEL_32;
    }

    v21 = *v46;
    v22 = NRDevicePropertyIsAltAccount;
LABEL_25:
    v23 = 0;
    while (1)
    {
      if (*v46 != v21)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v45 + 1) + 8 * v23);
      v25 = [v24 valueForProperty:v22];
      bOOLValue = [v25 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        v27 = [initCopy applicationOnPairedDevice:v24 withBundleID:initCopy2 error:0];
        if (v27)
        {
          break;
        }
      }

      if (v20 == ++v23)
      {
        v20 = [v19 countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v20)
        {
          goto LABEL_25;
        }

LABEL_32:
        v27 = 0;
        lsAppRecord = v19;
LABEL_39:

        goto LABEL_40;
      }
    }

    objc_storeStrong(location, v27);
    companionAppBundleID = [*location companionAppBundleID];
    v30 = companionAppBundleID == 0;

    if (!v30)
    {
      v31 = [LSApplicationRecord alloc];
      companionAppBundleID2 = [*location companionAppBundleID];
      v33 = [v31 initWithBundleIdentifier:companionAppBundleID2 allowPlaceholder:1 error:0];
      v34 = v5->_lsAppRecord;
      v5->_lsAppRecord = v33;

      lsAppRecord = [(CTAppProperties *)v5 lsAppRecord];
      applicationState = [lsAppRecord applicationState];
      if ([applicationState isValid])
      {
        lsAppRecord2 = [(CTAppProperties *)v5 lsAppRecord];
        applicationState2 = [lsAppRecord2 applicationState];
        if ([applicationState2 isInstalled])
        {

          goto LABEL_39;
        }

        lsAppRecord3 = [(CTAppProperties *)v5 lsAppRecord];
        if ([lsAppRecord3 isPlaceholder])
        {

          goto LABEL_39;
        }

        locationa = [(CTAppProperties *)v5 lsAppRecord];
        applicationState3 = [locationa applicationState];
        isPlaceholder = [applicationState3 isPlaceholder];

        if (isPlaceholder)
        {
LABEL_40:

LABEL_41:
          goto LABEL_42;
        }
      }

      else
      {
      }
    }

    lsAppRecord = v5->_lsAppRecord;
    v5->_lsAppRecord = 0;
    goto LABEL_39;
  }

  if (byte_10008DB90)
  {
    goto LABEL_23;
  }

LABEL_42:

  return v5;
}

- (BOOL)isInstalledApp
{
  bucketOverride = [(CTAppProperties *)self bucketOverride];
  v4 = bucketOverride == 1;
  bucketOverride2 = [(CTAppProperties *)self bucketOverride];
  lsAppRecord = [(CTAppProperties *)self lsAppRecord];
  if (lsAppRecord)
  {
    v7 = lsAppRecord;
    lsAppRecord2 = [(CTAppProperties *)self lsAppRecord];
    applicationState = [lsAppRecord2 applicationState];
    isValid = [applicationState isValid];

    if (isValid)
    {
      lsAppRecord3 = [(CTAppProperties *)self lsAppRecord];
      compatibilityObject = [lsAppRecord3 compatibilityObject];
      if (compatibilityObject)
      {
        lsAppRecord4 = [(CTAppProperties *)self lsAppRecord];
        compatibilityObject2 = [lsAppRecord4 compatibilityObject];
        applicationType = [compatibilityObject2 applicationType];
        if ([applicationType isEqual:LSUserApplicationType])
        {
          v15 = 1;
        }

        else
        {
          lsAppRecord5 = [(CTAppProperties *)self lsAppRecord];
          compatibilityObject3 = [lsAppRecord5 compatibilityObject];
          applicationType2 = [compatibilityObject3 applicationType];
          if ([applicationType2 isEqual:LSSystemApplicationType])
          {
            lsAppRecord6 = [(CTAppProperties *)self lsAppRecord];
            appTags = [lsAppRecord6 appTags];
            v15 = !sub_10000AA00(appTags);
          }

          else
          {
            v15 = 0;
          }
        }
      }

      else
      {
        v15 = 0;
      }

      if (bucketOverride != 1 && !bucketOverride2)
      {
        lsAppRecord7 = [(CTAppProperties *)self lsAppRecord];
        applicationState2 = [lsAppRecord7 applicationState];
        if (([applicationState2 isInstalled] & 1) == 0)
        {
          lsAppRecord8 = [(CTAppProperties *)self lsAppRecord];
          if (([lsAppRecord8 isPlaceholder] & 1) == 0)
          {
            lsAppRecord9 = [(CTAppProperties *)self lsAppRecord];
            applicationState3 = [lsAppRecord9 applicationState];
            v15 &= [applicationState3 isPlaceholder];
          }
        }

        return v15;
      }
    }
  }

  return v4;
}

- (BOOL)isUninstalledApp
{
  bucketOverride = [(CTAppProperties *)self bucketOverride];
  lsAppRecord = [(CTAppProperties *)self lsAppRecord];
  if (!lsAppRecord)
  {
    goto LABEL_5;
  }

  v5 = lsAppRecord;
  lsAppRecord2 = [(CTAppProperties *)self lsAppRecord];
  applicationState = [lsAppRecord2 applicationState];
  isValid = [applicationState isValid];

  if (isValid)
  {
    lsAppRecord3 = [(CTAppProperties *)self lsAppRecord];
    applicationState2 = [lsAppRecord3 applicationState];
    if ([applicationState2 isInstalled])
    {
      isDeletable = 0;
    }

    else
    {
      lsAppRecord4 = [(CTAppProperties *)self lsAppRecord];
      if ([lsAppRecord4 isPlaceholder])
      {
        isDeletable = 0;
      }

      else
      {
        lsAppRecord5 = [(CTAppProperties *)self lsAppRecord];
        applicationState3 = [lsAppRecord5 applicationState];
        if ([applicationState3 isPlaceholder])
        {
          isDeletable = 0;
        }

        else
        {
          lsAppRecord6 = [(CTAppProperties *)self lsAppRecord];
          isDeletable = [lsAppRecord6 isDeletable];
        }
      }
    }
  }

  else
  {
LABEL_5:
    isDeletable = 1;
  }

  remoteAppInfo = [(CTAppProperties *)self remoteAppInfo];

  isSystemService = [(CTAppProperties *)self isSystemService];
  if (bucketOverride)
  {
    v18 = 0;
  }

  else
  {
    v18 = remoteAppInfo == 0;
  }

  v19 = !v18;
  return isDeletable & ~(v19 | isSystemService) & 1;
}

- (BOOL)isInternalApp
{
  bucketOverride = [(CTAppProperties *)self bucketOverride];
  v4 = bucketOverride == 2;
  bucketOverride2 = [(CTAppProperties *)self bucketOverride];
  lsAppRecord = [(CTAppProperties *)self lsAppRecord];
  if (lsAppRecord)
  {
    v7 = lsAppRecord;
    lsAppRecord2 = [(CTAppProperties *)self lsAppRecord];
    applicationState = [lsAppRecord2 applicationState];
    isValid = [applicationState isValid];

    if (isValid)
    {
      lsAppRecord3 = [(CTAppProperties *)self lsAppRecord];
      compatibilityObject = [lsAppRecord3 compatibilityObject];
      if (compatibilityObject)
      {
        lsAppRecord4 = [(CTAppProperties *)self lsAppRecord];
        compatibilityObject2 = [lsAppRecord4 compatibilityObject];
        applicationType = [compatibilityObject2 applicationType];
        v16 = [applicationType isEqual:LSInternalApplicationType];
      }

      else
      {
        v16 = 0;
      }

      if (bucketOverride != 2 && !bucketOverride2)
      {
        lsAppRecord5 = [(CTAppProperties *)self lsAppRecord];
        applicationState2 = [lsAppRecord5 applicationState];
        if (([applicationState2 isInstalled] & 1) == 0)
        {
          lsAppRecord6 = [(CTAppProperties *)self lsAppRecord];
          if (([lsAppRecord6 isPlaceholder] & 1) == 0)
          {
            lsAppRecord7 = [(CTAppProperties *)self lsAppRecord];
            applicationState3 = [lsAppRecord7 applicationState];
            v16 &= [applicationState3 isPlaceholder];
          }
        }

        return v16;
      }
    }
  }

  return v4;
}

- (BOOL)isRemoteApp
{
  if ([(CTAppProperties *)self bucketOverride])
  {
    return 0;
  }

  lsAppRecord = [(CTAppProperties *)self lsAppRecord];
  if (lsAppRecord)
  {
    v3 = 0;
  }

  else
  {
    remoteAppInfo = [(CTAppProperties *)self remoteAppInfo];
    v3 = remoteAppInfo != 0;
  }

  return v3;
}

- (BOOL)isSystemService
{
  bucketOverride = [(CTAppProperties *)self bucketOverride];
  bucketOverride2 = [(CTAppProperties *)self bucketOverride];
  remoteAppInfo = [(CTAppProperties *)self remoteAppInfo];

  lsAppRecord = [(CTAppProperties *)self lsAppRecord];

  if (lsAppRecord)
  {
    lsAppRecord2 = [(CTAppProperties *)self lsAppRecord];
    applicationState = [lsAppRecord2 applicationState];
    isValid = [applicationState isValid];

    lsAppRecord3 = [(CTAppProperties *)self lsAppRecord];
    v11 = lsAppRecord3;
    if (isValid)
    {
      applicationState2 = [lsAppRecord3 applicationState];
      isInstalled = [applicationState2 isInstalled];
      if (isInstalled)
      {
        v30 = 0;
      }

      else
      {
        lsAppRecord4 = [(CTAppProperties *)self lsAppRecord];
        if ([lsAppRecord4 isPlaceholder])
        {
          v30 = 0;
        }

        else
        {
          lsAppRecord5 = [(CTAppProperties *)self lsAppRecord];
          applicationState3 = [lsAppRecord5 applicationState];
          if (([applicationState3 isPlaceholder] & 1) == 0)
          {

            v14 = 0;
LABEL_27:

            goto LABEL_28;
          }

          v30 = 1;
        }
      }

      lsAppRecord6 = [(CTAppProperties *)self lsAppRecord];
      compatibilityObject = [lsAppRecord6 compatibilityObject];
      if (compatibilityObject)
      {
        lsAppRecord7 = [(CTAppProperties *)self lsAppRecord];
        compatibilityObject2 = [lsAppRecord7 compatibilityObject];
        applicationType = [compatibilityObject2 applicationType];
        if ([applicationType isEqual:LSHiddenAppType])
        {
          v14 = 1;
        }

        else
        {
          lsAppRecord8 = [(CTAppProperties *)self lsAppRecord];
          compatibilityObject3 = [lsAppRecord8 compatibilityObject];
          applicationType2 = [compatibilityObject3 applicationType];
          if ([applicationType2 isEqual:LSSystemApplicationType])
          {
            lsAppRecord9 = [(CTAppProperties *)self lsAppRecord];
            appTags = [lsAppRecord9 appTags];
            v14 = sub_10000AA00(appTags);
          }

          else
          {
            v14 = 0;
          }
        }

        if (v30)
        {
          goto LABEL_23;
        }
      }

      else
      {

        v14 = 0;
        if (v30)
        {
LABEL_23:
        }
      }

      if (isInstalled)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    applicationState2 = [lsAppRecord3 bundleIdentifier];
  }

  else
  {
    applicationState2 = [(CTAppProperties *)self givenBundleId];
    v11 = applicationState2;
  }

  v13 = sub_10000A0C8(applicationState2);
  v14 = v13 != 0;

  if (lsAppRecord)
  {
LABEL_28:
  }

  v18 = remoteAppInfo == 0 && v14;
  if (bucketOverride2)
  {
    v18 = bucketOverride == 3;
  }

  return bucketOverride == 3 || v18;
}

- (BOOL)isHiddenApp
{
  +[APApplication hiddenApplications];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        bundleIdentifier = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        v8 = [bundleIdentifier isEqualToString:self->_givenBundleId];

        if (v8)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)localizedName:(id)name
{
  nameCopy = name;
  lsAppRecord = [(CTAppProperties *)self lsAppRecord];
  if (!lsAppRecord)
  {
    goto LABEL_4;
  }

  lsAppRecord2 = [(CTAppProperties *)self lsAppRecord];
  applicationState = [lsAppRecord2 applicationState];
  isValid = [applicationState isValid];

  if (isValid)
  {
    lsAppRecord3 = [(CTAppProperties *)self lsAppRecord];
    v10 = [lsAppRecord3 localizedNameWithPreferredLocalizations:nameCopy];
  }

  else
  {
LABEL_4:
    remoteAppInfo = [(CTAppProperties *)self remoteAppInfo];

    if (remoteAppInfo)
    {
      v10 = [(CTAppProperties *)self remoteLocalizedName:nameCopy];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)bundleId
{
  lsAppRecord = [(CTAppProperties *)self lsAppRecord];
  if (lsAppRecord)
  {
    v4 = lsAppRecord;
    lsAppRecord2 = [(CTAppProperties *)self lsAppRecord];
    applicationState = [lsAppRecord2 applicationState];
    isValid = [applicationState isValid];

    if (isValid)
    {
      lsAppRecord3 = [(CTAppProperties *)self lsAppRecord];
      bundleIdentifier = [lsAppRecord3 bundleIdentifier];
LABEL_6:
      givenBundleId = bundleIdentifier;

      goto LABEL_8;
    }
  }

  remoteAppInfo = [(CTAppProperties *)self remoteAppInfo];

  if (remoteAppInfo)
  {
    lsAppRecord3 = [(CTAppProperties *)self remoteAppInfo];
    bundleIdentifier = [lsAppRecord3 bundleIdentifier];
    goto LABEL_6;
  }

  givenBundleId = [(CTAppProperties *)self givenBundleId];
LABEL_8:

  return givenBundleId;
}

- (id)remoteLocalizedName:(id)name
{
  nameCopy = name;
  v5 = _kCFBundleDisplayNameKey;
  v6 = [NSSet setWithObject:_kCFBundleDisplayNameKey];
  remoteAppInfo = [(CTAppProperties *)self remoteAppInfo];
  v8 = [remoteAppInfo localizedInfoPlistStringsForKeys:v6 fetchingFirstMatchingLocalizationInList:nameCopy];

  if (v8)
  {
    v9 = [v8 objectForKey:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end