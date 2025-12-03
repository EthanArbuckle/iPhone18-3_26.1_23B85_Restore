@interface SSMetricsBaseEvent
- (void)setStandardPropertiesWith:(id)with completionHandler:(id)handler;
@end

@implementation SSMetricsBaseEvent

- (void)setStandardPropertiesWith:(id)with completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = with;
  v8[4] = sub_10026A294;
  v8[5] = v7;
  withCopy = with;
  selfCopy = self;
  v10 = withCopy;

  sub_1009599F8(sub_10095A354, v8);
}

@end