@interface LTTextToSpeechSanitizer
@end

@implementation LTTextToSpeechSanitizer

void __46___LTTextToSpeechSanitizer__regularExpression__block_invoke()
{
  v4 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([\\p{L}']*[*]+[\\p{L}']*)+" options:1 error:&v4];
  v1 = v4;
  v2 = _regularExpression_regularExpression;
  _regularExpression_regularExpression = v0;

  if (v1)
  {
    v3 = _LTOSLogTTS();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __46___LTTextToSpeechSanitizer__regularExpression__block_invoke_cold_1(v1, v3);
    }
  }
}

void __46___LTTextToSpeechSanitizer__regularExpression__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_23AAF5000, a2, OS_LOG_TYPE_FAULT, "Failed to create regular expression to find censored speech: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end