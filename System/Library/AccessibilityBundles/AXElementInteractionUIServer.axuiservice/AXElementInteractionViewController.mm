@interface AXElementInteractionViewController
- (void)_updateCursorPath;
- (void)loadView;
- (void)setCursorFrame:(CGRect)frame;
- (void)setCursorHidden:(BOOL)hidden;
- (void)setCursorPath:(CGPath *)path;
@end

@implementation AXElementInteractionViewController

- (void)setCursorFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  view = [(AXElementInteractionViewController *)self view];
  window = [view window];
  [window _convertRectFromSceneReferenceSpace:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  view2 = [(AXElementInteractionViewController *)self view];
  [view2 convertRect:0 fromView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [AXElementInteractionCursorView resizeFrameForDisplay:v20, v22, v24, v26];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  cursorView = [(AXElementInteractionViewController *)self cursorView];
  [cursorView setCursorFrame:{v28, v30, v32, v34}];
}

- (void)setCursorPath:(CGPath *)path
{
  cursorPath = self->_cursorPath;
  if (path)
  {
    v5 = CFRetain(path);
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

    view = [(AXElementInteractionViewController *)self view];
    v5 = UIAccessibilityPathForAccessibilityPath();
    cGPath = [v5 CGPath];

    cursorView = [(AXElementInteractionViewController *)self cursorView];
    [cursorView setPath:cGPath];
  }
}

- (void)setCursorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  view = [(AXElementInteractionViewController *)self view];
  [view setHidden:hiddenCopy];
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

  height = [[AXElementInteractionCursorView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(AXElementInteractionViewController *)self setCursorView:height];

  view = [(AXElementInteractionViewController *)self view];
  cursorView = [(AXElementInteractionViewController *)self cursorView];
  [view addSubview:cursorView];

  cursorView2 = [(AXElementInteractionViewController *)self cursorView];
  NSLog(@"load view: %@", cursorView2);
}

@end