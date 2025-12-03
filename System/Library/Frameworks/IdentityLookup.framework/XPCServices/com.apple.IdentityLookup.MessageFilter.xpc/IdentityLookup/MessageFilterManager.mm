@interface MessageFilterManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC38com_apple_IdentityLookup_MessageFilter20MessageFilterManager)init;
- (void)performClassificationReportRequest:(id)request;
@end

@implementation MessageFilterManager

- (_TtC38com_apple_IdentityLookup_MessageFilter20MessageFilterManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MessageFilterManager *)&v3 init];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  [connectionCopy setExportedObject:selfCopy];
  il_messageFilterHostInterface = [objc_opt_self() il_messageFilterHostInterface];
  [connectionCopy setExportedInterface:il_messageFilterHostInterface];

  [connectionCopy resume];
  return 1;
}

- (void)performClassificationReportRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_100015F50(requestCopy);
}

@end