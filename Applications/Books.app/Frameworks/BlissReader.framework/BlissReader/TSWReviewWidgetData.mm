@interface TSWReviewWidgetData
- (int64_t)currentPage;
- (void)setCurrentPage:(int64_t)page;
@end

@implementation TSWReviewWidgetData

- (int64_t)currentPage
{
  currentPageNumber = [(TSWReviewWidgetData *)self currentPageNumber];

  return [currentPageNumber integerValue];
}

- (void)setCurrentPage:(int64_t)page
{
  v4 = [NSNumber numberWithInteger:page];

  [(TSWReviewWidgetData *)self setCurrentPageNumber:v4];
}

@end