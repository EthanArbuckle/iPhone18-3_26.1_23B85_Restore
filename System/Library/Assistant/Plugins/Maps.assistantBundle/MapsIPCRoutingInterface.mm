@interface MapsIPCRoutingInterface
- (BOOL)dismissNavigationSafetyAlert;
- (void)endNavigationWithCompletion:(id)a3;
- (void)loadDirections:(id)a3 completion:(id)a4;
- (void)loadDirectionsWithMessage:(id)a3 completion:(id)a4;
- (void)startPreparedNavigation:(id)a3 completion:(id)a4;
@end

@implementation MapsIPCRoutingInterface

- (BOOL)dismissNavigationSafetyAlert
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  messagingQueue = self->super._messagingQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8D6C;
  v5[3] = &unk_349F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(messagingQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)loadDirections:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "MapsIPCInterface loadDirections:completion:", buf, 2u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_9004;
  v17[3] = &unk_34A40;
  v18 = v7;
  v9 = v7;
  v10 = objc_retainBlock(v17);
  messagingQueue = self->super._messagingQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_90C4;
  v14[3] = &unk_34B08;
  v15 = v6;
  v16 = v10;
  v14[4] = self;
  v12 = v6;
  v13 = v10;
  dispatch_async(messagingQueue, v14);
}

- (void)startPreparedNavigation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "MapsIPCInterface startPreparedNavigation:completion:", buf, 2u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_9894;
  v17[3] = &unk_34B30;
  v18 = v7;
  v9 = v7;
  v10 = objc_retainBlock(v17);
  messagingQueue = self->super._messagingQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_9954;
  v14[3] = &unk_34B08;
  v15 = v6;
  v16 = v10;
  v14[4] = self;
  v12 = v6;
  v13 = v10;
  dispatch_async(messagingQueue, v14);
}

- (void)loadDirectionsWithMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  messagingQueue = self->super._messagingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9ED4;
  block[3] = &unk_34B08;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(messagingQueue, block);
}

- (void)endNavigationWithCompletion:(id)a3
{
  v4 = a3;
  if ([(_MapsIPCInterface *)self canReceiveMessages])
  {
    messagingQueue = self->super._messagingQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_A3FC;
    v10[3] = &unk_34BA8;
    v10[4] = self;
    v11 = v4;
    v6 = v4;
    dispatch_async(messagingQueue, v10);
  }

  else
  {
    v7 = objc_alloc_init(IPCNavigationActionReply);
    [(IPCNavigationActionReply *)v7 setSuccess:0];
    [(IPCNavigationActionReply *)v7 setNavigationActionError:1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A3E8;
    block[3] = &unk_34A18;
    v13 = v7;
    v14 = v4;
    v8 = v7;
    v9 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end