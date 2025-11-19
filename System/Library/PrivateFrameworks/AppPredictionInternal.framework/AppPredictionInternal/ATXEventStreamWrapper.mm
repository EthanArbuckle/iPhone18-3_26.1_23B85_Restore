@interface ATXEventStreamWrapper
- (ATXEventStreamWrapper)initWithATXStream:(id)a3;
- (ATXEventStreamWrapper)initWithDuetStream:(id)a3;
@end

@implementation ATXEventStreamWrapper

- (ATXEventStreamWrapper)initWithDuetStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXEventStreamWrapper;
  v6 = [(ATXEventStreamWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_duetStream, a3);
  }

  return v7;
}

- (ATXEventStreamWrapper)initWithATXStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXEventStreamWrapper;
  v6 = [(ATXEventStreamWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_atxStream, a3);
  }

  return v7;
}

@end