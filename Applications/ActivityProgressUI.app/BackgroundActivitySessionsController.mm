@interface BackgroundActivitySessionsController
- (void)dealloc;
- (void)endActivityForIdentifier:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)startActivityForIdentifier:(id)a3 bundleIdentifier:(id)a4 activityName:(id)a5 activityDescription:(id)a6 progress:(id)a7;
- (void)startActivityForIdentifier:(id)a3 bundleIdentifier:(id)a4 imageUTI:(id)a5 activityName:(id)a6 activityDescription:(id)a7 progress:(id)a8;
- (void)updateActivityName:(id)a3 activityDescription:(id)a4 forIdentifier:(id)a5;
- (void)updateActivityName:(id)a3 activityDescription:(id)a4 withHaptic:(id)a5 forIdentifier:(id)a6;
@end

@implementation BackgroundActivitySessionsController

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener);
  if (v2)
  {
    ObjectType = swift_getObjectType();
    v5 = self;
    [v2 invalidate];
    v6.receiver = v5;
    v6.super_class = ObjectType;
    [(BackgroundActivitySessionsController *)&v6 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)startActivityForIdentifier:(id)a3 bundleIdentifier:(id)a4 activityName:(id)a5 activityDescription:(id)a6 progress:(id)a7
{
  v23 = self;
  v24 = type metadata accessor for UUID();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = a7;
  v22 = v23;
  sub_10001BA48(v11, v12, v14, v15, v17, v18, v20, v21);

  (*(v8 + 8))(v11, v24);
}

- (void)startActivityForIdentifier:(id)a3 bundleIdentifier:(id)a4 imageUTI:(id)a5 activityName:(id)a6 activityDescription:(id)a7 progress:(id)a8
{
  v27 = self;
  v10 = type metadata accessor for UUID();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (a5)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = a8;
  v25 = v27;
  sub_10001BD30(v13, v26, v15, v16, a5, v18, v20, v21, v23, v24);

  (*(v28 + 8))(v13, v29);
}

- (void)updateActivityName:(id)a3 activityDescription:(id)a4 forIdentifier:(id)a5
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = self;
  sub_10001DCE0(v11, v13, v14, v16, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)updateActivityName:(id)a3 activityDescription:(id)a4 withHaptic:(id)a5 forIdentifier:(id)a6
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = a5;
  v20 = self;
  sub_10001DFB4(v13, v15, v16, v18, v19, v12);

  (*(v9 + 8))(v12, v8);
}

- (void)endActivityForIdentifier:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10001EE60(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1000237E0(v8);

  swift_unknownObjectRelease();
}

@end