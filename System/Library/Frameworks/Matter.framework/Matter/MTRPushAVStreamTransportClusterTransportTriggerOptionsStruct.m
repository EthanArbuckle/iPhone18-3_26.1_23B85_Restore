@interface MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct
- (MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct

- (MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct;
  v2 = [(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    triggerType = v2->_triggerType;
    v2->_triggerType = &unk_284C3E588;

    motionZones = v3->_motionZones;
    v3->_motionZones = 0;

    motionSensitivity = v3->_motionSensitivity;
    v3->_motionSensitivity = 0;

    motionTimeControl = v3->_motionTimeControl;
    v3->_motionTimeControl = 0;

    maxPreRollLen = v3->_maxPreRollLen;
    v3->_maxPreRollLen = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct);
  v5 = [(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct *)self triggerType];
  [(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct *)v4 setTriggerType:v5];

  v6 = [(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct *)self motionZones];
  [(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct *)v4 setMotionZones:v6];

  v7 = [(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct *)self motionSensitivity];
  [(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct *)v4 setMotionSensitivity:v7];

  v8 = [(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct *)self motionTimeControl];
  [(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct *)v4 setMotionTimeControl:v8];

  v9 = [(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct *)self maxPreRollLen];
  [(MTRPushAVStreamTransportClusterTransportTriggerOptionsStruct *)v4 setMaxPreRollLen:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: triggerType:%@ motionZones:%@; motionSensitivity:%@; motionTimeControl:%@; maxPreRollLen:%@; >", v5, self->_triggerType, self->_motionZones, self->_motionSensitivity, self->_motionTimeControl, self->_maxPreRollLen];;

  return v6;
}

@end