@interface ATXAppEntityContext
- (ATXAppEntityContext)init;
- (void)fetchOnScreenContextFor:(NSString *)for completionHandler:(id)handler;
@end

@implementation ATXAppEntityContext

- (void)fetchOnScreenContextFor:(NSString *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_226836628();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_226874358;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_226874368;
  v16[5] = v15;
  forCopy = for;
  selfCopy = self;
  sub_22679FE8C(0, 0, v11, &unk_226874378, v16);
}

- (ATXAppEntityContext)init
{
  v3 = self + OBJC_IVAR___ATXAppEntityContext_uiContextClient;
  v4 = type metadata accessor for AppEntityContext();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(ATXAppEntityContext *)&v6 init];
}

@end