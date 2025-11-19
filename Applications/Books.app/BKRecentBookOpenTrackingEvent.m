@interface BKRecentBookOpenTrackingEvent
+ (id)eventForStart:(BOOL)a3;
- (BKRecentBookOpenTrackingEvent)initWithCoder:(id)a3;
- (BKRecentBookOpenTrackingEvent)initWithStart:(BOOL)a3 date:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKRecentBookOpenTrackingEvent

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(BKRecentBookOpenTrackingEvent *)self timestamp];
  [v5 encodeObject:v4 forKey:@"timestamp"];

  [v5 encodeBool:-[BKRecentBookOpenTrackingEvent isStart](self forKey:{"isStart"), @"isStart"}];
}

- (BKRecentBookOpenTrackingEvent)initWithStart:(BOOL)a3 date:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BKRecentBookOpenTrackingEvent;
  v8 = [(BKRecentBookOpenTrackingEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_timestamp, a4);
    v9->_isStart = a3;
  }

  return v9;
}

+ (id)eventForStart:(BOOL)a3
{
  v3 = a3;
  v4 = [BKRecentBookOpenTrackingEvent alloc];
  v5 = +[NSDate date];
  v6 = [(BKRecentBookOpenTrackingEvent *)v4 initWithStart:v3 date:v5];

  return v6;
}

- (BKRecentBookOpenTrackingEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKRecentBookOpenTrackingEvent;
  v5 = [(BKRecentBookOpenTrackingEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v5->_isStart = [v4 decodeBoolForKey:@"isStart"];
  }

  return v5;
}

@end