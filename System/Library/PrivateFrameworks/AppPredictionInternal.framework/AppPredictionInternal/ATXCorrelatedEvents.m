@interface ATXCorrelatedEvents
- (ATXCorrelatedEvents)initWithFirstEvent:(id)a3 secondEvent:(id)a4;
@end

@implementation ATXCorrelatedEvents

- (ATXCorrelatedEvents)initWithFirstEvent:(id)a3 secondEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXCorrelatedEvents;
  v9 = [(ATXCorrelatedEvents *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstEvent, a3);
    objc_storeStrong(&v10->_secondEvent, a4);
  }

  return v10;
}

@end