@interface AXInvertColors_Bridge
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_Bridge

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSPreferencesAppController" hasInstanceVariable:@"_window" withType:"UIWindow"];
  [v3 validateClass:@"COSPreferencesAppController" hasInstanceMethod:@"application:didFinishLaunchingWithOptions:" withFullSignature:{"B", "@", "@", 0}];
  [v3 validateClass:@"COSPreferencesAppController"];
}

@end