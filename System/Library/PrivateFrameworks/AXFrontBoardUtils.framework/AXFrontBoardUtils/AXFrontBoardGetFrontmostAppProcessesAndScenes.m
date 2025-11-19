@interface AXFrontBoardGetFrontmostAppProcessesAndScenes
@end

@implementation AXFrontBoardGetFrontmostAppProcessesAndScenes

void ___AXFrontBoardGetFrontmostAppProcessesAndScenes_block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = AXFrontBoardSystemAppProcess();
  v3 = v2;
  if (v2)
  {
    v19[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [MEMORY[0x277CBEB68] null];
    v18 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = [*(a1 + 32) isPasscodeLockVisible];
  v12 = AXLogUIA();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [*(a1 + 32) isAppSwitcherVisible];
    v15[0] = 67109376;
    v15[1] = v13;
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&dword_23D5EE000, v12, OS_LOG_TYPE_INFO, "System app process frontmost (app switcher: %d, passocde: %d", v15, 0xEu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t ___AXFrontBoardGetFrontmostAppProcessesAndScenes_block_invoke_465(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:@"process"];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CE6920]];

  return v4;
}

uint64_t ___AXFrontBoardGetFrontmostAppProcessesAndScenes_block_invoke_467(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"process"];
  v4 = [v3 bundleIdentifier];
  v5 = [*(a1 + 32) bundleIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6 ^ 1u;
}

@end