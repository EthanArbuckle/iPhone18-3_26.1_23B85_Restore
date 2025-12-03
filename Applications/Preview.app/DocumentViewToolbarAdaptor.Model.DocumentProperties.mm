@interface DocumentViewToolbarAdaptor.Model.DocumentProperties
- (_TtCCC7Preview26DocumentViewToolbarAdaptor5Model18DocumentProperties)initWithMetadata:(id)metadata;
- (_TtCCC7Preview26DocumentViewToolbarAdaptor5Model18DocumentProperties)initWithURL:(id)l;
@end

@implementation DocumentViewToolbarAdaptor.Model.DocumentProperties

- (_TtCCC7Preview26DocumentViewToolbarAdaptor5Model18DocumentProperties)initWithURL:(id)l
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 16))(self + OBJC_IVAR____TtCCC7Preview26DocumentViewToolbarAdaptor5Model18DocumentProperties_url, v8, v5);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(DocumentViewToolbarAdaptor.Model.DocumentProperties *)&v14 initWithURL:v10];

  (*(v6 + 8))(v8, v5);

  return v12;
}

- (_TtCCC7Preview26DocumentViewToolbarAdaptor5Model18DocumentProperties)initWithMetadata:(id)metadata
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end