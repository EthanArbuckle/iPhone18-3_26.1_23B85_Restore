@interface SatelliteSMSServiceSession
- (SatelliteSMSServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session;
- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler;
- (void)connectedServicesChanged:(int64_t)changed;
- (void)messageReceived:(id)received withMetadata:(id)metadata completionBlock:(id)block;
- (void)sendMessageFromIMMessageItem:(id)item forChat:(id)chat chat:(id)a5 style:(unsigned __int8)style;
- (void)stateChanged:(id)changed;
@end

@implementation SatelliteSMSServiceSession

- (SatelliteSMSServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session
{
  accountCopy = account;
  serviceCopy = service;
  sessionCopy = session;
  return SatelliteSMSServiceSession.init(account:service:replicatingFor:)(accountCopy, serviceCopy, session);
}

- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  swift_unknownObjectRetain();
  selfCopy = self;
  SatelliteSMSServiceSession.calculateReachability(with:responseHandler:)(requestCopy, handler);

  swift_unknownObjectRelease();
}

- (void)sendMessageFromIMMessageItem:(id)item forChat:(id)chat chat:(id)a5 style:(unsigned __int8)style
{
  v10 = sub_DD94();
  v12 = v11;
  itemCopy = item;
  v14 = a5;
  selfCopy = self;
  SatelliteSMSServiceSession.sendMessage(from:forChat:chat:style:)(itemCopy, v10, v12, v14, style);
}

- (void)stateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_55B4(changedCopy);
}

- (void)connectedServicesChanged:(int64_t)changed
{
  selfCopy = self;
  sub_57E8(changed);
}

- (void)messageReceived:(id)received withMetadata:(id)metadata completionBlock:(id)block
{
  v8 = _Block_copy(block);
  if (metadata)
  {
    sub_DD64();
  }

  _Block_copy(v8);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_9AD8(received, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

@end