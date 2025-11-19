@interface LTAudioDecoder
@end

@implementation LTAudioDecoder

uint64_t __33___LTAudioDecoder_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance = objc_alloc_init(_LTAudioDecoder);

  return MEMORY[0x2821F96F8]();
}

uint64_t __40___LTAudioDecoder_decodeChunk_outError___block_invoke(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v8 = *a2;
  if (*(*(*(a1 + 40) + 8) + 24) >= v8)
  {
    if (v8 == 1)
    {
      v11 = [*(a1 + 32) length];
      v12 = *(a1 + 32);
      *(a3 + 16) = [v12 bytes];
      *(a3 + 12) = v11;
      if (a4)
      {
        v13 = *(a1 + 56);
        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 12) = v11;
        *a4 = v13;
      }

      --*(*(*(a1 + 40) + 8) + 24);
      ++*(*(*(a1 + 48) + 8) + 24);

      return 0;
    }

    else
    {
      v9 = 1752524863;
      v14 = _LTOSLogTTS();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __40___LTAudioDecoder_decodeChunk_outError___block_invoke_cold_1(a2, v14);
      }
    }
  }

  else
  {
    v9 = 1836086393;
    *a2 = 0;
    *(a3 + 16) = 0;
    *(a3 + 12) = 0;
    if (a4)
    {
      v10 = *(a1 + 56);
      *v10 = 0;
      v10[1] = 0;
      *a4 = v10;
    }
  }

  return v9;
}

void __40___LTAudioDecoder_decodeChunk_outError___block_invoke_cold_1(unsigned int *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_23AAF5000, a2, OS_LOG_TYPE_ERROR, "Only expecting to get 1 packet at a time, not %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end