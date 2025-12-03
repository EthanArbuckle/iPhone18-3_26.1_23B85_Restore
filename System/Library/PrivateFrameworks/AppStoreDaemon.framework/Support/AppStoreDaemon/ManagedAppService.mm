@interface ManagedAppService
- (ManagedAppService)init;
- (void)processITMSServicesRequest:(id)request withReplyHandler:(id)handler;
- (void)requestStatusWithReply:(id)reply;
- (void)showVPPInviteForCurrentUser:(id)user orgName:(id)name withReplyHandler:(id)handler;
- (void)submitManifestRequest:(id)request withReplyHandler:(id)handler;
- (void)submitVPPRequest:(id)request withReplyHandler:(id)handler;
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

- (void)processITMSServicesRequest:(id)request withReplyHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002FDDA8;
  v13[3] = &unk_10051BB18;
  v15 = requestCopy;
  v16 = handlerCopy;
  v14 = v8;
  v10 = requestCopy;
  v11 = handlerCopy;
  v12 = v8;
  sub_100005D90(dispatchQueue, v13);
}

- (void)requestStatusWithReply:(id)reply
{
  replyCopy = reply;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002FDF90;
  v9[3] = &unk_10051B2D0;
  v10 = v5;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = v5;
  sub_100005D90(dispatchQueue, v9);
}

- (void)showVPPInviteForCurrentUser:(id)user orgName:(id)name withReplyHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002FE284;
  v9[3] = &unk_10051BD28;
  v10 = handlerCopy;
  v8 = handlerCopy;
  sub_100005D90(dispatchQueue, v9);
}

- (void)submitManifestRequest:(id)request withReplyHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002FE3EC;
  v13[3] = &unk_10051C078;
  v14 = v8;
  v15 = requestCopy;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = requestCopy;
  v12 = v8;
  sub_100005D90(dispatchQueue, v13);
}

- (void)submitVPPRequest:(id)request withReplyHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002FE62C;
  v13[3] = &unk_10051C078;
  v14 = v8;
  v15 = requestCopy;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = requestCopy;
  v12 = v8;
  sub_100005D90(dispatchQueue, v13);
}

@end