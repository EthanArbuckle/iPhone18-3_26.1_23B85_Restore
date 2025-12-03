@interface AACInitialHistoricalRunStatus
- (AACInitialHistoricalRunStatus)initWithIsComplete:(BOOL)complete;
@end

@implementation AACInitialHistoricalRunStatus

- (AACInitialHistoricalRunStatus)initWithIsComplete:(BOOL)complete
{
  v5.receiver = self;
  v5.super_class = AACInitialHistoricalRunStatus;
  result = [(AACInitialHistoricalRunStatus *)&v5 init];
  if (result)
  {
    result->_isComplete = complete;
  }

  return result;
}

@end