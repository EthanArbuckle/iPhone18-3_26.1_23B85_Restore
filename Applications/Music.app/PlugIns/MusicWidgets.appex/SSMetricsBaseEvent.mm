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
  v8[4] = sub_10019CEAC;
  v8[5] = v7;
  withCopy = with;
  selfCopy = self;
  v10 = withCopy;

  sub_10019C094(sub_10019C9F0, v8);
}

@end