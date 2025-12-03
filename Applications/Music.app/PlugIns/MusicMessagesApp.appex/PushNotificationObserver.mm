@interface PushNotificationObserver
- (_TtC9MusicCore24PushNotificationObserver)init;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation PushNotificationObserver

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
    v4 = sub_1004D810C();
    sub_100010598(v4, v5);
  }
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  v8 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  if (topic)
  {
    topic = sub_1004DD43C();
    v12 = v11;
    if (info)
    {
LABEL_3:
      v13 = sub_1004DD21C();
      v14 = sub_1004DDA8C();
      (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = self;
      v15[5] = topic;
      v15[6] = v12;
      v15[7] = v13;

      sub_10011F560(0, 0, v10, &unk_10051FBE0, v15);

      return;
    }
  }

  else
  {
    v12 = 0;
    if (info)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
}

- (_TtC9MusicCore24PushNotificationObserver)init
{
  swift_defaultActor_initialize();
  *self->registeredHandlers = sub_10005FAD4(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for PushNotificationObserver();
  *self->connection = 0u;
  *&self->connection[16] = 0u;
  *&self->pushConfiguration[8] = 0;
  v5.receiver = self;
  v5.super_class = v3;
  return [(PushNotificationObserver *)&v5 init];
}

@end