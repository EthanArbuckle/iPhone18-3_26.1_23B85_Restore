@interface GCHIDServiceInfo
- (id)mfiControllerCapabilities;
@end

@implementation GCHIDServiceInfo

- (id)mfiControllerCapabilities
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, "MFiControllerCapabilities");
    if (!v2)
    {
      v2 = [[_GCMFiControllerCapabilites alloc] initWithServiceInfo:a1];
      objc_setAssociatedObject(a1, "MFiControllerCapabilities", v2, 0x301);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end