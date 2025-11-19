@interface ATDispatchCenter
+ (_TtC5AskTo16ATDispatchCenter)shared;
- (_TtC5AskTo16ATDispatchCenter)init;
- (void)canAskTo:(signed __int16)a3 requiredCapabilities:(NSSet *)a4 completionHandler:(id)a5;
- (void)send:(_TtC5AskTo10ATQuestion *)a3 to:(signed __int16)a4 completionHandler:(id)a5;
@end

@implementation ATDispatchCenter

+ (_TtC5AskTo16ATDispatchCenter)shared
{
  if (qword_2813690C8 != -1)
  {
    swift_once();
  }

  v3 = qword_2813690D0;

  return v3;
}

- (void)send:(_TtC5AskTo10ATQuestion *)a3 to:(signed __int16)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379F8, &qword_2258E1ED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = v14;
  *(v15 + 40) = self;
  v16 = sub_2258E0E40();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2258E1F28;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2258E1F30;
  v18[5] = v17;
  v19 = a3;
  v20 = self;
  sub_2258DEE80(0, 0, v13, &unk_2258E1F38, v18);
}

- (void)canAskTo:(signed __int16)a3 requiredCapabilities:(NSSet *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379F8, &qword_2258E1ED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = v14;
  *(v15 + 40) = self;
  v16 = sub_2258E0E40();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2258E1EE0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2258E1EF0;
  v18[5] = v17;
  v19 = a4;
  v20 = self;
  sub_2258DEE80(0, 0, v13, &unk_2258E1F00, v18);
}

- (_TtC5AskTo16ATDispatchCenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end