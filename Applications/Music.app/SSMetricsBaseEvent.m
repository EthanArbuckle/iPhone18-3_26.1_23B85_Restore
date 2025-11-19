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
  v8[4] = sub_10026A294;
  v8[5] = v7;
  v9 = a3;
  v11 = self;
  v10 = v9;

  sub_1009599F8(sub_10095A354, v8);
}

@end