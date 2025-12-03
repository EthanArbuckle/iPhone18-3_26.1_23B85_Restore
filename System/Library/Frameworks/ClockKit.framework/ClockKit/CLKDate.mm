@interface CLKDate
+ (id)complicationDateWithTimeIntervalSinceNow:(double)now;
+ (id)date;
+ (id)dateWithTimeIntervalSinceNow:(double)now;
+ (id)unmodifiedDateWithTimeIntervalSinceNow:(double)now;
- (CLKDate)init;
- (CLKDate)initWithCoder:(id)coder;
- (CLKDate)initWithTimeIntervalSinceNow:(double)now;
- (CLKDate)initWithTimeIntervalSinceReferenceDate:(double)date;
@end

@implementation CLKDate

- (CLKDate)init
{
  v3.receiver = self;
  v3.super_class = CLKDate;
  return [(CLKDate *)&v3 init];
}

+ (id)date
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (CLKDate)initWithTimeIntervalSinceReferenceDate:(double)date
{
  v4.receiver = self;
  v4.super_class = CLKDate;
  return [(CLKDate *)&v4 initWithTimeIntervalSinceReferenceDate:date];
}

- (CLKDate)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CLKDate;
  return [(CLKDate *)&v4 initWithCoder:coder];
}

- (CLKDate)initWithTimeIntervalSinceNow:(double)now
{
  v4.receiver = self;
  v4.super_class = CLKDate;
  return [(CLKDate *)&v4 initWithTimeIntervalSinceNow:now];
}

+ (id)dateWithTimeIntervalSinceNow:(double)now
{
  v3 = [[self alloc] initWithTimeIntervalSinceNow:now];

  return v3;
}

+ (id)complicationDateWithTimeIntervalSinceNow:(double)now
{
  v4 = MEMORY[0x277CBEAA8];
  complicationDate = [self complicationDate];
  v6 = [v4 dateWithTimeInterval:complicationDate sinceDate:now];

  return v6;
}

+ (id)unmodifiedDateWithTimeIntervalSinceNow:(double)now
{
  v4 = MEMORY[0x277CBEAA8];
  unmodifiedDate = [self unmodifiedDate];
  v6 = [v4 dateWithTimeInterval:unmodifiedDate sinceDate:now];

  return v6;
}

@end