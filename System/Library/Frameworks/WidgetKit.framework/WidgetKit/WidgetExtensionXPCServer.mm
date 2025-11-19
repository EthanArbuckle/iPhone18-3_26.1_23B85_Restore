@interface WidgetExtensionXPCServer
- (BOOL)shouldAcceptConnection:(id)a3;
- (_TtC9WidgetKit24WidgetExtensionXPCServer)init;
@end

@implementation WidgetExtensionXPCServer

- (BOOL)shouldAcceptConnection:(id)a3
{
  v4 = objc_allocWithZone(type metadata accessor for WidgetExtensionXPCServer.ExportedObject());
  v5 = a3;
  v6 = sub_192035854(v5);
  v7 = [type metadata accessor for _WidgetExtensionBaseContext() _extensionAuxiliaryVendorProtocol];
  [v5 setExportedInterface_];

  [v5 setExportedObject_];
  [v5 resume];

  return 1;
}

- (_TtC9WidgetKit24WidgetExtensionXPCServer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WidgetExtensionXPCServer();
  return [(WidgetExtensionXPCServer *)&v3 init];
}

@end