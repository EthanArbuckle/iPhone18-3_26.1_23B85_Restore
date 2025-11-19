@interface PostInspectSampleBuffer
@end

@implementation PostInspectSampleBuffer

void __fbapspManager_PostInspectSampleBuffer_block_invoke(uint64_t a1)
{
  fbapspManager_subPipeFinishedProcessingData(a1, *(a1 + 32), *MEMORY[0x1E6962DF8], *(a1 + 32));
  v2 = *(a1 + 32);

  fbapspManager_releaseAsync(v2);
}

void __fbapspManager_PostInspectSampleBuffer_block_invoke_2(uint64_t a1)
{
  fbapspManager_subPipeFinishedProcessingData(a1, *(a1 + 32), *MEMORY[0x1E6962DF8], *(a1 + 32));
  v2 = *(a1 + 32);

  fbapspManager_releaseAsync(v2);
}

void __bapspManager_PostInspectSampleBuffer_block_invoke(uint64_t a1)
{
  bapspManager_subPipeFinishedProcessingData(a1, *(a1 + 32), *MEMORY[0x1E6962DF8]);
  v2 = *(a1 + 32);

  bapspManager_releaseAsync(v2);
}

void __bapspManager_PostInspectSampleBuffer_block_invoke_2(uint64_t a1)
{
  bapspManager_subPipeFinishedProcessingData(a1, *(a1 + 32), *MEMORY[0x1E6962DF8]);
  v2 = *(a1 + 32);

  bapspManager_releaseAsync(v2);
}

@end