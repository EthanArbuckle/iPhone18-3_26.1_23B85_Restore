@interface ASDTUserActivityNotifier
+ (id)notifierForDelegate:(id)delegate withName:(id)name;
+ (id)notifierForDelegate:(id)delegate withQueue:(id)queue;
+ (void)logUserActiveBits:(unint64_t)bits withPrefix:(id)prefix;
- (ASDTUserActivityNotifierDelegate)delegate;
- (BOOL)registerUserActivityLevelNotification;
- (BOOL)userIsActive;
- (id)initForDelegate:(id)delegate withName:(id)name;
- (id)initForDelegate:(id)delegate withQueue:(id)queue;
- (void)dealloc;
- (void)deregisterUserActivityLevelNotification;
@end

@implementation ASDTUserActivityNotifier

+ (id)notifierForDelegate:(id)delegate withName:(id)name
{
  delegateCopy = delegate;
  nameCopy = name;
  v7 = [[ASDTUserActivityNotifier alloc] initForDelegate:delegateCopy withName:nameCopy];

  return v7;
}

+ (id)notifierForDelegate:(id)delegate withQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v7 = [[ASDTUserActivityNotifier alloc] initForDelegate:delegateCopy withQueue:queueCopy];

  return v7;
}

- (id)initForDelegate:(id)delegate withName:(id)name
{
  delegateCopy = delegate;
  nameCopy = name;
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INTERACTIVE, 0);

  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.PowerNotification", nameCopy];
  v11 = dispatch_queue_create([nameCopy UTF8String], v9);
  v12 = [(ASDTUserActivityNotifier *)self initForDelegate:delegateCopy withQueue:v11];

  return v12;
}

- (id)initForDelegate:(id)delegate withQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = ASDTUserActivityNotifier;
  v8 = [(ASDTUserActivityNotifier *)&v13 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  [(ASDTUserActivityNotifier *)v8 setDelegate:delegateCopy];
  [(ASDTUserActivityNotifier *)v9 setQueue:queueCopy];
  if (!delegateCopy || !queueCopy)
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemPowerNotifier initForBundleName:v11 delegate:? queue:? earlyWake:?];
    }

    goto LABEL_9;
  }

  if (![(ASDTUserActivityNotifier *)v9 registerUserActivityLevelNotification])
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

LABEL_5:
  v10 = v9;
LABEL_10:

  return v10;
}

- (void)dealloc
{
  [(ASDTUserActivityNotifier *)self deregisterUserActivityLevelNotification];
  v3.receiver = self;
  v3.super_class = ASDTUserActivityNotifier;
  [(ASDTUserActivityNotifier *)&v3 dealloc];
}

- (BOOL)userIsActive
{
  delegate = [(ASDTUserActivityNotifier *)self delegate];
  [delegate userIsActiveBits];

  IOPMGetUserActivityLevel();
  return 0;
}

+ (void)logUserActiveBits:(unint64_t)bits withPrefix:(id)prefix
{
  v33 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  v6 = ASDTBaseLogType();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = " presentActive";
    if ((bits & 1) == 0)
    {
      v7 = "";
    }

    v15 = 138414338;
    v16 = prefixCopy;
    v8 = " presentPassive";
    if ((bits & 2) == 0)
    {
      v8 = "";
    }

    v17 = 2048;
    bitsCopy = bits;
    v9 = " presentPassiveWithDisplay";
    if ((bits & 4) == 0)
    {
      v9 = "";
    }

    v19 = 2080;
    v20 = v7;
    v10 = " presentPassiveWithoutDisplay";
    if ((bits & 8) == 0)
    {
      v10 = "";
    }

    v21 = 2080;
    v22 = v8;
    v11 = " remoteClientActive";
    if ((bits & 0x10) == 0)
    {
      v11 = "";
    }

    v23 = 2080;
    v24 = v9;
    v12 = " notificationActive";
    if ((bits & 0x20) == 0)
    {
      v12 = "";
    }

    v25 = 2080;
    v26 = v10;
    v13 = " absentWithDisplay";
    v27 = 2080;
    v28 = v11;
    v29 = 2080;
    if ((bits & 0x40) == 0)
    {
      v13 = "";
    }

    v30 = v12;
    v31 = 2080;
    v32 = v13;
    _os_log_impl(&dword_241659000, v6, OS_LOG_TYPE_DEFAULT, "%@:%llx%s%s%s%s%s%s%s", &v15, 0x5Cu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerUserActivityLevelNotification
{
  objc_initWeak(&location, self);
  queue = [(ASDTUserActivityNotifier *)self queue];
  objc_copyWeak(&v7, &location);
  self->_userActivityLevelChangeNotification = IOPMScheduleUserActivityLevelNotification();

  userActivityLevelChangeNotification = self->_userActivityLevelChangeNotification;
  if (!userActivityLevelChangeNotification)
  {
    v5 = ASDTBaseLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ASDTUserActivityNotifier *)v5 registerUserActivityLevelNotification];
    }
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  return userActivityLevelChangeNotification != 0;
}

void __65__ASDTUserActivityNotifier_registerUserActivityLevelNotification__block_invoke(uint64_t a1, uint64_t a2)
{
  [ASDTUserActivityNotifier logUserActiveBits:a2 withPrefix:@"User activity changed"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = [v4 userIsActiveBits];

  v8 = objc_loadWeakRetained((a1 + 32));
  v6 = [v8 delegate];
  [v6 userActiveChanged:(v5 & a2) != 0];
}

- (void)deregisterUserActivityLevelNotification
{
  if (self->_userActivityLevelChangeNotification)
  {
    IOPMUnregisterNotification();
    self->_userActivityLevelChangeNotification = 0;
  }
}

- (ASDTUserActivityNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end