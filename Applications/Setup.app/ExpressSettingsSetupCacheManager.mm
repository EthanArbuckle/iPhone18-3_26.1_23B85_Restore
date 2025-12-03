@interface ExpressSettingsSetupCacheManager
- (_TtC5Setup32ExpressSettingsSetupCacheManager)init;
- (void)applyHandlers:(id)handlers;
- (void)registerExpressSettings:(id)settings;
- (void)removeApplyHandlerFor:(unint64_t)for;
- (void)resetCache;
- (void)resetHandlers;
- (void)setApplyHandlerFor:(unint64_t)for;
- (void)setExpressDataSource:(id)source;
@end

@implementation ExpressSettingsSetupCacheManager

- (_TtC5Setup32ExpressSettingsSetupCacheManager)init
{
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A52C(0, &qword_1003A0430);
  (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.default(_:), v2);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v5, v2);
  v7 = type metadata accessor for ExpressSettingsSetupCacheManager();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_registeredSettings] = &_swiftEmptySetSingleton;
  *&v8[OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_expressFeaturesToApply] = &_swiftEmptySetSingleton;
  *&v8[OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_dataSource] = 0;
  *&v8[OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_queue] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = [(ExpressSettingsSetupCacheManager *)&v11 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (void)setExpressDataSource:(id)source
{
  *(&self->super.isa + OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_dataSource) = source;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setApplyHandlerFor:(unint64_t)for
{
  selfCopy = self;
  sub_100006C88(for);
}

- (void)removeApplyHandlerFor:(unint64_t)for
{
  selfCopy = self;
  sub_100007094(for);
}

- (void)registerExpressSettings:(id)settings
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000073C4(v4);
}

- (void)applyHandlers:(id)handlers
{
  v4 = _Block_copy(handlers);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100007A9C(sub_10000A524, v5);
}

- (void)resetHandlers
{
  selfCopy = self;
  sub_100008D9C();
}

- (void)resetCache
{
  selfCopy = self;
  sub_100009124();
}

@end