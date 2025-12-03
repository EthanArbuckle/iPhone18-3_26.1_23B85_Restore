@interface APSPayloadMessageStatsCountsByWakeState
- (APSPayloadMessageStatsCountsByWakeState)init;
- (void)countTopic:(id)topic now:(double)now;
- (void)moveUnknownToDestination:(id)destination;
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

- (void)countTopic:(id)topic now:(double)now
{
  topicCopy = topic;
  v6 = self->_unknown;
  v7 = +[APSWakeStateManager wakeStateManager];
  inFullWake = [v7 inFullWake];

  if (inFullWake)
  {
    goto LABEL_2;
  }

  v10 = +[APSWakeStateManager wakeStateManager];
  inDarkWake = [v10 inDarkWake];

  if (inDarkWake)
  {
    goto LABEL_4;
  }

  v13 = +[APSWakeStateManager wakeStateManager];
  isGoingToSleep = [v13 isGoingToSleep];

  if (isGoingToSleep)
  {
    v15 = +[APSWakeStateManager wakeStateManager];
    wasInFullWake = [v15 wasInFullWake];

    if (wasInFullWake)
    {
LABEL_2:
      v9 = 16;
LABEL_5:
      v12 = *(&self->super.isa + v9);

      v6 = v12;
      goto LABEL_6;
    }

    v17 = +[APSWakeStateManager wakeStateManager];
    wasInDarkWake = [v17 wasInDarkWake];

    if (wasInDarkWake)
    {
LABEL_4:
      v9 = 8;
      goto LABEL_5;
    }
  }

LABEL_6:
  [(APSPayloadMessageStatsCount *)v6 countTopic:topicCopy now:now];
}

- (void)moveUnknownToDestination:(id)destination
{
  destinationCopy = destination;
  if ([(APSPayloadMessageStatsCount *)self->_unknown count])
  {
    [destinationCopy setCount:{-[APSPayloadMessageStatsCount count](self->_unknown, "count") + objc_msgSend(destinationCopy, "count")}];
    [(APSPayloadMessageStatsCount *)self->_unknown lastMessageTime];
    v5 = v4;
    [destinationCopy lastMessageTime];
    if (v5 < v6)
    {
      [destinationCopy lastMessageTime];
      [(APSPayloadMessageStatsCount *)self->_unknown setLastMessageTime:?];
      lastMessageTopic = [(APSPayloadMessageStatsCount *)self->_unknown lastMessageTopic];
      [destinationCopy setLastMessageTopic:lastMessageTopic];
    }

    [(APSPayloadMessageStatsCount *)self->_unknown setCount:0];
    [(APSPayloadMessageStatsCount *)self->_unknown setLastMessageTime:0.0];
    [(APSPayloadMessageStatsCount *)self->_unknown setLastMessageTopic:0];
  }
}

@end