@interface FRNotificationManager
+ (void)initialize;
- (FRNotificationManager)initWithFeldsparContext:(id)a3;
- (id)_combinedStringWithTagNames:(id)a3;
- (id)_identifierWithPrefix:(id)a3 tags:(id)a4;
- (id)_notificationAttachmentsWithThumbnailFileURL:(id)a3 publisherLogoFileURL:(id)a4 publisherLogoCompactFileURL:(id)a5;
- (void)_notifyOfTagsWithNotificationAvailable:(id)a3;
- (void)_notifyOfTagsWithNotificationEnabled:(id)a3;
- (void)_scheduleLocalNotificationWithIdentifier:(id)a3 title:(id)a4 body:(id)a5 userInfo:(id)a6 category:(id)a7 timeInterval:(double)a8;
- (void)autoEnableNotificationsForPreSubscribedChannels;
- (void)notifyDeviceTokenIsAvailable:(id)a3;
- (void)scheduleLocalNotificationForArticleID:(id)a3 completion:(id)a4;
@end

@implementation FRNotificationManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v4[0] = @"notification_alert_frequency";
    v4[1] = FCNotificationChannelsRefreshFrequencyKey;
    v5[0] = &off_1000CB528;
    v5[1] = &off_1000CB528;
    v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 registerDefaults:v2];
  }
}

- (FRNotificationManager)initWithFeldsparContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FRNotificationManager;
  v6 = [(FRNotificationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feldsparContext, a3);
  }

  return v7;
}

- (void)autoEnableNotificationsForPreSubscribedChannels
{
  v3 = [(FRNotificationManager *)self deviceToken];

  if (v3)
  {
    [(FRNotificationManager *)self setAutoEnableNotificationsIsPending:0];
    v4 = [FRNotificationAutoEnableHelper alloc];
    v5 = [(FRNotificationManager *)self feldsparContext];
    v6 = [(FRNotificationAutoEnableHelper *)v4 initWithFeldsparContext:v5];
    [(FRNotificationManager *)self setNotificationAutoEnableHelper:v6];

    v7 = [(FRNotificationManager *)self notificationAutoEnableHelper];
    [v7 autoEnableNotificationsForPreSubscribedChannels];
  }

  else
  {

    [(FRNotificationManager *)self setAutoEnableNotificationsIsPending:1];
  }
}

- (void)notifyDeviceTokenIsAvailable:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  [(FRNotificationManager *)self setDeviceToken:v4];

  if ([(FRNotificationManager *)self autoEnableNotificationsIsPending])
  {

    [(FRNotificationManager *)self autoEnableNotificationsForPreSubscribedChannels];
  }
}

- (void)_notifyOfTagsWithNotificationAvailable:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = [v4 allObjects];
    v8 = [(FRNotificationManager *)self _identifierWithPrefix:@"LocalNotificationAvailable" tags:v7];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Notifications Available" value:&stru_1000C67A8 table:0];

    v17 = @"LocalNotificationTypeKey";
    v18 = @"NotificationSupportType";
    v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    if (v6 == 1)
    {
      v12 = [v4 anyObject];
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"%@ now offers notifications about important stories." value:&stru_1000C67A8 table:0];
      v15 = [v12 name];
      [NSString stringWithFormat:v14, v15];
    }

    else
    {
      v12 = [v4 fc_arrayByTransformingWithBlock:&stru_1000C4040];
      v13 = [(FRNotificationManager *)self _combinedStringWithTagNames:v12];
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"%@ now offer notifications in Apple News." value:&stru_1000C67A8 table:0];
      [NSString stringWithFormat:v15, v13];
    }
    v16 = ;

    [(FRNotificationManager *)self _scheduleLocalNotificationWithIdentifier:v8 title:v10 body:v16 userInfo:v11 category:FCNotificationChannelNotificationSupportCategory timeInterval:3.0];
  }
}

- (void)_notifyOfTagsWithNotificationEnabled:(id)a3
{
  v4 = a3;
  if ([v4 count] >= 1)
  {
    v5 = [v4 allObjects];
    v6 = [(FRNotificationManager *)self _identifierWithPrefix:@"LocalNotificationEnabled" tags:v5];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Notifications Now Available" value:&stru_1000C67A8 table:0];

    v15 = @"LocalNotificationTypeKey";
    v16 = @"NotificationSupportType";
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [v4 fc_arrayByTransformingWithBlock:&stru_1000C4060];
    v11 = [(FRNotificationManager *)self _combinedStringWithTagNames:v10];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"%@ will start sending you notifications about important stories." value:&stru_1000C67A8 table:0];
    v14 = [NSString stringWithFormat:v13, v11];

    [(FRNotificationManager *)self _scheduleLocalNotificationWithIdentifier:v6 title:v8 body:v14 userInfo:v9 category:FCNotificationChannelNotificationSupportCategory timeInterval:3.0];
  }
}

