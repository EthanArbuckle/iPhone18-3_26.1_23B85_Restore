@interface SCNMaterialProperty(SCNMaterialPropertyPrivate_PrecomputedLightingEnvironment)
@end

@implementation SCNMaterialProperty(SCNMaterialPropertyPrivate_PrecomputedLightingEnvironment)

+ (void)precomputedLightingEnvironmentDataForContents:()SCNMaterialPropertyPrivate_PrecomputedLightingEnvironment device:error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "slot";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

@end