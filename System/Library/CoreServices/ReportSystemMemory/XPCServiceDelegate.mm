@interface XPCServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC18ReportSystemMemory18XPCServiceDelegate)init;
@end

@implementation XPCServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100000F00(connectionCopy);

  return v9 & 1;
}

- (_TtC18ReportSystemMemory18XPCServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for XPCServiceDelegate();
  return [(XPCServiceDelegate *)&v3 init];
}

@end