@interface APSPayloadMessageStatsCountsByWakeState
- (APSPayloadMessageStatsCountsByWakeState)init;
- (void)countTopic:(id)a3 now:(double)a4;
- (void)moveUnknownToDestination:(id)a3;
@end

@implementation APSPayloadMessageStatsCountsByWakeState

- (APSPayloadMessageStatsCountsByWakeState)init
{
  v10.receiver = self;
  v10.super_class = APSPayloadMessageStatsCountsByWakeState;
  v2 = [(APSPayloadMessageStatsCountsByWakeState *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(APSPayloadMessageStatsCount);
    darkWake = v2->_darkWake;
    v2->_darkWake = v3;

    v5 = objc_alloc_init(APSPayloadMessageStatsCount);
    fullWake = v2->_fullWake;
    v2->_fullWake = v5;

    v7 = objc_alloc_init(APSPayloadMessageStatsCount);
    unknown = v2->_unknown;
    v2->_unknown = v7;
  }

  return v2;
}

- (void)countTopic:(id)a3 now:(double)a4
{
  v19 = a3;
  v6 = self->_unknown;
  v7 = +[APSWakeStateManager wakeStateManager];
  v8 = [v7 inFullWake];

  if (v8)
  {
    goto LABEL_2;
  }

  v10 = +[APSWakeStateManager wakeStateManager];
  v11 = [v10 inDarkWake];

  if (v11)
  {
    goto LABEL_4;
  }

  v13 = +[APSWakeStateManager wakeStateManager];
  v14 = [v13 isGoingToSleep];

  if (v14)
  {
    v15 = +[APSWakeStateManager wakeStateManager];
    v16 = [v15 wasInFullWake];

    if (v16)
    {
LABEL_2:
      v9 = 16;
LABEL_5:
      v12 = *(&self->super.isa + v9);

      v6 = v12;
      goto LABEL_6;
    }

    v17 = +[APSWakeStateManager wakeStateManager];
    v18 = [v17 wasInDarkWake];

    if (v18)
    {
LABEL_4:
      v9 = 8;
      goto LABEL_5;
    }
  }

LABEL_6:
  [(APSPayloadMessageStatsCount *)v6 countTopic:v19 now:a4];
}

- (void)moveUnknownToDestination:(id)a3
{
  v8 = a3;
  if ([(APSPayloadMessageStatsCount *)self->_unknown count])
  {
    [v8 setCount:{-[APSPayloadMessageStatsCount count](self->_unknown, "count") + objc_msgSend(v8, "count")}];
    [(APSPayloadMessageStatsCount *)self->_unknown lastMessageTime];
    v5 = v4;
    [v8 lastMessageTime];
    if (v5 < v6)
    {
      [v8 lastMessageTime];
      [(APSPayloadMessageStatsCount *)self->_unknown setLastMessageTime:?];
      v7 = [(APSPayloadMessageStatsCount *)self->_unknown lastMessageTopic];
      [v8 setLastMessageTopic:v7];
    }

    [(APSPayloadMessageStatsCount *)self->_unknown setCount:0];
    [(APSPayloadMessageStatsCount *)self->_unknown setLastMessageTime:0.0];
    [(APSPayloadMessageStatsCount *)self->_unknown setLastMessageTopic:0];
  }
}

@end