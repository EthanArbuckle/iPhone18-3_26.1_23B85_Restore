@interface ACDAsyncAuthenticationPluginManager
- (_TtC14AccountsDaemon35ACDAsyncAuthenticationPluginManager)init;
- (_TtC14AccountsDaemon35ACDAsyncAuthenticationPluginManager)initWith:(id)with;
- (void)renewCredentialFor:(ACAccount *)for with:(ACDAccountStore *)with options:(NSDictionary *)options completionHandler:(id)handler;
@end

@implementation ACDAsyncAuthenticationPluginManager

- (_TtC14AccountsDaemon35ACDAsyncAuthenticationPluginManager)initWith:(id)with
{
  withCopy = with;
  swift_defaultActor_initialize();
  v5 = MEMORY[0x277D84F90];
  *self->authPluginLoader = sub_221D9F388(MEMORY[0x277D84F90]);
  *self->authPluginsByType = sub_221D9F48C(v5);
  *&self->_anon_60[8] = withCopy;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ACDAsyncAuthenticationPluginManager();
  return [(ACDAsyncAuthenticationPluginManager *)&v7 init];
}

- (void)renewCredentialFor:(ACAccount *)for with:(ACDAccountStore *)with options:(NSDictionary *)options completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = for;
  v16[3] = with;
  v16[4] = options;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_221DAC4E8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_221DB1E40;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_221DB1E50;
  v19[5] = v18;
  forCopy = for;
  withCopy = with;
  optionsCopy = options;

  sub_221D9DE20(0, 0, v14, &unk_221DB1E60, v19);
}

- (_TtC14AccountsDaemon35ACDAsyncAuthenticationPluginManager)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end