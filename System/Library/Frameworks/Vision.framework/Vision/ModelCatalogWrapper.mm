@interface ModelCatalogWrapper
- (_TtC19ModelCatalogWrapper19ModelCatalogWrapper)init;
- (id)foregroundBackgroundSegmentationModelBundleURLAndReturnError:(id *)error;
- (void)downloadForegroundBackgroundSegmentationModelBundleWithCompletionHandler:(id)handler;
@end

@implementation ModelCatalogWrapper

- (void)downloadForegroundBackgroundSegmentationModelBundleWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A5FD40AC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A60369A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A60369B8;
  v12[5] = v11;
  selfCopy = self;
  sub_1A5C5AA24(0, 0, v7, &unk_1A60369C8, v12);
}

- (id)foregroundBackgroundSegmentationModelBundleURLAndReturnError:(id *)error
{
  v3 = sub_1A5D5CBF0();

  return v3;
}

- (_TtC19ModelCatalogWrapper19ModelCatalogWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ModelCatalogWrapper();
  return [(ModelCatalogWrapper *)&v3 init];
}

@end