@interface SCNMTLResourceManager(Compilation)
@end

@implementation SCNMTLResourceManager(Compilation)

- (void)_newComputeDescriptorForPipelineDesc:()Compilation library:.cold.1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_5_3(&dword_21BEF7000, v0, v1, "Error: Failed to create compute function '%@', error: %@");
}

- (void)_newComputeDescriptorForPipelineDesc:()Compilation library:.cold.2()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_configureComputePipeline:()Compilation withDescriptor:.cold.1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:()Compilation pixelBufferYCbCrMatrix:pixelBufferColorPrimaries:pixelBufferTransferFunction:sourceColorSpace:destinationColorSpace:renderContext:.cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_5_3(&dword_21BEF7000, a2, a3, "Error: Could not create color space from %@ and %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end