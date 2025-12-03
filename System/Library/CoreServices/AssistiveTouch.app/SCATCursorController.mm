@interface SCATCursorController
- (SCATCursorController)init;
- (SCATCursorControllerDelegate)delegate;
- (id)description;
- (void)_createSignalQualityLayerIfNecessary;
- (void)didUpdateSignalQuality:(int64_t)quality;
- (void)hide:(BOOL)hide animate:(BOOL)animate;
- (void)updateLevel:(int64_t)level animated:(BOOL)animated options:(int)options;
- (void)updatePath:(id)path frame:(CGRect)frame cornerRadius:(double)radius isSimpleRect:(BOOL)rect animated:(BOOL)animated options:(int)options;
- (void)updateTheme:(int64_t)theme animated:(BOOL)animated options:(int)options;
- (void)updateTheme:(int64_t)theme level:(int64_t)level path:(id)path frame:(CGRect)frame cornerRadius:(double)radius isSimpleRect:(BOOL)rect animated:(BOOL)animated options:(int)self0;
@end

@implementation SCATCursorController

- (SCATCursorController)init
{
  v18.receiver = self;
  v18.super_class = SCATCursorController;
  v2 = [(SCATCursorController *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(SCATForegroundCursorLayer);
    [(SCATCursorLayer *)v3 setIsDark:1];
    v4 = kCAFilterPlusD;
    v5 = [CAFilter filterWithType:kCAFilterPlusD];
    [(SCATForegroundCursorLayer *)v3 setCompositingFilter:v5];

    [(SCATCursorController *)v2 setCursorForegroundLayer:v3];
    v6 = objc_alloc_init(SCATBackgroundCursorLayer);

    [(SCATCursorLayer *)v6 setIsDark:1];
    v7 = [CAFilter filterWithType:v4];
    [(SCATBackgroundCursorLayer *)v6 setCompositingFilter:v7];

    [(SCATCursorController *)v2 setCursorBackgroundLayer:v6];
    v8 = objc_alloc_init(SCATBackgroundCursorLayer);

    v9 = [CAFilter filterWithType:kCAFilterPlusL];
    [(SCATBackgroundCursorLayer *)v8 setCompositingFilter:v9];

    [(SCATCursorController *)v2 setCursorCompositingLayer:v8];
    v10 = objc_alloc_init(CALayer);
    [v10 setAllowsGroupBlending:0];
    [(SCATCursorController *)v2 setCursorContainerLayer:v10];
    cursorContainerLayer = [(SCATCursorController *)v2 cursorContainerLayer];
    cursorForegroundLayer = [(SCATCursorController *)v2 cursorForegroundLayer];
    [cursorContainerLayer addSublayer:cursorForegroundLayer];

    cursorContainerLayer2 = [(SCATCursorController *)v2 cursorContainerLayer];
    cursorBackgroundLayer = [(SCATCursorController *)v2 cursorBackgroundLayer];
    [cursorContainerLayer2 addSublayer:cursorBackgroundLayer];

    cursorContainerLayer3 = [(SCATCursorController *)v2 cursorContainerLayer];
    cursorCompositingLayer = [(SCATCursorController *)v2 cursorCompositingLayer];
    [cursorContainerLayer3 addSublayer:cursorCompositingLayer];
  }

  return v2;
}

- (id)description
{
  cursorForegroundLayer = [(SCATCursorController *)self cursorForegroundLayer];
  cursorBackgroundLayer = [(SCATCursorController *)self cursorBackgroundLayer];
  v5 = [NSString stringWithFormat:@"SCATCursorController:<%p>. %@. %@", self, cursorForegroundLayer, cursorBackgroundLayer];

  return v5;
}

- (void)updateTheme:(int64_t)theme level:(int64_t)level path:(id)path frame:(CGRect)frame cornerRadius:(double)radius isSimpleRect:(BOOL)rect animated:(BOOL)animated options:(int)self0
{
  v10 = *&options;
  animatedCopy = animated;
  rectCopy = rect;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pathCopy = path;
  [(SCATCursorController *)self updateTheme:theme animated:animatedCopy options:v10];
  [(SCATCursorController *)self updateLevel:level animated:animatedCopy options:v10];
  [(SCATCursorController *)self updatePath:pathCopy frame:rectCopy cornerRadius:animatedCopy isSimpleRect:v10 animated:x options:y, width, height, radius];
}

- (void)updateTheme:(int64_t)theme animated:(BOOL)animated options:(int)options
{
  v5 = *&options;
  animatedCopy = animated;
  cursorBackgroundLayer = [(SCATCursorController *)self cursorBackgroundLayer];
  [cursorBackgroundLayer updateTheme:theme animated:animatedCopy options:v5];

  cursorForegroundLayer = [(SCATCursorController *)self cursorForegroundLayer];
  [cursorForegroundLayer updateTheme:theme animated:animatedCopy options:v5];

  cursorCompositingLayer = [(SCATCursorController *)self cursorCompositingLayer];
  [cursorCompositingLayer updateTheme:theme animated:animatedCopy options:v5];
}

- (void)updateLevel:(int64_t)level animated:(BOOL)animated options:(int)options
{
  v5 = *&options;
  animatedCopy = animated;
  cursorBackgroundLayer = [(SCATCursorController *)self cursorBackgroundLayer];
  [cursorBackgroundLayer updateLevel:level animated:animatedCopy options:v5];

  cursorForegroundLayer = [(SCATCursorController *)self cursorForegroundLayer];
  [cursorForegroundLayer updateLevel:level animated:animatedCopy options:v5];

  cursorCompositingLayer = [(SCATCursorController *)self cursorCompositingLayer];
  [cursorCompositingLayer updateLevel:level animated:animatedCopy options:v5];
}

- (void)updatePath:(id)path frame:(CGRect)frame cornerRadius:(double)radius isSimpleRect:(BOOL)rect animated:(BOOL)animated options:(int)options
{
  v8 = *&options;
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
    cursorContainerLayer = [(SCATCursorController *)self cursorContainerLayer];
    [cursorContainerLayer setFrame:{x, y, width, height}];
  }

  +[CATransaction commit];
  v18 = CGPointZero.y;
  cursorBackgroundLayer = [(SCATCursorController *)self cursorBackgroundLayer];
  [cursorBackgroundLayer updatePath:pathCopy frame:rectCopy cornerRadius:animatedCopy isSimpleRect:v8 animated:CGPointZero.x options:{v18, width, height, radius}];

  cursorForegroundLayer = [(SCATCursorController *)self cursorForegroundLayer];
  [cursorForegroundLayer updatePath:pathCopy frame:rectCopy cornerRadius:animatedCopy isSimpleRect:v8 animated:CGPointZero.x options:{v18, width, height, radius}];

  cursorCompositingLayer = [(SCATCursorController *)self cursorCompositingLayer];
  [cursorCompositingLayer updatePath:pathCopy frame:rectCopy cornerRadius:animatedCopy isSimpleRect:v8 animated:CGPointZero.x options:{v18, width, height, radius}];

  if ([(SCATCursorController *)self isFocusedItemCursorController])
  {
    [(SCATCursorController *)self _createSignalQualityLayerIfNecessary];
    tadmorSignalQualityLayer = [(SCATCursorController *)self tadmorSignalQualityLayer];
    [tadmorSignalQualityLayer updatePath:pathCopy frame:rectCopy isSimpleRect:{CGPointZero.x, v18, width, height}];
  }
}

