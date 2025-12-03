@interface VOTUICursorViewController
- (AXUIService)axuiService;
- (BOOL)cursorHidden;
- (CGRect)convertFrameToCursorSpace:(CGRect)space;
- (CGRect)cursorFrame;
- (VOTUICursorViewController)initWithAXUIService:(id)service;
- (void)_updateCursorFrameAnimated:(BOOL)animated;
- (void)_updateCursorPath;
- (void)dealloc;
- (void)setCursorHidden:(BOOL)hidden;
- (void)setCursorPath:(CGPath *)path;
- (void)viewDidLoad;
@end

@implementation VOTUICursorViewController

- (VOTUICursorViewController)initWithAXUIService:(id)service
{
  serviceCopy = service;
  v8.receiver = self;
  v8.super_class = VOTUICursorViewController;
  v5 = [(VOTUICursorViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_axuiService, serviceCopy);
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

- (void)_updateCursorFrameAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(VOTUICursorViewController *)self convertFrameToCursorSpace:self->_cursorFrame.origin.x, self->_cursorFrame.origin.y, self->_cursorFrame.size.width, self->_cursorFrame.size.height];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  cursorView = [(VOTUICursorViewController *)self cursorView];
  [cursorView setCursorFrame:animatedCopy animated:{v6, v8, v10, v12}];
}

- (CGRect)convertFrameToCursorSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  view = [(VOTUICursorViewController *)self view];
  window = [view window];
  [window _convertRectFromSceneReferenceSpace:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [VOTUICursorView resizeFrameForDisplay:v11, v13, v15, v17];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  cursorView = [(VOTUICursorViewController *)self cursorView];
  [cursorView resizeFrameForWindow:{v19, v21, v23, v25}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  view2 = [(VOTUICursorViewController *)self view];
  [view2 convertRect:0 fromView:{v28, v30, v32, v34}];
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

  [(VOTUICursorViewController *)self _updateCursorPath];
}

- (void)_updateCursorPath
{
  if (self->_cursorPath)
  {
    v3 = [UIBezierPath bezierPathWithCGPath:?];
    view = [(VOTUICursorViewController *)self view];
    cursorView2 = UIAccessibilitySceneReferencePathToScreenPathWithView();

    view2 = [(VOTUICursorViewController *)self view];
    v6 = UIAccessibilityPathForAccessibilityPath();
    cGPath = [v6 CGPath];

    cursorView = [(VOTUICursorViewController *)self cursorView];
    [cursorView setPath:cGPath];
  }

  else
  {
    cursorView2 = [(VOTUICursorViewController *)self cursorView];
    [cursorView2 setPath:0];
  }
}

- (BOOL)cursorHidden
{
  view = [(VOTUICursorViewController *)self view];
  isHidden = [view isHidden];

  return isHidden;
}

- (void)setCursorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  view = [(VOTUICursorViewController *)self view];
  [view setHidden:hiddenCopy];
}

- (void)viewDidLoad
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VOTUICursorViewController *)self setView:v7];

  height = [[VOTUICursorView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(VOTUICursorViewController *)self setCursorView:height];

  view = [(VOTUICursorViewController *)self view];
  cursorView = [(VOTUICursorViewController *)self cursorView];
  [view addSubview:cursorView];

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