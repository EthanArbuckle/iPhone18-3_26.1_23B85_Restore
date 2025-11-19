@interface CloudTabGroupMaintenanceActivity
- (CloudTabGroupMaintenanceActivity)initWithConfiguration:(id)a3;
- (CloudTabGroupMaintenanceActivityDelegate)delegate;
- (void)registerActivity;
@end

@implementation CloudTabGroupMaintenanceActivity

- (CloudTabGroupMaintenanceActivity)initWithConfiguration:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = CloudTabGroupMaintenanceActivity;
  v6 = [(CloudTabGroupMaintenanceActivity *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.%@.%p", v9, v7];
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
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