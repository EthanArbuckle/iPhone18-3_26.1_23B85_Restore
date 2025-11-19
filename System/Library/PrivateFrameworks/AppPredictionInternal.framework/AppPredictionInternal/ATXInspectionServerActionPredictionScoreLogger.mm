@interface ATXInspectionServerActionPredictionScoreLogger
@end

@implementation ATXInspectionServerActionPredictionScoreLogger

uint64_t __70___ATXInspectionServerActionPredictionScoreLogger_actionMetaDataItems__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

@end