@interface NavigationAlertsOnlyOverrideSynchronizationTask
- (_TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask)init;
- (void)applicationWillTerminate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
@end

@implementation NavigationAlertsOnlyOverrideSynchronizationTask

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userDefaults);
  selfCopy = self;
  v4 = v2;

  v5 = String._bridgeToObjectiveC()();

  [v4 removeObserver:selfCopy forKeyPath:v5];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for NavigationAlertsOnlyOverrideSynchronizationTask();
  [(NavigationAlertsOnlyOverrideSynchronizationTask *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10017A6F8();
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_10017939C(v10, v12, v18, v15, context);

  sub_100024F64(v18, &unk_101908380);
}

- (void)applicationWillTerminate
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    currentNavigationSession = [v4 currentNavigationSession];

    if (currentNavigationSession)
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

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  if (toSession && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    swift_unknownObjectRetain();
    self;
    swift_unknownObjectRetain();
    sub_100179F04(v7);
  }

  else
  {
    if (!session)
    {
      return;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      return;
    }

    swift_unknownObjectRetain();
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100179A94();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end