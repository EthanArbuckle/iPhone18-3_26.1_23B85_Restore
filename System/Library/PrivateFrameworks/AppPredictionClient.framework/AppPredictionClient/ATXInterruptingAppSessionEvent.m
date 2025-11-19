@interface ATXInterruptingAppSessionEvent
- (ATXInterruptingAppSessionEvent)initWithCoder:(id)a3;
- (ATXInterruptingAppSessionEvent)initWithInterruptingBundleID:(id)a3 interruptedBundleID:(id)a4 eventStartTime:(id)a5 eventEndTime:(id)a6 interruptingCategory:(unint64_t)a7 interruptedCategory:(unint64_t)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXInterruptingAppSessionEvent

- (ATXInterruptingAppSessionEvent)initWithInterruptingBundleID:(id)a3 interruptedBundleID:(id)a4 eventStartTime:(id)a5 eventEndTime:(id)a6 interruptingCategory:(unint64_t)a7 interruptedCategory:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v24.receiver = self;
  v24.super_class = ATXInterruptingAppSessionEvent;
  v18 = [(ATXInterruptingAppSessionEvent *)&v24 init];
  if (v18)
  {
    v19 = [v14 copy];
    interruptingBundleID = v18->_interruptingBundleID;
    v18->_interruptingBundleID = v19;

    v21 = [v15 copy];
    interruptedBundleID = v18->_interruptedBundleID;
    v18->_interruptedBundleID = v21;

    objc_storeStrong(&v18->_startTime, a5);
    objc_storeStrong(&v18->_endTime, a6);
    v18->_interruptingCategory = a7;
    v18->_interruptedCategory = a8;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(ATXInterruptingAppSessionEvent *)self interruptingBundleID];
  [v8 encodeObject:v4 forKey:@"interruptingBundleID"];

  v5 = [(ATXInterruptingAppSessionEvent *)self interruptedBundleID];
  [v8 encodeObject:v5 forKey:@"interruptedBundleID"];

  v6 = [(ATXInterruptingAppSessionEvent *)self startTime];
  [v8 encodeObject:v6 forKey:@"startTime"];

  v7 = [(ATXInterruptingAppSessionEvent *)self endTime];
  [v8 encodeObject:v7 forKey:@"endTime"];

  [v8 encodeInteger:-[ATXInterruptingAppSessionEvent interruptingCategory](self forKey:{"interruptingCategory"), @"interruptingCategory"}];
  [v8 encodeInteger:-[ATXInterruptingAppSessionEvent interruptedCategory](self forKey:{"interruptedCategory"), @"interruptedCategory"}];
}

- (ATXInterruptingAppSessionEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interruptingBundleID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interruptedBundleID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
  v9 = [v4 decodeIntegerForKey:@"interruptingCategory"];
  v10 = [v4 decodeIntegerForKey:@"interruptedCategory"];

  v11 = [(ATXInterruptingAppSessionEvent *)self initWithInterruptingBundleID:v5 interruptedBundleID:v6 eventStartTime:v7 eventEndTime:v8 interruptingCategory:v9 interruptedCategory:v10];
  return v11;
}

@end