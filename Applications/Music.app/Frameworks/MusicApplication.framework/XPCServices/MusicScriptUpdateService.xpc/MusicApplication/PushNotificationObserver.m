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
    v4 = sub_1004B6B74();
    sub_100004D90(v4, v5);
  }
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v8 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  if (a4)
  {
    a4 = sub_1004BBE64();
    v12 = v11;
    if (a5)
    {
LABEL_3:
      v13 = sub_1004BBC44();
      v14 = sub_1004BC4B4();
      (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = self;
      v15[5] = a4;
      v15[6] = v12;
      v15[7] = v13;

      sub_1000FD6BC(0, 0, v10, &unk_1004D2540, v15);

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
  *self->registeredHandlers = sub_10003DADC(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for PushNotificationObserver();
  *self->connection = 0u;
  *&self->connection[16] = 0u;
  *&self->pushConfiguration[8] = 0;
  v5.receiver = self;
  v5.super_class = v3;
  return [(PushNotificationObserver *)&v5 init];
}

@end