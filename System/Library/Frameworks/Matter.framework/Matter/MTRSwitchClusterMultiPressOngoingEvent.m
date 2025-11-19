@interface MTRSwitchClusterMultiPressOngoingEvent
- (MTRSwitchClusterMultiPressOngoingEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRSwitchClusterMultiPressOngoingEvent

- (MTRSwitchClusterMultiPressOngoingEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRSwitchClusterMultiPressOngoingEvent;
  v2 = [(MTRSwitchClusterMultiPressOngoingEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    newPosition = v2->_newPosition;
    v2->_newPosition = &unk_284C3E588;

    currentNumberOfPressesCounted = v3->_currentNumberOfPressesCounted;
    v3->_currentNumberOfPressesCounted = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRSwitchClusterMultiPressOngoingEvent);
  v5 = [(MTRSwitchClusterMultiPressOngoingEvent *)self getNewPosition];
  [(MTRSwitchClusterMultiPressOngoingEvent *)v4 setNewPosition:v5];

  v6 = [(MTRSwitchClusterMultiPressOngoingEvent *)self currentNumberOfPressesCounted];
  [(MTRSwitchClusterMultiPressOngoingEvent *)v4 setCurrentNumberOfPressesCounted:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: newPosition:%@ currentNumberOfPressesCounted:%@; >", v5, self->_newPosition, self->_currentNumberOfPressesCounted];;

  return v6;
}

@end