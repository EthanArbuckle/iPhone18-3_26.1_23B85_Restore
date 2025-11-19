@interface PipelineAllowsPrebuffering
@end

@implementation PipelineAllowsPrebuffering

void __ruleNoConsumerConnected_and_PipelineAllowsPrebuffering_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v4 = *(a3 + 24);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
    v6 = cf;
    if (cf)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      CFRelease(v6);
    }
  }
}

@end