@interface ADStreamSyncTimestampedObject
- (void)setPose:(__n128)pose;
@end

@implementation ADStreamSyncTimestampedObject

- (void)setPose:(__n128)pose
{
  v5[0] = a2;
  v5[1] = pose;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((self + 48), v5, 64, 1, 0);
}

@end