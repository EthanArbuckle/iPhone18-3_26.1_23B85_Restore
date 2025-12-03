@interface ATXEventStreamWrapper
- (ATXEventStreamWrapper)initWithATXStream:(id)stream;
- (ATXEventStreamWrapper)initWithDuetStream:(id)stream;
@end

@implementation ATXEventStreamWrapper

- (ATXEventStreamWrapper)initWithDuetStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = ATXEventStreamWrapper;
  v6 = [(ATXEventStreamWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_duetStream, stream);
  }

  return v7;
}

- (ATXEventStreamWrapper)initWithATXStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = ATXEventStreamWrapper;
  v6 = [(ATXEventStreamWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_atxStream, stream);
  }

  return v7;
}

@end