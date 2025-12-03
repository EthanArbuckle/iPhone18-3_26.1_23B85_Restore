@interface IconChangeAlertOperationXPCInvokerProxy
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy)init;
- (void)checkinRemoteAlertRoot:(id)root;
@end

@implementation IconChangeAlertOperationXPCInvokerProxy

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_B298(connectionCopy);

  return v9 & 1;
}

- (void)checkinRemoteAlertRoot:(id)root
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_4F88(root);
  swift_unknownObjectRelease();
}

- (_TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy)init
{
  swift_weakInit();
  *(&self->super.isa + OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_serviceConnection) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_remoteAlertRoot) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for IconChangeAlertOperationXPCInvokerProxy();
  return [(IconChangeAlertOperationXPCInvokerProxy *)&v4 init];
}

@end