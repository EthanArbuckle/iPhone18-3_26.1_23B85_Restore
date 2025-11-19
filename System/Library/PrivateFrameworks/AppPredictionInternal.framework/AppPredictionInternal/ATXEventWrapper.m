@interface ATXEventWrapper
- (ATXEventWrapper)initWithATXEvent:(id)a3;
- (ATXEventWrapper)initWithDuetEvent:(id)a3;
@end

@implementation ATXEventWrapper

- (ATXEventWrapper)initWithDuetEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXEventWrapper;
  v6 = [(ATXEventWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dkEvent, a3);
  }

  return v7;
}

- (ATXEventWrapper)initWithATXEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXEventWrapper;
  v6 = [(ATXEventWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_atxEvent, a3);
  }

  return v7;
}

@end