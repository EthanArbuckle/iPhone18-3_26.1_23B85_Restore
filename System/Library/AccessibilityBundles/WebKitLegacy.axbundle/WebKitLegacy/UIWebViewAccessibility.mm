@interface UIWebViewAccessibility
- (void)webView:(id)a3 didFailLoadWithError:(id)a4 forFrame:(id)a5;
- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4;
- (void)webViewClose:(id)a3;
@end

@implementation UIWebViewAccessibility

- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4
{
  v4.receiver = self;
  v4.super_class = UIWebViewAccessibility;
  [(UIWebViewAccessibility *)&v4 webView:a3 didFinishLoadForFrame:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)webViewClose:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIWebViewAccessibility;
  [(UIWebViewAccessibility *)&v6 webViewClose:a3];
  v3 = *MEMORY[0x29EDC75E8];
  LODWORD(v4) = -1.0;
  v5 = [MEMORY[0x29EDBA070] numberWithFloat:v4];
  UIAccessibilityPostNotification(v3, v5);
}

- (void)webView:(id)a3 didFailLoadWithError:(id)a4 forFrame:(id)a5
{
  v8.receiver = self;
  v8.super_class = UIWebViewAccessibility;
  [(UIWebViewAccessibility *)&v8 webView:a3 didFailLoadWithError:a4 forFrame:a5];
  v5 = *MEMORY[0x29EDC75E8];
  LODWORD(v6) = -1.0;
  v7 = [MEMORY[0x29EDBA070] numberWithFloat:v6];
  UIAccessibilityPostNotification(v5, v7);
}

@end