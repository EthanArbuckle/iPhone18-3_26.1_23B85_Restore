@interface UIWebBrowserFindOnPageHighlighterAccessibility
- (void)setSearchText:(id)text matchLimit:(unint64_t)limit;
@end

@implementation UIWebBrowserFindOnPageHighlighterAccessibility

- (void)setSearchText:(id)text matchLimit:(unint64_t)limit
{
  v6.receiver = self;
  v6.super_class = UIWebBrowserFindOnPageHighlighterAccessibility;
  textCopy = text;
  [(UIWebBrowserFindOnPageHighlighterAccessibility *)&v6 setSearchText:textCopy matchLimit:limit];
  UIAccessibilityPostNotification(0xBD2u, textCopy);
}

@end