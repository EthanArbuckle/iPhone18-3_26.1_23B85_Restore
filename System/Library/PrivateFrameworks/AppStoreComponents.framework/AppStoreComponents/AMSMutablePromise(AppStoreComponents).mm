@interface AMSMutablePromise(AppStoreComponents)
- (id)asc_copy;
@end

@implementation AMSMutablePromise(AppStoreComponents)

- (id)asc_copy
{
  v2 = objc_alloc_init(MEMORY[0x277CEE600]);
  v3 = [v2 completionHandlerAdapter];
  [a1 addFinishBlock:v3];

  return v2;
}

@end