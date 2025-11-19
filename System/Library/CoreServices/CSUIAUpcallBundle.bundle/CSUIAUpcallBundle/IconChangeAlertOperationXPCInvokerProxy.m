@interface IconChangeAlertOperationXPCInvokerProxy
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy)init;
- (void)checkinRemoteAlertRoot:(id)a3;
@end

@implementation IconChangeAlertOperationXPCInvokerProxy

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_B298(v7);

  return v9 & 1;
}

- (void)checkinRemoteAlertRoot:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_4F88(a3);
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