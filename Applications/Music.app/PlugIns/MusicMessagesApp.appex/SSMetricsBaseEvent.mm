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
  v8[4] = sub_1001082F8;
  v8[5] = v7;
  v9 = a3;
  v11 = self;
  v10 = v9;

  sub_1001074E0(sub_100107E3C, v8);
}

@end