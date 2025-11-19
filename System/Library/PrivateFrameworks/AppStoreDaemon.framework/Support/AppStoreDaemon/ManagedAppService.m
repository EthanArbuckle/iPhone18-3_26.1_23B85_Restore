@interface ManagedAppService
- (ManagedAppService)init;
- (void)processITMSServicesRequest:(id)a3 withReplyHandler:(id)a4;
- (void)requestStatusWithReply:(id)a3;
- (void)showVPPInviteForCurrentUser:(id)a3 orgName:(id)a4 withReplyHandler:(id)a5;
- (void)submitManifestRequest:(id)a3 withReplyHandler:(id)a4;
- (void)submitVPPRequest:(id)a3 withReplyHandler:(id)a4;
@end

@implementation ManagedAppService

- (ManagedAppService)init
{
  v7.receiver = self;
  v7.super_class = ManagedAppService;
  v2 = [(ManagedAppService *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AppStoreDaemon.ManagedAppService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;
  }

  return v2;
}

- (void)processITMSServicesRequest:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002FDDA8;
  v13[3] = &unk_10051BB18;
  v15 = v6;
  v16 = v7;
  v14 = v8;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  sub_100005D90(dispatchQueue, v13);
}

- (void)requestStatusWithReply:(id)a3
{
  v4 = a3;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002FDF90;
  v9[3] = &unk_10051B2D0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  sub_100005D90(dispatchQueue, v9);
}

- (void)showVPPInviteForCurrentUser:(id)a3 orgName:(id)a4 withReplyHandler:(id)a5
{
  v6 = a5;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002FE284;
  v9[3] = &unk_10051BD28;
  v10 = v6;
  v8 = v6;
  sub_100005D90(dispatchQueue, v9);
}

- (void)submitManifestRequest:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002FE3EC;
  v13[3] = &unk_10051C078;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  sub_100005D90(dispatchQueue, v13);
}

- (void)submitVPPRequest:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002FE62C;
  v13[3] = &unk_10051C078;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  sub_100005D90(dispatchQueue, v13);
}

@end