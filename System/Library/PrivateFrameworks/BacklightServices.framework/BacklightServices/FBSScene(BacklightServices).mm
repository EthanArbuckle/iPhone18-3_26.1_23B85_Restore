@interface FBSScene(BacklightServices)
- (id)backlightSceneEnvironment;
@end

@implementation FBSScene(BacklightServices)

- (id)backlightSceneEnvironment
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__FBSScene_BacklightServices__backlightSceneEnvironment__block_invoke;
  v3[3] = &unk_278428EC0;
  v3[4] = self;
  v1 = [self backlightSceneEnvironmentWithCreationBlock:v3];

  return v1;
}

@end