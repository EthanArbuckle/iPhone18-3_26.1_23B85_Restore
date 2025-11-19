@interface BKPageNavigationViewController
- (BKPageNavigationDelegate)delegate;
- (BKPageNavigationViewController)init;
- (UIPageViewControllerDataSource)dataSource;
- (_NSRange)visiblePages;
- (id)_imageViewForPageContentImage:(id)a3;
- (id)viewForLiveResize;
- (int64_t)_leftPageNumberForOffset:(int64_t)a3 usingPageCount:(int64_t)a4;
- (int64_t)_pageNumberForOffset:(int64_t)a3 onGreaterSide:(BOOL)a4 usingPageCount:(int64_t)a5;
- (int64_t)_rightPageNumberForOffset:(int64_t)a3 usingPageCount:(int64_t)a4;
- (int64_t)leftPageNumberForSinglePageOffset:(int64_t)a3;
- (int64_t)leftPageNumberForSpreadPageOffset:(int64_t)a3;
- (int64_t)rightPageNumberForSinglePageOffset:(int64_t)a3;
- (int64_t)rightPageNumberForSpreadPageOffset:(int64_t)a3;
- (void)adjustToNewSize:(CGSize)a3;
- (void)contentViewImage:(BOOL)a3 afterScreenUpdates:(BOOL)a4 completion:(id)a5;
- (void)contentViewImage:(BOOL)a3 completion:(id)a4;
- (void)turnToNextPageWithDelta:(unint64_t)a3;
- (void)turnToPreviousPageWithDelta:(unint64_t)a3;
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

- (void)contentViewImage:(BOOL)a3 completion:(id)a4
{
  v5 = objc_retainBlock(a4);
  if (v5)
  {
    v8 = v5;
    v6 = [(BKPageNavigationViewController *)self contentView];
    v7 = [v6 im_snapshotInContext];
    v8[2](v8, v7);

    v5 = v8;
  }
}

- (void)contentViewImage:(BOOL)a3 afterScreenUpdates:(BOOL)a4 completion:(id)a5
{
  v6 = objc_retainBlock(a5);
  if (v6)
  {
    v9 = v6;
    v7 = [(BKPageNavigationViewController *)self contentView];
    v8 = [v7 im_snapshotInContext];
    v9[2](v9, v8);

    v6 = v9;
  }
}

- (void)turnToNextPageWithDelta:(unint64_t)a3
{
  v5 = [(BKViewController *)self layoutDirection];
  v6 = [(BKPageNavigationViewController *)self pageOffset];
  if (v5 == 1)
  {
    v7 = -a3;
  }

  else
  {
    v7 = a3;
  }

  [(BKPageNavigationViewController *)self turnToPageNumber:v6 + v7 + 1 animated:1];
}

- (void)turnToPreviousPageWithDelta:(unint64_t)a3
{
  v5 = [(BKViewController *)self layoutDirection];
  v6 = [(BKPageNavigationViewController *)self pageOffset];
  if (v5 == 1)
  {
    v7 = a3;
  }

  else
  {
    v7 = -a3;
  }

  [(BKPageNavigationViewController *)self turnToPageNumber:v6 + v7 + 1 animated:1];
}

- (void)adjustToNewSize:(CGSize)a3
{
  v3 = [NSString stringWithFormat:@"%@: %s", a3.width, a3.height, @"Do not call method", "[BKPageNavigationViewController adjustToNewSize:]"];
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

- (id)_imageViewForPageContentImage:(id)a3
{
  v3 = a3;
  v4 = [[UIImageView alloc] initWithImage:v3];

  [v4 setContentMode:1];

  return v4;
}

- (int64_t)_pageNumberForOffset:(int64_t)a3 onGreaterSide:(BOOL)a4 usingPageCount:(int64_t)a5
{
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = (a3 & 1) + a3;
  if (a3 > a5)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a3 >= 1)
  {
    v5 = v6;
  }

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 1;
  if (a3)
  {
    v8 = 2;
  }

  v9 = v8 + a3;
  if (a3 > a5)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a3 >= 0)
  {
    v7 = v9;
  }

  if (a4)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_leftPageNumberForOffset:(int64_t)a3 usingPageCount:(int64_t)a4
{
  v7 = [(BKViewController *)self layoutDirection]== &dword_0 + 1;

  return [(BKPageNavigationViewController *)self _pageNumberForOffset:a3 onGreaterSide:v7 usingPageCount:a4];
}

- (int64_t)_rightPageNumberForOffset:(int64_t)a3 usingPageCount:(int64_t)a4
{
  v7 = [(BKViewController *)self layoutDirection]== 0;

  return [(BKPageNavigationViewController *)self _pageNumberForOffset:a3 onGreaterSide:v7 usingPageCount:a4];
}

- (int64_t)leftPageNumberForSpreadPageOffset:(int64_t)a3
{
  v5 = [(BKPageNavigationViewController *)self pageCount]- 1;

  return [(BKPageNavigationViewController *)self _leftPageNumberForOffset:a3 usingPageCount:v5];
}

- (int64_t)rightPageNumberForSpreadPageOffset:(int64_t)a3
{
  v5 = [(BKPageNavigationViewController *)self pageCount]- 1;

  return [(BKPageNavigationViewController *)self _rightPageNumberForOffset:a3 usingPageCount:v5];
}

- (int64_t)leftPageNumberForSinglePageOffset:(int64_t)a3
{
  v5 = [(BKPageNavigationViewController *)self pageCount];

  return [(BKPageNavigationViewController *)self _leftPageNumberForOffset:a3 usingPageCount:v5];
}

- (int64_t)rightPageNumberForSinglePageOffset:(int64_t)a3
{
  v5 = [(BKPageNavigationViewController *)self pageCount];

  return [(BKPageNavigationViewController *)self _rightPageNumberForOffset:a3 usingPageCount:v5];
}

@end