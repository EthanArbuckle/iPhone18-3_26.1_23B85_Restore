@interface UINavigationItem
- (id)_objc_renameDelegate;
- (void)set_objc_renameDelegate:(id)delegate;
@end

@implementation UINavigationItem

- (id)_objc_renameDelegate
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  v5 = [(UINavigationItem *)selfCopy valueForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  v6 = *(&v15 + 1);
  if (*(&v15 + 1))
  {
    v7 = sub_100008638(&v16, *(&v17 + 1));
    v8 = *(*(&v15 + 1) - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_10000867C(&v16);
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

- (void)set_objc_renameDelegate:(id)delegate
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (delegate)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  sub_10002970C(v7);
}

@end