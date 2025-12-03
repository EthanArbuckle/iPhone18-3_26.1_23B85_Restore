@interface BKRecentBookOpenTrackingEvent
+ (id)eventForStart:(BOOL)start;
- (BKRecentBookOpenTrackingEvent)initWithCoder:(id)coder;
- (BKRecentBookOpenTrackingEvent)initWithStart:(BOOL)start date:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKRecentBookOpenTrackingEvent

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timestamp = [(BKRecentBookOpenTrackingEvent *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  [coderCopy encodeBool:-[BKRecentBookOpenTrackingEvent isStart](self forKey:{"isStart"), @"isStart"}];
}

- (BKRecentBookOpenTrackingEvent)initWithStart:(BOOL)start date:(id)date
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = BKRecentBookOpenTrackingEvent;
  v8 = [(BKRecentBookOpenTrackingEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_timestamp, date);
    v9->_isStart = start;
  }

  return v9;
}

+ (id)eventForStart:(BOOL)start
{
  startCopy = start;
  v4 = [BKRecentBookOpenTrackingEvent alloc];
  v5 = +[NSDate date];
  v6 = [(BKRecentBookOpenTrackingEvent *)v4 initWithStart:startCopy date:v5];

  return v6;
}

- (BKRecentBookOpenTrackingEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BKRecentBookOpenTrackingEvent;
  v5 = [(BKRecentBookOpenTrackingEvent *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v5->_isStart = [coderCopy decodeBoolForKey:@"isStart"];
  }

  return v5;
}

@end