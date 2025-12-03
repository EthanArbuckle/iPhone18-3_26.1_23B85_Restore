@interface NSMutableDictionary(AXSDKShotRecordingManager)
- (void)axSDKSetSafeObject:()AXSDKShotRecordingManager forKey:;
@end

@implementation NSMutableDictionary(AXSDKShotRecordingManager)

- (void)axSDKSetSafeObject:()AXSDKShotRecordingManager forKey:
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    null = v8;
    if (!v8)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v8 = null;
    [self setObject:null forKey:v6];
  }
}

@end