@interface NEHotspotEvaluationProviderHost
- (NEHotspotEvaluationProviderHost)init;
- (void)initialize:(id)initialize;
- (void)setExportedObject:(id)object;
- (void)startWithCompletion:(id)completion;
- (void)stopWithReason:(int64_t)reason completion:(id)completion;
@end

@implementation NEHotspotEvaluationProviderHost

- (void)setExportedObject:(id)object
{
  v4 = *&self->NEExtensionBaseProviderHost_opaque[OBJC_IVAR___NEHotspotEvaluationProviderHost_exportedObject];
  *&self->NEExtensionBaseProviderHost_opaque[OBJC_IVAR___NEHotspotEvaluationProviderHost_exportedObject] = object;
  objectCopy = object;
}

- (void)initialize:(id)initialize
{
  sub_1BAA39D9C();
  selfCopy = self;
  sub_1BA84C058();
}

- (void)startWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1BAA39EFC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BAA4CDA0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BAA4CDA8;
  v13[5] = v12;
  selfCopy = self;
  sub_1BA8737D8(0, 0, v8, &unk_1BAA4CDB0, v13);
}

- (void)stopWithReason:(int64_t)reason completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = reason;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1BAA39EFC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1BAA4CD60;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1BAA4D100;
  v15[5] = v14;
  selfCopy = self;
  sub_1BA8737D8(0, 0, v10, &unk_1BAA4CD70, v15);
}

- (NEHotspotEvaluationProviderHost)init
{
  *&self->NEExtensionBaseProviderHost_opaque[OBJC_IVAR___NEHotspotEvaluationProviderHost_exportedObject] = 0;
  v3.receiver = self;
  v3.super_class = NEHotspotEvaluationProviderHost;
  return [(NEExtensionBaseProviderHost *)&v3 init];
}

@end