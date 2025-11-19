@interface APCPlayerEmbedInfo
- (APCPlayerEmbedInfo)initWithPasscodeDurationNSec:(unint64_t)a3;
@end

@implementation APCPlayerEmbedInfo

- (APCPlayerEmbedInfo)initWithPasscodeDurationNSec:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = APCPlayerEmbedInfo;
  v3 = [(APCPlayerEmbedInfo *)&v5 init];
  if (v3)
  {
    v3->_estPasscodeDuration = __udivti3();
    v3->_measPasscodeDuration = 0;
  }

  return v3;
}

@end