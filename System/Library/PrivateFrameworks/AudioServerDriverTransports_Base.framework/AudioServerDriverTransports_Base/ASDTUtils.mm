@interface ASDTUtils
+ (id)latencyFramesForSamplingRate:(id)a3 andMicroseconds:(id)a4;
@end

@implementation ASDTUtils

+ (id)latencyFramesForSamplingRate:(id)a3 andMicroseconds:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CCABB0];
  [v5 doubleValue];
  v9 = [v7 numberWithUnsignedInt:{+[ASDTUtils latencyFramesIntForSamplingRate:andMicroseconds:](ASDTUtils, "latencyFramesIntForSamplingRate:andMicroseconds:", objc_msgSend(v6, "unsignedIntValue"), v8)}];

  return v9;
}

@end