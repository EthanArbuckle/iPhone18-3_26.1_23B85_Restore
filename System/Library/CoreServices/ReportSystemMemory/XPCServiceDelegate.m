@interface XPCServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC18ReportSystemMemory18XPCServiceDelegate)init;
@end

@implementation XPCServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100000F00(v7);

  return v9 & 1;
}

- (_TtC18ReportSystemMemory18XPCServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for XPCServiceDelegate();
  return [(XPCServiceDelegate *)&v3 init];
}

@end