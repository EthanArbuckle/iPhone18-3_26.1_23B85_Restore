@interface BKPDFModernBookViewControllerAccessibility
- (void)toggleBookmark:(id)bookmark;
@end

@implementation BKPDFModernBookViewControllerAccessibility

- (void)toggleBookmark:(id)bookmark
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewControllerAccessibility;
  [(BKThumbnailBookViewControllerAccessibility *)&v4 toggleBookmark:bookmark];
  [(BKThumbnailBookViewControllerAccessibility *)self _updateBookmark];
}

@end