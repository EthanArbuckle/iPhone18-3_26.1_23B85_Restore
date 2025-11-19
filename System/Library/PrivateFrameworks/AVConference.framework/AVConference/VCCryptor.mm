@interface VCCryptor
@end

@implementation VCCryptor

void ___VCCryptor_EnsureCryptorIsReady_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    atomic_store(1u, (*(a1 + 32) + 32));
  }

  else
  {
    ___VCCryptor_EnsureCryptorIsReady_block_invoke_cold_1();
  }
}

void ___VCCryptor_EnsureCryptorIsReady_block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end