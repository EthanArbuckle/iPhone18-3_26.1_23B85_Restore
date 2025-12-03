@interface UIWebViewAccessibility
- (void)webView:(id)view didFailLoadWithError:(id)error forFrame:(id)frame;
- (void)webView:(id)view didFinishLoadForFrame:(id)frame;
- (void)webViewClose:(id)close;
@end

@implementation UIWebViewAccessibility

- (void)webView:(id)view didFinishLoadForFrame:(id)frame
{
  v4.receiver = self;
  v4.super_class = UIWebViewAccessibility;
  [(UIWebViewAccessibility *)&v4 webView:view didFinishLoadForFrame:frame];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)webViewClose:(id)close
{
  v6.receiver = self;
  v6.super_class = UIWebViewAccessibility;
  [(UIWebViewAccessibility *)&v6 webViewClose:close];
  v3 = *MEMORY[0x29EDC75E8];
  LODWORD(v4) = -1.0;
  v5 = [MEMORY[0x29EDBA070] numberWithFloat:v4];
  UIAccessibilityPostNotification(v3, v5);
}

- (void)webView:(id)view didFailLoadWithError:(id)error forFrame:(id)frame
{
  v8.receiver = self;
  v8.super_class = UIWebViewAccessibility;
  [(UIWebViewAccessibility *)&v8 webView:view didFailLoadWithError:error forFrame:frame];
  v5 = *MEMORY[0x29EDC75E8];
  LODWORD(v6) = -1.0;
  v7 = [MEMORY[0x29EDBA070] numberWithFloat:v6];
  UIAccessibilityPostNotification(v5, v7);
}

@end