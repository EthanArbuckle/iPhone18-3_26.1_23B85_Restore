@interface ComponentForceTouch
- (BOOL)isPresent;
- (void)populateAttributes:(id)attributes;
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

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  v3 = objc_alloc_init(OSDGrape);
  orbErrorDetected = [(OSDGrape *)v3 orbErrorDetected];
  if ([orbErrorDetected count])
  {
    allObjects = [orbErrorDetected allObjects];
    [attributesCopy setObject:allObjects forKeyedSubscript:@"Errors"];
  }
}

@end