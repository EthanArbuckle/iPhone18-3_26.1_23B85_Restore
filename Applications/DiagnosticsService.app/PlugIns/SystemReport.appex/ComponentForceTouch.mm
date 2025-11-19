@interface ComponentForceTouch
- (BOOL)isPresent;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentForceTouch

- (BOOL)isPresent
{
  Default = MTDeviceCreateDefault();
  if (Default)
  {
    v3 = Default;
    v4 = MTDeviceSupportsForce();
    CFRelease(v3);
    LOBYTE(Default) = v4;
  }

  return Default;
}

- (void)populateAttributes:(id)a3
{
  v6 = a3;
  v3 = objc_alloc_init(OSDGrape);
  v4 = [(OSDGrape *)v3 orbErrorDetected];
  if ([v4 count])
  {
    v5 = [v4 allObjects];
    [v6 setObject:v5 forKeyedSubscript:@"Errors"];
  }
}

@end