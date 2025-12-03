@interface CloudTabGroupMaintenanceActivity
- (CloudTabGroupMaintenanceActivity)initWithConfiguration:(id)configuration;
- (CloudTabGroupMaintenanceActivityDelegate)delegate;
- (void)registerActivity;
@end

@implementation CloudTabGroupMaintenanceActivity

- (CloudTabGroupMaintenanceActivity)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = CloudTabGroupMaintenanceActivity;
  v6 = [(CloudTabGroupMaintenanceActivity *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.%@.%p", v9, v7];
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(uTF8String, v12);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v13;

    v15 = v7;
  }

  return v7;
}

- (void)registerActivity
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100048BE0;
  v2[3] = &unk_100133708;
  objc_copyWeak(&v3, &location);
  xpc_activity_register("com.apple.SafariBookmarksSyncAgent.XPC.TabCollectionMaintenance", XPC_ACTIVITY_CHECK_IN, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (CloudTabGroupMaintenanceActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end