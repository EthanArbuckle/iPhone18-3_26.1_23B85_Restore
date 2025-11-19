@interface COSDNDController
- (COSDNDController)init;
- (id)doNotDisturbMirrorState:(id)a3;
- (id)doNotDisturbWorkoutState:(id)a3;
- (id)specifiers;
- (void)dealloc;
- (void)setDoNotDisturbMirrorState:(id)a3 specifier:(id)a4;
- (void)setWorkoutDoNotDisturbState:(id)a3 specifier:(id)a4;
@end

@implementation COSDNDController

- (COSDNDController)init
{
  v11.receiver = self;
  v11.super_class = COSDNDController;
  v2 = [(COSDNDController *)&v11 init];
  if (v2)
  {
    v3 = +[PBBGatewayManager sharedManager];
    [v3 loadDNDState];

    v4 = objc_opt_new();
    npsManager = v2->_npsManager;
    v2->_npsManager = v4;

    v6 = [NPSDomainAccessor alloc];
    v7 = [v6 initWithDomain:BPSDNDDomainKey];
    domainAccessor = v2->_domainAccessor;
    v2->_domainAccessor = v7;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000E55BC, BPSWorkoutDNDStateChangedNotification, 0, 1024);
  return v2;
}

- (void)dealloc
{
  timeFormatter = self->_timeFormatter;
  if (timeFormatter)
  {
    CFRelease(timeFormatter);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, BPSWorkoutDNDStateChangedNotification, 0);
  v5.receiver = self;
  v5.super_class = COSDNDController;
  [(COSDNDController *)&v5 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_27;
  }

  v5 = [(COSDNDController *)self loadSpecifiersFromPlistName:@"DoNotDisturb" target:self];
  v6 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v7 = [UIApp activeWatch];
  v8 = [[NSUUID alloc] initWithUUIDString:@"E2FB408E-3F1C-4F55-89DE-A25CDF6D4C39"];
  v49 = v7;
  v9 = [v7 supportsCapability:v8];

  v10 = [v5 specifierForID:@"DND_WORKOUT_ID"];
  if (v9)
  {
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"FOOTER_WORKOUT_DND" value:&stru_10026E598 table:@"DoNotDisturb"];
    v13 = [NSString stringWithFormat:v12];

    [v10 setProperty:v13 forKey:PSFooterTextGroupKey];
  }

  else
  {
    [v5 removeObject:v10];

    v10 = [v5 specifierForID:@"WORKOUT_DND_ID"];
    [v5 removeObject:v10];
  }

  v48 = v5;
  v47 = [v5 specifierForID:@"DND_ID"];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = +[PBBGatewayManager sharedManager];
  if ([v15 repeatedCalls])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v46 = [v14 localizedStringForKey:v16 value:&stru_10026E598 table:@"DoNotDisturb"];

  v17 = +[PBBGatewayManager sharedManager];
  v18 = [v17 doNotDisturbPrivilegedSenderType];

  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"NO_ONE" value:&stru_10026E598 table:@"DoNotDisturb"];

  if (v18 > 3)
  {
    if (v18 == 4)
    {
      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = v21;
      v23 = @"CONTACTS";
      goto LABEL_17;
    }

    if (v18 == 5)
    {
      v22 = +[PBBGatewayManager sharedManager];
      v24 = [v22 allowedGroupName];
LABEL_18:
      v25 = v24;

      v20 = v25;
    }
  }

  else
  {
    if (v18 == 1)
    {
      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = v21;
      v23 = @"EVERYONE";
      goto LABEL_17;
    }

    if (v18 == 3)
    {
      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = v21;
      v23 = @"FAVORITES";
LABEL_17:
      v24 = [v21 localizedStringForKey:v23 value:&stru_10026E598 table:@"DoNotDisturb"];
      goto LABEL_18;
    }
  }

  v26 = +[PBBGatewayManager sharedManager];
  v27 = [v26 isScheduled];

  if (v27)
  {
    timeFormatter = self->_timeFormatter;
    if (timeFormatter)
    {
      CFRelease(timeFormatter);
    }

    v45 = v3;
    v29 = CFLocaleCopyCurrent();
    self->_timeFormatter = CFDateFormatterCreate(0, v29, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
    if (v29)
    {
      CFRelease(v29);
    }

    v30 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v31 = self->_timeFormatter;
    v32 = +[PBBGatewayManager sharedManager];
    v33 = [v32 dndFromComponents];
    StringWithDate = CFDateFormatterCreateStringWithDate(0, v31, [v30 dateFromComponents:v33]);

    v35 = self->_timeFormatter;
    v36 = +[PBBGatewayManager sharedManager];
    v37 = [v36 dndToComponents];
    v38 = CFDateFormatterCreateStringWithDate(0, v35, [v30 dateFromComponents:v37]);

    v39 = [NSBundle bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"FOOTER_SCHEDULE" value:&stru_10026E598 table:@"DoNotDisturb"];
    v41 = v46;
    v42 = [NSString stringWithFormat:v40, StringWithDate, v38, v20, v46];

    v3 = v45;
  }

  else
  {
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    StringWithDate = [v30 localizedStringForKey:@"FOOTER_NO_SCHEDULE" value:&stru_10026E598 table:@"DoNotDisturb"];
    v41 = v46;
    v42 = [NSString stringWithFormat:StringWithDate, v20, v46];
  }

  [v47 setProperty:v42 forKey:PSFooterTextGroupKey];
  v43 = *&self->BPSListController_opaque[v3];
  *&self->BPSListController_opaque[v3] = v48;

  v4 = *&self->BPSListController_opaque[v3];
LABEL_27:

  return v4;
}

