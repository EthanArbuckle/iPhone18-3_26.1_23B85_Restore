@interface SSMetricsMutableEvent
+ (id)Topic;
- (void)setStandardPropertiesWith:(id)with completionHandler:(id)handler;
@end

@implementation SSMetricsMutableEvent

- (void)setStandardPropertiesWith:(id)with completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  withCopy = with;
  selfCopy = self;
  sub_1001071CC(with, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

+ (id)Topic
{
  v2 = sub_1004DD3FC();

  return v2;
}

@end