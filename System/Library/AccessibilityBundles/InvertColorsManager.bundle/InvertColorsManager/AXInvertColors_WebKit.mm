@interface AXInvertColors_WebKit
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_WebKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WKWebView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"WKContentView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"WKWebView" hasInstanceMethod:@"_didFinishNavigation:" withFullSignature:{"v", "^{Navigation=}", 0}];
  [validationsCopy validateClass:@"WKWebView" hasInstanceMethod:@"_didStartProvisionalLoadForMainFrame" withFullSignature:{"v", 0}];
}

@end