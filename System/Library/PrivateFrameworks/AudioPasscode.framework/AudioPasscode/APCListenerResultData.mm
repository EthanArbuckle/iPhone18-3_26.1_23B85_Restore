@interface APCListenerResultData
- (APCListenerResultData)initWithPasscodeDurationNSec:(unint64_t)a3;
@end

@implementation APCListenerResultData

- (APCListenerResultData)initWithPasscodeDurationNSec:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = APCListenerResultData;
  result = [(APCListenerResultData *)&v4 init];
  if (result)
  {
    result->_completionTime = 0;
  }

  return result;
}

@end