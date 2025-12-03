@interface JSEngagementObject
- (id)enqueueEvent:(id)event;
- (id)fetchMessages:(id)messages;
@end

@implementation JSEngagementObject

- (id)enqueueEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  v6 = sub_100016678();

  return v6;
}

- (id)fetchMessages:(id)messages
{
  messagesCopy = messages;
  selfCopy = self;
  v6 = sub_100017628();

  return v6;
}

@end