@interface CKAssetStreamHandle
+ (C2RequestOptions)networkRequestOptions;
+ (void)makeAssetStreamHandleFromURL:(NSURL *)a3 assetKey:(NSData *)a4 filenameExtension:(NSString *)a5 completionHandler:(id)a6;
- (CKAssetStreamHandle)initWithSerializedData:(id)a3 error:(id *)a4;
- (id)makeAVAssetExportSessionWith:(id)a3 options:(id)a4 presetName:(id)a5;
- (id)makeAVPlayerItemWith:(id)a3 options:(id)a4;
- (id)serializedData:(id *)a3;
- (int64_t)size;
@end

@implementation CKAssetStreamHandle

+ (C2RequestOptions)networkRequestOptions
{
  v2 = sub_18844F690();

  return v2;
}

+ (void)makeAssetStreamHandleFromURL:(NSURL *)a3 assetKey:(NSData *)a4 filenameExtension:(NSString *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;

  sub_1884C2198(&unk_1886F70C8, v11);
}

- (CKAssetStreamHandle)initWithSerializedData:(id)a3 error:(id *)a4
{
  v4 = a3;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_1884502C0();
}

- (id)serializedData:(id *)a3
{
  v3 = self;
  v4 = sub_1884504DC();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_188423CCC(v4, v6);

  return v7.super.isa;
}

- (id)makeAVPlayerItemWith:(id)a3 options:(id)a4
{
  v7 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = 1;
  }

  sub_1883F90F4(v10, v12, 1, v11);
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = self;
  sub_188450654();
  v15 = v14;

  sub_1883F9FEC(v10, &qword_1EA90D240, &qword_1886F70B0);

  return v15;
}

- (id)makeAVAssetExportSessionWith:(id)a3 options:(id)a4 presetName:(id)a5
{
  v8 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = 1;
  }

  sub_1883F90F4(v11, v13, 1, v12);
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = self;
  sub_188450CD4();
  v16 = v15;

  sub_1883F9FEC(v11, &qword_1EA90D240, &qword_1886F70B0);

  return v16;
}

- (int64_t)size
{
  v2 = self;
  sub_188451B44();
  v4 = v3;

  return v4;
}

@end