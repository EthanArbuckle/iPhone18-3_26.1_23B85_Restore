@interface FBSScene(BacklightServices_Internal)
- (id)backlightSceneEnvironmentWithCreationBlock:()BacklightServices_Internal;
@end

@implementation FBSScene(BacklightServices_Internal)

- (id)backlightSceneEnvironmentWithCreationBlock:()BacklightServices_Internal
{
  v4 = a3;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_getAssociatedObject(selfCopy, sel_backlightSceneEnvironment);
  if (!v6)
  {
    v6 = v4[2](v4);
    objc_setAssociatedObject(selfCopy, sel_backlightSceneEnvironment, v6, 0x301);
  }

  objc_sync_exit(selfCopy);

  return v6;
}

@end