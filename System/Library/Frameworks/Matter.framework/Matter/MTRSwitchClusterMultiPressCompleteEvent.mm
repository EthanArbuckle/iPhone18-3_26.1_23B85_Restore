@interface MTRSwitchClusterMultiPressCompleteEvent
- (MTRSwitchClusterMultiPressCompleteEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRSwitchClusterMultiPressCompleteEvent

- (MTRSwitchClusterMultiPressCompleteEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRSwitchClusterMultiPressCompleteEvent;
  v2 = [(MTRSwitchClusterMultiPressCompleteEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    previousPosition = v2->_previousPosition;
    v2->_previousPosition = &unk_284C3E588;

    totalNumberOfPressesCounted = v3->_totalNumberOfPressesCounted;
    v3->_totalNumberOfPressesCounted = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRSwitchClusterMultiPressCompleteEvent);
  previousPosition = [(MTRSwitchClusterMultiPressCompleteEvent *)self previousPosition];
  [(MTRSwitchClusterMultiPressCompleteEvent *)v4 setPreviousPosition:previousPosition];

  totalNumberOfPressesCounted = [(MTRSwitchClusterMultiPressCompleteEvent *)self totalNumberOfPressesCounted];
  [(MTRSwitchClusterMultiPressCompleteEvent *)v4 setTotalNumberOfPressesCounted:totalNumberOfPressesCounted];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: previousPosition:%@ totalNumberOfPressesCounted:%@; >", v5, self->_previousPosition, self->_totalNumberOfPressesCounted];;

  return v6;
}

@end