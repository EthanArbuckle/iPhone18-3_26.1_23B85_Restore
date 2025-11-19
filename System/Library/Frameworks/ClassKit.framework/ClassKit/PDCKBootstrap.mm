@interface PDCKBootstrap
- (BOOL)isSubscribedTo:(id)a3;
- (BOOL)maySyncWithProgressZone;
- (BOOL)maySyncWithSurveyAnswerZone;
- (BOOL)maySyncWithTeacherZone;
- (BOOL)writeZoneNamesForUserID:(id)a3;
- (void)cleanupStaleZoneInfo;
- (void)createMissingZones:(id)a3;
- (void)createRecordZonesIfNeeded;
- (void)execute;
- (void)markAsBootstrapped;
- (void)setSubscribed:(BOOL)a3 toSubscriptionWithID:(id)a4;
- (void)setupZones;
- (void)subscribeToZonesIfNeeded;
@end

@implementation PDCKBootstrap

- (BOOL)maySyncWithProgressZone
{
  v2 = [(PDOperation *)self database];
  v3 = sub_100043B24(v2);

  if (v3)
  {
    if (v3[11])
    {
      v4 = 1;
    }

    else
    {
      v4 = v3[8];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)maySyncWithTeacherZone
{
  v2 = [(PDOperation *)self database];
  v3 = v2;
  if (v2)
  {
    v4 = (sub_1000717E8(v2) >> 1) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)maySyncWithSurveyAnswerZone
{
  v2 = [(PDOperation *)self database];
  v3 = v2;
  if (v2)
  {
    v4 = sub_1000717E8(v2) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)execute
{
  [(PDCKBootstrap *)self cleanupStaleZoneInfo];
  if (sub_1000D2654(self))
  {

    [(PDCKBootstrap *)self setupZones];
  }

  else
  {

    [(PDCKBootstrap *)self subscribeToZonesIfNeeded];
  }
}

- (void)cleanupStaleZoneInfo
{
  v3 = [(PDOperation *)self database];
  if (![(PDCKBootstrap *)self maySyncWithProgressZone])
  {
    v4 = objc_opt_class();
    v15 = @"PDCK_ClassKitZoneName";
    v5 = [NSArray arrayWithObjects:&v15 count:1];
    [v3 deleteAll:v4 where:@"name = ?" bindings:v5];
  }

  if (![(PDCKBootstrap *)self maySyncWithTeacherZone])
  {
    v6 = objc_opt_class();
    v14 = @"PDCK_TeacherZoneName";
    v7 = [NSArray arrayWithObjects:&v14 count:1];
    [v3 deleteAll:v6 where:@"name = ?" bindings:v7];
  }

  if (![(PDCKBootstrap *)self maySyncWithAssetZone])
  {
    v8 = objc_opt_class();
    v13 = @"PDCK_ClassKitSharedAssetZone";
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    [v3 deleteAll:v8 where:@"name = ?" bindings:v9];
  }

  if (![(PDCKBootstrap *)self maySyncWithSurveyAnswerZone])
  {
    v10 = objc_opt_class();
    v12 = @"PDCK_StudentZoneName";
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [v3 deleteAll:v10 where:@"name = ?" bindings:v11];
  }
}

- (void)setupZones
{
  if (![(PDOperation *)self isAborted])
  {
    v3 = [(PDOperation *)self database];
    v4 = sub_10016A49C(v3, @"PDCK_iCloudUserID");

    if ([v4 length])
    {
      if ([(PDCKBootstrap *)self writeZoneNamesForUserID:v4])
      {
        [(PDCKBootstrap *)self createRecordZonesIfNeeded];
      }

      else
      {
        CLSInitLog();
        v6 = CLSLogSync;
        if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Failed to save record zone names in db", v7, 2u);
        }

        [(PDCKOperation *)self abort];
      }
    }

    else
    {
      CLSInitLog();
      v5 = CLSLogSync;
      if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "No valid user record id, bailing from ck bootstrap.", buf, 2u);
      }

      [(PDCKOperation *)self setBootstrapped:0];
      [(PDAsyncOperation *)self markAsFinished];
    }
  }
}

- (BOOL)writeZoneNamesForUserID:(id)a3
{
  v4 = a3;
  if ([(PDOperation *)self isAborted])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PDOperation *)self database];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D2CD0;
    v11[3] = &unk_1002038B0;
    v11[4] = self;
    v12 = v4;
    v13 = v6;
    v7 = v6;
    v8 = v7;
    if (v7)
    {
      v5 = [v7 performTransaction:v11 forWriting:1];
      v9 = v13;
    }

    else
    {
      v9 = 0;
      v5 = 0;
    }
  }

  return v5;
}

