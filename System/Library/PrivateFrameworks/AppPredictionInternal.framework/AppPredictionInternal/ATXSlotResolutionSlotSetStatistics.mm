@interface ATXSlotResolutionSlotSetStatistics
- (ATXSlotResolutionSlotSetStatistics)init;
@end

@implementation ATXSlotResolutionSlotSetStatistics

- (ATXSlotResolutionSlotSetStatistics)init
{
  v6.receiver = self;
  v6.super_class = ATXSlotResolutionSlotSetStatistics;
  v2 = [(ATXSlotResolutionSlotSetStatistics *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_entropy = 0.0;
    v2->_numOccurrences = 0.0;
    v4 = v2;
  }

  return v3;
}

@end