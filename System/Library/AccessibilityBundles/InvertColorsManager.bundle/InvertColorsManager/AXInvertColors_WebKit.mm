@interface AXInvertColors_WebKit
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_WebKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WKWebView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"WKContentView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"WKWebView" hasInstanceMethod:@"_didFinishNavigation:" withFullSignature:{"v", "^{Navigation=}", 0}];
  [v3 validateClass:@"WKWebView" hasInstanceMethod:@"_didStartProvisionalLoadForMainFrame" withFullSignature:{"v", 0}];
}

@end