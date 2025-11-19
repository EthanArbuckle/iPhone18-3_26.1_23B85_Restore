@interface SSMetricsMutableEvent
+ (id)Topic;
- (void)setStandardPropertiesWith:(id)a3 completionHandler:(id)a4;
@end

@implementation SSMetricsMutableEvent

- (void)setStandardPropertiesWith:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1000E5244(a3, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

+ (id)Topic
{
  v2 = sub_1004BBE24();

  return v2;
}

@end