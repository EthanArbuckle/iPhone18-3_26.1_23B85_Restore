@interface OSLogPosition
- (OSLogPosition)initWithDate:(id)date;
- (OSLogPosition)initWithEventSource:(id)source timeIntervalSinceEnd:(double)end;
- (OSLogPosition)initWithTimeIntervalSinceLatestBoot:(double)boot;
@end

@implementation OSLogPosition

- (OSLogPosition)initWithTimeIntervalSinceLatestBoot:(double)boot
{
  v8.receiver = self;
  v8.super_class = OSLogPosition;
  v4 = [(OSLogPosition *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_precision = 2;
    v4->_offset = boot;
    v6 = v4;
  }

  return v5;
}

- (OSLogPosition)initWithEventSource:(id)source timeIntervalSinceEnd:(double)end
{
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = OSLogPosition;
  v7 = [(OSLogPosition *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_precision = 1;
    newestDate = [sourceCopy newestDate];
    v10 = [newestDate dateByAddingTimeInterval:end];
    date = v8->_date;
    v8->_date = v10;

    v12 = v8;
  }

  return v8;
}

- (OSLogPosition)initWithDate:(id)date
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = OSLogPosition;
  v6 = [(OSLogPosition *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_precision = 1;
    objc_storeStrong(&v6->_date, date);
    v8 = v7;
  }

  return v7;
}

@end