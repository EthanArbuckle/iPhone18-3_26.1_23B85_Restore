@interface ABCPeriodicMaintenanceActivity
+ (const)periodicActivityID;
+ (id)sharedInstance;
+ (int64_t)periodicActivityInterval;
+ (void)registerPeriodicActivityWithIdentifier:(id)identifier queue:(id)queue activity:(id)activity;
- (ABCPeriodicMaintenanceActivity)init;
- (void)_handleActivityRun:(id)run;
- (void)_registerPeriodicActivityWithIdentifier:(id)identifier queue:(id)queue activity:(id)activity;
- (void)_registerPeriodicMaintenanceActivity;
- (void)dealloc;
@end

@implementation ABCPeriodicMaintenanceActivity

+ (int64_t)periodicActivityInterval
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ABCPeriodicMaintenanceActivity.m" lineNumber:38 description:{@"Subclasses must provide an impl for %s", "+[ABCPeriodicMaintenanceActivity periodicActivityInterval]"}];

  return *MEMORY[0x277D86298];
}

+ (const)periodicActivityID
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ABCPeriodicMaintenanceActivity.m" lineNumber:44 description:{@"Subclasses must provide an impl for %s", "+[ABCPeriodicMaintenanceActivity periodicActivityID]"}];

  return "";
}

+ (id)sharedInstance
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ABCPeriodicMaintenanceActivity.m" lineNumber:50 description:{@"Subclasses must provide an impl for %s", "+[ABCPeriodicMaintenanceActivity sharedInstance]"}];

  return 0;
}

+ (void)registerPeriodicActivityWithIdentifier:(id)identifier queue:(id)queue activity:(id)activity
{
  activityCopy = activity;
  queueCopy = queue;
  identifierCopy = identifier;
  sharedInstance = [objc_opt_class() sharedInstance];
  [sharedInstance _registerPeriodicActivityWithIdentifier:identifierCopy queue:queueCopy activity:activityCopy];
}