- (void)createRecordZonesIfNeeded
{
  if (![(PDOperation *)self isAborted])
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = [(PDOperation *)self database];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000D3044;
    v17[3] = &unk_1002029E8;
    v17[4] = self;
    v5 = v3;
    v18 = v5;
    sub_10010BE68(v4, v17);

    if ([v5 count])
    {
      objc_initWeak(&location, self);
      v6 = [CKFetchRecordZonesOperation alloc];
      v7 = [v5 allKeys];
      v8 = [v6 initWithRecordZoneIDs:v7];

      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_1000D3188;
      v12 = &unk_100204960;
      objc_copyWeak(&v15, &location);
      v13 = self;
      v14 = v5;
      [v8 setFetchRecordZonesCompletionBlock:&v9];
      [(PDCKOperation *)self performCKDatabaseOperation:v8, v9, v10, v11, v12, v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PDCKBootstrap *)self subscribeToZonesIfNeeded];
    }
  }
}

- (void)createMissingZones:(id)a3
{
  v4 = a3;
  if (![(PDOperation *)self isAborted])
  {
    objc_initWeak(&location, self);
    v5 = [[CKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:v4 recordZoneIDsToDelete:0];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_1000D3628;
    v9 = &unk_100203EB0;
    objc_copyWeak(&v10, &location);
    [v5 setModifyRecordZonesCompletionBlock:&v6];
    [(PDCKOperation *)self performCKDatabaseOperation:v5, v6, v7, v8, v9];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }
}

- (void)setSubscribed:(BOOL)a3 toSubscriptionWithID:(id)a4
{
  v6 = a4;
  v7 = [(PDOperation *)self database];
  sub_100169F38(v7, a3, v6);
}

- (BOOL)isSubscribedTo:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = sub_100169FD0(v5, v4);

  return v6;
}

- (void)markAsBootstrapped
{
  [(PDCKOperation *)self setBootstrapped:1];

  [(PDAsyncOperation *)self markAsFinished];
}

- (void)subscribeToZonesIfNeeded
{
  if (![(PDOperation *)self isAborted])
  {
    objc_initWeak(&location, self);
    v3 = objc_opt_new();
    v4 = [(PDCKOperation *)self progressZone];
    v5 = [v4 zoneID];

    if (v5 && ![(PDCKBootstrap *)self isSubscribedTo:@"com.apple.orion.ClassKit.progressSubscription"])
    {
      [v3 setObject:v5 forKeyedSubscript:@"com.apple.orion.ClassKit.progressSubscription"];
    }

    v6 = [(PDCKOperation *)self teacherZone];
    v7 = [v6 zoneID];

    if (v7 && ![(PDCKBootstrap *)self isSubscribedTo:@"com.apple.orion.ClassKit.teacherSubscription"])
    {
      [v3 setObject:v7 forKeyedSubscript:@"com.apple.orion.ClassKit.teacherSubscription"];
    }

    v8 = [(PDCKOperation *)self assetZone];
    v9 = [v8 zoneID];

    if (v9 && ![(PDCKBootstrap *)self isSubscribedTo:@"com.apple.orion.ClassKit.assetSubscription"])
    {
      [v3 setObject:v9 forKeyedSubscript:@"com.apple.orion.ClassKit.assetSubscription"];
    }

    v10 = [(PDCKOperation *)self surveyAnswerZone];
    v11 = [v10 zoneID];

    if (v11 && ![(PDCKBootstrap *)self isSubscribedTo:@"com.apple.orion.ClassKit.surveyAnswerSubscription"])
    {
      [v3 setObject:v11 forKeyedSubscript:@"com.apple.orion.ClassKit.surveyAnswerSubscription"];
    }

    if ([v3 count])
    {
      v12 = [CKFetchSubscriptionsOperation alloc];
      v13 = [v3 allKeys];
      v14 = [v12 initWithSubscriptionIDs:v13];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000D3AFC;
      v15[3] = &unk_100204988;
      objc_copyWeak(&v17, &location);
      v16 = v3;
      [v14 setFetchSubscriptionCompletionBlock:v15];
      [(PDCKOperation *)self performCKDatabaseOperation:v14];

      objc_destroyWeak(&v17);
    }

    else
    {
      [(PDCKBootstrap *)self markAsBootstrapped];
    }

    objc_destroyWeak(&location);
  }
}

@end