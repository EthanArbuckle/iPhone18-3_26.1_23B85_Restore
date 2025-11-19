@interface SatelliteSMSServiceSession
- (SatelliteSMSServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5;
- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4;
- (void)connectedServicesChanged:(int64_t)a3;
- (void)messageReceived:(id)a3 withMetadata:(id)a4 completionBlock:(id)a5;
- (void)sendMessageFromIMMessageItem:(id)a3 forChat:(id)a4 chat:(id)a5 style:(unsigned __int8)a6;
- (void)stateChanged:(id)a3;
@end

@implementation SatelliteSMSServiceSession

- (SatelliteSMSServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  return SatelliteSMSServiceSession.init(account:service:replicatingFor:)(v7, v8, a5);
}

- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  SatelliteSMSServiceSession.calculateReachability(with:responseHandler:)(v6, a4);

  swift_unknownObjectRelease();
}

- (void)sendMessageFromIMMessageItem:(id)a3 forChat:(id)a4 chat:(id)a5 style:(unsigned __int8)a6
{
  v10 = sub_DD94();
  v12 = v11;
  v13 = a3;
  v14 = a5;
  v15 = self;
  SatelliteSMSServiceSession.sendMessage(from:forChat:chat:style:)(v13, v10, v12, v14, a6);
}

- (void)stateChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_55B4(v4);
}

- (void)connectedServicesChanged:(int64_t)a3
{
  v4 = self;
  sub_57E8(a3);
}

- (void)messageReceived:(id)a3 withMetadata:(id)a4 completionBlock:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    sub_DD64();
  }

  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = self;
  sub_9AD8(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

@end