- (ABCPeriodicMaintenanceActivity)init
{
  v7.receiver = self;
  v7.super_class = ABCPeriodicMaintenanceActivity;
  v2 = [(ABCPeriodicMaintenanceActivity *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activities = v2->_activities;
    v2->_activities = v3;

    if (!v2->_activities)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v2->_nextActivityIndex = 0;
    [(ABCPeriodicMaintenanceActivity *)v2 _registerPeriodicMaintenanceActivity];
  }

  v5 = v2;
LABEL_6:

  return v5;
}

- (void)dealloc
{
  periodicActivityID = [objc_opt_class() periodicActivityID];
  xpc_activity_unregister(periodicActivityID);
  v4.receiver = self;
  v4.super_class = ABCPeriodicMaintenanceActivity;
  [(ABCPeriodicMaintenanceActivity *)&v4 dealloc];
}

- (void)_registerPeriodicMaintenanceActivity
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 1);
    v5 = *MEMORY[0x277D86288];
    periodicActivityInterval = [objc_opt_class() periodicActivityInterval];
    xpc_dictionary_set_int64(v4, v5, periodicActivityInterval);
    periodicActivityID = [objc_opt_class() periodicActivityID];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __70__ABCPeriodicMaintenanceActivity__registerPeriodicMaintenanceActivity__block_invoke;
    handler[3] = &unk_278CF14B0;
    handler[4] = self;
    xpc_activity_register(periodicActivityID, v4, handler);
  }

  else
  {
    v8 = symptomsLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543618;
      v14 = v10;
      v15 = 2080;
      periodicActivityID2 = [objc_opt_class() periodicActivityID];
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to create xpc_activity criteria for %s", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __70__ABCPeriodicMaintenanceActivity__registerPeriodicMaintenanceActivity__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    [*(a1 + 32) _handleActivityRun:v3];
  }

  else
  {
    v4 = symptomsLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543618;
      v10 = v7;
      v11 = 2048;
      state = xpc_activity_get_state(v3);
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unexpected xpc_activity state %lld, ignoring...", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivityRun:(id)run
{
  v39 = *MEMORY[0x277D85DE8];
  runCopy = run;
  obj = self->_activities;
  objc_sync_enter(obj);
  nextActivityIndex = self->_nextActivityIndex;
  v6 = [(NSMutableArray *)self->_activities count];
  v7 = v6;
  if (nextActivityIndex >= v6)
  {
LABEL_13:
    objc_sync_exit(obj);

    v21 = symptomsLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543362;
      v36 = v23;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed running periodic activity xpc_activity", buf, 0xCu);
    }

    if (!xpc_activity_set_state(runCopy, 5))
    {
      v24 = symptomsLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138543362;
        v36 = v26;
        _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set periodic activity xpc_activity state to DONE!", buf, 0xCu);
      }
    }

    self->_nextActivityIndex = 0;
  }

  else
  {
    v8 = v6 - 1;
    while (1)
    {
      v9 = symptomsLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138543618;
        v36 = v11;
        v37 = 2048;
        v38 = nextActivityIndex;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "[%{public}@] Preparing to run periodic activity index %ld", buf, 0x16u);
      }

      v12 = [(NSMutableArray *)self->_activities objectAtIndexedSubscript:nextActivityIndex];
      v13 = symptomsLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        activityIdentifier = [v12 activityIdentifier];
        *buf = 138543618;
        v36 = v15;
        v37 = 2112;
        v38 = activityIdentifier;
        _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ready to run periodic activity %@", buf, 0x16u);
      }

      activityQueue = [v12 activityQueue];
      activityBlock = [v12 activityBlock];
      dispatch_async(activityQueue, activityBlock);

      v19 = nextActivityIndex + 1;
      v20 = v8 == nextActivityIndex ? 0 : nextActivityIndex + 1;
      self->_nextActivityIndex = v20;
      if (v19 < v7 && xpc_activity_should_defer(runCopy))
      {
        break;
      }

      ++nextActivityIndex;
      if (v7 == v19)
      {
        goto LABEL_13;
      }
    }

    v28 = symptomsLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138543362;
      v36 = v30;
      _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deferring periodic activity xpc_activity", buf, 0xCu);
    }

    if (!xpc_activity_set_state(runCopy, 3))
    {
      v31 = symptomsLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138543362;
        v36 = v33;
        _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set periodic activity xpc_activity state to DEFER!", buf, 0xCu);
      }
    }

    objc_sync_exit(obj);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_registerPeriodicActivityWithIdentifier:(id)identifier queue:(id)queue activity:(id)activity
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queueCopy = queue;
  activityCopy = activity;
  v11 = activityCopy;
  if (queueCopy && activityCopy && [identifierCopy length])
  {
    v12 = self->_activities;
    objc_sync_enter(v12);
    v13 = symptomsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "[%{public}@] Registering periodic activity %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v34 = 1;
    activities = self->_activities;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __89__ABCPeriodicMaintenanceActivity__registerPeriodicActivityWithIdentifier_queue_activity___block_invoke;
    v25[3] = &unk_278CF1558;
    v17 = identifierCopy;
    v26 = v17;
    selfCopy = self;
    v28 = buf;
    [(NSMutableArray *)activities enumerateObjectsUsingBlock:v25];
    if (*(*&buf[8] + 24) == 1)
    {
      v18 = objc_alloc_init(ABCMaintenanceActivity);
      [(ABCMaintenanceActivity *)v18 setActivityBlock:v11];
      [(ABCMaintenanceActivity *)v18 setActivityQueue:queueCopy];
      [(ABCMaintenanceActivity *)v18 setActivityIdentifier:v17];
      [(NSMutableArray *)self->_activities addObject:v18];
      v19 = symptomsLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *v29 = 138543618;
        v30 = v21;
        v31 = 2112;
        v32 = v17;
        _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registered periodic activity %@", v29, 0x16u);
      }
    }

    _Block_object_dispose(buf, 8);
    objc_sync_exit(v12);
  }

  else
  {
    v12 = symptomsLogHandle();
    if (os_log_type_enabled(&v12->super.super, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_impl(&dword_241804000, &v12->super.super, OS_LOG_TYPE_ERROR, "[%{public}@] Registering a periodic activity requires a valid block, queue, and identifier", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __89__ABCPeriodicMaintenanceActivity__registerPeriodicActivityWithIdentifier_queue_activity___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [a2 activityIdentifier];
  v7 = [v6 isEqualToString:a1[4]];

  if (v7)
  {
    v8 = symptomsLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[5];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = a1[4];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "[%{public}@] A periodic activity already exists for identifier %@. Skipping registration", &v14, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end