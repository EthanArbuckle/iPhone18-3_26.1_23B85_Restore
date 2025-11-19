@interface BKBookletMigrationDownloadFlowState
- (BKBookletMigrationDownloadFlowState)initWithStage:(unint64_t)a3;
@end

@implementation BKBookletMigrationDownloadFlowState

- (BKBookletMigrationDownloadFlowState)initWithStage:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BKBookletMigrationDownloadFlowState;
  result = [(BKBookletMigrationDownloadFlowState *)&v5 init];
  if (result)
  {
    result->_stage = a3;
  }

  return result;
}

@end