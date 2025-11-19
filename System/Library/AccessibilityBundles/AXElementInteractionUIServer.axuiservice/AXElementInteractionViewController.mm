@interface AXElementInteractionViewController
- (void)_updateCursorPath;
- (void)loadView;
- (void)setCursorFrame:(CGRect)a3;
- (void)setCursorHidden:(BOOL)a3;
- (void)setCursorPath:(CGPath *)a3;
@end

@implementation AXElementInteractionViewController

- (void)setCursorFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(AXElementInteractionViewController *)self view];
  v9 = [v8 window];
  [v9 _convertRectFromSceneReferenceSpace:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(AXElementInteractionViewController *)self view];
  [v18 convertRect:0 fromView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [AXElementInteractionCursorView resizeFrameForDisplay:v20, v22, v24, v26];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [(AXElementInteractionViewController *)self cursorView];
  [v35 setCursorFrame:{v28, v30, v32, v34}];
}

- (void)setCursorPath:(CGPath *)a3
{
  cursorPath = self->_cursorPath;
  if (a3)
  {
    v5 = CFRetain(a3);
  }

  else
  {
    v5 = 0;
  }

  self->_cursorPath = v5;
  if (cursorPath)
  {
    CFRelease(cursorPath);
  }

  [(AXElementInteractionViewController *)self _updateCursorPath];
}

- (void)_updateCursorPath
{
  if (self->_cursorPath)
  {
    v3 = [UIBezierPath bezierPathWithCGPath:?];
    v8 = UIAccessibilitySceneReferencePathToScreenPath();

    v4 = [(AXElementInteractionViewController *)self view];
    v5 = UIAccessibilityPathForAccessibilityPath();
    v6 = [v5 CGPath];

    v7 = [(AXElementInteractionViewController *)self cursorView];
    [v7 setPath:v6];
  }
}

- (void)setCursorHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(AXElementInteractionViewController *)self view];
  [v4 setHidden:v3];
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = AXElementInteractionViewController;
  [(AXElementInteractionViewController *)&v12 loadView];
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXElementInteractionViewController *)self setView:v7];

  v8 = [[AXElementInteractionCursorView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(AXElementInteractionViewController *)self setCursorView:v8];

  v9 = [(AXElementInteractionViewController *)self view];
  v10 = [(AXElementInteractionViewController *)self cursorView];
  [v9 addSubview:v10];

  v11 = [(AXElementInteractionViewController *)self cursorView];
  NSLog(@"load view: %@", v11);
}

@end