@interface HKHealthStore
@end

@implementation HKHealthStore

uint64_t __53__HKHealthStore_Workflow__wf_shortcutsAppHealthStore__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v1 = wf_shortcutsAppHealthStore_store;
  wf_shortcutsAppHealthStore_store = v0;

  [wf_shortcutsAppHealthStore_store setSourceBundleIdentifier:*MEMORY[0x277D7A300]];
  v2 = wf_shortcutsAppHealthStore_store;

  return [v2 resume];
}

@end