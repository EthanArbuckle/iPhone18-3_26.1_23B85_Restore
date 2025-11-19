@interface DOMAccessoryArbitrator
+ (BOOL)isInF5Mode;
+ (id)sharedDomAccessoryArbitrator;
- (DOMAccessoryArbitrator)init;
- (id)createUserNotificationDict;
- (id)jobType:(id)a3 jobType:(int *)a4;
- (void)addBadDevicesToDialogDictBody:(id)a3;
- (void)addMatchingThings:(id)a3 matchJob:(id)a4;
- (void)addNotification:(id)a3 matchJob:(id)a4;
- (void)addPersonality:(id)a3 matchJob:(id)a4;
- (void)dealloc;
- (void)displayDialog;
- (void)displayOverCurrentDialog;
- (void)loadLaunchdJobsAtPath:(id)a3;
- (void)matchDevice:(id)a3;
- (void)overcurrentCondition:(unsigned int)a3;
- (void)probePersonalitiesForService:(unsigned int)a3 ofDevice:(id)a4 inGroup:(id)a5;
- (void)registerOffendingDomDevice:(id)a3;
- (void)releaseOverCurrentDialog;
- (void)scanPlistsAtPath:(id)a3 execBlock:(id)a4;
- (void)scheduleDialog;
- (void)unregisterOffendingDomDevice:(id)a3;
- (void)userDismissedNotification:(__CFUserNotification *)a3;
- (void)userDismissedOvercurrentNotification:(__CFUserNotification *)a3;
@end

@implementation DOMAccessoryArbitrator

+ (id)sharedDomAccessoryArbitrator
{
  if (qword_100014FE8 != -1)
  {
    sub_100008120();
  }

  v3 = qword_100014FE0;

  return v3;
}

- (DOMAccessoryArbitrator)init
{
  v13.receiver = self;
  v13.super_class = DOMAccessoryArbitrator;
  v2 = [(DOMAccessoryArbitrator *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    personalities = v2->_personalities;
    v2->_personalities = v3;

    v5 = IONotificationPortCreate(kIOMainPortDefault);
    v2->_ioNotificationPort = v5;
    if (v5)
    {
      IONotificationPortSetDispatchQueue(v5, &_dispatch_main_q);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100008134();
    }

    objc_storeStrong(&v2->mainQ, &_dispatch_main_q);
    [(DOMAccessoryArbitrator *)v2 loadLaunchdJobsAtPath:@"/System/Library/LaunchDaemons/"];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100001F24;
    v11[3] = &unk_1000106C0;
    v6 = v2;
    v12 = v6;
    [(DOMAccessoryArbitrator *)v6 scanPlistsAtPath:@"/System/Library/DeviceOMatic/" execBlock:v11];
    v6->_iOSDeviceThreshold = 0;
    v7 = MGCopyAnswer();
    v8 = v7;
    if (v7)
    {
      if (([v7 isEqualToString:@"iPad"] & 1) == 0)
      {
        v6->_iOSDeviceThreshold = 32766;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not lookup the iOS device class?", &v10, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ENTRY", buf, 2u);
  }

  ioNotificationPort = self->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
  }

  v4.receiver = self;
  v4.super_class = DOMAccessoryArbitrator;
  [(DOMAccessoryArbitrator *)&v4 dealloc];
}

- (void)registerOffendingDomDevice:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->mainQ);
  badDevices = self->badDevices;
  if (!badDevices)
  {
    v5 = [NSMutableArray arrayWithCapacity:0];
    v6 = self->badDevices;
    self->badDevices = v5;

    badDevices = self->badDevices;
  }

  [(NSMutableArray *)badDevices addObject:v7];
  [(DOMAccessoryArbitrator *)self scheduleDialog];
}

- (void)unregisterOffendingDomDevice:(id)a3
{
  mainQ = self->mainQ;
  v5 = a3;
  dispatch_assert_queue_V2(mainQ);
  [(NSMutableArray *)self->badDevices removeObject:v5];

  [(DOMAccessoryArbitrator *)self displayDialog];
}

- (void)addBadDevicesToDialogDictBody:(id)a3
{
  v16 = a3;
  v4 = [NSMutableArray arrayWithCapacity:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->badDevices;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 dialogBodyKey];
        v11 = [v9 name];

        if (v11)
        {
          [v9 name];
        }

        else
        {
          sub_10000626C(@"Accessory");
        }
        v12 = ;
        v13 = [NSString stringWithFormat:v10, v12];
        [v4 addObject:v13];

        if ([v9 isThunderboltDevice])
        {
          v14 = sub_10000626C(@"Cannot Use Thunderbolt Accessory");
          [v16 setObject:v14 forKey:kCFUserNotificationAlertHeaderKey];
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = [v4 componentsJoinedByString:@"\n"];
  [v16 setObject:v15 forKey:kCFUserNotificationAlertMessageKey];
}

- (id)createUserNotificationDict
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  v4 = [NSNumber numberWithBool:1];
  [v3 setValue:v4 forKey:kCFUserNotificationAlertTopMostKey];

  v5 = sub_10000626C(@"Cannot Use Accessory");
  [v3 setObject:v5 forKey:kCFUserNotificationAlertHeaderKey];

  [(DOMAccessoryArbitrator *)self addBadDevicesToDialogDictBody:v3];
  v6 = sub_10000626C(@"OK");
  [v3 setObject:v6 forKey:kCFUserNotificationDefaultButtonTitleKey];

  return v3;
}

