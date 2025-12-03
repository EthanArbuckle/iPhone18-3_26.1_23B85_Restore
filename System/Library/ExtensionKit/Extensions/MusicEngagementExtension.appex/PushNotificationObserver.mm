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
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v4, v5);
  }
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  if (topic)
  {
    topic = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (info)
    {
LABEL_3:
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = self;
      v15[5] = topic;
      v15[6] = v12;
      v15[7] = v13;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v10, &closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)partial apply, v15);

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
  *self->registeredHandlers = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MusicCore24PushNotificationObserverC17RegisteredHandlerVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for PushNotificationObserver();
  *self->connection = 0u;
  *&self->connection[16] = 0u;
  *&self->pushConfiguration[8] = 0;
  v5.receiver = self;
  v5.super_class = v3;
  return [(PushNotificationObserver *)&v5 init];
}

@end