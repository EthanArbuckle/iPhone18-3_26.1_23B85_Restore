@interface ATXInterruptingAppSessionEvent
- (ATXInterruptingAppSessionEvent)initWithCoder:(id)coder;
- (ATXInterruptingAppSessionEvent)initWithInterruptingBundleID:(id)d interruptedBundleID:(id)iD eventStartTime:(id)time eventEndTime:(id)endTime interruptingCategory:(unint64_t)category interruptedCategory:(unint64_t)interruptedCategory;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInterruptingAppSessionEvent

- (ATXInterruptingAppSessionEvent)initWithInterruptingBundleID:(id)d interruptedBundleID:(id)iD eventStartTime:(id)time eventEndTime:(id)endTime interruptingCategory:(unint64_t)category interruptedCategory:(unint64_t)interruptedCategory
{
  dCopy = d;
  iDCopy = iD;
  timeCopy = time;
  endTimeCopy = endTime;
  v24.receiver = self;
  v24.super_class = ATXInterruptingAppSessionEvent;
  v18 = [(ATXInterruptingAppSessionEvent *)&v24 init];
  if (v18)
  {
    v19 = [dCopy copy];
    interruptingBundleID = v18->_interruptingBundleID;
    v18->_interruptingBundleID = v19;

    v21 = [iDCopy copy];
    interruptedBundleID = v18->_interruptedBundleID;
    v18->_interruptedBundleID = v21;

    objc_storeStrong(&v18->_startTime, time);
    objc_storeStrong(&v18->_endTime, endTime);
    v18->_interruptingCategory = category;
    v18->_interruptedCategory = interruptedCategory;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  interruptingBundleID = [(ATXInterruptingAppSessionEvent *)self interruptingBundleID];
  [coderCopy encodeObject:interruptingBundleID forKey:@"interruptingBundleID"];

  interruptedBundleID = [(ATXInterruptingAppSessionEvent *)self interruptedBundleID];
  [coderCopy encodeObject:interruptedBundleID forKey:@"interruptedBundleID"];

  startTime = [(ATXInterruptingAppSessionEvent *)self startTime];
  [coderCopy encodeObject:startTime forKey:@"startTime"];

  endTime = [(ATXInterruptingAppSessionEvent *)self endTime];
  [coderCopy encodeObject:endTime forKey:@"endTime"];

  [coderCopy encodeInteger:-[ATXInterruptingAppSessionEvent interruptingCategory](self forKey:{"interruptingCategory"), @"interruptingCategory"}];
  [coderCopy encodeInteger:-[ATXInterruptingAppSessionEvent interruptedCategory](self forKey:{"interruptedCategory"), @"interruptedCategory"}];
}

- (ATXInterruptingAppSessionEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interruptingBundleID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interruptedBundleID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
  v9 = [coderCopy decodeIntegerForKey:@"interruptingCategory"];
  v10 = [coderCopy decodeIntegerForKey:@"interruptedCategory"];

  v11 = [(ATXInterruptingAppSessionEvent *)self initWithInterruptingBundleID:v5 interruptedBundleID:v6 eventStartTime:v7 eventEndTime:v8 interruptingCategory:v9 interruptedCategory:v10];
  return v11;
}

@end