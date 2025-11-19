@interface JSContent
- (id)batchInfo:(id)a3;
- (id)info:(id)a3 :(id)a4;
- (id)metadataInfo:(id)a3;
- (id)readJSON:(id)a3 :(id)a4;
- (void)batchDownload:(id)a3 :(id)a4 :(id)a5;
- (void)download:(id)a3 :(id)a4 :(id)a5 :(id)a6;
- (void)extend:(id)a3 :(id)a4;
- (void)save:(id)a3 :(id)a4 :(id)a5 :(id)a6;
- (void)saveFilePath:(id)a3 :(id)a4 :(id)a5;
@end

@implementation JSContent

- (void)batchDownload:(id)a3 :(id)a4 :(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = self;
  sub_100107E6C(v7, v9, v11, v10);
}

- (id)batchInfo:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  v5 = sub_1001085E4();

  if (v5)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

- (void)download:(id)a3 :(id)a4 :(id)a5 :(id)a6
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = self;
  sub_1001088A4(v6, v8, v9, v11, v12, v13);
}

- (void)extend:(id)a3 :(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (a4)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  sub_100108E64(v6, v8, v9, a4);
}

- (id)info:(id)a3 :(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = sub_1001093EC(v5, v7, v8);

  if (v10)
  {
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  return v11.super.isa;
}

- (id)metadataInfo:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  v6 = sub_100109D54(v4);

  if (v6)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (id)readJSON:(id)a3 :(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_100109E7C(v5, v7, v8, v18);

  v10 = v19;
  if (v19)
  {
    v11 = sub_100003CA8(v18, v19);
    v12 = *(v10 - 8);
    v13 = *(v12 + 64);
    __chkstk_darwin(v11);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v10);
    sub_100002C00(v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)save:(id)a3 :(id)a4 :(id)a5 :(id)a6
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = self;
  sub_10010ACE0(v15, v8, v10, v11, v13, v14);
}

- (void)saveFilePath:(id)a3 :(id)a4 :(id)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = self;
  sub_10010B34C(v6, v8, v9, v11, v12, v14);
}

@end