- (void)userDismissedNotification:(__CFUserNotification *)a3
{
  dispatch_assert_queue_V2(self->mainQ);
  if (a3)
  {
    if (self->notificationRef != a3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      notificationRef = self->notificationRef;
      v6 = 134218240;
      v7 = a3;
      v8 = 2048;
      v9 = notificationRef;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "notification %p is not the same as notificationRef %p", &v6, 0x16u);
    }

    [(NSMutableArray *)self->badDevices removeAllObjects];
    [(DOMAccessoryArbitrator *)self displayDialog];
  }
}

- (void)userDismissedOvercurrentNotification:(__CFUserNotification *)a3
{
  if (a3)
  {
    if (self->overcurrentNotificationRef != a3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      overcurrentNotificationRef = self->overcurrentNotificationRef;
      v6 = 134218240;
      v7 = a3;
      v8 = 2048;
      v9 = overcurrentNotificationRef;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "notification %p is not the same as overcurrentNotificationRef %p", &v6, 0x16u);
    }

    [(DOMAccessoryArbitrator *)self releaseOverCurrentDialog];
  }
}

- (void)displayDialog
{
  if (sub_1000027A0())
  {
    dispatch_assert_queue_V2(self->mainQ);
    v3 = [(NSMutableArray *)self->badDevices count];
    notificationRef = self->notificationRef;
    if (v3)
    {
      v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (notificationRef)
      {
        if (v5)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "dialog already up, refresh", buf, 2u);
        }

        CFUserNotificationUpdate(self->notificationRef, 0.0, 3uLL, [(DOMAccessoryArbitrator *)self createUserNotificationDict]);
      }

      else
      {
        if (v5)
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "displaying unsupported dialog", v10, 2u);
        }

        Main = CFRunLoopGetMain();
        v7 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, 0, [(DOMAccessoryArbitrator *)self createUserNotificationDict]);
        self->notificationRef = v7;
        if (v7)
        {
          RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v7, sub_100002878, 0);
          if (RunLoopSource)
          {
            v9 = RunLoopSource;
            CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
            CFRelease(v9);
          }

          else
          {
            CFRelease(self->notificationRef);
            self->notificationRef = 0;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1000081B8();
            }
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000081FC();
        }
      }
    }

    else if (notificationRef)
    {
      CFUserNotificationCancel(self->notificationRef);
      CFRelease(self->notificationRef);
      self->notificationRef = 0;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device-O-Matic dialogs are disabled, we'll not bother the user.", v12, 2u);
  }
}

- (void)releaseOverCurrentDialog
{
  overcurrentNotificationRef = self->overcurrentNotificationRef;
  if (overcurrentNotificationRef)
  {
    CFUserNotificationCancel(overcurrentNotificationRef);
    CFRelease(self->overcurrentNotificationRef);
    self->overcurrentNotificationRef = 0;
  }

  ioOvercurrentNotificationPort = self->_ioOvercurrentNotificationPort;
  if (ioOvercurrentNotificationPort)
  {
    IONotificationPortDestroy(ioOvercurrentNotificationPort);
    self->_ioOvercurrentNotificationPort = 0;
  }

  io_overcurrentNotification = self->_io_overcurrentNotification;
  if (io_overcurrentNotification)
  {
    IOObjectRelease(io_overcurrentNotification);
    self->_io_overcurrentNotification = 0;
  }
}

- (void)displayOverCurrentDialog
{
  if (sub_1000027A0())
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [NSNumber numberWithBool:1];
    [v3 setValue:v4 forKey:kCFUserNotificationAlertTopMostKey];

    v5 = sub_10000626C(@"Cannot Use Accessory");
    [v3 setObject:v5 forKey:kCFUserNotificationAlertHeaderKey];

    v6 = sub_10000626C(@"This accessory uses too much power");
    [v3 setObject:v6 forKey:kCFUserNotificationAlertMessageKey];

    overcurrentNotificationRef = self->overcurrentNotificationRef;
    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (overcurrentNotificationRef)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "dialog already up, refresh", buf, 2u);
      }

      CFUserNotificationUpdate(self->overcurrentNotificationRef, 0.0, 3uLL, v3);
    }

    else
    {
      if (v8)
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "displaying unsupported dialog", v13, 2u);
      }

      Main = CFRunLoopGetMain();
      v10 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, 0, v3);
      self->overcurrentNotificationRef = v10;
      if (v10)
      {
        RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v10, sub_100002BB0, 0);
        if (RunLoopSource)
        {
          v12 = RunLoopSource;
          CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
          CFRelease(v12);
        }

        else
        {
          CFRelease(self->overcurrentNotificationRef);
          self->overcurrentNotificationRef = 0;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1000081B8();
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100008254();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device-O-Matic dialogs are disabled, we'll not bother the user.", v15, 2u);
  }
}

