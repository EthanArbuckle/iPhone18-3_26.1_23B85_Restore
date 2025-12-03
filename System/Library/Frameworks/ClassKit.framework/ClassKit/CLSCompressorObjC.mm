@interface CLSCompressorObjC
+ (BOOL)isAppleArchiveWithFileURL:(id)l;
+ (id)compressWithDirectoryURL:(id)l destinationURL:(id)rL error:(id *)error;
+ (id)uncompressWithArchiveAt:(id)at error:(id *)error;
- (CLSCompressorObjC)init;
@end

@implementation CLSCompressorObjC

+ (id)compressWithDirectoryURL:(id)l destinationURL:(id)rL error:(id *)error
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v21[-v12];
  __chkstk_darwin(v11);
  v15 = &v21[-v14];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100009508(v13, v10, v15);
  v16 = *(v6 + 8);
  v16(v10, v5);
  v16(v13, v5);
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v16(v15, v5);

  return v19;
}

+ (id)uncompressWithArchiveAt:(id)at error:(id *)error
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v17[-v10];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000AEAC(v9, v11);
  v12 = *(v5 + 8);
  v12(v9, v4);
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v12(v11, v4);

  return v15;
}

+ (BOOL)isAppleArchiveWithFileURL:(id)l
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_10000D6C8(v7);
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

- (CLSCompressorObjC)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CLSCompressorObjC *)&v3 init];
}

@end