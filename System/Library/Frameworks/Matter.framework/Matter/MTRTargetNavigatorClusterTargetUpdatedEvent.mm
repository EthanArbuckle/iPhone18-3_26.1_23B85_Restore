@interface MTRTargetNavigatorClusterTargetUpdatedEvent
- (MTRTargetNavigatorClusterTargetUpdatedEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
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
    v3 = [MEMORY[0x277CBEA60] array];
    targetList = v2->_targetList;
    v2->_targetList = v3;

    currentTarget = v2->_currentTarget;
    v2->_currentTarget = &unk_284C3E588;

    v6 = [MEMORY[0x277CBEA90] data];
    data = v2->_data;
    v2->_data = v6;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRTargetNavigatorClusterTargetUpdatedEvent);
  v5 = [(MTRTargetNavigatorClusterTargetUpdatedEvent *)self targetList];
  [(MTRTargetNavigatorClusterTargetUpdatedEvent *)v4 setTargetList:v5];

  v6 = [(MTRTargetNavigatorClusterTargetUpdatedEvent *)self currentTarget];
  [(MTRTargetNavigatorClusterTargetUpdatedEvent *)v4 setCurrentTarget:v6];

  v7 = [(MTRTargetNavigatorClusterTargetUpdatedEvent *)self data];
  [(MTRTargetNavigatorClusterTargetUpdatedEvent *)v4 setData:v7];

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