@interface CTAppProperties
- (BOOL)isHiddenApp;
- (BOOL)isInstalledApp;
- (BOOL)isInternalApp;
- (BOOL)isRemoteApp;
- (BOOL)isSystemService;
- (BOOL)isUninstalledApp;
- (id)bundleId;
- (id)init:(id)a3;
- (id)localizedName:(id)a3;
- (id)remoteLocalizedName:(id)a3;
@end

@implementation CTAppProperties

- (id)init:(id)a3
{
  v3 = a3;
  v44 = a3;
  v49.receiver = self;
  v49.super_class = CTAppProperties;
  v5 = [(CTAppProperties *)&v49 init];
  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v44 allowPlaceholder:1 error:0];
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

  v11 = [(LSApplicationRecord *)v9 entitlements];
  v12 = [v11 objectForKey:@"com.apple.private.data-usage-classification-override" ofClass:objc_opt_class()];

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
  objc_storeStrong(&v5->_givenBundleId, v3);
  v15 = v5->_lsAppRecord;
  if (v15)
  {
    v3 = [(LSApplicationRecord *)v5->_lsAppRecord applicationState];
    if ([v3 isValid])
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
    v3 = +[ACXDeviceConnection sharedDeviceConnection];
    v17 = +[NRPairedDeviceRegistry sharedInstance];
    v18 = [v17 getPairedDevices];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v19 = v18;
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
      v26 = [v25 BOOLValue];

      if ((v26 & 1) == 0)
      {
        v27 = [v3 applicationOnPairedDevice:v24 withBundleID:v44 error:0];
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
        v28 = v19;
LABEL_39:

        goto LABEL_40;
      }
    }

    objc_storeStrong(location, v27);
    v29 = [*location companionAppBundleID];
    v30 = v29 == 0;

    if (!v30)
    {
      v31 = [LSApplicationRecord alloc];
      v32 = [*location companionAppBundleID];
      v33 = [v31 initWithBundleIdentifier:v32 allowPlaceholder:1 error:0];
      v34 = v5->_lsAppRecord;
      v5->_lsAppRecord = v33;

      v28 = [(CTAppProperties *)v5 lsAppRecord];
      v35 = [v28 applicationState];
      if ([v35 isValid])
      {
        v36 = [(CTAppProperties *)v5 lsAppRecord];
        v37 = [v36 applicationState];
        if ([v37 isInstalled])
        {

          goto LABEL_39;
        }

        v39 = [(CTAppProperties *)v5 lsAppRecord];
        if ([v39 isPlaceholder])
        {

          goto LABEL_39;
        }

        locationa = [(CTAppProperties *)v5 lsAppRecord];
        v40 = [locationa applicationState];
        v41 = [v40 isPlaceholder];

        if (v41)
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

    v28 = v5->_lsAppRecord;
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
  v3 = [(CTAppProperties *)self bucketOverride];
  v4 = v3 == 1;
  v5 = [(CTAppProperties *)self bucketOverride];
  v6 = [(CTAppProperties *)self lsAppRecord];
  if (v6)
  {
    v7 = v6;
    v8 = [(CTAppProperties *)self lsAppRecord];
    v9 = [v8 applicationState];
    v10 = [v9 isValid];

    if (v10)
    {
      v11 = [(CTAppProperties *)self lsAppRecord];
      v12 = [v11 compatibilityObject];
      if (v12)
      {
        v13 = [(CTAppProperties *)self lsAppRecord];
        v27 = [v13 compatibilityObject];
        v14 = [v27 applicationType];
        if ([v14 isEqual:LSUserApplicationType])
        {
          v15 = 1;
        }

        else
        {
          v26 = [(CTAppProperties *)self lsAppRecord];
          v25 = [v26 compatibilityObject];
          v24 = [v25 applicationType];
          if ([v24 isEqual:LSSystemApplicationType])
          {
            v23 = [(CTAppProperties *)self lsAppRecord];
            v16 = [v23 appTags];
            v15 = !sub_10000AA00(v16);
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

      if (v3 != 1 && !v5)
      {
        v17 = [(CTAppProperties *)self lsAppRecord];
        v18 = [v17 applicationState];
        if (([v18 isInstalled] & 1) == 0)
        {
          v19 = [(CTAppProperties *)self lsAppRecord];
          if (([v19 isPlaceholder] & 1) == 0)
          {
            v20 = [(CTAppProperties *)self lsAppRecord];
            v21 = [v20 applicationState];
            v15 &= [v21 isPlaceholder];
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
  v3 = [(CTAppProperties *)self bucketOverride];
  v4 = [(CTAppProperties *)self lsAppRecord];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [(CTAppProperties *)self lsAppRecord];
  v7 = [v6 applicationState];
  v8 = [v7 isValid];

  if (v8)
  {
    v9 = [(CTAppProperties *)self lsAppRecord];
    v10 = [v9 applicationState];
    if ([v10 isInstalled])
    {
      v11 = 0;
    }

    else
    {
      v12 = [(CTAppProperties *)self lsAppRecord];
      if ([v12 isPlaceholder])
      {
        v11 = 0;
      }

      else
      {
        v13 = [(CTAppProperties *)self lsAppRecord];
        v14 = [v13 applicationState];
        if ([v14 isPlaceholder])
        {
          v11 = 0;
        }

        else
        {
          v15 = [(CTAppProperties *)self lsAppRecord];
          v11 = [v15 isDeletable];
        }
      }
    }
  }

  else
  {
LABEL_5:
    v11 = 1;
  }

  v16 = [(CTAppProperties *)self remoteAppInfo];

  v17 = [(CTAppProperties *)self isSystemService];
  if (v3)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16 == 0;
  }

  v19 = !v18;
  return v11 & ~(v19 | v17) & 1;
}

- (BOOL)isInternalApp
{
  v3 = [(CTAppProperties *)self bucketOverride];
  v4 = v3 == 2;
  v5 = [(CTAppProperties *)self bucketOverride];
  v6 = [(CTAppProperties *)self lsAppRecord];
  if (v6)
  {
    v7 = v6;
    v8 = [(CTAppProperties *)self lsAppRecord];
    v9 = [v8 applicationState];
    v10 = [v9 isValid];

    if (v10)
    {
      v11 = [(CTAppProperties *)self lsAppRecord];
      v12 = [v11 compatibilityObject];
      if (v12)
      {
        v13 = [(CTAppProperties *)self lsAppRecord];
        v14 = [v13 compatibilityObject];
        v15 = [v14 applicationType];
        v16 = [v15 isEqual:LSInternalApplicationType];
      }

      else
      {
        v16 = 0;
      }

      if (v3 != 2 && !v5)
      {
        v17 = [(CTAppProperties *)self lsAppRecord];
        v18 = [v17 applicationState];
        if (([v18 isInstalled] & 1) == 0)
        {
          v19 = [(CTAppProperties *)self lsAppRecord];
          if (([v19 isPlaceholder] & 1) == 0)
          {
            v20 = [(CTAppProperties *)self lsAppRecord];
            v21 = [v20 applicationState];
            v16 &= [v21 isPlaceholder];
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

  v4 = [(CTAppProperties *)self lsAppRecord];
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(CTAppProperties *)self remoteAppInfo];
    v3 = v5 != 0;
  }

  return v3;
}

- (BOOL)isSystemService
{
  v3 = [(CTAppProperties *)self bucketOverride];
  v4 = [(CTAppProperties *)self bucketOverride];
  v5 = [(CTAppProperties *)self remoteAppInfo];

  v6 = [(CTAppProperties *)self lsAppRecord];

  if (v6)
  {
    v7 = [(CTAppProperties *)self lsAppRecord];
    v8 = [v7 applicationState];
    v9 = [v8 isValid];

    v10 = [(CTAppProperties *)self lsAppRecord];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 applicationState];
      v31 = [v12 isInstalled];
      if (v31)
      {
        v30 = 0;
      }

      else
      {
        v26 = [(CTAppProperties *)self lsAppRecord];
        if ([v26 isPlaceholder])
        {
          v30 = 0;
        }

        else
        {
          v25 = [(CTAppProperties *)self lsAppRecord];
          v24 = [v25 applicationState];
          if (([v24 isPlaceholder] & 1) == 0)
          {

            v14 = 0;
LABEL_27:

            goto LABEL_28;
          }

          v30 = 1;
        }
      }

      v15 = [(CTAppProperties *)self lsAppRecord];
      v16 = [v15 compatibilityObject];
      if (v16)
      {
        v29 = [(CTAppProperties *)self lsAppRecord];
        v28 = [v29 compatibilityObject];
        v27 = [v28 applicationType];
        if ([v27 isEqual:LSHiddenAppType])
        {
          v14 = 1;
        }

        else
        {
          v23 = [(CTAppProperties *)self lsAppRecord];
          v22 = [v23 compatibilityObject];
          v21 = [v22 applicationType];
          if ([v21 isEqual:LSSystemApplicationType])
          {
            v20 = [(CTAppProperties *)self lsAppRecord];
            v17 = [v20 appTags];
            v14 = sub_10000AA00(v17);
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

      if (v31)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v12 = [v10 bundleIdentifier];
  }

  else
  {
    v12 = [(CTAppProperties *)self givenBundleId];
    v11 = v12;
  }

  v13 = sub_10000A0C8(v12);
  v14 = v13 != 0;

  if (v6)
  {
LABEL_28:
  }

  v18 = v5 == 0 && v14;
  if (v4)
  {
    v18 = v3 == 3;
  }

  return v3 == 3 || v18;
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

        v7 = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        v8 = [v7 isEqualToString:self->_givenBundleId];

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

- (id)localizedName:(id)a3
{
  v4 = a3;
  v5 = [(CTAppProperties *)self lsAppRecord];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [(CTAppProperties *)self lsAppRecord];
  v7 = [v6 applicationState];
  v8 = [v7 isValid];

  if (v8)
  {
    v9 = [(CTAppProperties *)self lsAppRecord];
    v10 = [v9 localizedNameWithPreferredLocalizations:v4];
  }

  else
  {
LABEL_4:
    v11 = [(CTAppProperties *)self remoteAppInfo];

    if (v11)
    {
      v10 = [(CTAppProperties *)self remoteLocalizedName:v4];
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
  v3 = [(CTAppProperties *)self lsAppRecord];
  if (v3)
  {
    v4 = v3;
    v5 = [(CTAppProperties *)self lsAppRecord];
    v6 = [v5 applicationState];
    v7 = [v6 isValid];

    if (v7)
    {
      v8 = [(CTAppProperties *)self lsAppRecord];
      v9 = [v8 bundleIdentifier];
LABEL_6:
      v11 = v9;

      goto LABEL_8;
    }
  }

  v10 = [(CTAppProperties *)self remoteAppInfo];

  if (v10)
  {
    v8 = [(CTAppProperties *)self remoteAppInfo];
    v9 = [v8 bundleIdentifier];
    goto LABEL_6;
  }

  v11 = [(CTAppProperties *)self givenBundleId];
LABEL_8:

  return v11;
}

- (id)remoteLocalizedName:(id)a3
{
  v4 = a3;
  v5 = _kCFBundleDisplayNameKey;
  v6 = [NSSet setWithObject:_kCFBundleDisplayNameKey];
  v7 = [(CTAppProperties *)self remoteAppInfo];
  v8 = [v7 localizedInfoPlistStringsForKeys:v6 fetchingFirstMatchingLocalizationInList:v4];

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