- (void)scheduleDialog
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->mainQ);
  v4 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002CDC;
  v6[3] = &unk_1000106E8;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_source_set_event_handler(v5, v6);
  dispatch_resume(v5);
}

- (void)addPersonality:(id)a3 matchJob:(id)a4
{
  v6 = a3;
  v7 = a4;
  notification = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    IOServiceAddMatchingNotification([(DOMAccessoryArbitrator *)self ioNotificationPort], "IOServiceFirstMatch", v6, sub_100002DCC, v7, &notification);
    sub_100002DCC(v7, notification);
  }
}

- (void)addNotification:(id)a3 matchJob:(id)a4
{
  name = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_100002F38, name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)addMatchingThings:(id)a3 matchJob:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if ([v7 jobType] == 1)
          {
            [(DOMAccessoryArbitrator *)self addNotification:v13 matchJob:v7];
          }

          else if (![v7 jobType])
          {
            [(DOMAccessoryArbitrator *)self addPersonality:v13 matchJob:v7];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else if ([v7 jobType] == 1)
  {
    [(DOMAccessoryArbitrator *)self addNotification:v6 matchJob:v7];
  }

  else if (![v7 jobType])
  {
    [(DOMAccessoryArbitrator *)self addPersonality:v6 matchJob:v7];
  }
}

- (void)scanPlistsAtPath:(id)a3 execBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:v5];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v5 stringByAppendingPathComponent:*(*(&v15 + 1) + 8 * v12)];
        v14 = [NSDictionary dictionaryWithContentsOfFile:v13];
        if (v14)
        {
          v6[2](v6, v14);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100008388(buf, v13, &v20);
          }
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v10);
  }
}

- (id)jobType:(id)a3 jobType:(int *)a4
{
  v5 = a3;
  v6 = [v5 objectForKey:@"LaunchBuddyIOServiceMatching"];
  if (v6)
  {
    v7 = v6;
    v8 = 2;
  }

  else
  {
    v9 = [v5 objectForKey:@"LaunchBuddyNotificationLaunching"];
    if (v9)
    {
      v7 = v9;
      v8 = 1;
    }

    else
    {
      v7 = [v5 objectForKey:@"LaunchBuddyIOKitLaunching"];
      if (!v7)
      {
        goto LABEL_8;
      }

      v8 = 0;
    }
  }

  *a4 = v8;
LABEL_8:

  return v7;
}

- (void)loadLaunchdJobsAtPath:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003794;
  v3[3] = &unk_1000106C0;
  v3[4] = self;
  [(DOMAccessoryArbitrator *)self scanPlistsAtPath:a3 execBlock:v3];
}

- (void)probePersonalitiesForService:(unsigned int)a3 ofDevice:(id)a4 inGroup:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(DOMAccessoryArbitrator *)self personalities];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003A28;
  v13[3] = &unk_100010788;
  v16 = a3;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 enumerateObjectsUsingBlock:v13];
}

