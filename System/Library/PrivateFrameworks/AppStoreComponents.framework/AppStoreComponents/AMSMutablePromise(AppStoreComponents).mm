@interface AMSMutablePromise(AppStoreComponents)
- (id)asc_copy;
@end

@implementation AMSMutablePromise(AppStoreComponents)

- (id)asc_copy
{
  v2 = objc_alloc_init(MEMORY[0x277CEE600]);
  completionHandlerAdapter = [v2 completionHandlerAdapter];
  [self addFinishBlock:completionHandlerAdapter];

  return v2;
}

@end