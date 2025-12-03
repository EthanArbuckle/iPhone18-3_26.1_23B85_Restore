@interface RAPWebBundleBaseContext
- (NSDictionary)context;
- (RAPWebBundleBaseContext)initWithType:(id)type locales:(id)locales;
- (id)_currentUserInterfaceIdiomString;
- (id)description;
- (void)_setLocaleWithLocales:(id)locales;
@end

@implementation RAPWebBundleBaseContext

- (id)_currentUserInterfaceIdiomString
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom > 6)
  {
    return @"unspecified";
  }

  else
  {
    return off_10164E488[userInterfaceIdiom];
  }
}

- (void)_setLocaleWithLocales:(id)locales
{
  localesCopy = locales;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100C3C1CC;
  v14[3] = &unk_10164E468;
  v5 = objc_alloc_init(NSMutableArray);
  v15 = v5;
  [localesCopy enumerateObjectsUsingBlock:v14];

  v6 = +[NSLocale autoupdatingCurrentLocale];
  collatorIdentifier = [v6 collatorIdentifier];

  v22 = collatorIdentifier;
  v8 = [NSArray arrayWithObjects:&v22 count:1];
  v9 = [NSBundle preferredLocalizationsFromArray:v5 forPreferences:v8];
  firstObject = [v9 firstObject];
  locale = self->_locale;
  self->_locale = firstObject;

  v12 = sub_100038318();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = self->_locale;
    *buf = 138412802;
    v17 = v13;
    v18 = 2112;
    v19 = collatorIdentifier;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "selectedLocale: %@, preferredLocale: %@, verifiedLocales: %@", buf, 0x20u);
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  type = self->_type;
  context = [(RAPWebBundleBaseContext *)self context];
  v7 = [NSString stringWithFormat:@"<%@:%p type:%@, context: %@>", v4, self, type, context];

  return v7;
}

- (NSDictionary)context
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  locale = self->_locale;
  if (locale)
  {
    [v3 setObject:locale forKeyedSubscript:@"locale"];
  }

  type = self->_type;
  if (type)
  {
    [v4 setObject:type forKeyedSubscript:@"type"];
  }

  v7 = +[GEOCountryConfiguration sharedConfiguration];
  countryCode = [v7 countryCode];

  if (countryCode)
  {
    [v4 setObject:countryCode forKeyedSubscript:@"countryCode"];
  }

  v9 = +[NSLocale autoupdatingCurrentLocale];
  v10 = [NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:v9];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 rangeOfString:@"a"] != 0x7FFFFFFFFFFFFFFFLL);
  [v4 setObject:v11 forKeyedSubscript:@"useHour12"];

  v12 = [NSNumber numberWithBool:UIAccessibilityIsOnOffSwitchLabelsEnabled()];
  [v4 setObject:v12 forKeyedSubscript:@"useAccessibilityLabels"];

  _currentUserInterfaceIdiomString = [(RAPWebBundleBaseContext *)self _currentUserInterfaceIdiomString];
  [v4 setObject:_currentUserInterfaceIdiomString forKeyedSubscript:@"uiIdiom"];

  [v4 setObject:self->_email forKeyedSubscript:@"email"];
  v14 = GEOConfigGetString();
  [v4 setObject:v14 forKeyedSubscript:@"abBranchId"];

  v15 = GEOConfigGetString();
  [v4 setObject:v15 forKeyedSubscript:@"abManifestVersion"];

  v16 = +[RAPWebBundleDownloadManager sharedInstance];
  v21 = 0;
  v17 = [v16 loadWebBundleManifestWithError:&v21];

  version = [v17 version];
  [v4 setObject:version forKeyedSubscript:@"version"];

  v19 = [v4 copy];

  return v19;
}

- (RAPWebBundleBaseContext)initWithType:(id)type locales:(id)locales
{
  typeCopy = type;
  localesCopy = locales;
  v15.receiver = self;
  v15.super_class = RAPWebBundleBaseContext;
  v9 = [(RAPWebBundleBaseContext *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, type);
    [(RAPWebBundleBaseContext *)v10 _setLocaleWithLocales:localesCopy];
    v11 = +[UserInformationManager sharedInstance];
    userEmail = [v11 userEmail];
    email = v10->_email;
    v10->_email = userEmail;
  }

  return v10;
}

@end