- (void)matchDevice:(id)a3
{
  v4 = a3;
  group = dispatch_group_create();
  iterator = 0;
  v38 = objc_alloc_init(NSMutableSet);
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_1000042A4;
  v58 = sub_1000042B4;
  v59 = 0;
  v40 = v4;
  if (IORegistryEntryCreateIterator([v4 io_service], "IOService", 1u, &iterator))
  {
    v34 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v35 = __error();
      v36 = strerror(*v35);
      sub_1000083D4(v36, buf);
    }

    v19 = 0;
  }

  else
  {
    v37 = self;
    do
    {
      IOIteratorReset(iterator);
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v5 = v38;
      v6 = [v5 countByEnumeratingWithState:&v50 objects:v74 count:16];
      if (v6)
      {
        v7 = *v51;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v51 != v7)
            {
              objc_enumerationMutation(v5);
            }

            IOObjectRelease([*(*(&v50 + 1) + 8 * i) unsignedIntValue]);
          }

          v6 = [v5 countByEnumeratingWithState:&v50 objects:v74 count:16];
        }

        while (v6);
      }

      [v5 removeAllObjects];
      [v55[5] removeAllObjects];
      while (1)
      {
        v9 = IOIteratorNext(iterator);
        if (!v9)
        {
          break;
        }

        v10 = [NSNumber numberWithUnsignedInt:v9];
        [v5 addObject:v10];

        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v46 = sub_1000042BC;
        v47 = &unk_1000107B0;
        v48 = &v54;
        v49 = v9;
        v11 = v45;
        v12 = sub_100006494();
        if (v12)
        {
          if (*(v12 + 44) >= 5)
          {
            v46(v11);
          }
        }
      }
    }

    while (!IOIteratorIsValid(iterator));
    IOObjectRelease(iterator);
    v13 = v37;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v41 objects:v73 count:16];
    if (v15)
    {
      v16 = *v42;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = [*(*(&v41 + 1) + 8 * j) unsignedIntValue];
          IOServiceWaitQuiet(v18, 0);
          [(DOMAccessoryArbitrator *)v13 probePersonalitiesForService:v18 ofDevice:v40 inGroup:group];
          IOObjectRelease(v18);
        }

        v15 = [v14 countByEnumeratingWithState:&v41 objects:v73 count:16];
      }

      while (v15);
    }

    -[DOMAccessoryArbitrator probePersonalitiesForService:ofDevice:inGroup:](v37, "probePersonalitiesForService:ofDevice:inGroup:", [v40 io_service], v40, group);
    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    v19 = [v40 winningDomPersonality];
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v40 name];
      if (v19)
      {
        v22 = [v19 personalityName];
      }

      else
      {
        v22 = @"nobody";
      }

      v23 = [v40 winningScore];
      v24 = [(DOMAccessoryArbitrator *)v37 iOSDeviceThreshold];
      v25 = [v40 properties];
      v26 = sub_100006574(v25);
      v27 = sub_100006574(v55[5]);
      *buf = 138413570;
      v62 = v21;
      v63 = 2112;
      v64 = v22;
      v65 = 2112;
      v66 = v23;
      v67 = 2048;
      v68 = v24;
      v69 = 2112;
      v70 = v26;
      v71 = 2112;
      v72 = v27;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device: %@, winner: %@, probeScore: %@, iOSDeviceThreshold: %lld, properties: %@ children: %@", buf, 0x3Eu);

      if (v19)
      {
      }
    }

    v28 = v37;
    if (!v19 || [v19 testAgainstDeviceThreshold] && (objc_msgSend(v40, "winningScore"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "longLongValue"), v31 = v30 < -[DOMAccessoryArbitrator iOSDeviceThreshold](v37, "iOSDeviceThreshold"), v29, v28 = v37, v31) || objc_msgSend(v19, "require9Pin", v37) && !MGGetBoolAnswer())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Ignoring 'Cannot Use Device' dialog...", buf, 2u);
      }
    }

    else
    {
      [(DOMAccessoryArbitrator *)v28 unregisterOffendingDomDevice:v40];
      v32 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v19 personalityName];
        *buf = 138412290;
        v62 = v33;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "starting winner: %@", buf, 0xCu);
      }

      [v19 startWithDomDevice:v40];
    }
  }

  _Block_object_dispose(&v54, 8);
}

- (void)overcurrentCondition:(unsigned int)a3
{
  if (self->_ioOvercurrentNotificationPort)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100008520();
    }
  }

  else
  {
    IOServiceWaitQuiet(a3, 0);
    v5 = IONotificationPortCreate(kIOMainPortDefault);
    self->_ioOvercurrentNotificationPort = v5;
    if (v5)
    {
      IONotificationPortSetDispatchQueue(v5, &_dispatch_main_q);
      CFProperty = IORegistryEntryCreateCFProperty(a3, @"OvercurrentCount", kCFAllocatorDefault, 0);
      v7 = [CFProperty unsignedIntValue];
      v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v8)
        {
          v9 = 136315138;
          v10 = "[DOMAccessoryArbitrator overcurrentCondition:]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: OCP active. Putting up dialog", &v9, 0xCu);
        }

        if (!self->_io_overcurrentNotification && IOServiceAddInterestNotification(self->_ioOvercurrentNotificationPort, a3, "IOGeneralInterest", sub_100004A68, self, &self->_io_overcurrentNotification) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000085A4();
        }

        [(DOMAccessoryArbitrator *)self displayOverCurrentDialog];
      }

      else
      {
        if (v8)
        {
          v9 = 136315138;
          v10 = "[DOMAccessoryArbitrator overcurrentCondition:]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Lost OC count before we could set up callback", &v9, 0xCu);
        }

        [(DOMAccessoryArbitrator *)self releaseOverCurrentDialog];
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100008134();
    }
  }
}

+ (BOOL)isInF5Mode
{
  if (qword_100014FF0 != -1)
  {
    sub_100008628();
  }

  return byte_100014FF8;
}

@end