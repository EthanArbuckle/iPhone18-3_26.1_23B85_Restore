@interface CNClassKitServices
+ (id)objectsMatching:(id)matching fromStore:(id)store;
@end

@implementation CNClassKitServices

+ (id)objectsMatching:(id)matching fromStore:(id)store
{
  v5 = MEMORY[0x1E69967D0];
  storeCopy = store;
  matchingCopy = matching;
  v8 = objc_alloc_init(v5);
  completionHandlerAdapter = [v8 completionHandlerAdapter];
  [storeCopy objectsMatching:matchingCopy completion:completionHandlerAdapter];

  v10 = MEMORY[0x1E6996810];
  future = [v8 future];
  v12 = [v10 resultWithFuture:future];

  return v12;
}

@end