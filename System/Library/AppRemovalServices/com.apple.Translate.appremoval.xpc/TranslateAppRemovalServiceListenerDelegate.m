@interface TranslateAppRemovalServiceListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC30com_apple_Translate_appremoval42TranslateAppRemovalServiceListenerDelegate)init;
@end

@implementation TranslateAppRemovalServiceListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = _LSAppRemovalServiceXPCInterface();
  [v4 setExportedInterface:v5];

  v6 = [objc_allocWithZone(type metadata accessor for TranslateAppDeletionService()) init];
  [v4 setExportedObject:v6];

  [v4 resume];
  return 1;
}

- (_TtC30com_apple_Translate_appremoval42TranslateAppRemovalServiceListenerDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TranslateAppRemovalServiceListenerDelegate();
  return [(TranslateAppRemovalServiceListenerDelegate *)&v3 init];
}

@end