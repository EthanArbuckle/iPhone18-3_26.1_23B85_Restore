@interface __AISSetupController
- (__AISSetupController)init;
- (__AISSetupController)initWithQueue:(id)a3;
- (void)setupWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation __AISSetupController

- (__AISSetupController)initWithQueue:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_240759BE4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for SetupController();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = a3;
  v13 = sub_2406A95B8(a3, v7, 0);
  v14 = type metadata accessor for __SetupController();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR_____AISSetupController_setupController] = v13;
  v18.receiver = v15;
  v18.super_class = v14;

  v16 = [(__AISSetupController *)&v18 init];

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

- (void)setupWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_2406AA92C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_2406A7458(v8, v6, v7);
  sub_24058CA60(v6);
}

- (__AISSetupController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end