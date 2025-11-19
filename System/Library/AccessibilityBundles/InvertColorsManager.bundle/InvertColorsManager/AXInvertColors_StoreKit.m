@interface AXInvertColors_StoreKit
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_StoreKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKStoreProductViewController"];
  [v3 validateClass:@"SKStoreProductViewController" isKindOfClass:@"UIViewController"];
}

@end