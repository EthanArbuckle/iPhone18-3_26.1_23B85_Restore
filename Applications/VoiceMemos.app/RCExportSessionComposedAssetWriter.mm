@interface RCExportSessionComposedAssetWriter
+ (void)createForAsset:(AVAsset *)asset completionHandler:(id)handler;
- (_TtC10VoiceMemos34RCExportSessionComposedAssetWriter)init;
- (void)writeCompositionWithCompletionBlock:(id)block;
@end

@implementation RCExportSessionComposedAssetWriter

- (_TtC10VoiceMemos34RCExportSessionComposedAssetWriter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)writeCompositionWithCompletionBlock:(id)block
{
  v5 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(block);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_100132D18;
  v12[6] = v10;
  selfCopy = self;
  sub_100194190(0, 0, v8, &unk_10024F0A0, v12);
}

+ (void)createForAsset:(AVAsset *)asset completionHandler:(id)handler
{
  v7 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = asset;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10024F090;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100243D40;
  v15[5] = v14;
  assetCopy = asset;
  sub_1001A8E50(0, 0, v10, &unk_100243540, v15);
}

@end