@interface CloudAssetsAssetStreamHandle
+ (id)makeAssetStreamHandleWithPartition:(id)partition owner:(id)owner accessToken:(id)token requestorID:(id)d signature:(id)signature referenceSignature:(id)referenceSignature size:(int64_t)size assetKey:(id)self0 filenameExtension:(id)self1 applicationID:(id)self2 error:(id *)self3;
- (id)initFrom:(id)from error:(id *)error;
- (id)makeAVAssetExportSessionWith:(id)with options:(id)options presetName:(id)name;
- (id)makeAVPlayerItemWith:(id)with options:(id)options;
- (id)serializedDataAndReturnError:(id *)error;
- (int64_t)size;
@end

@implementation CloudAssetsAssetStreamHandle

+ (id)makeAssetStreamHandleWithPartition:(id)partition owner:(id)owner accessToken:(id)token requestorID:(id)d signature:(id)signature referenceSignature:(id)referenceSignature size:(int64_t)size assetKey:(id)self0 filenameExtension:(id)self1 applicationID:(id)self2 error:(id *)self3
{
  errorCopy = error;
  selfCopy = self;
  sizeCopy = size;
  v15 = type metadata accessor for URL();
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &errorCopy - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v19;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v20;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v21;
  signatureCopy = signature;
  referenceSignatureCopy = referenceSignature;
  keyCopy = key;
  extensionCopy = extension;
  iDCopy = iD;
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
  *(&v42 + 1) = sizeCopy;
  selfCopy = v30;
  *&v42 = v30;
  v37 = v46;
  *(&v41 + 1) = v46;
  sizeCopy = v28;
  *&v41 = v28;
  v38 = v47;
  v39 = sub_18845B578(v18, v52, v57, v51, v58, v50, v48, v47, v41, v42, v43, v44);
  (*(v55 + 8))(v18, v56);

  sub_188423CCC(v31, v49);
  sub_188423CCC(v37, selfCopy);
  sub_188423CCC(v38, sizeCopy);

  return v39;
}

- (id)makeAVPlayerItemWith:(id)with options:(id)options
{
  v7 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  if (with)
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
  if (options)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  v14 = sub_18845BA74();

  sub_18845C260(v10);

  return v14;
}

- (id)makeAVAssetExportSessionWith:(id)with options:(id)options presetName:(id)name
{
  v8 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  if (with)
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
  if (options)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v15 = sub_18845BBCC();

  sub_18845C260(v11);

  return v15;
}

- (id)initFrom:(id)from error:(id *)error
{
  fromCopy = from;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_18845BD50();
}

- (id)serializedDataAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = sub_18845BF7C();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_188423CCC(v4, v6);

  return v7.super.isa;
}

- (int64_t)size
{
  selfCopy = self;
  v3 = sub_18845C234();

  return v3;
}

@end