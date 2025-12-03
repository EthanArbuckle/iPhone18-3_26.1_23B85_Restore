@interface BKBookletMigrationDownloadFlowState
- (BKBookletMigrationDownloadFlowState)initWithStage:(unint64_t)stage;
@end

@implementation BKBookletMigrationDownloadFlowState

- (BKBookletMigrationDownloadFlowState)initWithStage:(unint64_t)stage
{
  v5.receiver = self;
  v5.super_class = BKBookletMigrationDownloadFlowState;
  result = [(BKBookletMigrationDownloadFlowState *)&v5 init];
  if (result)
  {
    result->_stage = stage;
  }

  return result;
}

@end