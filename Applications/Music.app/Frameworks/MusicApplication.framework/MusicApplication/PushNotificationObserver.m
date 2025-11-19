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
    v4 = sub_AB3260();
    sub_466B8(v4, v5);
  }
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  if (a4)
  {
    a4 = sub_AB92A0();
    v12 = v11;
    if (a5)
    {
LABEL_3:
      v13 = sub_AB8FF0();
      v14 = sub_AB9990();
      (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = self;
      v15[5] = a4;
      v15[6] = v12;
      v15[7] = v13;

      sub_5E89D8(0, 0, v10, &unk_B20E90, v15);

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
  *&self->connection[8] = sub_52ACC8(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for PushNotificationObserver();
  *&self->connection[16] = 0u;
  *&self->pushConfiguration[8] = 0u;
  *&self[1].$defaultActor[8] = 0;
  v5.receiver = self;
  v5.super_class = v3;
  return [(PushNotificationObserver *)&v5 init];
}

@end