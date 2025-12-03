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
  v8[4] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  v8[5] = v7;
  withCopy = with;
  selfCopy = self;
  v10 = withCopy;

  specialized SSMetricsBaseEvent.setPropertiesForUserInterfaceState(with:completionHandler:)(partial apply for closure #1 in SSMetricsBaseEvent.setStandardProperties(with:completionHandler:), v8);
}

@end