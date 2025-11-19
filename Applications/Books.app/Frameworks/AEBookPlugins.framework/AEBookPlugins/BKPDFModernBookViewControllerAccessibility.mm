@interface BKPDFModernBookViewControllerAccessibility
- (void)toggleBookmark:(id)a3;
@end

@implementation BKPDFModernBookViewControllerAccessibility

- (void)toggleBookmark:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewControllerAccessibility;
  [(BKThumbnailBookViewControllerAccessibility *)&v4 toggleBookmark:a3];
  [(BKThumbnailBookViewControllerAccessibility *)self _updateBookmark];
}

@end