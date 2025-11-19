@interface UIWebBrowserFindOnPageHighlighterAccessibility
- (void)setSearchText:(id)a3 matchLimit:(unint64_t)a4;
@end

@implementation UIWebBrowserFindOnPageHighlighterAccessibility

- (void)setSearchText:(id)a3 matchLimit:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = UIWebBrowserFindOnPageHighlighterAccessibility;
  v5 = a3;
  [(UIWebBrowserFindOnPageHighlighterAccessibility *)&v6 setSearchText:v5 matchLimit:a4];
  UIAccessibilityPostNotification(0xBD2u, v5);
}

@end