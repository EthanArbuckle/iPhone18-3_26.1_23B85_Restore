@interface MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct
- (MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct

- (MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct;
  v2 = [(MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    initialDuration = v2->_initialDuration;
    v2->_initialDuration = &unk_284C3E588;

    augmentationDuration = v3->_augmentationDuration;
    v3->_augmentationDuration = &unk_284C3E588;

    maxDuration = v3->_maxDuration;
    v3->_maxDuration = &unk_284C3E588;

    blindDuration = v3->_blindDuration;
    v3->_blindDuration = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct);
  v5 = [(MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct *)self initialDuration];
  [(MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct *)v4 setInitialDuration:v5];

  v6 = [(MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct *)self augmentationDuration];
  [(MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct *)v4 setAugmentationDuration:v6];

  v7 = [(MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct *)self maxDuration];
  [(MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct *)v4 setMaxDuration:v7];

  v8 = [(MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct *)self blindDuration];
  [(MTRPushAVStreamTransportClusterTransportMotionTriggerTimeControlStruct *)v4 setBlindDuration:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: initialDuration:%@ augmentationDuration:%@; maxDuration:%@; blindDuration:%@; >", v5, self->_initialDuration, self->_augmentationDuration, self->_maxDuration, self->_blindDuration];;

  return v6;
}

@end