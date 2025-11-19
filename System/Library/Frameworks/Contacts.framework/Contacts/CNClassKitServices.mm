@interface CNClassKitServices
+ (id)objectsMatching:(id)a3 fromStore:(id)a4;
@end

@implementation CNClassKitServices

+ (id)objectsMatching:(id)a3 fromStore:(id)a4
{
  v5 = MEMORY[0x1E69967D0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [v8 completionHandlerAdapter];
  [v6 objectsMatching:v7 completion:v9];

  v10 = MEMORY[0x1E6996810];
  v11 = [v8 future];
  v12 = [v10 resultWithFuture:v11];

  return v12;
}

@end