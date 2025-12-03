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
  sub_1000E5244(with, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

+ (id)Topic
{
  v2 = sub_1004BBE24();

  return v2;
}

@end