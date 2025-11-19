@interface RegisterStream
@end

@implementation RegisterStream

void __audioEngineCarPlay_RegisterStream_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 96))
  {
    __audioEngineCarPlay_RegisterStream_block_invoke_cold_1();
  }

  else if (*(v2 + 120))
  {
    __audioEngineCarPlay_RegisterStream_block_invoke_cold_2();
  }

  else
  {
    APAudioFormatToASBD();
    if (*(*(a1 + 40) + 32) == 1819304813)
    {
      __audioEngineCarPlay_RegisterStream_block_invoke_cold_3();
    }

    else
    {
      *(*(a1 + 40) + 96) = CFRetain(*(a1 + 56));
      *(*(a1 + 40) + 104) = **(a1 + 64);
      *(*(a1 + 40) + 112) = *(*(a1 + 64) + 24);
    }
  }
}

void __audioEngineCarPlay_RegisterStream_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_3_13(v0);
}

void __audioEngineCarPlay_RegisterStream_block_invoke_cold_3()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_3_13(v0);
}

@end