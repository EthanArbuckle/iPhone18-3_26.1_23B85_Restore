@interface HNDBubbleCursorController
- (HNDBubbleCursorController)init;
- (id)description;
- (void)hide:(BOOL)a3 animate:(BOOL)a4;
- (void)updateLevel:(int)a3 animated:(BOOL)a4;
- (void)updatePath:(id)a3 frame:(CGRect)a4 isSimpleRect:(BOOL)a5 animated:(BOOL)a6;
- (void)updateTheme:(int)a3 animated:(BOOL)a4;
- (void)updateTheme:(int)a3 level:(int)a4 path:(id)a5 frame:(CGRect)a6 isSimpleRect:(BOOL)a7 animated:(BOOL)a8;
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
    v11 = [(HNDBubbleCursorController *)v2 cursorContainerLayer];
    v12 = [(HNDBubbleCursorController *)v2 cursorForegroundLayer];
    [v11 addSublayer:v12];

    v13 = [(HNDBubbleCursorController *)v2 cursorContainerLayer];
    v14 = [(HNDBubbleCursorController *)v2 cursorBackgroundLayer];
    [v13 addSublayer:v14];

    v15 = [(HNDBubbleCursorController *)v2 cursorContainerLayer];
    v16 = [(HNDBubbleCursorController *)v2 cursorCompositingLayer];
    [v15 addSublayer:v16];
  }

  return v2;
}

- (id)description
{
  v3 = [(HNDBubbleCursorController *)self cursorForegroundLayer];
  v4 = [(HNDBubbleCursorController *)self cursorBackgroundLayer];
  v5 = [NSString stringWithFormat:@"HNDBubbleCursorController:<%p>. %@. %@", self, v3, v4];

  return v5;
}

- (void)updateTheme:(int)a3 level:(int)a4 path:(id)a5 frame:(CGRect)a6 isSimpleRect:(BOOL)a7 animated:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = *&a4;
  v15 = *&a3;
  v17 = a5;
  [(HNDBubbleCursorController *)self updateTheme:v15 animated:v8];
  [(HNDBubbleCursorController *)self updateLevel:v14 animated:v8];
  [(HNDBubbleCursorController *)self updatePath:v17 frame:v9 isSimpleRect:v8 animated:x, y, width, height];
}

- (void)updateTheme:(int)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = [(HNDBubbleCursorController *)self cursorBackgroundLayer];
  [v7 updateTheme:v5 animated:v4];

  v8 = [(HNDBubbleCursorController *)self cursorForegroundLayer];
  [v8 updateTheme:v5 animated:v4];

  v9 = [(HNDBubbleCursorController *)self cursorCompositingLayer];
  [v9 updateTheme:v5 animated:v4];
}

- (void)updateLevel:(int)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = [(HNDBubbleCursorController *)self cursorBackgroundLayer];
  [v7 updateLevel:v5 animated:v4];

  v8 = [(HNDBubbleCursorController *)self cursorForegroundLayer];
  [v8 updateLevel:v5 animated:v4];

  v9 = [(HNDBubbleCursorController *)self cursorCompositingLayer];
  [v9 updateLevel:v5 animated:v4];
}

- (void)updatePath:(id)a3 frame:(CGRect)a4 isSimpleRect:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (v13)
  {
    v14 = [(HNDBubbleCursorController *)self cursorContainerLayer];
    [v14 setFrame:{x, y, width, height}];
  }

  +[CATransaction commit];
  v15 = CGPointZero.y;
  v16 = [(HNDBubbleCursorController *)self cursorBackgroundLayer];
  [v16 updatePath:v13 frame:v7 isSimpleRect:v6 animated:{CGPointZero.x, v15, width, height}];

  v17 = [(HNDBubbleCursorController *)self cursorForegroundLayer];
  [v17 updatePath:v13 frame:v7 isSimpleRect:v6 animated:{CGPointZero.x, v15, width, height}];

  v18 = [(HNDBubbleCursorController *)self cursorCompositingLayer];
  [v18 updatePath:v13 frame:v7 isSimpleRect:v6 animated:{CGPointZero.x, v15, width, height}];
}

- (void)hide:(BOOL)a3 animate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(HNDBubbleCursorController *)self cursorForegroundLayer];
  [v7 ensureHidden:v5 animated:v4];

  v8 = [(HNDBubbleCursorController *)self cursorBackgroundLayer];
  [v8 ensureHidden:v5 animated:v4];

  v9 = [(HNDBubbleCursorController *)self cursorCompositingLayer];
  [v9 ensureHidden:v5 animated:v4];
}

@end