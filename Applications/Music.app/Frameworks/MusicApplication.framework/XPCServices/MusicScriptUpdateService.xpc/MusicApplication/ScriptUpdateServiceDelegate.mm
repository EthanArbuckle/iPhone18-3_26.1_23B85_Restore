@interface ScriptUpdateServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC24MusicScriptUpdateService27ScriptUpdateServiceDelegate)init;
@end

@implementation ScriptUpdateServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = objc_opt_self();
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&OBJC_PROTOCOL____TtP24MusicScriptUpdateService32MusicScriptUpdateServiceProtocol_];
  [connectionCopy setExportedInterface:v7];

  v8 = [objc_allocWithZone(type metadata accessor for MusicScriptUpdateService()) init];
  [connectionCopy setExportedObject:v8];

  [connectionCopy resume];
  return 1;
}

- (_TtC24MusicScriptUpdateService27ScriptUpdateServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScriptUpdateServiceDelegate();
  return [(ScriptUpdateServiceDelegate *)&v3 init];
}

@end