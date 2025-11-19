@interface MSServiceEvent
- (NSString)eventName;
@end

@implementation MSServiceEvent

- (NSString)eventName
{
  eventType = self->_eventType;
  if (eventType > 2)
  {
    return 0;
  }

  else
  {
    return &off_278AA2C40[eventType]->isa;
  }
}

@end