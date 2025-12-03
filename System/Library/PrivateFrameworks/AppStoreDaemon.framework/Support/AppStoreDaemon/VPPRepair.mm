@interface VPPRepair
+ (BOOL)shouldAttemptToRepairApplication:(id)application options:(id)options logKey:(id)key;
- (ApplicationRepairDelegate)delegate;
- (NSArray)repairedBundleIDs;
- (VPPRepair)init;
- (_TtC9appstored6LogKey)logKey;
- (void)repairApplication:(id)application completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
@end

@implementation VPPRepair

- (VPPRepair)init
{
  v3.receiver = self;
  v3.super_class = VPPRepair;
  result = [(VPPRepair *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (ApplicationRepairDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (_TtC9appstored6LogKey)logKey
{
  os_unfair_lock_lock_with_options();
  v3 = [(LogKey *)self->_logKey copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)repairedBundleIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_repairedBundleIDs copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

+ (BOOL)shouldAttemptToRepairApplication:(id)application options:(id)options logKey:(id)key
{
  applicationCopy = application;
  keyCopy = key;
  if (sub_1003D3128(applicationCopy, v8))
  {
    if (applicationCopy && [applicationCopy[15] applicationHasMIDBasedSINF] && !objc_msgSend(applicationCopy[15], "applicationMissingRequiredSINF"))
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        applicationHasMIDBasedSINF = [applicationCopy[15] applicationHasMIDBasedSINF];
        applicationMissingRequiredSINF = [applicationCopy[15] applicationMissingRequiredSINF];
        v14 = 138543874;
        v15 = keyCopy;
        v16 = 1024;
        v17 = applicationHasMIDBasedSINF;
        v18 = 1024;
        v19 = applicationMissingRequiredSINF;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[VPP/%{public}@] Will not attempt vpp SINF recovery with hasMIDBasedSINF: %{BOOL}d missingRequireSINF: %d", &v14, 0x18u);
      }

      v10 = 0;
    }

    else
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = keyCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[VPP/%{public}@] Will attempt vpp SINF recovery", &v14, 0xCu);
      }

      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)repairApplication:(id)application completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    *buf = 138412290;
    v22 = logKey;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Attempting VPP SINF migration", buf, 0xCu);
  }

  v8 = sub_1003D0F60(&self->_application->super.isa);
  v9 = [NSString stringWithFormat:@"Migrating VPP SINF"];
  [AITransactionLog logStep:13 byParty:3 phase:1 success:1 forBundleID:v8 description:v9];

  v10 = objc_alloc_init(ASDManagedApplicationRequestOptions);
  v11 = sub_1003D0F60(&self->_application->super.isa);
  [v10 setBundleIdentifier:v11];

  v12 = sub_1002C7044([ManagedApplicationTask alloc], v10, @"com.apple.appstored");
  taskQueue = self->_taskQueue;
  if (taskQueue)
  {
    [(NSOperationQueue *)taskQueue->_operationQueue addOperation:v12];
    v14 = self->_taskQueue;
  }

  else
  {
    v14 = 0;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10022A4EC;
  v17[3] = &unk_10051DE90;
  v19 = handlerCopy;
  selfCopy = self;
  v18 = v12;
  v15 = v12;
  v16 = handlerCopy;
  sub_100284D9C(v14, v17);
}

@end