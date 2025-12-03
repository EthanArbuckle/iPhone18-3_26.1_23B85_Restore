@interface NSFileManager
- (BOOL)crl_directoryExistsAt:(id)at;
@end

@implementation NSFileManager

- (BOOL)crl_directoryExistsAt:(id)at
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  if (URL.isFileURL.getter())
  {
    HIBYTE(v13) = 0;
    URL.path.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [(NSFileManager *)selfCopy fileExistsAtPath:v10 isDirectory:&v13 + 7];

    (*(v5 + 8))(v8, v4);
    return v11 & HIBYTE(v13);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    return 0;
  }
}

@end