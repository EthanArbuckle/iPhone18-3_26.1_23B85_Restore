@interface BuddyFlowItemDispositionProvider
- (BuddyFlowItemDispositionProvider)initWithSetupMethod:(id)a3 runState:(id)a4;
- (unint64_t)dispositions;
- (void)setPreferredDispositions:(unint64_t)a3;
@end

@implementation BuddyFlowItemDispositionProvider

- (BuddyFlowItemDispositionProvider)initWithSetupMethod:(id)a3 runState:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v5 = v11;
  v11 = 0;
  v8.receiver = v5;
  v8.super_class = BuddyFlowItemDispositionProvider;
  v11 = [(BuddyFlowItemDispositionProvider *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(v11 + 2, location[0]);
    objc_storeStrong(v11 + 3, obj);
  }

  v6 = v11;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)setPreferredDispositions:(unint64_t)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
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
  if ((v8 & 0x20) == 0x20)
  {
    v3 = BYStringForFlowItemDispositions();
    v4 = [NSString stringWithFormat:@"Invalid preferred disposition (%@)", v3];

    objc_exception_throw([NSException exceptionWithName:v4 reason:0 userInfo:0]);
  }

  v10->_preferredDispositions = v8;
}

- (unint64_t)dispositions
{
  v2 = [(BuddyFlowItemDispositionProvider *)self runState];
  v3 = [(BYRunState *)v2 hasCompletedInitialRun];

  if (v3)
  {
    return 0;
  }

  v4 = [(BuddyFlowItemDispositionProvider *)self setupMethod];
  v5 = [(BuddySetupMethod *)v4 intent];

  if (!v5)
  {
    return 2;
  }

  if (v5 == 1)
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

  else if (v5 == 2)
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