- (void)hide:(BOOL)hide animate:(BOOL)animate
{
  animateCopy = animate;
  hideCopy = hide;
  cursorForegroundLayer = [(SCATCursorController *)self cursorForegroundLayer];
  [cursorForegroundLayer ensureHidden:hideCopy animated:animateCopy];

  cursorBackgroundLayer = [(SCATCursorController *)self cursorBackgroundLayer];
  [cursorBackgroundLayer ensureHidden:hideCopy animated:animateCopy];

  cursorCompositingLayer = [(SCATCursorController *)self cursorCompositingLayer];
  [cursorCompositingLayer ensureHidden:hideCopy animated:animateCopy];
}

- (void)_createSignalQualityLayerIfNecessary
{
  if ([(SCATCursorController *)self isFocusedItemCursorController])
  {
    tadmorSignalQualityLayer = [(SCATCursorController *)self tadmorSignalQualityLayer];

    if (!tadmorSignalQualityLayer)
    {
      v4 = objc_opt_new();
      [(SCATCursorController *)self setTadmorSignalQualityLayer:v4];

      cursorContainerLayer = [(SCATCursorController *)self cursorContainerLayer];
      tadmorSignalQualityLayer2 = [(SCATCursorController *)self tadmorSignalQualityLayer];
      [cursorContainerLayer addSublayer:tadmorSignalQualityLayer2];
    }
  }
}

- (void)didUpdateSignalQuality:(int64_t)quality
{
  if ([(SCATCursorController *)self isFocusedItemCursorController])
  {
    tadmorSignalQualityLayer = [(SCATCursorController *)self tadmorSignalQualityLayer];
    [tadmorSignalQualityLayer didUpdateSignalQuality:quality];
  }
}

- (SCATCursorControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end