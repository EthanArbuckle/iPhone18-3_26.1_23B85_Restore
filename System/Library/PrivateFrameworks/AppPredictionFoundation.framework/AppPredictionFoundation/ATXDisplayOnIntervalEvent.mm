@interface ATXDisplayOnIntervalEvent
- (ATXDisplayOnIntervalEvent)initWithOnInterval:(id)interval;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXDisplayOnIntervalEvent:(id)event;
- (id)prettyRepresentation;
- (unint64_t)hash;
@end

@implementation ATXDisplayOnIntervalEvent

- (ATXDisplayOnIntervalEvent)initWithOnInterval:(id)interval
{
  intervalCopy = interval;
  v9.receiver = self;
  v9.super_class = ATXDisplayOnIntervalEvent;
  v6 = [(ATXDisplayOnIntervalEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_onInterval, interval);
  }

  return v7;
}

- (id)prettyRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v4 = MEMORY[0x277CCA968];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v4 dateFormatFromTemplate:@"EMMMd HH:mm ss ZZZZ" options:0 locale:currentLocale];

  [v3 setDateFormat:v6];
  startDate = [(NSDateInterval *)self->_onInterval startDate];
  v8 = [v3 stringFromDate:startDate];

  endDate = [(NSDateInterval *)self->_onInterval endDate];
  v10 = [v3 stringFromDate:endDate];

  [(NSDateInterval *)self->_onInterval duration];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f seconds: (%@, %@)", v11, v8, v10];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDisplayOnIntervalEvent *)self isEqualToATXDisplayOnIntervalEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDisplayOnIntervalEvent:(id)event
{
  v4 = self->_onInterval;
  v5 = v4;
  if (v4 == *(event + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSDateInterval *)v4 isEqual:?];
  }

  return v6;
}

- (unint64_t)hash
{
  onInterval = [(ATXDisplayOnIntervalEvent *)self onInterval];
  v3 = [onInterval hash];

  return v3;
}

@end