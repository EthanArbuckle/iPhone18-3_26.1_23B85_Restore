@interface MTRTargetNavigatorClusterTargetUpdatedEvent
- (MTRTargetNavigatorClusterTargetUpdatedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTargetNavigatorClusterTargetUpdatedEvent

- (MTRTargetNavigatorClusterTargetUpdatedEvent)init
{
  v9.receiver = self;
  v9.super_class = MTRTargetNavigatorClusterTargetUpdatedEvent;
  v2 = [(MTRTargetNavigatorClusterTargetUpdatedEvent *)&v9 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    targetList = v2->_targetList;
    v2->_targetList = array;

    currentTarget = v2->_currentTarget;
    v2->_currentTarget = &unk_284C3E588;

    data = [MEMORY[0x277CBEA90] data];
    data = v2->_data;
    v2->_data = data;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTargetNavigatorClusterTargetUpdatedEvent);
  targetList = [(MTRTargetNavigatorClusterTargetUpdatedEvent *)self targetList];
  [(MTRTargetNavigatorClusterTargetUpdatedEvent *)v4 setTargetList:targetList];

  currentTarget = [(MTRTargetNavigatorClusterTargetUpdatedEvent *)self currentTarget];
  [(MTRTargetNavigatorClusterTargetUpdatedEvent *)v4 setCurrentTarget:currentTarget];

  data = [(MTRTargetNavigatorClusterTargetUpdatedEvent *)self data];
  [(MTRTargetNavigatorClusterTargetUpdatedEvent *)v4 setData:data];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  targetList = self->_targetList;
  currentTarget = self->_currentTarget;
  v8 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: targetList:%@ currentTarget:%@; data:%@; >", v5, targetList, currentTarget, v8];;

  return v9;
}

@end