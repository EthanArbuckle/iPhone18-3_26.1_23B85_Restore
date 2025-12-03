@interface AXInvertColors_Bridge
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_Bridge

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"COSPreferencesAppController" hasInstanceVariable:@"_window" withType:"UIWindow"];
  [validationsCopy validateClass:@"COSPreferencesAppController" hasInstanceMethod:@"application:didFinishLaunchingWithOptions:" withFullSignature:{"B", "@", "@", 0}];
  [validationsCopy validateClass:@"COSPreferencesAppController"];
}

@end