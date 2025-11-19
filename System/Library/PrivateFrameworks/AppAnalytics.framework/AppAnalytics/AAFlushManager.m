@interface AAFlushManager
- (AAFlushManager)init;
- (AAFlushManager)initWithAppSessionManager:(id)a3 client:(id)a4 endpoint:(id)a5 config:(id)a6;
- (void)flushWithCompletion:(id)a3;
@end

@implementation AAFlushManager

- (AAFlushManager)initWithAppSessionManager:(id)a3 client:(id)a4 endpoint:(id)a5 config:(id)a6
{
  ObjectType = swift_getObjectType();
  v12 = *(a3 + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  type metadata accessor for URLSessionUploadClientFactory();
  v13 = swift_allocObject();
  v14 = a4;
  swift_unknownObjectRetain_n();
  v15 = a6;
  v16 = v14;
  v17 = v15;
  v18 = a3;

  *(&self->super.isa + OBJC_IVAR___AAFlushManager_flushManager) = sub_1B69D6A7C(v19, v16, a5, 0, v17, v13);
  v22.receiver = self;
  v22.super_class = ObjectType;
  v20 = [(AAFlushManager *)&v22 init];

  swift_unknownObjectRelease();
  return v20;
}

- (void)flushWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
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