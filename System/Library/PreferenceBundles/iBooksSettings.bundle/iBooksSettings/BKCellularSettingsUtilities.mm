@interface BKCellularSettingsUtilities
+ (BOOL)_updateCachedNetworkLimitIfNeeded:(id)needed outUpdatedValue:(unint64_t *)value;
+ (id)cellularSettingsForCurrentIdentity;
+ (id)formattedNetworkLimitForDownloadKind:(id)kind runBlockIfNeedsUpdate:(id)update;
+ (void)loadNetworkLimitForDownloadKind:(id)kind runBlockIfNeedsUpdate:(id)update;
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

+ (BOOL)_updateCachedNetworkLimitIfNeeded:(id)needed outUpdatedValue:(unint64_t *)value
{
  neededCopy = needed;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LastNetworkLimit", @"com.apple.iBooks", &keyExistsAndHasValidFormat);
  if (!neededCopy)
  {
    goto LABEL_8;
  }

  v7 = AppIntegerValue;
  v8 = [neededCopy sizeLimitForNetworkType:AMSNetworkTypeCellular];
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
  if (value)
  {
    *value = v9;
  }

  v11 = 1;
LABEL_13:

  return v11;
}

+ (void)loadNetworkLimitForDownloadKind:(id)kind runBlockIfNeedsUpdate:(id)update
{
  updateCopy = update;
  kindCopy = kind;
  v8 = +[BUBag defaultBag];
  v9 = [AMSNetworkConstraints networkConstraintsForMediaType:kindCopy withBag:v8];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2830;
  v11[3] = &unk_14818;
  v12 = updateCopy;
  selfCopy = self;
  v10 = updateCopy;
  [v9 addFinishBlock:v11];
}

+ (id)formattedNetworkLimitForDownloadKind:(id)kind runBlockIfNeedsUpdate:(id)update
{
  updateCopy = update;
  keyExistsAndHasValidFormat = 0;
  kindCopy = kind;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LastNetworkLimit", @"com.apple.iBooks", &keyExistsAndHasValidFormat);
  v9 = keyExistsAndHasValidFormat;
  v10 = +[BUBag defaultBag];
  mobileNetworkConstraints = [v10 mobileNetworkConstraints];
  if ([mobileNetworkConstraints isLoaded])
  {
    v12 = [AMSNetworkConstraints networkConstraintsForMediaType:kindCopy withBag:v10];

    v19 = 0;
    v13 = [v12 resultWithError:&v19];
    v14 = v19;
    kindCopy = v12;
  }

  else
  {
    [self loadNetworkLimitForDownloadKind:kindCopy runBlockIfNeedsUpdate:updateCopy];
    v13 = 0;
    v14 = 0;
  }

  if (!v9)
  {
    AppIntegerValue = 200000000;
  }

  v18 = 0;
  if ([self _updateCachedNetworkLimitIfNeeded:v13 outUpdatedValue:&v18])
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