- (id)_combinedStringWithTagNames:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = [v3 count];
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v5 == 2)
    {
      v8 = @"%@ and %@";
    }

    else
    {
      v8 = @"%@, %@, and others";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_1000C67A8 table:0];
    v10 = [v3 objectAtIndexedSubscript:0];
    v11 = [v3 objectAtIndexedSubscript:1];
    v4 = [NSString stringWithFormat:v9, v10, v11];
  }

  return v4;
}

- (id)_identifierWithPrefix:(id)a3 tags:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSMutableString alloc] initWithString:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100039FA0;
  v10[3] = &unk_1000C4088;
  v8 = v7;
  v11 = v8;
  [v5 enumerateObjectsUsingBlock:v10];

  return v8;
}

- (void)scheduleLocalNotificationForArticleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FRNotificationManager *)self feldsparContext];
  v9 = [v8 cloudContext];
  v10 = [v9 articleController];
  v21 = v7;
  v11 = [NSArray arrayWithObjects:&v21 count:1];
  v12 = [v10 headlinesFetchOperationForArticleIDs:v11];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10003A178;
  v18 = &unk_1000C4168;
  v19 = self;
  v20 = v6;
  v13 = v6;
  [v12 setFetchCompletionBlock:&v15];
  v14 = [NSOperationQueue fc_sharedConcurrentQueue:v15];
  [v14 addOperation:v12];
}

- (id)_notificationAttachmentsWithThumbnailFileURL:(id)a3 publisherLogoFileURL:(id)a4 publisherLogoCompactFileURL:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSMutableArray array];
  if (v7)
  {
    v11 = [v7 path];
    v12 = [UIImage imageWithContentsOfFile:v11];

    v13 = 0.0;
    if (v12)
    {
      [v12 size];
      v15 = v14;
      [v12 size];
      v17 = v16;
      [v12 size];
      v44 = v18;
      v20 = v19;
      [v12 size];
      v22 = v21;
      v24 = v23;
      [v12 size];
      v26 = v25;
      v28 = v27;
      [v12 size];
      if (v15 <= v17)
      {
        v13 = (v20 - v22) / v28;
        v34 = 1.0;
        v33 = 1.0 - (v20 - v22 + v20 - v22) / v30;
        v32 = 0.0;
      }

      else
      {
        v31 = v29;
        v32 = (v44 - v24) / v26;
        v33 = 1.0;
        v34 = 1.0 - (v44 - v24 + v44 - v24) / v31;
      }
    }

    else
    {
      v34 = 1.0;
      v32 = 0.0;
      v33 = 1.0;
    }

    v52[0] = UNNotificationAttachmentOptionsThumbnailClippingRectKey;
    v35 = v13;
    v52[1] = UNNotificationAttachmentOptionsTypeHintKey;
    v53[0] = CGRectCreateDictionaryRepresentation(*&v32);
    v53[1] = kUTTypeJPEG;
    v36 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
    v47 = 0;
    v37 = [UNNotificationAttachment attachmentWithIdentifier:NSSNotificationAttachmentThumbnailKey URL:v7 options:v36 error:&v47];
    if (v37)
    {
      [v10 addObject:v37];
    }
  }

  if (v8)
  {
    v50[0] = UNNotificationAttachmentOptionsTypeHintKey;
    v50[1] = UNNotificationAttachmentOptionsThumbnailHiddenKey;
    v51[0] = kUTTypePNG;
    v51[1] = &__kCFBooleanTrue;
    v38 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
    v46 = 0;
    v39 = [UNNotificationAttachment attachmentWithIdentifier:NSSNotificationAttachmentPublisherLogoKey URL:v8 options:v38 error:&v46];
    if (v39)
    {
      [v10 addObject:v39];
    }
  }

  if (v9)
  {
    v48[0] = UNNotificationAttachmentOptionsTypeHintKey;
    v48[1] = UNNotificationAttachmentOptionsThumbnailHiddenKey;
    v49[0] = kUTTypePNG;
    v49[1] = &__kCFBooleanTrue;
    v40 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
    v45 = 0;
    v41 = [UNNotificationAttachment attachmentWithIdentifier:NSSNotificationAttachmentPublisherLogoCompactKey URL:v9 options:v40 error:&v45];
    if (v41)
    {
      [v10 addObject:v41];
    }
  }

  v42 = [v10 copy];

  return v42;
}

- (void)_scheduleLocalNotificationWithIdentifier:(id)a3 title:(id)a4 body:(id)a5 userInfo:(id)a6 category:(id)a7 timeInterval:(double)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v22 = objc_alloc_init(UNMutableNotificationContent);
  [v22 setTitle:v16];

  [v22 setBody:v15];
  [v22 setUserInfo:v14];

  [v22 setCategoryIdentifier:v13];
  v18 = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:0 repeats:a8];
  v19 = [UNNotificationRequest requestWithIdentifier:v17 content:v22 trigger:v18];

  v20 = +[UNUserNotificationCenter currentNotificationCenter];
  [v20 removeAllPendingNotificationRequests];

  v21 = +[UNUserNotificationCenter currentNotificationCenter];
  [v21 addNotificationRequest:v19 withCompletionHandler:&stru_1000C4188];
}

@end