- (void)setDoNotDisturbMirrorState:(id)a3 specifier:(id)a4
{
  domainAccessor = self->_domainAccessor;
  v14 = a4;
  v7 = [a3 BOOLValue];
  v8 = BPSMirrorDNDKey;
  [(NPSDomainAccessor *)domainAccessor setBool:v7 forKey:BPSMirrorDNDKey];
  v9 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  npsManager = self->_npsManager;
  v11 = BPSDNDDomainKey;
  v12 = [NSSet setWithObject:v8];
  [(NPSManager *)npsManager synchronizeNanoDomain:v11 keys:v12];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, BPSMirrorDNDStateChangedNotification, 0, 0, 0);
  [(COSDNDController *)self reloadSpecifier:v14 animated:1];
}

- (id)doNotDisturbMirrorState:(id)a3
{
  v4 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v8 = 0;
  v5 = [(NPSDomainAccessor *)self->_domainAccessor BOOLForKey:BPSMirrorDNDKey keyExistsAndHasValidFormat:&v8];
  v6 = [NSNumber numberWithBool:v5 & 1u | ((v8 & 1) == 0)];

  return v6;
}

- (void)setWorkoutDoNotDisturbState:(id)a3 specifier:(id)a4
{
  domainAccessor = self->_domainAccessor;
  v6 = [a3 BOOLValue];
  v7 = BPSWorkoutDNDKey;
  [(NPSDomainAccessor *)domainAccessor setBool:v6 forKey:BPSWorkoutDNDKey];
  v8 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  npsManager = self->_npsManager;
  v10 = BPSDNDDomainKey;
  v11 = [NSSet setWithObject:v7];
  [(NPSManager *)npsManager synchronizeNanoDomain:v10 keys:v11];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v13 = BPSWorkoutDNDStateChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v13, 0, 0, 0);
}

- (id)doNotDisturbWorkoutState:(id)a3
{
  v4 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v8 = 0;
  v5 = [(NPSDomainAccessor *)self->_domainAccessor BOOLForKey:BPSWorkoutDNDKey keyExistsAndHasValidFormat:&v8];
  v6 = [NSNumber numberWithBool:v8 & v5 & 1];

  return v6;
}

@end