@interface MTRPushAVStreamTransportClusterPushTransportEndEvent
- (MTRPushAVStreamTransportClusterPushTransportEndEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterPushTransportEndEvent

- (MTRPushAVStreamTransportClusterPushTransportEndEvent)init
{
  v8.receiver = self;
  v8.super_class = MTRPushAVStreamTransportClusterPushTransportEndEvent;
  v2 = [(MTRPushAVStreamTransportClusterPushTransportEndEvent *)&v8 init];
  v3 = v2;
  if (v2)
  {
    connectionID = v2->_connectionID;
    v2->_connectionID = &unk_284C3E588;

    triggerType = v3->_triggerType;
    v3->_triggerType = &unk_284C3E588;

    activationReason = v3->_activationReason;
    v3->_activationReason = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterPushTransportEndEvent);
  v5 = [(MTRPushAVStreamTransportClusterPushTransportEndEvent *)self connectionID];
  [(MTRPushAVStreamTransportClusterPushTransportEndEvent *)v4 setConnectionID:v5];

  v6 = [(MTRPushAVStreamTransportClusterPushTransportEndEvent *)self triggerType];
  [(MTRPushAVStreamTransportClusterPushTransportEndEvent *)v4 setTriggerType:v6];

  v7 = [(MTRPushAVStreamTransportClusterPushTransportEndEvent *)self activationReason];
  [(MTRPushAVStreamTransportClusterPushTransportEndEvent *)v4 setActivationReason:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: connectionID:%@ triggerType:%@; activationReason:%@; >", v5, self->_connectionID, self->_triggerType, self->_activationReason];;

  return v6;
}

@end