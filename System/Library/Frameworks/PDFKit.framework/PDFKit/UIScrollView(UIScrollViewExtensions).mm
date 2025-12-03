@interface UIScrollView(UIScrollViewExtensions)
- (uint64_t)PDFKitDocumentVisibleRectIncludingContentInsets;
@end

@implementation UIScrollView(UIScrollViewExtensions)

- (uint64_t)PDFKitDocumentVisibleRectIncludingContentInsets
{
  [self contentOffset];
  [self contentOffset];
  [self contentSize];
  [self contentSize];
  return [self contentInset];
}

@end