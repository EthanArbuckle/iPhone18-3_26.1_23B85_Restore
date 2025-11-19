@interface ATXGroupHistogramEntry
- (ATXGroupHistogramEntry)initWithScore:(double)a3;
@end

@implementation ATXGroupHistogramEntry

- (ATXGroupHistogramEntry)initWithScore:(double)a3
{
  v5.receiver = self;
  v5.super_class = ATXGroupHistogramEntry;
  result = [(ATXGroupHistogramEntry *)&v5 init];
  if (result)
  {
    result->_score = a3;
    result->_count = 1;
  }

  return result;
}

@end