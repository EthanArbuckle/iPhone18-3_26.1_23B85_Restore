@interface ExpressSettingsSetupCacheManager
- (_TtC5Setup32ExpressSettingsSetupCacheManager)init;
- (void)applyHandlers:(id)a3;
- (void)registerExpressSettings:(id)a3;
- (void)removeApplyHandlerFor:(unint64_t)a3;
- (void)resetCache;
- (void)resetHandlers;
- (void)setApplyHandlerFor:(unint64_t)a3;
- (void)setExpressDataSource:(id)a3;
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

- (void)setExpressDataSource:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_dataSource) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setApplyHandlerFor:(unint64_t)a3
{
  v4 = self;
  sub_100006C88(a3);
}

- (void)removeApplyHandlerFor:(unint64_t)a3
{
  v4 = self;
  sub_100007094(a3);
}

- (void)registerExpressSettings:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1000073C4(v4);
}

- (void)applyHandlers:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100007A9C(sub_10000A524, v5);
}

- (void)resetHandlers
{
  v2 = self;
  sub_100008D9C();
}

- (void)resetCache
{
  v2 = self;
  sub_100009124();
}

@end