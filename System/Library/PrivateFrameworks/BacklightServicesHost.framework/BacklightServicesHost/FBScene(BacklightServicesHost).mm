@interface FBScene(BacklightServicesHost)
- (BLSHBacklightFBSceneHostEnvironment)backlightSceneHostEnvironment;
- (id)existingBacklightSceneHostEnvironment;
@end

@implementation FBScene(BacklightServicesHost)

- (BLSHBacklightFBSceneHostEnvironment)backlightSceneHostEnvironment
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, sel_backlightSceneHostEnvironment);
  if (!v2)
  {
    v2 = [[BLSHBacklightFBSceneHostEnvironment alloc] initWithFBScene:selfCopy];
    objc_setAssociatedObject(selfCopy, sel_backlightSceneHostEnvironment, v2, 0x301);
  }

  objc_sync_exit(selfCopy);

  return v2;
}

- (id)existingBacklightSceneHostEnvironment
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, sel_backlightSceneHostEnvironment);
  objc_sync_exit(selfCopy);

  return v2;
}

@end