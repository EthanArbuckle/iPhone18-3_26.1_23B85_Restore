@interface SSMetricsBaseEvent
- (void)setStandardPropertiesWith:(id)a3 completionHandler:(id)a4;
@end

@implementation SSMetricsBaseEvent

- (void)setStandardPropertiesWith:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = a3;
  v8[4] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  v8[5] = v7;
  v9 = a3;
  v11 = self;
  v10 = v9;

  specialized SSMetricsBaseEvent.setPropertiesForUserInterfaceState(with:completionHandler:)(partial apply for closure #1 in SSMetricsBaseEvent.setStandardProperties(with:completionHandler:), v8);
}

@end