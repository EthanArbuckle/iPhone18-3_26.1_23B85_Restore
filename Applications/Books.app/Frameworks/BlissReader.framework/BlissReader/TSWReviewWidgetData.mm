@interface TSWReviewWidgetData
- (int64_t)currentPage;
- (void)setCurrentPage:(int64_t)a3;
@end

@implementation TSWReviewWidgetData

- (int64_t)currentPage
{
  v2 = [(TSWReviewWidgetData *)self currentPageNumber];

  return [v2 integerValue];
}

- (void)setCurrentPage:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];

  [(TSWReviewWidgetData *)self setCurrentPageNumber:v4];
}

@end