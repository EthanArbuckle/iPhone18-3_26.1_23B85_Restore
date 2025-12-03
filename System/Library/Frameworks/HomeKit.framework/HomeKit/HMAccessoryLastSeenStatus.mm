@interface HMAccessoryLastSeenStatus
- (HMAccessoryLastSeenStatus)initWithLastSeenDate:(id)date batteryStatus:(unint64_t)status;
@end

@implementation HMAccessoryLastSeenStatus

- (HMAccessoryLastSeenStatus)initWithLastSeenDate:(id)date batteryStatus:(unint64_t)status
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = HMAccessoryLastSeenStatus;
  v8 = [(HMAccessoryLastSeenStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lastSeenDate, date);
    v9->_lowBatteryStatus = status;
  }

  return v9;
}

@end