@interface DeregisterStream
@end

@implementation DeregisterStream

void __audioEngineCarPlay_DeregisterStream_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 120))
  {
    __audioEngineCarPlay_DeregisterStream_block_invoke_cold_1();
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = *(v2 + 96);
    if (v3 == v4)
    {
      if (v3)
      {
        CFRelease(v4);
        *(*(a1 + 40) + 96) = 0;
        v2 = *(a1 + 40);
      }

      *(v2 + 104) = 0;
      *(*(a1 + 40) + 112) = 0;
      v5 = *(*(a1 + 40) + 88);
      if (v5)
      {
        CFRelease(v5);
        *(*(a1 + 40) + 88) = 0;
      }
    }

    else
    {
      __audioEngineCarPlay_DeregisterStream_block_invoke_cold_2();
    }
  }
}

void __audioEngineCarPlay_DeregisterStream_block_invoke_cold_2()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -72073;
}

@end