@interface MediaServiceConfiguration(AppSelection)
@end

@implementation MediaServiceConfiguration(AppSelection)

- (void)activeServiceApplicationInformationForSharedUserID:()AppSelection completionHandler:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getMediaServiceChoicesForSharedUser:()AppSelection completion:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getMediaServiceChoicesForAllUsers:()AppSelection .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getSupportedThirdPartyMediaServices:()AppSelection .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end