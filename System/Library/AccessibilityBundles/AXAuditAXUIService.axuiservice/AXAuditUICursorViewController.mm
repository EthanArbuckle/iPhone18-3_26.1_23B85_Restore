@interface AXAuditUICursorViewController
- (AXAuditUICursorViewController)initWithAXUIService:(id)service;
- (CGRect)cursorFrame;
- (void)_updateCursorFrame;
- (void)_updateCursorPath;
- (void)setCursorFrame:(CGRect)frame;
- (void)setCursorHidden:(BOOL)hidden;
- (void)setHighlightStyle:(unint64_t)style;
- (void)viewDidLoad;
@end

@implementation AXAuditUICursorViewController

- (AXAuditUICursorViewController)initWithAXUIService:(id)service
{
  v5.receiver = self;
  v5.super_class = AXAuditUICursorViewController;
  result = [(AXAuditUICursorViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_axuiService = service;
  }

  return result;
}

- (void)setHighlightStyle:(unint64_t)style
{
  self->_highlightStyle = style;
  cursorView = [(AXAuditUICursorViewController *)self cursorView];
  [cursorView setHighlightStyle:style];
}

- (void)setCursorFrame:(CGRect)frame
{
  self->_cursorFrame.origin.x = round(frame.origin.x);
  self->_cursorFrame.origin.y = round(frame.origin.y);
  self->_cursorFrame.size.width = round(frame.size.width);
  self->_cursorFrame.size.height = round(frame.size.height);
  [(AXAuditUICursorViewController *)self _updateCursorFrame];
}

- (void)_updateCursorFrame
{
  [(AXAuditUICursorViewController *)self cursorFrame];
  [AXAuditUICursorView resizeFrameForDisplay:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(AXAuditUICursorViewController *)self view];
  window = [view window];
  [window _convertRectFromSceneReferenceSpace:{v4, v6, v8, v10}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  cursorView = [(AXAuditUICursorViewController *)self cursorView];
  [cursorView resizeFrameForWindow:{v14, v16, v18, v20}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  view2 = [(AXAuditUICursorViewController *)self view];
  [view2 convertRect:0 fromView:{v23, v25, v27, v29}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  cursorView2 = [(AXAuditUICursorViewController *)self cursorView];
  [cursorView2 setCursorFrame:{v32, v34, v36, v38}];
}

- (void)_updateCursorPath
{
  if ([(AXAuditUICursorViewController *)self cursorPath])
  {
    v3 = [UIBezierPath bezierPathWithCGPath:[(AXAuditUICursorViewController *)self cursorPath]];
    cursorView2 = UIAccessibilitySceneReferencePathToScreenPath();

    view = [(AXAuditUICursorViewController *)self view];
    v5 = UIAccessibilityPathForAccessibilityPath();
    cGPath = [v5 CGPath];

    cursorView = [(AXAuditUICursorViewController *)self cursorView];
    [cursorView setPath:cGPath];
  }

  else
  {
    cursorView2 = [(AXAuditUICursorViewController *)self cursorView];
    [cursorView2 setPath:0];
  }
}

- (void)setCursorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  view = [(AXAuditUICursorViewController *)self view];
  [view setHidden:hiddenCopy];
}

- (void)viewDidLoad
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXAuditUICursorViewController *)self setView:v7];

  height = [[AXAuditUICursorView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(AXAuditUICursorViewController *)self setCursorView:height];

  view = [(AXAuditUICursorViewController *)self view];
  cursorView = [(AXAuditUICursorViewController *)self cursorView];
  [view addSubview:cursorView];

  v11.receiver = self;
  v11.super_class = AXAuditUICursorViewController;
  [(AXAuditUICursorViewController *)&v11 viewDidLoad];
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