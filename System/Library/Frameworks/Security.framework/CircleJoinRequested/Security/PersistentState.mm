@interface PersistentState
+ (id)loadFromStorage;
- (void)writeToStorage;
@end

@implementation PersistentState

- (void)writeToStorage
{
  v25[0] = @"lastCircleStatus";
  v3 = [NSNumber numberWithInt:[(PersistentState *)self lastCircleStatus]];
  v26[0] = v3;
  v25[1] = @"lastWritten";
  v4 = +[NSDate date];
  v26[1] = v4;
  v25[2] = @"pendingApplicationReminder";
  pendingApplicationReminder = [(PersistentState *)self pendingApplicationReminder];
  v6 = pendingApplicationReminder;
  if (!pendingApplicationReminder)
  {
    v6 = +[NSDate distantFuture];
  }

  v26[2] = v6;
  v25[3] = @"applicationDate";
  applicationDate = [(PersistentState *)self applicationDate];
  v8 = applicationDate;
  if (!applicationDate)
  {
    v8 = +[NSDate distantPast];
  }

  v26[3] = v8;
  v25[4] = @"pendingApplicationReminderAlertInterval";
  v9 = [NSNumber numberWithUnsignedInt:[(PersistentState *)self pendingApplicationReminderAlertInterval]];
  v26[4] = v9;
  v25[5] = @"absentCircleWithNoReason";
  v10 = [NSNumber numberWithBool:[(PersistentState *)self absentCircleWithNoReason]];
  v26[5] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:6];

  if (!applicationDate)
  {
  }

  if (!pendingApplicationReminder)
  {
  }

  debugShowLeftReason = [(PersistentState *)self debugShowLeftReason];

  if (debugShowLeftReason)
  {
    v13 = [v11 mutableCopy];
    debugShowLeftReason2 = [(PersistentState *)self debugShowLeftReason];
    [v13 setObject:debugShowLeftReason2 forKeyedSubscript:@"debugShowLeftReason"];

    v15 = [v13 copy];
    v11 = v15;
  }

  NSLog(@"writeToStorage plist=%@", v11);
  v24 = 0;
  v16 = [NSPropertyListSerialization dataWithPropertyList:v11 format:100 options:0 error:&v24];
  v17 = v24;
  v18 = v17;
  if (v16)
  {
    urlForStorage = [(PersistentState *)self urlForStorage];
    v23 = v18;
    v20 = [v16 writeToURL:urlForStorage options:1 error:&v23];
    v21 = v23;

    if ((v20 & 1) == 0)
    {
      urlForStorage2 = [(PersistentState *)self urlForStorage];
      NSLog(@"Can't write to %@, error=%@", urlForStorage2, v21);
    }

    v18 = v21;
  }

  else
  {
    NSLog(@"Can't serialize %@: %@", v11, v17);
  }
}

+ (id)loadFromStorage
{
  v2 = objc_alloc_init(PersistentState);
  if (v2)
  {
    v29 = @"lastWritten";
    v3 = +[NSDate distantPast];
    v30 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    urlForStorage = [(PersistentState *)v2 urlForStorage];
    v28 = 0;
    v6 = [NSData dataWithContentsOfURL:urlForStorage options:0 error:&v28];
    v7 = v28;

    if (v6)
    {
      v26 = 0;
      v27 = 0xAAAAAAAAAAAAAAAALL;
      v8 = [NSPropertyListSerialization propertyListWithData:v6 options:2 format:&v27 error:&v26];
      v9 = v26;

      if (v8)
      {
        v10 = v8;

        v4 = v10;
      }

      else
      {
        NSLog(@"Can't deserialize %@, e=%@", v6, v9);
      }
    }

    else
    {
      urlForStorage2 = [(PersistentState *)v2 urlForStorage];
      NSLog(@"Can't read state data (p=%@, err=%@)", urlForStorage2, v7);

      v9 = v7;
    }

    v12 = [v4 objectForKeyedSubscript:@"lastCircleStatus"];
    if (v12)
    {
      v13 = [v4 objectForKeyedSubscript:@"lastCircleStatus"];
      -[PersistentState setLastCircleStatus:](v2, "setLastCircleStatus:", [v13 intValue]);
    }

    else
    {
      [(PersistentState *)v2 setLastCircleStatus:3];
    }

    v14 = [v4 objectForKeyedSubscript:@"lastWritten"];
    [(PersistentState *)v2 setLastWritten:v14];

    v15 = [v4 objectForKeyedSubscript:@"pendingApplicationReminder"];
    if (v15)
    {
      [(PersistentState *)v2 setPendingApplicationReminder:v15];
    }

    else
    {
      v16 = +[NSDate distantFuture];
      [(PersistentState *)v2 setPendingApplicationReminder:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"applicationDate"];
    if (v17)
    {
      [(PersistentState *)v2 setApplicationDate:v17];
    }

    else
    {
      v18 = +[NSDate distantPast];
      [(PersistentState *)v2 setApplicationDate:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"debugShowLeftReason"];
    [(PersistentState *)v2 setDebugShowLeftReason:v19];

    v20 = [v4 objectForKeyedSubscript:@"pendingApplicationReminderAlertInterval"];
    if (v20)
    {
      v21 = [v4 objectForKeyedSubscript:@"pendingApplicationReminderAlertInterval"];
      -[PersistentState setPendingApplicationReminderAlertInterval:](v2, "setPendingApplicationReminderAlertInterval:", [v21 unsignedIntValue]);
    }

    else
    {
      [(PersistentState *)v2 setPendingApplicationReminderAlertInterval:[(PersistentState *)v2 defaultPendingApplicationReminderAlertInterval]];
    }

    v22 = [v4 objectForKeyedSubscript:@"absentCircleWithNoReason"];
    if (v22)
    {
      v23 = [v4 objectForKeyedSubscript:@"absentCircleWithNoReason"];
      -[PersistentState setAbsentCircleWithNoReason:](v2, "setAbsentCircleWithNoReason:", [v23 intValue] != 0);
    }

    else
    {
      [(PersistentState *)v2 setAbsentCircleWithNoReason:0];
    }

    v24 = v2;
  }

  return v2;
}

@end