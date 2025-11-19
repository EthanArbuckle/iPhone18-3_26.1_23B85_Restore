@interface ReportingVC
@end

@implementation ReportingVC

uint64_t __ReportingVC_SetEventDrivenAggregationOccurredHandler_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "ReportingVC_SetEventDrivenAggregationOccurredHandler");
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) aggregator];

    return [v4 setEventDrivenAggregationOccurredHandler:v3];
  }

  return result;
}

@end