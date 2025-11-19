@interface HNDScannerAutoscroller
- (BOOL)isAutoscrolling;
- (HNDScannerAutoscroller)init;
- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5;
- (void)dealloc;
- (void)decreaseAutoscrollSpeed;
- (void)increaseAutoscrollSpeed;
- (void)pause;
- (void)resume;
- (void)scrollToTop;
- (void)setScrollElement:(id)a3;
- (void)stop;
@end

@implementation HNDScannerAutoscroller

- (HNDScannerAutoscroller)init
{
  v7.receiver = self;
  v7.super_class = HNDScannerAutoscroller;
  v2 = [(HNDScannerAutoscroller *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_scrollDirection = 4;
    v4 = +[HNDAccessibilityManager sharedManager];
    [v4 addObserver:v3];

    v5 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[HNDAccessibilityManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HNDScannerAutoscroller;
  [(HNDScannerAutoscroller *)&v4 dealloc];
}

- (void)setScrollElement:(id)a3
{
  v5 = a3;
  scrollElement = self->_scrollElement;
  p_scrollElement = &self->_scrollElement;
  v8 = v5;
  if (([v5 isEqual:scrollElement] & 1) == 0)
  {
    objc_storeStrong(p_scrollElement, a3);
    [(SCATElementAutoscrolling *)*p_scrollElement setScatAutoscrollTarget:*p_scrollElement];
  }
}

- (BOOL)isAutoscrolling
{
  v2 = [(HNDScannerAutoscroller *)self scrollElement];
  v3 = [v2 scatIsAutoscrolling];

  return v3;
}

- (void)resume
{
  v3 = [(HNDScannerAutoscroller *)self scrollElement];
  [v3 scatAutoscrollInDirection:{-[HNDScannerAutoscroller scrollDirection](self, "scrollDirection")}];
}

- (void)pause
{
  v2 = [(HNDScannerAutoscroller *)self scrollElement];
  [v2 scatPauseAutoscrolling];
}

- (void)stop
{
  v3 = [(HNDScannerAutoscroller *)self scrollElement];
  [v3 scatPauseAutoscrolling];

  [(HNDScannerAutoscroller *)self setScrollElement:0];
}

- (void)increaseAutoscrollSpeed
{
  v2 = [(HNDScannerAutoscroller *)self scrollElement];
  [v2 scatIncreaseAutoscrollSpeed];
}

- (void)decreaseAutoscrollSpeed
{
  v2 = [(HNDScannerAutoscroller *)self scrollElement];
  [v2 scatDecreaseAutoscrollSpeed];
}

- (void)scrollToTop
{
  v2 = [(HNDScannerAutoscroller *)self scrollElement];
  [v2 scatScrollToTop];
}

- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5
{
  if (a4 <= 6 && ((1 << a4) & 0x54) != 0)
  {
    [(HNDScannerAutoscroller *)self stop];
  }
}

@end