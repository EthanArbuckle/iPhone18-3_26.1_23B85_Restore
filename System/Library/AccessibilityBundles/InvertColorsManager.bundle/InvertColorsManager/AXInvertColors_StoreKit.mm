@interface AXInvertColors_StoreKit
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_StoreKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKStoreProductViewController"];
  [validationsCopy validateClass:@"SKStoreProductViewController" isKindOfClass:@"UIViewController"];
}

@end