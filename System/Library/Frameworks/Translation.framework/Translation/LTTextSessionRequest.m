@interface LTTextSessionRequest
@end

@implementation LTTextSessionRequest

void __59___LTTextSessionRequest_didReceiveInterruptionFromHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:13 userInfo:0];
    v3 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59___LTTextSessionRequest_didReceiveInterruptionFromHandler___block_invoke_cold_1(v2, v3);
    }

    [WeakRetained didReceiveError:v2 forInput:0];
  }
}

void __59___LTTextSessionRequest_didReceiveInterruptionFromHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  v2 = *MEMORY[0x277D85DE8];
}

@end