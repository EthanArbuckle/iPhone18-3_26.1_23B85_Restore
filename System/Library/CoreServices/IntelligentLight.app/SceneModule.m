@interface SceneModule
- (_TtC16IntelligentLight11SceneModule)init;
@end

@implementation SceneModule

- (_TtC16IntelligentLight11SceneModule)init
{
  ObjectType = swift_getObjectType();
  *&self->moduleAccessor[OBJC_IVAR____TtC16IntelligentLight11SceneModule_moduleAccessor] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC16IntelligentLight11SceneModule_activeLightSceneSessionIds) = &_swiftEmptySetSingleton;
  *(&self->super.isa + OBJC_IVAR____TtC16IntelligentLight11SceneModule_activeNoiseSceneSessionIds) = &_swiftEmptySetSingleton;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SceneModule *)&v5 init];
}

@end