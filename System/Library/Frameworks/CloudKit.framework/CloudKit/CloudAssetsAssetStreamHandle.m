@interface CloudAssetsAssetStreamHandle
+ (id)makeAssetStreamHandleWithPartition:(id)a3 owner:(id)a4 accessToken:(id)a5 requestorID:(id)a6 signature:(id)a7 referenceSignature:(id)a8 size:(int64_t)a9 assetKey:(id)a10 filenameExtension:(id)a11 applicationID:(id)a12 error:(id *)a13;
- (id)initFrom:(id)a3 error:(id *)a4;
- (id)makeAVAssetExportSessionWith:(id)a3 options:(id)a4 presetName:(id)a5;
- (id)makeAVPlayerItemWith:(id)a3 options:(id)a4;
- (id)serializedDataAndReturnError:(id *)a3;
- (int64_t)size;
@end

@implementation CloudAssetsAssetStreamHandle

+ (id)makeAssetStreamHandleWithPartition:(id)a3 owner:(id)a4 accessToken:(id)a5 requestorID:(id)a6 signature:(id)a7 referenceSignature:(id)a8 size:(int64_t)a9 assetKey:(id)a10 filenameExtension:(id)a11 applicationID:(id)a12 error:(id *)a13
{
  v45 = a13;
  v53 = a1;
  v54 = a9;
  v15 = type metadata accessor for URL();
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v19;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v20;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v21;
  v22 = a7;
  v23 = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  *&v44 = v34;
  *(&v44 + 1) = v36;
  v49 = v33;
  *&v43 = v31;
  *(&v43 + 1) = v33;
  *(&v42 + 1) = v54;
  v53 = v30;
  *&v42 = v30;
  v37 = v46;
  *(&v41 + 1) = v46;
  v54 = v28;
  *&v41 = v28;
  v38 = v47;
  v39 = sub_18845B578(v18, v52, v57, v51, v58, v50, v48, v47, v41, v42, v43, v44);
  (*(v55 + 8))(v18, v56);

  sub_188423CCC(v31, v49);
  sub_188423CCC(v37, v53);
  sub_188423CCC(v38, v54);

  return v39;
}

- (id)makeAVPlayerItemWith:(id)a3 options:(id)a4
{
  v7 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
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
  v14 = sub_18845BA74();

  sub_18845C260(v10);

  return v14;
}

- (id)makeAVAssetExportSessionWith:(id)a3 options:(id)a4 presetName:(id)a5
{
  v8 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
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
  v15 = sub_18845BBCC();

  sub_18845C260(v11);

  return v15;
}

- (id)initFrom:(id)a3 error:(id *)a4
{
  v4 = a3;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_18845BD50();
}

- (id)serializedDataAndReturnError:(id *)a3
{
  v3 = self;
  v4 = sub_18845BF7C();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_188423CCC(v4, v6);

  return v7.super.isa;
}

- (int64_t)size
{
  v2 = self;
  v3 = sub_18845C234();

  return v3;
}

@end