@interface ScriptUpdateServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC24MusicScriptUpdateService27ScriptUpdateServiceDelegate)init;
@end

@implementation ScriptUpdateServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = objc_opt_self();
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&OBJC_PROTOCOL____TtP24MusicScriptUpdateService32MusicScriptUpdateServiceProtocol_];
  [v6 setExportedInterface:v7];

  v8 = [objc_allocWithZone(type metadata accessor for MusicScriptUpdateService()) init];
  [v6 setExportedObject:v8];

  [v6 resume];
  return 1;
}

- (_TtC24MusicScriptUpdateService27ScriptUpdateServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScriptUpdateServiceDelegate();
  return [(ScriptUpdateServiceDelegate *)&v3 init];
}

@end