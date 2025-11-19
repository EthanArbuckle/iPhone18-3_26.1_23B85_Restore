@interface COSLocaleSelector
- (COSLocaleSelector)initWithInternationalController:(id)a3;
- (id)availableLocaleIdentifiers;
- (id)currentLocale;
- (void)postLocaleChangedNotification;
- (void)resetTimeFormat;
- (void)setLocale:(id)a3;
- (void)setLocaleFromCalendarID:(id)a3;
- (void)setLocaleFromLanguageIdentifier:(id)a3;
- (void)setLocaleOnly:(id)a3;
- (void)updateLocale:(id)a3;
@end

@implementation COSLocaleSelector

- (COSLocaleSelector)initWithInternationalController:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = COSLocaleSelector;
  v6 = [(COSLocaleSelector *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internationalController, a3);
    v8 = [[NPSDomainAccessor alloc] initWithDomain:@".GlobalPreferences"];
    gizmoGlobalDomain = v7->_gizmoGlobalDomain;
    v7->_gizmoGlobalDomain = v8;

    v10 = objc_alloc_init(NPSManager);
    syncManager = v7->_syncManager;
    v7->_syncManager = v10;
  }

  return v7;
}

- (void)setLocaleOnly:(id)a3
{
  [(COSLocaleSelector *)self updateLocale:a3];

  [(COSLocaleSelector *)self postLocaleChangedNotification];
}

- (void)postLocaleChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.nano.watchlocalechanged", 0, 0, 1u);
}

- (void)updateLocale:(id)a3
{
  v4 = a3;
  v5 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  [v5 setObject:v4 forKey:@"AppleLocale"];

  v6 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  v7 = [v6 synchronize];

  v8 = [(COSLocaleSelector *)self syncManager];
  v9 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  v10 = [v9 domain];
  v13 = @"AppleLocale";
  v11 = [NSArray arrayWithObjects:&v13 count:1];
  v12 = [NSSet setWithArray:v11];
  [v8 synchronizeNanoDomain:v10 keys:v12];
}

- (void)resetTimeFormat
{
  v3 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  [v3 setObject:0 forKey:@"AppleICUForce12HourTime"];

  v4 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  v5 = [v4 synchronize];

  v6 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  [v6 setObject:0 forKey:@"AppleICUForce24HourTime"];

  v12[0] = @"AppleICUForce24HourTime";
  v12[1] = @"AppleICUForce12HourTime";
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v8 = [(COSLocaleSelector *)self syncManager];
  v9 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  v10 = [v9 domain];
  v11 = [NSSet setWithArray:v7];
  [v8 synchronizeNanoDomain:v10 keys:v11];
}

- (void)setLocale:(id)a3
{
  [(COSLocaleSelector *)self updateLocale:a3];
  [(COSLocaleSelector *)self resetTimeFormat];

  [(COSLocaleSelector *)self postLocaleChangedNotification];
}

- (void)setLocaleFromCalendarID:(id)a3
{
  v11 = a3;
  v4 = [(COSLocaleSelector *)self currentLocale];
  v5 = [v4 localeIdentifier];

  v6 = [NSLocale componentsFromLocaleIdentifier:v5];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];
  v8 = [(COSLocaleSelector *)self internationalController];
  v9 = [v8 defaultCalendarForLocaleID:v5];

  if ([v9 isEqual:v11])
  {
    [v7 removeObjectForKey:@"calendar"];
  }

  else
  {
    [v7 setObject:v11 forKey:@"calendar"];
  }

  if (([v6 isEqual:v7] & 1) == 0)
  {
    v10 = [NSLocale canonicalLocaleIdentifierFromComponents:v7];

    [(COSLocaleSelector *)self setLocaleOnly:v10];
    v5 = v10;
  }
}

- (id)availableLocaleIdentifiers
{
  internationalController = self->_internationalController;
  if (!internationalController)
  {
    sub_1A530();
  }

  return [(COSInternationalController *)internationalController availableLocaleIdentifiers];
}

- (id)currentLocale
{
  v3 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  v4 = [v3 synchronize];

  v5 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  v6 = [v5 objectForKey:@"AppleLocale"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"en_US";
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [NSLocale localeWithLocaleIdentifier:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setLocaleFromLanguageIdentifier:(id)a3
{
  v12 = a3;
  v4 = [(COSLocaleSelector *)self currentLocale];
  v5 = [v4 localeIdentifier];

  v6 = [NSLocale canonicalLocaleIdentifier:v5 withNewLanguageIdentifier:v12];
  internationalController = self->_internationalController;
  if (!internationalController)
  {
    sub_1A55C();
  }

  v8 = [(COSInternationalController *)internationalController validateLocale:v6];

  v9 = [NSLocale componentsFromLocaleIdentifier:v8];
  v10 = [v9 mutableCopy];

  [v10 removeObjectForKey:@"numbers"];
  v11 = [(COSInternationalController *)self->_internationalController canonicalLocaleIdentifierWithValidCalendarForComponents:v10];

  if (([v11 isEqualToString:v5] & 1) == 0)
  {
    [(COSLocaleSelector *)self setLocale:v11];
  }
}

@end