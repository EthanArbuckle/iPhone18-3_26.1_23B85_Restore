@interface AACInitialHistoricalRunStatus
- (AACInitialHistoricalRunStatus)initWithIsComplete:(BOOL)a3;
@end

@implementation AACInitialHistoricalRunStatus

- (AACInitialHistoricalRunStatus)initWithIsComplete:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AACInitialHistoricalRunStatus;
  result = [(AACInitialHistoricalRunStatus *)&v5 init];
  if (result)
  {
    result->_isComplete = a3;
  }

  return result;
}

@end