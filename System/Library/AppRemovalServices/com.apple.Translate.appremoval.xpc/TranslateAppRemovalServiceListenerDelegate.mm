@interface TranslateAppRemovalServiceListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC30com_apple_Translate_appremoval42TranslateAppRemovalServiceListenerDelegate)init;
@end

@implementation TranslateAppRemovalServiceListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = _LSAppRemovalServiceXPCInterface();
  [connectionCopy setExportedInterface:v5];

  v6 = [objc_allocWithZone(type metadata accessor for TranslateAppDeletionService()) init];
  [connectionCopy setExportedObject:v6];

  [connectionCopy resume];
  return 1;
}

- (_TtC30com_apple_Translate_appremoval42TranslateAppRemovalServiceListenerDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TranslateAppRemovalServiceListenerDelegate();
  return [(TranslateAppRemovalServiceListenerDelegate *)&v3 init];
}

@end