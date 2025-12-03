@interface MusicScriptUpdateService
- (_TtC24MusicScriptUpdateService24MusicScriptUpdateService)init;
- (void)updateBytecodeCacheOfScriptAt:(id)at version:(id)version withReply:(id)reply;
@end

@implementation MusicScriptUpdateService

- (void)updateBytecodeCacheOfScriptAt:(id)at version:(id)version withReply:(id)reply
{
  v7 = sub_1004B6B04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(reply);
  sub_1004B6A94();
  v12 = sub_1004BBE64();
  v14 = v13;
  _Block_copy(v11);
  selfCopy = self;
  sub_100004638(v10, v12, v14, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v8 + 8))(v10, v7);
}

- (_TtC24MusicScriptUpdateService24MusicScriptUpdateService)init
{
  static Logger.music(_:)();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MusicScriptUpdateService();
  return [(MusicScriptUpdateService *)&v4 init];
}

@end