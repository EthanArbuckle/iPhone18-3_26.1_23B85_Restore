@interface TabDocumentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_webView:(id)a3 takeFocus:(int64_t)a4;
@end

@implementation TabDocumentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TabDocument" hasInstanceMethod:@"setActive:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"TabDocument" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TabDocument" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"TabDocument" hasInstanceMethod:@"_webView:takeFocus:" withFullSignature:{"v", "@", "q", 0}];
}

- (void)_webView:(id)a3 takeFocus:(int64_t)a4
{
  v6 = a3;
  if (([v6 _accessibilityIsFKARunningForFocusItem] & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = TabDocumentAccessibility;
    [(TabDocumentAccessibility *)&v7 _webView:v6 takeFocus:a4];
  }
}

@end