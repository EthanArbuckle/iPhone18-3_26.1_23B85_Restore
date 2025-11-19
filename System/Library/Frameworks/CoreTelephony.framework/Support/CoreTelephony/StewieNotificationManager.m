@interface StewieNotificationManager
- (StewieNotificationManager)initWithQueue:(id)a3 localizationService:(shared_ptr<LocalizationInterface>)a4;
- (id).cxx_construct;
- (void)dismissNotification:(id)a3;
- (void)postNotification:(const void *)a3;
- (void)registerActions;
- (void)registerOfferCategory:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation StewieNotificationManager

- (StewieNotificationManager)initWithQueue:(id)a3 localizationService:(shared_ptr<LocalizationInterface>)a4
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = StewieNotificationManager;
  if ([(StewieNotificationManager *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (void)registerActions
{
  objc_initWeak(&location, self);
  fUserNotificationCenter = self->fUserNotificationCenter;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_101652CB0;
  v4[3] = &unk_101F5D128;
  objc_copyWeak(&v5, &location);
  [(UNUserNotificationCenter *)fUserNotificationCenter getNotificationCategoriesWithCompletionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)registerOfferCategory:(id)a3
{
  v21 = a3;
  v4 = sub_100032AC8(self->logger.__ptr_);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v28[0] = @"OffGridModeOfferAlert";
    v28[1] = @"OffGridModeOffer";
    v5 = [NSArray arrayWithObjects:v28 count:2];
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Registering '%@' notification categories", buf, 0xCu);
  }

  ptr = self->fLocalizationService.__ptr_;
  cntrl = self->fLocalizationService.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v8 = kBifrostLocalizationTable;
  (*(*ptr + 40))(buf, ptr, kBifrostLocalizationTable, @"BIFROST_MESSAGING_LOCK_SCREEN_OTG_OFFER_ACTION_ACCEPT", 0);
  v9 = *buf;
  sub_100005978(buf);
  (*(*ptr + 40))(buf, ptr, v8, @"BIFROST_MESSAGING_LOCK_SCREEN_OTG_OFFER_ACTION_DECLINE", 0);
  v10 = *buf;
  sub_100005978(buf);
  if (v9 && v10)
  {
    v11 = [v21 mutableCopy];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10165320C;
    v22[3] = &unk_101F5D150;
    v23 = @"OffGridModeOfferAlert";
    v24 = self;
    v25 = @"OffGridModeOffer";
    v12 = [NSPredicate predicateWithBlock:v22];
    [v11 filterUsingPredicate:v12];

    v20 = [UNNotificationCategory categoryWithIdentifier:@"OffGridModeOfferAlert" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:0];
    v13 = [UNNotificationAction actionWithIdentifier:@"Accept" title:v9 options:4];
    v14 = [UNNotificationAction actionWithIdentifier:@"Decline" title:v10 options:0];
    v27[0] = v14;
    v27[1] = v13;
    v15 = [NSArray arrayWithObjects:v27 count:2];
    v16 = [UNNotificationCategory categoryWithIdentifier:@"OffGridModeOffer" actions:v15 intentIdentifiers:&__NSArray0__struct options:131085];

    fUserNotificationCenter = self->fUserNotificationCenter;
    v26[0] = v20;
    v26[1] = v16;
    v18 = [NSArray arrayWithObjects:v26 count:2];
    v19 = [v11 setByAddingObjectsFromArray:v18];
    [(UNUserNotificationCenter *)fUserNotificationCenter setNotificationCategories:v19];
  }

  else
  {
    v11 = sub_100032AC8(self->logger.__ptr_);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to reteieve localized strings", buf, 2u);
    }
  }

  if (cntrl)
  {
    sub_100004A34(cntrl);
  }
}

- (void)postNotification:(const void *)a3
{
  v5 = objc_opt_new();
  v6 = v5;
  if (*a3)
  {
    [v5 setTitle:?];
  }

  if (*(a3 + 1))
  {
    [v6 setBody:?];
  }

  v7 = [UNNotificationIcon iconForSystemImageNamed:@"satellite.wave.2.fill"];
  [v6 setIcon:v7];

  if (*(a3 + 4))
  {
    [v6 setCategoryIdentifier:?];
  }

  [v6 setInterruptionLevel:2];
  [v6 setShouldHideDate:1];
  [v6 setShouldHideTime:1];
  [v6 setShouldIgnoreDowntime:1];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setShouldPreemptPresentedNotification:1];
  [v6 setShouldDisplayActionsInline:*(a3 + 41)];
  [v6 setShouldBackgroundDefaultAction:1];
  if (*(a3 + 40))
  {
    v8 = 6;
  }

  else
  {
    v8 = 1;
  }

  v9 = [UNNotificationRequest requestWithIdentifier:*(a3 + 3) content:v6 trigger:0 destinations:v8];
  v10 = sub_100032AC8(self->logger.__ptr_);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Posting notification request: %@", &v11, 0xCu);
  }

  [(UNUserNotificationCenter *)self->fUserNotificationCenter addNotificationRequest:v9 withCompletionHandler:&stru_101F5D170];
}

- (void)dismissNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100032AC8(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Dismissing notification: %@", buf, 0xCu);
  }

  fUserNotificationCenter = self->fUserNotificationCenter;
  v8 = v4;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [(UNUserNotificationCenter *)fUserNotificationCenter removeDeliveredNotificationsWithIdentifiers:v7];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100032AC8(self->logger.__ptr_);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I didReceiveNotificationResponse %@", &v10, 0xCu);
  }

  if (v8)
  {
    v8[2](v8);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end