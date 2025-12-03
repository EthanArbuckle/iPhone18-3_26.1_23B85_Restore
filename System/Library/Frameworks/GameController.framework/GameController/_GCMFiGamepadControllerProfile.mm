@interface _GCMFiGamepadControllerProfile
- (void)setPlayerIndex:(int64_t)index;
@end

@implementation _GCMFiGamepadControllerProfile

- (void)setPlayerIndex:(int64_t)index
{
  controller = [(GCPhysicalInputProfile *)self controller];
  hidServices = [controller hidServices];
  v6 = [hidServices objectAtIndexedSubscript:0];
  service = [v6 service];

  if (service)
  {

    GC_IOHIDSetLEDs(service, index);
  }
}

@end