@interface NUIFlowArrangementDummyItem
@end

@implementation NUIFlowArrangementDummyItem

uint64_t __47___NUIFlowArrangementDummyItem_sharedDummyItem__block_invoke()
{
  result = objc_opt_new();
  +[_NUIFlowArrangementDummyItem sharedDummyItem]::sharedDummyItem = result;
  return result;
}

@end