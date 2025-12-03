@interface ATXBundleIdRedactor
- (ATXBundleIdRedactor)init;
- (void)redactWithBundleIds:(NSArray *)ids completionHandler:(id)handler;
@end

@implementation ATXBundleIdRedactor

- (void)redactWithBundleIds:(NSArray *)ids completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = ids;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_226836628();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2268752F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_226875308;
  v16[5] = v15;
  idsCopy = ids;
  selfCopy = self;
  sub_22679FE8C(0, 0, v11, &unk_226875318, v16);
}

- (ATXBundleIdRedactor)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___ATXBundleIdRedactor_summarizationPipelineClient;
  sub_226835F58();
  *(&self->super.isa + v4) = sub_226835F48();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ATXBundleIdRedactor *)&v6 init];
}

@end