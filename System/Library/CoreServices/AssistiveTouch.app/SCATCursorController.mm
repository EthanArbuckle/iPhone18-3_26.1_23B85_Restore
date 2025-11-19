@interface SCATCursorController
- (SCATCursorController)init;
- (SCATCursorControllerDelegate)delegate;
- (id)description;
- (void)_createSignalQualityLayerIfNecessary;
- (void)didUpdateSignalQuality:(int64_t)a3;
- (void)hide:(BOOL)a3 animate:(BOOL)a4;
- (void)updateLevel:(int64_t)a3 animated:(BOOL)a4 options:(int)a5;
- (void)updatePath:(id)a3 frame:(CGRect)a4 cornerRadius:(double)a5 isSimpleRect:(BOOL)a6 animated:(BOOL)a7 options:(int)a8;
- (void)updateTheme:(int64_t)a3 animated:(BOOL)a4 options:(int)a5;
- (void)updateTheme:(int64_t)a3 level:(int64_t)a4 path:(id)a5 frame:(CGRect)a6 cornerRadius:(double)a7 isSimpleRect:(BOOL)a8 animated:(BOOL)a9 options:(int)a10;
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
    v11 = [(SCATCursorController *)v2 cursorContainerLayer];
    v12 = [(SCATCursorController *)v2 cursorForegroundLayer];
    [v11 addSublayer:v12];

    v13 = [(SCATCursorController *)v2 cursorContainerLayer];
    v14 = [(SCATCursorController *)v2 cursorBackgroundLayer];
    [v13 addSublayer:v14];

    v15 = [(SCATCursorController *)v2 cursorContainerLayer];
    v16 = [(SCATCursorController *)v2 cursorCompositingLayer];
    [v15 addSublayer:v16];
  }

  return v2;
}

- (id)description
{
  v3 = [(SCATCursorController *)self cursorForegroundLayer];
  v4 = [(SCATCursorController *)self cursorBackgroundLayer];
  v5 = [NSString stringWithFormat:@"SCATCursorController:<%p>. %@. %@", self, v3, v4];

  return v5;
}

- (void)updateTheme:(int64_t)a3 level:(int64_t)a4 path:(id)a5 frame:(CGRect)a6 cornerRadius:(double)a7 isSimpleRect:(BOOL)a8 animated:(BOOL)a9 options:(int)a10
{
  v10 = *&a10;
  v11 = a9;
  v12 = a8;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v21 = a5;
  [(SCATCursorController *)self updateTheme:a3 animated:v11 options:v10];
  [(SCATCursorController *)self updateLevel:a4 animated:v11 options:v10];
  [(SCATCursorController *)self updatePath:v21 frame:v12 cornerRadius:v11 isSimpleRect:v10 animated:x options:y, width, height, a7];
}

- (void)updateTheme:(int64_t)a3 animated:(BOOL)a4 options:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v9 = [(SCATCursorController *)self cursorBackgroundLayer];
  [v9 updateTheme:a3 animated:v6 options:v5];

  v10 = [(SCATCursorController *)self cursorForegroundLayer];
  [v10 updateTheme:a3 animated:v6 options:v5];

  v11 = [(SCATCursorController *)self cursorCompositingLayer];
  [v11 updateTheme:a3 animated:v6 options:v5];
}

- (void)updateLevel:(int64_t)a3 animated:(BOOL)a4 options:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v9 = [(SCATCursorController *)self cursorBackgroundLayer];
  [v9 updateLevel:a3 animated:v6 options:v5];

  v10 = [(SCATCursorController *)self cursorForegroundLayer];
  [v10 updateLevel:a3 animated:v6 options:v5];

  v11 = [(SCATCursorController *)self cursorCompositingLayer];
  [v11 updateLevel:a3 animated:v6 options:v5];
}

- (void)updatePath:(id)a3 frame:(CGRect)a4 cornerRadius:(double)a5 isSimpleRect:(BOOL)a6 animated:(BOOL)a7 options:(int)a8
{
  v8 = *&a8;
  v9 = a7;
  v10 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v23 = a3;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (v23)
  {
    v17 = [(SCATCursorController *)self cursorContainerLayer];
    [v17 setFrame:{x, y, width, height}];
  }

  +[CATransaction commit];
  v18 = CGPointZero.y;
  v19 = [(SCATCursorController *)self cursorBackgroundLayer];
  [v19 updatePath:v23 frame:v10 cornerRadius:v9 isSimpleRect:v8 animated:CGPointZero.x options:{v18, width, height, a5}];

  v20 = [(SCATCursorController *)self cursorForegroundLayer];
  [v20 updatePath:v23 frame:v10 cornerRadius:v9 isSimpleRect:v8 animated:CGPointZero.x options:{v18, width, height, a5}];

  v21 = [(SCATCursorController *)self cursorCompositingLayer];
  [v21 updatePath:v23 frame:v10 cornerRadius:v9 isSimpleRect:v8 animated:CGPointZero.x options:{v18, width, height, a5}];

  if ([(SCATCursorController *)self isFocusedItemCursorController])
  {
    [(SCATCursorController *)self _createSignalQualityLayerIfNecessary];
    v22 = [(SCATCursorController *)self tadmorSignalQualityLayer];
    [v22 updatePath:v23 frame:v10 isSimpleRect:{CGPointZero.x, v18, width, height}];
  }
}

- (void)hide:(BOOL)a3 animate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(SCATCursorController *)self cursorForegroundLayer];
  [v7 ensureHidden:v5 animated:v4];

  v8 = [(SCATCursorController *)self cursorBackgroundLayer];
  [v8 ensureHidden:v5 animated:v4];

  v9 = [(SCATCursorController *)self cursorCompositingLayer];
  [v9 ensureHidden:v5 animated:v4];
}

- (void)_createSignalQualityLayerIfNecessary
{
  if ([(SCATCursorController *)self isFocusedItemCursorController])
  {
    v3 = [(SCATCursorController *)self tadmorSignalQualityLayer];

    if (!v3)
    {
      v4 = objc_opt_new();
      [(SCATCursorController *)self setTadmorSignalQualityLayer:v4];

      v6 = [(SCATCursorController *)self cursorContainerLayer];
      v5 = [(SCATCursorController *)self tadmorSignalQualityLayer];
      [v6 addSublayer:v5];
    }
  }
}

- (void)didUpdateSignalQuality:(int64_t)a3
{
  if ([(SCATCursorController *)self isFocusedItemCursorController])
  {
    v5 = [(SCATCursorController *)self tadmorSignalQualityLayer];
    [v5 didUpdateSignalQuality:a3];
  }
}

- (SCATCursorControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end