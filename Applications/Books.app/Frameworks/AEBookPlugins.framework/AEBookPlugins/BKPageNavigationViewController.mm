@interface BKPageNavigationViewController
- (BKPageNavigationDelegate)delegate;
- (BKPageNavigationViewController)init;
- (UIPageViewControllerDataSource)dataSource;
- (_NSRange)visiblePages;
- (id)_imageViewForPageContentImage:(id)image;
- (id)viewForLiveResize;
- (int64_t)_leftPageNumberForOffset:(int64_t)offset usingPageCount:(int64_t)count;
- (int64_t)_pageNumberForOffset:(int64_t)offset onGreaterSide:(BOOL)side usingPageCount:(int64_t)count;
- (int64_t)_rightPageNumberForOffset:(int64_t)offset usingPageCount:(int64_t)count;
- (int64_t)leftPageNumberForSinglePageOffset:(int64_t)offset;
- (int64_t)leftPageNumberForSpreadPageOffset:(int64_t)offset;
- (int64_t)rightPageNumberForSinglePageOffset:(int64_t)offset;
- (int64_t)rightPageNumberForSpreadPageOffset:(int64_t)offset;
- (void)adjustToNewSize:(CGSize)size;
- (void)contentViewImage:(BOOL)image afterScreenUpdates:(BOOL)updates completion:(id)completion;
- (void)contentViewImage:(BOOL)image completion:(id)completion;
- (void)turnToNextPageWithDelta:(unint64_t)delta;
- (void)turnToPreviousPageWithDelta:(unint64_t)delta;
@end

@implementation BKPageNavigationViewController

- (BKPageNavigationViewController)init
{
  v3.receiver = self;
  v3.super_class = BKPageNavigationViewController;
  result = [(BKPageNavigationViewController *)&v3 init];
  if (result)
  {
    result->_pageOffset = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (_NSRange)visiblePages
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)contentViewImage:(BOOL)image completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v8 = v5;
    contentView = [(BKPageNavigationViewController *)self contentView];
    im_snapshotInContext = [contentView im_snapshotInContext];
    v8[2](v8, im_snapshotInContext);

    v5 = v8;
  }
}

- (void)contentViewImage:(BOOL)image afterScreenUpdates:(BOOL)updates completion:(id)completion
{
  v6 = objc_retainBlock(completion);
  if (v6)
  {
    v9 = v6;
    contentView = [(BKPageNavigationViewController *)self contentView];
    im_snapshotInContext = [contentView im_snapshotInContext];
    v9[2](v9, im_snapshotInContext);

    v6 = v9;
  }
}

- (void)turnToNextPageWithDelta:(unint64_t)delta
{
  layoutDirection = [(BKViewController *)self layoutDirection];
  pageOffset = [(BKPageNavigationViewController *)self pageOffset];
  if (layoutDirection == 1)
  {
    deltaCopy = -delta;
  }

  else
  {
    deltaCopy = delta;
  }

  [(BKPageNavigationViewController *)self turnToPageNumber:pageOffset + deltaCopy + 1 animated:1];
}

- (void)turnToPreviousPageWithDelta:(unint64_t)delta
{
  layoutDirection = [(BKViewController *)self layoutDirection];
  pageOffset = [(BKPageNavigationViewController *)self pageOffset];
  if (layoutDirection == 1)
  {
    deltaCopy = delta;
  }

  else
  {
    deltaCopy = -delta;
  }

  [(BKPageNavigationViewController *)self turnToPageNumber:pageOffset + deltaCopy + 1 animated:1];
}

- (void)adjustToNewSize:(CGSize)size
{
  v3 = [NSString stringWithFormat:@"%@: %s", size.width, size.height, @"Do not call method", "[BKPageNavigationViewController adjustToNewSize:]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (id)viewForLiveResize
{
  v2 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BKPageNavigationViewController viewForLiveResize]"];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (BKPageNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIPageViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)_imageViewForPageContentImage:(id)image
{
  imageCopy = image;
  v4 = [[UIImageView alloc] initWithImage:imageCopy];

  [v4 setContentMode:1];

  return v4;
}

- (int64_t)_pageNumberForOffset:(int64_t)offset onGreaterSide:(BOOL)side usingPageCount:(int64_t)count
{
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = (offset & 1) + offset;
  if (offset > count)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (offset >= 1)
  {
    v5 = v6;
  }

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 1;
  if (offset)
  {
    v8 = 2;
  }

  v9 = v8 + offset;
  if (offset > count)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (offset >= 0)
  {
    v7 = v9;
  }

  if (side)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_leftPageNumberForOffset:(int64_t)offset usingPageCount:(int64_t)count
{
  v7 = [(BKViewController *)self layoutDirection]== &dword_0 + 1;

  return [(BKPageNavigationViewController *)self _pageNumberForOffset:offset onGreaterSide:v7 usingPageCount:count];
}

- (int64_t)_rightPageNumberForOffset:(int64_t)offset usingPageCount:(int64_t)count
{
  v7 = [(BKViewController *)self layoutDirection]== 0;

  return [(BKPageNavigationViewController *)self _pageNumberForOffset:offset onGreaterSide:v7 usingPageCount:count];
}

- (int64_t)leftPageNumberForSpreadPageOffset:(int64_t)offset
{
  v5 = [(BKPageNavigationViewController *)self pageCount]- 1;

  return [(BKPageNavigationViewController *)self _leftPageNumberForOffset:offset usingPageCount:v5];
}

- (int64_t)rightPageNumberForSpreadPageOffset:(int64_t)offset
{
  v5 = [(BKPageNavigationViewController *)self pageCount]- 1;

  return [(BKPageNavigationViewController *)self _rightPageNumberForOffset:offset usingPageCount:v5];
}

- (int64_t)leftPageNumberForSinglePageOffset:(int64_t)offset
{
  pageCount = [(BKPageNavigationViewController *)self pageCount];

  return [(BKPageNavigationViewController *)self _leftPageNumberForOffset:offset usingPageCount:pageCount];
}

- (int64_t)rightPageNumberForSinglePageOffset:(int64_t)offset
{
  pageCount = [(BKPageNavigationViewController *)self pageCount];

  return [(BKPageNavigationViewController *)self _rightPageNumberForOffset:offset usingPageCount:pageCount];
}

@end