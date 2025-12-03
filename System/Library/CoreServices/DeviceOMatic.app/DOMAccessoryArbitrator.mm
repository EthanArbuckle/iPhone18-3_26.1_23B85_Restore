@interface DOMAccessoryArbitrator
+ (BOOL)isInF5Mode;
+ (id)sharedDomAccessoryArbitrator;
- (DOMAccessoryArbitrator)init;
- (id)createUserNotificationDict;
- (id)jobType:(id)type jobType:(int *)jobType;
- (void)addBadDevicesToDialogDictBody:(id)body;
- (void)addMatchingThings:(id)things matchJob:(id)job;
- (void)addNotification:(id)notification matchJob:(id)job;
- (void)addPersonality:(id)personality matchJob:(id)job;
- (void)dealloc;
- (void)displayDialog;
- (void)displayOverCurrentDialog;
- (void)loadLaunchdJobsAtPath:(id)path;
- (void)matchDevice:(id)device;
- (void)overcurrentCondition:(unsigned int)condition;
- (void)probePersonalitiesForService:(unsigned int)service ofDevice:(id)device inGroup:(id)group;
- (void)registerOffendingDomDevice:(id)device;
- (void)releaseOverCurrentDialog;
- (void)scanPlistsAtPath:(id)path execBlock:(id)block;
- (void)scheduleDialog;
- (void)unregisterOffendingDomDevice:(id)device;
- (void)userDismissedNotification:(__CFUserNotification *)notification;
- (void)userDismissedOvercurrentNotification:(__CFUserNotification *)notification;
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

- (void)registerOffendingDomDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->mainQ);
  badDevices = self->badDevices;
  if (!badDevices)
  {
    v5 = [NSMutableArray arrayWithCapacity:0];
    v6 = self->badDevices;
    self->badDevices = v5;

    badDevices = self->badDevices;
  }

  [(NSMutableArray *)badDevices addObject:deviceCopy];
  [(DOMAccessoryArbitrator *)self scheduleDialog];
}

- (void)unregisterOffendingDomDevice:(id)device
{
  mainQ = self->mainQ;
  deviceCopy = device;
  dispatch_assert_queue_V2(mainQ);
  [(NSMutableArray *)self->badDevices removeObject:deviceCopy];

  [(DOMAccessoryArbitrator *)self displayDialog];
}

