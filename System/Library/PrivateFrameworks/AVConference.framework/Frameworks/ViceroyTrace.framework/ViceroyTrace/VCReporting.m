@interface VCReporting
@end

@implementation VCReporting

uint64_t __VCReporting_finalizeAggregationWithPayload_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "VCReporting_finalizeAggregationWithPayload");
  if (result)
  {
    if ([*(a1 + 40) count])
    {
      [*(a1 + 32) sendMessageWithCategory:364 type:0 payload:*(a1 + 40) error:0 toAggregatorOnly:1];
    }

    [*(a1 + 32) finalizeAggregation:{objc_msgSend(*(a1 + 32), "aggregator2")}];
    [*(a1 + 32) finalizeAggregation:{objc_msgSend(*(a1 + 32), "aggregator")}];
    v3 = *(a1 + 32);

    return [v3 sendLastFinalizedEvent];
  }

  return result;
}

void __VCReporting_FlushReportingSession_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reportingQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __VCReporting_FlushReportingSession_block_invoke_2;
  v3[3] = &unk_278BD4CF8;
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);
}

uint64_t __VCReporting_FlushReportingSession_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) reportingObject];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __VCReporting_FlushReportingSession_block_invoke_3;
  v4[3] = &unk_278BD5310;
  v4[4] = *(a1 + 40);
  return [v2 terminateSessionWithCompletion:v4];
}

@end