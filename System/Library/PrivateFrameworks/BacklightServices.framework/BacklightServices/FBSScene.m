@interface FBSScene
@end

@implementation FBSScene

BLSBacklightFBSSceneEnvironment *__56__FBSScene_BacklightServices__backlightSceneEnvironment__block_invoke(uint64_t a1)
{
  v2 = bls_scenes_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__FBSScene_BacklightServices__backlightSceneEnvironment__block_invoke_cold_1(a1, v2);
  }

  v3 = [[BLSBacklightFBSSceneEnvironment alloc] initWithFBSScene:*(a1 + 32)];

  return v3;
}

void __56__FBSScene_BacklightServices__backlightSceneEnvironment__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) debugDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_21FE25000, a2, OS_LOG_TYPE_DEBUG, "create BLSBacklightFBSSceneEnvironment for fbsScene:%@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end