@interface FBSScene(BacklightServices_Internal)
- (id)backlightSceneEnvironmentWithCreationBlock:()BacklightServices_Internal;
@end

@implementation FBSScene(BacklightServices_Internal)

- (id)backlightSceneEnvironmentWithCreationBlock:()BacklightServices_Internal
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = objc_getAssociatedObject(v5, sel_backlightSceneEnvironment);
  if (!v6)
  {
    v6 = v4[2](v4);
    objc_setAssociatedObject(v5, sel_backlightSceneEnvironment, v6, 0x301);
  }

  objc_sync_exit(v5);

  return v6;
}

@end