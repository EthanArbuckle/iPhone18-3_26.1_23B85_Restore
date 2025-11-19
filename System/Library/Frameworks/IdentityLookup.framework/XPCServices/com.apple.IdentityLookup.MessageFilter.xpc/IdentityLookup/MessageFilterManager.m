@interface MessageFilterManager
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC38com_apple_IdentityLookup_MessageFilter20MessageFilterManager)init;
- (void)performClassificationReportRequest:(id)a3;
@end

@implementation MessageFilterManager

- (_TtC38com_apple_IdentityLookup_MessageFilter20MessageFilterManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MessageFilterManager *)&v3 init];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = self;
  [v5 setExportedObject:v6];
  v7 = [objc_opt_self() il_messageFilterHostInterface];
  [v5 setExportedInterface:v7];

  [v5 resume];
  return 1;
}

- (void)performClassificationReportRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100015F50(v4);
}

@end