@interface _GCMFiGamepadControllerProfile
- (void)setPlayerIndex:(int64_t)a3;
@end

@implementation _GCMFiGamepadControllerProfile

- (void)setPlayerIndex:(int64_t)a3
{
  v4 = [(GCPhysicalInputProfile *)self controller];
  v5 = [v4 hidServices];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 service];

  if (v7)
  {

    GC_IOHIDSetLEDs(v7, a3);
  }
}

@end