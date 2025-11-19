@interface PushNotificationObserver
- (_TtC9MusicCore24PushNotificationObserver)init;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation PushNotificationObserver

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10002C064(v4, v5);
  }
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v8 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (a5)
    {
LABEL_3:
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = self;
      v15[5] = a4;
      v15[6] = v12;
      v15[7] = v13;

      sub_100969440(0, 0, v10, &unk_100EF6750, v15);

      return;
    }
  }

  else
  {
    v12 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
}

- (_TtC9MusicCore24PushNotificationObserver)init
{
  swift_defaultActor_initialize();
  *self->registeredHandlers = sub_1008BD7C4(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for PushNotificationObserver();
  *self->connection = 0u;
  *&self->connection[16] = 0u;
  *&self->pushConfiguration[8] = 0;
  v5.receiver = self;
  v5.super_class = v3;
  return [(PushNotificationObserver *)&v5 init];
}

@end