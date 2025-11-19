@interface HSTAnalyticsEvent
- (HSTAnalyticsEvent)initWithName:(id)a3 payload:(id)a4;
@end

@implementation HSTAnalyticsEvent

- (HSTAnalyticsEvent)initWithName:(id)a3 payload:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HSTAnalyticsEvent;
  v9 = [(HSTAnalyticsEvent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_payload, a4);
    v11 = v10;
  }

  return v10;
}

@end