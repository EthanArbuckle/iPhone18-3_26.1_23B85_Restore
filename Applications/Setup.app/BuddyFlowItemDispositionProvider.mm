@interface BuddyFlowItemDispositionProvider
- (BuddyFlowItemDispositionProvider)initWithSetupMethod:(id)method runState:(id)state;
- (unint64_t)dispositions;
- (void)setPreferredDispositions:(unint64_t)dispositions;
@end

@implementation BuddyFlowItemDispositionProvider

- (BuddyFlowItemDispositionProvider)initWithSetupMethod:(id)method runState:(id)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, method);
  obj = 0;
  objc_storeStrong(&obj, state);
  v5 = selfCopy;
  selfCopy = 0;
  v8.receiver = v5;
  v8.super_class = BuddyFlowItemDispositionProvider;
  selfCopy = [(BuddyFlowItemDispositionProvider *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 2, location[0]);
    objc_storeStrong(selfCopy + 3, obj);
  }

  v6 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)setPreferredDispositions:(unint64_t)dispositions
{
  selfCopy = self;
  v9 = a2;
  dispositionsCopy = dispositions;
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    location = BYStringForFlowItemDispositions();
    sub_10006AE18(buf, location);
    _os_log_impl(&_mh_execute_header, oslog, v6, "Preferred dispositions changing to %@", buf, 0xCu);

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  if ((dispositionsCopy & 0x20) == 0x20)
  {
    v3 = BYStringForFlowItemDispositions();
    v4 = [NSString stringWithFormat:@"Invalid preferred disposition (%@)", v3];

    objc_exception_throw([NSException exceptionWithName:v4 reason:0 userInfo:0]);
  }

  selfCopy->_preferredDispositions = dispositionsCopy;
}

- (unint64_t)dispositions
{
  runState = [(BuddyFlowItemDispositionProvider *)self runState];
  hasCompletedInitialRun = [(BYRunState *)runState hasCompletedInitialRun];

  if (hasCompletedInitialRun)
  {
    return 0;
  }

  setupMethod = [(BuddyFlowItemDispositionProvider *)self setupMethod];
  intent = [(BuddySetupMethod *)setupMethod intent];

  if (!intent)
  {
    return 2;
  }

  if (intent == 1)
  {
    if (([(BuddyFlowItemDispositionProvider *)self preferredDispositions]& 0x10) == 0x10)
    {
      return 48;
    }

    else
    {
      return 4;
    }
  }

  else if (intent == 2)
  {
    if (([(BuddyFlowItemDispositionProvider *)self preferredDispositions]& 8) == 8)
    {
      return 8;
    }

    else
    {
      if (([(BuddyFlowItemDispositionProvider *)self preferredDispositions]& 0x10) != 0x10)
      {
        [(BuddyFlowItemDispositionProvider *)self preferredDispositions];
        v6 = BYStringForFlowItemDispositions();
        v8 = [NSString stringWithFormat:@"Invalid dispositions (%@) for setup intent", v6];

        objc_exception_throw([NSException exceptionWithName:v8 reason:0 userInfo:0]);
      }

      return 16;
    }
  }

  return v10;
}

@end