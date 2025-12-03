@interface HSTAnalyticsEvent
- (HSTAnalyticsEvent)initWithName:(id)name payload:(id)payload;
@end

@implementation HSTAnalyticsEvent

- (HSTAnalyticsEvent)initWithName:(id)name payload:(id)payload
{
  nameCopy = name;
  payloadCopy = payload;
  v13.receiver = self;
  v13.super_class = HSTAnalyticsEvent;
  v9 = [(HSTAnalyticsEvent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_payload, payload);
    v11 = v10;
  }

  return v10;
}

@end