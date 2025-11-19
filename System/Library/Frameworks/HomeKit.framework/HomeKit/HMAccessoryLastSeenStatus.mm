@interface HMAccessoryLastSeenStatus
- (HMAccessoryLastSeenStatus)initWithLastSeenDate:(id)a3 batteryStatus:(unint64_t)a4;
@end

@implementation HMAccessoryLastSeenStatus

- (HMAccessoryLastSeenStatus)initWithLastSeenDate:(id)a3 batteryStatus:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMAccessoryLastSeenStatus;
  v8 = [(HMAccessoryLastSeenStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lastSeenDate, a3);
    v9->_lowBatteryStatus = a4;
  }

  return v9;
}

@end