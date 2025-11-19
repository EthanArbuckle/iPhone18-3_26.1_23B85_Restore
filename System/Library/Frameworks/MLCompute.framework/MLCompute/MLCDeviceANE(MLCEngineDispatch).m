@interface MLCDeviceANE(MLCEngineDispatch)
@end

@implementation MLCDeviceANE(MLCEngineDispatch)

- (void)dispatchForwardConcatLayer:()MLCEngineDispatch sourceTensors:resultTensor:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: unspported", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardFusedArithmeticLayerNormalizationLayer:()MLCEngineDispatch sourceTensors:resultTensor:forTraining:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: not supported", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end