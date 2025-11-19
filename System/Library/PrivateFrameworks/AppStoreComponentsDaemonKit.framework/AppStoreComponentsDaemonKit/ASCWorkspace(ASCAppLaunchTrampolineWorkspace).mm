@interface ASCWorkspace(ASCAppLaunchTrampolineWorkspace)
@end

@implementation ASCWorkspace(ASCAppLaunchTrampolineWorkspace)

- (void)openResourceOperation:()ASCAppLaunchTrampolineWorkspace didFailWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_222629000, v0, v1, "Open resource URL operation failed, reason %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end