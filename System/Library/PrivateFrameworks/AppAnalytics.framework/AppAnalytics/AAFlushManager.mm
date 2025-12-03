@interface AAFlushManager
- (AAFlushManager)init;
- (AAFlushManager)initWithAppSessionManager:(id)manager client:(id)client endpoint:(id)endpoint config:(id)config;
- (void)flushWithCompletion:(id)completion;
@end

@implementation AAFlushManager

- (AAFlushManager)initWithAppSessionManager:(id)manager client:(id)client endpoint:(id)endpoint config:(id)config
{
  ObjectType = swift_getObjectType();
  v12 = *(manager + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  type metadata accessor for URLSessionUploadClientFactory();
  v13 = swift_allocObject();
  clientCopy = client;
  swift_unknownObjectRetain_n();
  configCopy = config;
  v16 = clientCopy;
  v17 = configCopy;
  managerCopy = manager;

  *(&self->super.isa + OBJC_IVAR___AAFlushManager_flushManager) = sub_1B69D6A7C(v19, v16, endpoint, 0, v17, v13);
  v22.receiver = self;
  v22.super_class = ObjectType;
  v20 = [(AAFlushManager *)&v22 init];

  swift_unknownObjectRelease();
  return v20;
}

- (void)flushWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1B69D72B0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(&self->super.isa + OBJC_IVAR___AAFlushManager_flushManager);
  selfCopy = self;
  sub_1B698C230(0, 0, v7, v6);
  sub_1B69A3100(v7);
}

- (AAFlushManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end