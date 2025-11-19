@interface SFReaderExtractor
@end

@implementation SFReaderExtractor

void __45___SFReaderExtractor__scheduleLoadingTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_DEFAULT, "Loading page for Reader data extraction timed out", v4, 2u);
    }

    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.safariservices.readerExtractorErrorDomain" code:4 userInfo:0];
    [WeakRetained _finishWithContent:0 error:v3];
  }
}

void __58___SFReaderExtractor__scheduleReaderDataExtractionTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_DEFAULT, "Exctracting Reader data timed out", v4, 2u);
    }

    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.safariservices.readerExtractorErrorDomain" code:5 userInfo:0];
    [WeakRetained _finishWithContent:0 error:v3];
  }
}

@end