@interface BEPageViewController
- (BOOL)_shouldBeginNavigationInDirection:(int64_t *)a3 inResponseToPanGestureRecognizer:(id)a4;
- (BOOL)_shouldNavigateInDirection:(int64_t *)a3 inResponseToTapGestureRecognizer:(id)a4;
- (BOOL)_shouldNavigateInDirection:(int64_t *)a3 inResponseToVelocity:(double *)a4 ofGestureRecognizedByPanGestureRecognizer:(id)a5;
@end

@implementation BEPageViewController

- (BOOL)_shouldNavigateInDirection:(int64_t *)a3 inResponseToVelocity:(double *)a4 ofGestureRecognizedByPanGestureRecognizer:(id)a5
{
  v6.receiver = self;
  v6.super_class = BEPageViewController;
  return [(BEPageViewController *)&v6 _shouldNavigateInDirection:a3 inResponseToVelocity:a4 ofGestureRecognizedByPanGestureRecognizer:a5];
}

- (BOOL)_shouldNavigateInDirection:(int64_t *)a3 inResponseToTapGestureRecognizer:(id)a4
{
  v9.receiver = self;
  v9.super_class = BEPageViewController;
  v6 = [(BEPageViewController *)&v9 _shouldNavigateInDirection:a3 inResponseToTapGestureRecognizer:a4];
  if (v6)
  {
    v7 = [(BEPageViewController *)self validateTapDirection:*a3];
    *a3 = v7;
    LOBYTE(v6) = [(BEPageViewController *)self canNavigateInDirection:v7];
  }

  return v6;
}

- (BOOL)_shouldBeginNavigationInDirection:(int64_t *)a3 inResponseToPanGestureRecognizer:(id)a4
{
  v8.receiver = self;
  v8.super_class = BEPageViewController;
  v6 = [(BEPageViewController *)&v8 _shouldBeginNavigationInDirection:a3 inResponseToPanGestureRecognizer:a4];
  if (v6)
  {
    LOBYTE(v6) = [(BEPageViewController *)self canNavigateInDirection:*a3];
  }

  return v6;
}

@end