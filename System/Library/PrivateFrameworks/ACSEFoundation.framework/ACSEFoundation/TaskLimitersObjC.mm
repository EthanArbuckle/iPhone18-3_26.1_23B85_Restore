@interface TaskLimitersObjC
- (_TtC14ACSEFoundation16TaskLimitersObjC)init;
- (void)performClosureNoParamsWithIdentifier:(id)a3 task:(id)a4 completion:(id)a5;
- (void)performWithIdentifier:(id)a3 task:(id)a4 completion:(id)a5;
@end

@implementation TaskLimitersObjC

- (void)performWithIdentifier:(id)a3 task:(id)a4 completion:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = _Block_copy(a4);
  v13 = _Block_copy(a5);
  v14 = sub_23C43714C();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = sub_23C43726C();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = self;
  v20[5] = v14;
  v20[6] = v16;
  v20[7] = sub_23C435840;
  v20[8] = v17;
  v20[9] = sub_23C435848;
  v20[10] = v18;
  v21 = self;
  sub_23C4330D8(0, 0, v11, &unk_23C439210, v20);
}

- (void)performClosureNoParamsWithIdentifier:(id)a3 task:(id)a4 completion:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = _Block_copy(a4);
  v13 = _Block_copy(a5);
  v14 = sub_23C43714C();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = sub_23C43726C();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = self;
  v20[5] = v14;
  v20[6] = v16;
  v20[7] = sub_23C435810;
  v20[8] = v17;
  v20[9] = sub_23C435818;
  v20[10] = v18;
  v21 = self;
  sub_23C4211EC(0, 0, v11, &unk_23C439208, v20);
}

- (_TtC14ACSEFoundation16TaskLimitersObjC)init
{
  v3 = OBJC_IVAR____TtC14ACSEFoundation16TaskLimitersObjC_taskLimiters;
  type metadata accessor for TaskLimiters();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 14) = MEMORY[0x277D84F98];
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TaskLimitersObjC();
  return [(TaskLimitersObjC *)&v6 init];
}

@end