@interface BKCellularSettingsUtilities
+ (BOOL)_updateCachedNetworkLimitIfNeeded:(id)a3 outUpdatedValue:(unint64_t *)a4;
+ (id)cellularSettingsForCurrentIdentity;
+ (id)formattedNetworkLimitForDownloadKind:(id)a3 runBlockIfNeedsUpdate:(id)a4;
+ (void)loadNetworkLimitForDownloadKind:(id)a3 runBlockIfNeedsUpdate:(id)a4;
@end

@implementation BKCellularSettingsUtilities

+ (id)cellularSettingsForCurrentIdentity
{
  v2 = [[CoreTelephonyClient alloc] initWithQueue:0];
  v10 = 0;
  v3 = [v2 getCurrentDataSubscriptionContextSync:&v10];
  v4 = v10;
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_C028(v4);
  }

  v9 = v4;
  v5 = [BUCellularIdentity identityForSubscription:v3 usingClient:v2 error:&v9];
  v6 = v9;

  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_C0A8(v6);
  }

  v7 = [BUCellularSettings settingsForIdentity:v5];

  return v7;
}

+ (BOOL)_updateCachedNetworkLimitIfNeeded:(id)a3 outUpdatedValue:(unint64_t *)a4
{
  v5 = a3;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LastNetworkLimit", @"com.apple.iBooks", &keyExistsAndHasValidFormat);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = AppIntegerValue;
  v8 = [v5 sizeLimitForNetworkType:AMSNetworkTypeCellular];
  v9 = v8;
  if (!keyExistsAndHasValidFormat)
  {
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_13;
  }

  if (v8 == v7 || v8 == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  CFPreferencesSetAppValue(@"LastNetworkLimit", [NSNumber numberWithUnsignedLongLong:v8], @"com.apple.iBooks");
  if (a4)
  {
    *a4 = v9;
  }

  v11 = 1;
LABEL_13:

  return v11;
}

+ (void)loadNetworkLimitForDownloadKind:(id)a3 runBlockIfNeedsUpdate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[BUBag defaultBag];
  v9 = [AMSNetworkConstraints networkConstraintsForMediaType:v7 withBag:v8];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2830;
  v11[3] = &unk_14818;
  v12 = v6;
  v13 = a1;
  v10 = v6;
  [v9 addFinishBlock:v11];
}

+ (id)formattedNetworkLimitForDownloadKind:(id)a3 runBlockIfNeedsUpdate:(id)a4
{
  v6 = a4;
  keyExistsAndHasValidFormat = 0;
  v7 = a3;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LastNetworkLimit", @"com.apple.iBooks", &keyExistsAndHasValidFormat);
  v9 = keyExistsAndHasValidFormat;
  v10 = +[BUBag defaultBag];
  v11 = [v10 mobileNetworkConstraints];
  if ([v11 isLoaded])
  {
    v12 = [AMSNetworkConstraints networkConstraintsForMediaType:v7 withBag:v10];

    v19 = 0;
    v13 = [v12 resultWithError:&v19];
    v14 = v19;
    v7 = v12;
  }

  else
  {
    [a1 loadNetworkLimitForDownloadKind:v7 runBlockIfNeedsUpdate:v6];
    v13 = 0;
    v14 = 0;
  }

  if (!v9)
  {
    AppIntegerValue = 200000000;
  }

  v18 = 0;
  if ([a1 _updateCachedNetworkLimitIfNeeded:v13 outUpdatedValue:&v18])
  {
    v15 = v18;
  }

  else
  {
    v15 = AppIntegerValue;
  }

  v16 = [NSByteCountFormatter stringFromByteCount:v15 countStyle:2];

  return v16;
}

@end