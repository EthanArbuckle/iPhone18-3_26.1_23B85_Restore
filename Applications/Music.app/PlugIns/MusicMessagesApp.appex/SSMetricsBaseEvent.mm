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
  v8[4] = sub_1001082F8;
  v8[5] = v7;
  withCopy = with;
  selfCopy = self;
  v10 = withCopy;

  sub_1001074E0(sub_100107E3C, v8);
}

@end