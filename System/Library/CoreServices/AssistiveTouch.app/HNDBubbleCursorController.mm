@interface HNDBubbleCursorController
- (HNDBubbleCursorController)init;
- (id)description;
- (void)hide:(BOOL)hide animate:(BOOL)animate;
- (void)updateLevel:(int)level animated:(BOOL)animated;
- (void)updatePath:(id)path frame:(CGRect)frame isSimpleRect:(BOOL)rect animated:(BOOL)animated;
- (void)updateTheme:(int)theme animated:(BOOL)animated;
- (void)updateTheme:(int)theme level:(int)level path:(id)path frame:(CGRect)frame isSimpleRect:(BOOL)rect animated:(BOOL)animated;
@end

@implementation HNDBubbleCursorController

- (HNDBubbleCursorController)init
{
  v18.receiver = self;
  v18.super_class = HNDBubbleCursorController;
  v2 = [(HNDBubbleCursorController *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(HNDForegroundBubbleCursorLayer);
    v4 = kCAFilterPlusD;
    v5 = [CAFilter filterWithType:kCAFilterPlusD];
    [(HNDForegroundBubbleCursorLayer *)v3 setCompositingFilter:v5];

    [(HNDBubbleCursorController *)v2 setCursorForegroundLayer:v3];
    v6 = objc_alloc_init(HNDBackgroundBubbleCursorLayer);

    v7 = [CAFilter filterWithType:v4];
    [(HNDBackgroundBubbleCursorLayer *)v6 setCompositingFilter:v7];

    [(HNDBubbleCursorController *)v2 setCursorBackgroundLayer:v6];
    v8 = objc_alloc_init(HNDBackgroundBubbleCursorLayer);

    v9 = [CAFilter filterWithType:kCAFilterPlusL];
    [(HNDBackgroundBubbleCursorLayer *)v8 setCompositingFilter:v9];

    [(HNDBubbleCursorController *)v2 setCursorCompositingLayer:v8];
    v10 = objc_alloc_init(CALayer);
    [(HNDBubbleCursorController *)v2 setCursorContainerLayer:v10];
    cursorContainerLayer = [(HNDBubbleCursorController *)v2 cursorContainerLayer];
    cursorForegroundLayer = [(HNDBubbleCursorController *)v2 cursorForegroundLayer];
    [cursorContainerLayer addSublayer:cursorForegroundLayer];

    cursorContainerLayer2 = [(HNDBubbleCursorController *)v2 cursorContainerLayer];
    cursorBackgroundLayer = [(HNDBubbleCursorController *)v2 cursorBackgroundLayer];
    [cursorContainerLayer2 addSublayer:cursorBackgroundLayer];

    cursorContainerLayer3 = [(HNDBubbleCursorController *)v2 cursorContainerLayer];
    cursorCompositingLayer = [(HNDBubbleCursorController *)v2 cursorCompositingLayer];
    [cursorContainerLayer3 addSublayer:cursorCompositingLayer];
  }

  return v2;
}

- (id)description
{
  cursorForegroundLayer = [(HNDBubbleCursorController *)self cursorForegroundLayer];
  cursorBackgroundLayer = [(HNDBubbleCursorController *)self cursorBackgroundLayer];
  v5 = [NSString stringWithFormat:@"HNDBubbleCursorController:<%p>. %@. %@", self, cursorForegroundLayer, cursorBackgroundLayer];

  return v5;
}

- (void)updateTheme:(int)theme level:(int)level path:(id)path frame:(CGRect)frame isSimpleRect:(BOOL)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  rectCopy = rect;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14 = *&level;
  v15 = *&theme;
  pathCopy = path;
  [(HNDBubbleCursorController *)self updateTheme:v15 animated:animatedCopy];
  [(HNDBubbleCursorController *)self updateLevel:v14 animated:animatedCopy];
  [(HNDBubbleCursorController *)self updatePath:pathCopy frame:rectCopy isSimpleRect:animatedCopy animated:x, y, width, height];
}

- (void)updateTheme:(int)theme animated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = *&theme;
  cursorBackgroundLayer = [(HNDBubbleCursorController *)self cursorBackgroundLayer];
  [cursorBackgroundLayer updateTheme:v5 animated:animatedCopy];

  cursorForegroundLayer = [(HNDBubbleCursorController *)self cursorForegroundLayer];
  [cursorForegroundLayer updateTheme:v5 animated:animatedCopy];

  cursorCompositingLayer = [(HNDBubbleCursorController *)self cursorCompositingLayer];
  [cursorCompositingLayer updateTheme:v5 animated:animatedCopy];
}

- (void)updateLevel:(int)level animated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = *&level;
  cursorBackgroundLayer = [(HNDBubbleCursorController *)self cursorBackgroundLayer];
  [cursorBackgroundLayer updateLevel:v5 animated:animatedCopy];

  cursorForegroundLayer = [(HNDBubbleCursorController *)self cursorForegroundLayer];
  [cursorForegroundLayer updateLevel:v5 animated:animatedCopy];

  cursorCompositingLayer = [(HNDBubbleCursorController *)self cursorCompositingLayer];
  [cursorCompositingLayer updateLevel:v5 animated:animatedCopy];
}

- (void)updatePath:(id)path frame:(CGRect)frame isSimpleRect:(BOOL)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  rectCopy = rect;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pathCopy = path;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (pathCopy)
  {
    cursorContainerLayer = [(HNDBubbleCursorController *)self cursorContainerLayer];
    [cursorContainerLayer setFrame:{x, y, width, height}];
  }

  +[CATransaction commit];
  v15 = CGPointZero.y;
  cursorBackgroundLayer = [(HNDBubbleCursorController *)self cursorBackgroundLayer];
  [cursorBackgroundLayer updatePath:pathCopy frame:rectCopy isSimpleRect:animatedCopy animated:{CGPointZero.x, v15, width, height}];

  cursorForegroundLayer = [(HNDBubbleCursorController *)self cursorForegroundLayer];
  [cursorForegroundLayer updatePath:pathCopy frame:rectCopy isSimpleRect:animatedCopy animated:{CGPointZero.x, v15, width, height}];

  cursorCompositingLayer = [(HNDBubbleCursorController *)self cursorCompositingLayer];
  [cursorCompositingLayer updatePath:pathCopy frame:rectCopy isSimpleRect:animatedCopy animated:{CGPointZero.x, v15, width, height}];
}

- (void)hide:(BOOL)hide animate:(BOOL)animate
{
  animateCopy = animate;
  hideCopy = hide;
  cursorForegroundLayer = [(HNDBubbleCursorController *)self cursorForegroundLayer];
  [cursorForegroundLayer ensureHidden:hideCopy animated:animateCopy];

  cursorBackgroundLayer = [(HNDBubbleCursorController *)self cursorBackgroundLayer];
  [cursorBackgroundLayer ensureHidden:hideCopy animated:animateCopy];

  cursorCompositingLayer = [(HNDBubbleCursorController *)self cursorCompositingLayer];
  [cursorCompositingLayer ensureHidden:hideCopy animated:animateCopy];
}

@end