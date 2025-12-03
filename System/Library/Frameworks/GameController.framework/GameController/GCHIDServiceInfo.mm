@interface GCHIDServiceInfo
- (id)mfiControllerCapabilities;
@end

@implementation GCHIDServiceInfo

- (id)mfiControllerCapabilities
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, "MFiControllerCapabilities");
    if (!v2)
    {
      v2 = [[_GCMFiControllerCapabilites alloc] initWithServiceInfo:self];
      objc_setAssociatedObject(self, "MFiControllerCapabilities", v2, 0x301);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end