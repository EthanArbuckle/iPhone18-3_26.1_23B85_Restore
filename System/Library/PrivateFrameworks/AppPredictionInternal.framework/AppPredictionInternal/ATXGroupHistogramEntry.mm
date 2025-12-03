@interface ATXGroupHistogramEntry
- (ATXGroupHistogramEntry)initWithScore:(double)score;
@end

@implementation ATXGroupHistogramEntry

- (ATXGroupHistogramEntry)initWithScore:(double)score
{
  v5.receiver = self;
  v5.super_class = ATXGroupHistogramEntry;
  result = [(ATXGroupHistogramEntry *)&v5 init];
  if (result)
  {
    result->_score = score;
    result->_count = 1;
  }

  return result;
}

@end