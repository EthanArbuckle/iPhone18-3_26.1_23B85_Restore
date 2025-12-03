@interface BEPageViewController
- (BOOL)_shouldBeginNavigationInDirection:(int64_t *)direction inResponseToPanGestureRecognizer:(id)recognizer;
- (BOOL)_shouldNavigateInDirection:(int64_t *)direction inResponseToTapGestureRecognizer:(id)recognizer;
- (BOOL)_shouldNavigateInDirection:(int64_t *)direction inResponseToVelocity:(double *)velocity ofGestureRecognizedByPanGestureRecognizer:(id)recognizer;
@end

@implementation BEPageViewController

- (BOOL)_shouldNavigateInDirection:(int64_t *)direction inResponseToVelocity:(double *)velocity ofGestureRecognizedByPanGestureRecognizer:(id)recognizer
{
  v6.receiver = self;
  v6.super_class = BEPageViewController;
  return [(BEPageViewController *)&v6 _shouldNavigateInDirection:direction inResponseToVelocity:velocity ofGestureRecognizedByPanGestureRecognizer:recognizer];
}

- (BOOL)_shouldNavigateInDirection:(int64_t *)direction inResponseToTapGestureRecognizer:(id)recognizer
{
  v9.receiver = self;
  v9.super_class = BEPageViewController;
  v6 = [(BEPageViewController *)&v9 _shouldNavigateInDirection:direction inResponseToTapGestureRecognizer:recognizer];
  if (v6)
  {
    v7 = [(BEPageViewController *)self validateTapDirection:*direction];
    *direction = v7;
    LOBYTE(v6) = [(BEPageViewController *)self canNavigateInDirection:v7];
  }

  return v6;
}

- (BOOL)_shouldBeginNavigationInDirection:(int64_t *)direction inResponseToPanGestureRecognizer:(id)recognizer
{
  v8.receiver = self;
  v8.super_class = BEPageViewController;
  v6 = [(BEPageViewController *)&v8 _shouldBeginNavigationInDirection:direction inResponseToPanGestureRecognizer:recognizer];
  if (v6)
  {
    LOBYTE(v6) = [(BEPageViewController *)self canNavigateInDirection:*direction];
  }

  return v6;
}

@end