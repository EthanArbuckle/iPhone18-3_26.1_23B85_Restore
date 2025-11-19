@interface NavigationAlertsOnlyOverrideSynchronizationTask
- (_TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask)init;
- (void)applicationWillTerminate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
@end

@implementation NavigationAlertsOnlyOverrideSynchronizationTask

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userDefaults);
  v3 = self;
  v4 = v2;

  v5 = String._bridgeToObjectiveC()();

  [v4 removeObserver:v3 forKeyPath:v5];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for NavigationAlertsOnlyOverrideSynchronizationTask();
  [(NavigationAlertsOnlyOverrideSynchronizationTask *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10017A6F8();
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_10017939C(v10, v12, v18, v15, a6);

  sub_100024F64(v18, &unk_101908380);
}

- (void)applicationWillTerminate
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v6 = self;
    v5 = [v4 currentNavigationSession];

    if (v5)
    {

      sub_100179A94();
    }
  }
}

- (_TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  if (a5 && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    swift_unknownObjectRetain();
    self;
    swift_unknownObjectRetain();
    sub_100179F04(v7);
  }

  else
  {
    if (!a4)
    {
      return;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      return;
    }

    swift_unknownObjectRetain();
    v8 = self;
    swift_unknownObjectRetain();
    sub_100179A94();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end