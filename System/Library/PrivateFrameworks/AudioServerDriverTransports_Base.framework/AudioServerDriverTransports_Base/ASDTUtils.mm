@interface ASDTUtils
+ (id)latencyFramesForSamplingRate:(id)rate andMicroseconds:(id)microseconds;
@end

@implementation ASDTUtils

+ (id)latencyFramesForSamplingRate:(id)rate andMicroseconds:(id)microseconds
{
  rateCopy = rate;
  microsecondsCopy = microseconds;
  v7 = MEMORY[0x277CCABB0];
  [rateCopy doubleValue];
  v9 = [v7 numberWithUnsignedInt:{+[ASDTUtils latencyFramesIntForSamplingRate:andMicroseconds:](ASDTUtils, "latencyFramesIntForSamplingRate:andMicroseconds:", objc_msgSend(microsecondsCopy, "unsignedIntValue"), v8)}];

  return v9;
}

@end