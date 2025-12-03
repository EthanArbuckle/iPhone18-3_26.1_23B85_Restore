@interface HNDScannerAutoscroller
- (BOOL)isAutoscrolling;
- (HNDScannerAutoscroller)init;
- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data;
- (void)dealloc;
- (void)decreaseAutoscrollSpeed;
- (void)increaseAutoscrollSpeed;
- (void)pause;
- (void)resume;
- (void)scrollToTop;
- (void)setScrollElement:(id)element;
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

- (void)setScrollElement:(id)element
{
  elementCopy = element;
  scrollElement = self->_scrollElement;
  p_scrollElement = &self->_scrollElement;
  v8 = elementCopy;
  if (([elementCopy isEqual:scrollElement] & 1) == 0)
  {
    objc_storeStrong(p_scrollElement, element);
    [(SCATElementAutoscrolling *)*p_scrollElement setScatAutoscrollTarget:*p_scrollElement];
  }
}

- (BOOL)isAutoscrolling
{
  scrollElement = [(HNDScannerAutoscroller *)self scrollElement];
  scatIsAutoscrolling = [scrollElement scatIsAutoscrolling];

  return scatIsAutoscrolling;
}

- (void)resume
{
  scrollElement = [(HNDScannerAutoscroller *)self scrollElement];
  [scrollElement scatAutoscrollInDirection:{-[HNDScannerAutoscroller scrollDirection](self, "scrollDirection")}];
}

- (void)pause
{
  scrollElement = [(HNDScannerAutoscroller *)self scrollElement];
  [scrollElement scatPauseAutoscrolling];
}

- (void)stop
{
  scrollElement = [(HNDScannerAutoscroller *)self scrollElement];
  [scrollElement scatPauseAutoscrolling];

  [(HNDScannerAutoscroller *)self setScrollElement:0];
}

- (void)increaseAutoscrollSpeed
{
  scrollElement = [(HNDScannerAutoscroller *)self scrollElement];
  [scrollElement scatIncreaseAutoscrollSpeed];
}

- (void)decreaseAutoscrollSpeed
{
  scrollElement = [(HNDScannerAutoscroller *)self scrollElement];
  [scrollElement scatDecreaseAutoscrollSpeed];
}

- (void)scrollToTop
{
  scrollElement = [(HNDScannerAutoscroller *)self scrollElement];
  [scrollElement scatScrollToTop];
}

- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data
{
  if (event <= 6 && ((1 << event) & 0x54) != 0)
  {
    [(HNDScannerAutoscroller *)self stop];
  }
}

@end