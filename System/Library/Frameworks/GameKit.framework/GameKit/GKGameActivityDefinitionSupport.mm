@interface GKGameActivityDefinitionSupport
+ (_TtC7GameKit31GKGameActivityDefinitionSupport)shared;
- (_TtC7GameKit31GKGameActivityDefinitionSupport)init;
- (void)loadGameActivityDefinitionsWith:(NSArray *)with completionHandler:(id)handler;
- (void)loadGameActivityDefinitionsWithCompletionHandler:(id)handler;
@end

@implementation GKGameActivityDefinitionSupport

+ (_TtC7GameKit31GKGameActivityDefinitionSupport)shared
{
  if (qword_27CC07C00 != -1)
  {
    swift_once();
  }

  v3 = qword_27CC07C08;

  return v3;
}

- (void)loadGameActivityDefinitionsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2186B7B7C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2186B95E8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2186B95F0;
  v13[5] = v12;
  selfCopy = self;
  sub_2186A12F8(0, 0, v8, &unk_2186B95F8, v13);
}

- (void)loadGameActivityDefinitionsWith:(NSArray *)with completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = with;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2186B7B7C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2186B95A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2186B95B0;
  v15[5] = v14;
  withCopy = with;
  selfCopy = self;
  sub_2186A12F8(0, 0, v10, &unk_2186B95C0, v15);
}

- (_TtC7GameKit31GKGameActivityDefinitionSupport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end