- (void)addBadDevicesToDialogDictBody:(id)body
{
  bodyCopy = body;
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
        dialogBodyKey = [v9 dialogBodyKey];
        name = [v9 name];

        if (name)
        {
          [v9 name];
        }

        else
        {
          sub_10000626C(@"Accessory");
        }
        v12 = ;
        v13 = [NSString stringWithFormat:dialogBodyKey, v12];
        [v4 addObject:v13];

        if ([v9 isThunderboltDevice])
        {
          v14 = sub_10000626C(@"Cannot Use Thunderbolt Accessory");
          [bodyCopy setObject:v14 forKey:kCFUserNotificationAlertHeaderKey];
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = [v4 componentsJoinedByString:@"\n"];
  [bodyCopy setObject:v15 forKey:kCFUserNotificationAlertMessageKey];
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

- (void)userDismissedNotification:(__CFUserNotification *)notification
{
  dispatch_assert_queue_V2(self->mainQ);
  if (notification)
  {
    if (self->notificationRef != notification && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      notificationRef = self->notificationRef;
      v6 = 134218240;
      notificationCopy = notification;
      v8 = 2048;
      v9 = notificationRef;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "notification %p is not the same as notificationRef %p", &v6, 0x16u);
    }

    [(NSMutableArray *)self->badDevices removeAllObjects];
    [(DOMAccessoryArbitrator *)self displayDialog];
  }
}

- (void)userDismissedOvercurrentNotification:(__CFUserNotification *)notification
{
  if (notification)
  {
    if (self->overcurrentNotificationRef != notification && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      overcurrentNotificationRef = self->overcurrentNotificationRef;
      v6 = 134218240;
      notificationCopy = notification;
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

- (void)addPersonality:(id)personality matchJob:(id)job
{
  personalityCopy = personality;
  jobCopy = job;
  notification = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    IOServiceAddMatchingNotification([(DOMAccessoryArbitrator *)self ioNotificationPort], "IOServiceFirstMatch", personalityCopy, sub_100002DCC, jobCopy, &notification);
    sub_100002DCC(jobCopy, notification);
  }
}

- (void)addNotification:(id)notification matchJob:(id)job
{
  name = notification;
  jobCopy = job;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, jobCopy, sub_100002F38, name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)addMatchingThings:(id)things matchJob:(id)job
{
  thingsCopy = things;
  jobCopy = job;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = thingsCopy;
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
          if ([jobCopy jobType] == 1)
          {
            [(DOMAccessoryArbitrator *)self addNotification:v13 matchJob:jobCopy];
          }

          else if (![jobCopy jobType])
          {
            [(DOMAccessoryArbitrator *)self addPersonality:v13 matchJob:jobCopy];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else if ([jobCopy jobType] == 1)
  {
    [(DOMAccessoryArbitrator *)self addNotification:thingsCopy matchJob:jobCopy];
  }

  else if (![jobCopy jobType])
  {
    [(DOMAccessoryArbitrator *)self addPersonality:thingsCopy matchJob:jobCopy];
  }
}

- (void)scanPlistsAtPath:(id)path execBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:pathCopy];

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

        v13 = [pathCopy stringByAppendingPathComponent:*(*(&v15 + 1) + 8 * v12)];
        v14 = [NSDictionary dictionaryWithContentsOfFile:v13];
        if (v14)
        {
          blockCopy[2](blockCopy, v14);
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

- (id)jobType:(id)type jobType:(int *)jobType
{
  typeCopy = type;
  v6 = [typeCopy objectForKey:@"LaunchBuddyIOServiceMatching"];
  if (v6)
  {
    v7 = v6;
    v8 = 2;
  }

  else
  {
    v9 = [typeCopy objectForKey:@"LaunchBuddyNotificationLaunching"];
    if (v9)
    {
      v7 = v9;
      v8 = 1;
    }

    else
    {
      v7 = [typeCopy objectForKey:@"LaunchBuddyIOKitLaunching"];
      if (!v7)
      {
        goto LABEL_8;
      }

      v8 = 0;
    }
  }

  *jobType = v8;
LABEL_8:

  return v7;
}

- (void)loadLaunchdJobsAtPath:(id)path
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003794;
  v3[3] = &unk_1000106C0;
  v3[4] = self;
  [(DOMAccessoryArbitrator *)self scanPlistsAtPath:path execBlock:v3];
}

- (void)probePersonalitiesForService:(unsigned int)service ofDevice:(id)device inGroup:(id)group
{
  deviceCopy = device;
  groupCopy = group;
  personalities = [(DOMAccessoryArbitrator *)self personalities];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003A28;
  v13[3] = &unk_100010788;
  serviceCopy = service;
  v14 = deviceCopy;
  v15 = groupCopy;
  v11 = groupCopy;
  v12 = deviceCopy;
  [personalities enumerateObjectsUsingBlock:v13];
}

- (void)matchDevice:(id)device
{
  deviceCopy = device;
  group = dispatch_group_create();
  iterator = 0;
  v38 = objc_alloc_init(NSMutableSet);
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_1000042A4;
  v58 = sub_1000042B4;
  v59 = 0;
  v40 = deviceCopy;
  if (IORegistryEntryCreateIterator([deviceCopy io_service], "IOService", 1u, &iterator))
  {
    v34 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v35 = __error();
      v36 = strerror(*v35);
      sub_1000083D4(v36, buf);
    }

    winningDomPersonality = 0;
  }

  else
  {
    selfCopy = self;
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
    v13 = selfCopy;
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

          unsignedIntValue = [*(*(&v41 + 1) + 8 * j) unsignedIntValue];
          IOServiceWaitQuiet(unsignedIntValue, 0);
          [(DOMAccessoryArbitrator *)v13 probePersonalitiesForService:unsignedIntValue ofDevice:v40 inGroup:group];
          IOObjectRelease(unsignedIntValue);
        }

        v15 = [v14 countByEnumeratingWithState:&v41 objects:v73 count:16];
      }

      while (v15);
    }

    -[DOMAccessoryArbitrator probePersonalitiesForService:ofDevice:inGroup:](selfCopy, "probePersonalitiesForService:ofDevice:inGroup:", [v40 io_service], v40, group);
    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    winningDomPersonality = [v40 winningDomPersonality];
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      name = [v40 name];
      if (winningDomPersonality)
      {
        personalityName = [winningDomPersonality personalityName];
      }

      else
      {
        personalityName = @"nobody";
      }

      winningScore = [v40 winningScore];
      iOSDeviceThreshold = [(DOMAccessoryArbitrator *)selfCopy iOSDeviceThreshold];
      properties = [v40 properties];
      v26 = sub_100006574(properties);
      v27 = sub_100006574(v55[5]);
      *buf = 138413570;
      v62 = name;
      v63 = 2112;
      v64 = personalityName;
      v65 = 2112;
      v66 = winningScore;
      v67 = 2048;
      v68 = iOSDeviceThreshold;
      v69 = 2112;
      v70 = v26;
      v71 = 2112;
      v72 = v27;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device: %@, winner: %@, probeScore: %@, iOSDeviceThreshold: %lld, properties: %@ children: %@", buf, 0x3Eu);

      if (winningDomPersonality)
      {
      }
    }

    v28 = selfCopy;
    if (!winningDomPersonality || [winningDomPersonality testAgainstDeviceThreshold] && (objc_msgSend(v40, "winningScore"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "longLongValue"), v31 = v30 < -[DOMAccessoryArbitrator iOSDeviceThreshold](selfCopy, "iOSDeviceThreshold"), v29, v28 = selfCopy, v31) || objc_msgSend(winningDomPersonality, "require9Pin", selfCopy) && !MGGetBoolAnswer())
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
        personalityName2 = [winningDomPersonality personalityName];
        *buf = 138412290;
        v62 = personalityName2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "starting winner: %@", buf, 0xCu);
      }

      [winningDomPersonality startWithDomDevice:v40];
    }
  }

  _Block_object_dispose(&v54, 8);
}

- (void)overcurrentCondition:(unsigned int)condition
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
    IOServiceWaitQuiet(condition, 0);
    v5 = IONotificationPortCreate(kIOMainPortDefault);
    self->_ioOvercurrentNotificationPort = v5;
    if (v5)
    {
      IONotificationPortSetDispatchQueue(v5, &_dispatch_main_q);
      CFProperty = IORegistryEntryCreateCFProperty(condition, @"OvercurrentCount", kCFAllocatorDefault, 0);
      unsignedIntValue = [CFProperty unsignedIntValue];
      v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (unsignedIntValue)
      {
        if (v8)
        {
          v9 = 136315138;
          v10 = "[DOMAccessoryArbitrator overcurrentCondition:]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: OCP active. Putting up dialog", &v9, 0xCu);
        }

        if (!self->_io_overcurrentNotification && IOServiceAddInterestNotification(self->_ioOvercurrentNotificationPort, condition, "IOGeneralInterest", sub_100004A68, self, &self->_io_overcurrentNotification) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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