@interface ADStreamSyncTimestampedObject
- (void)setPose:(__n128)a3;
@end

@implementation ADStreamSyncTimestampedObject

- (void)setPose:(__n128)a3
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((a1 + 48), v5, 64, 1, 0);
}

@end