@interface GSGameActivitySupport
+ (_TtC7GameKit21GSGameActivitySupport)shared;
- (_TtC7GameKit21GSGameActivitySupport)init;
- (void)loadAllPendingActivitiesForCurrentGameWithCompletionHandler:(id)a3;
@end

@implementation GSGameActivitySupport

+ (_TtC7GameKit21GSGameActivitySupport)shared
{
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  v3 = qword_2811ED610;

  return v3;
}

- (void)loadAllPendingActivitiesForCurrentGameWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2186B7B7C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2186B9230;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2186B9240;
  v13[5] = v12;
  v14 = self;
  sub_2186A12F8(0, 0, v8, &unk_2186B9250, v13);
}

- (_TtC7GameKit21GSGameActivitySupport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end