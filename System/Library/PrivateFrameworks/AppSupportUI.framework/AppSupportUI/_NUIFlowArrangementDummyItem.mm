@interface _NUIFlowArrangementDummyItem
+ (uint64_t)sharedDummyItem;
@end

@implementation _NUIFlowArrangementDummyItem

+ (uint64_t)sharedDummyItem
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___NUIFlowArrangementDummyItem_sharedDummyItem__block_invoke;
  block[3] = &unk_278329440;
  block[4] = v0;
  if (+[_NUIFlowArrangementDummyItem sharedDummyItem]::onceToken != -1)
  {
    dispatch_once(&+[_NUIFlowArrangementDummyItem sharedDummyItem]::onceToken, block);
  }

  return +[_NUIFlowArrangementDummyItem sharedDummyItem]::sharedDummyItem;
}

@end