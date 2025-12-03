@interface AISFlowTask
- (BOOL)completed;
- (_TtC12AppleIDSetup11AISFlowTask)init;
- (void)complete;
- (void)dealloc;
- (void)setCompleted:(BOOL)completed;
- (void)waitUntilLoadedWithCompletionHandler:(id)handler;
@end

@implementation AISFlowTask

- (BOOL)completed
{
  v3 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCompleted:(BOOL)completed
{
  v5 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  *(&self->super.isa + v5) = completed;
}

- (void)complete
{
  selfCopy = self;
  sub_240651654();
}

- (void)waitUntilLoadedWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24075A3D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24076E398;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240767F10;
  v13[5] = v12;
  selfCopy = self;
  sub_2406FC468(0, 0, v8, &unk_24076FBC0, v13);
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask))
  {
    selfCopy = self;

    sub_24075A4A4();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for AISFlowTask();
  [(AISFlowTask *)&v5 dealloc];
}

- (_TtC12AppleIDSetup11AISFlowTask)init
{
  v3 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA208, &unk_24076E300);
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  *(&self->super.isa + OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AISFlowTask();
  return [(AISFlowTask *)&v6 init];
}

@end