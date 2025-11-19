@interface DKKnowledgeStore
@end

@implementation DKKnowledgeStore

Class __init_DKKnowledgeStore_block_invoke()
{
  if (!CoreDuetLibrary_frameworkLibrary)
  {
    CoreDuetLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CoreDuet.framework/CoreDuet", 2);
    if (!CoreDuetLibrary_frameworkLibrary)
    {
      __assert_rtn("CoreDuetLibrary", "AFOpportuneSpeakingModelFeedback.m", 38, "frameworkLibrary");
    }
  }

  result = objc_getClass("_DKKnowledgeStore");
  class_DKKnowledgeStore = result;
  if (!result)
  {
    __assert_rtn("init_DKKnowledgeStore_block_invoke", "AFOpportuneSpeakingModelFeedback.m", 42, "class_DKKnowledgeStore");
  }

  get_DKKnowledgeStoreClass = _DKKnowledgeStoreFunction;
  return result;
}

@end