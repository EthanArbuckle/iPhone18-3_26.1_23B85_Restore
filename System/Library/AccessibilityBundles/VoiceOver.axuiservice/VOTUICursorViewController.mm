@interface VOTUICursorViewController
- (AXUIService)axuiService;
- (BOOL)cursorHidden;
- (CGRect)convertFrameToCursorSpace:(CGRect)a3;
- (CGRect)cursorFrame;
- (VOTUICursorViewController)initWithAXUIService:(id)a3;
- (void)_updateCursorFrameAnimated:(BOOL)a3;
- (void)_updateCursorPath;
- (void)dealloc;
- (void)setCursorHidden:(BOOL)a3;
- (void)setCursorPath:(CGPath *)a3;
- (void)viewDidLoad;
@end

@implementation VOTUICursorViewController

- (VOTUICursorViewController)initWithAXUIService:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VOTUICursorViewController;
  v5 = [(VOTUICursorViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_axuiService, v4);
  }

  return v6;
}

- (void)dealloc
{
  cursorPath = self->_cursorPath;
  if (cursorPath)
  {
    CFRelease(cursorPath);
    self->_cursorPath = 0;
  }

  [(VOTUICursorViewController *)self setCursorView:0];
  [(VOTUICursorViewController *)self setView:0];
  v4.receiver = self;
  v4.super_class = VOTUICursorViewController;
  [(VOTUICursorViewController *)&v4 dealloc];
}

- (void)_updateCursorFrameAnimated:(BOOL)a3
{
  v3 = a3;
  [(VOTUICursorViewController *)self convertFrameToCursorSpace:self->_cursorFrame.origin.x, self->_cursorFrame.origin.y, self->_cursorFrame.size.width, self->_cursorFrame.size.height];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(VOTUICursorViewController *)self cursorView];
  [v13 setCursorFrame:v3 animated:{v6, v8, v10, v12}];
}

- (CGRect)convertFrameToCursorSpace:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(VOTUICursorViewController *)self view];
  v9 = [v8 window];
  [v9 _convertRectFromSceneReferenceSpace:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [VOTUICursorView resizeFrameForDisplay:v11, v13, v15, v17];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(VOTUICursorViewController *)self cursorView];
  [v26 resizeFrameForWindow:{v19, v21, v23, v25}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = [(VOTUICursorViewController *)self view];
  [v35 convertRect:0 fromView:{v28, v30, v32, v34}];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = v37;
  v45 = v39;
  v46 = v41;
  v47 = v43;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
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

  [(VOTUICursorViewController *)self _updateCursorPath];
}

- (void)_updateCursorPath
{
  if (self->_cursorPath)
  {
    v3 = [UIBezierPath bezierPathWithCGPath:?];
    v4 = [(VOTUICursorViewController *)self view];
    v9 = UIAccessibilitySceneReferencePathToScreenPathWithView();

    v5 = [(VOTUICursorViewController *)self view];
    v6 = UIAccessibilityPathForAccessibilityPath();
    v7 = [v6 CGPath];

    v8 = [(VOTUICursorViewController *)self cursorView];
    [v8 setPath:v7];
  }

  else
  {
    v9 = [(VOTUICursorViewController *)self cursorView];
    [v9 setPath:0];
  }
}

- (BOOL)cursorHidden
{
  v2 = [(VOTUICursorViewController *)self view];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setCursorHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(VOTUICursorViewController *)self view];
  [v4 setHidden:v3];
}

- (void)viewDidLoad
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VOTUICursorViewController *)self setView:v7];

  v8 = [[VOTUICursorView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(VOTUICursorViewController *)self setCursorView:v8];

  v9 = [(VOTUICursorViewController *)self view];
  v10 = [(VOTUICursorViewController *)self cursorView];
  [v9 addSubview:v10];

  v11.receiver = self;
  v11.super_class = VOTUICursorViewController;
  [(VOTUICursorViewController *)&v11 viewDidLoad];
}

- (AXUIService)axuiService
{
  WeakRetained = objc_loadWeakRetained(&self->_axuiService);

  return WeakRetained;
}

- (CGRect)cursorFrame
{
  x = self->_cursorFrame.origin.x;
  y = self->_cursorFrame.origin.y;
  width = self->_cursorFrame.size.width;
  height = self->_cursorFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end