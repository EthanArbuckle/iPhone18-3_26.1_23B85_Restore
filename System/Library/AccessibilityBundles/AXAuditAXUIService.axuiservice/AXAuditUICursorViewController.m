@interface AXAuditUICursorViewController
- (AXAuditUICursorViewController)initWithAXUIService:(id)a3;
- (CGRect)cursorFrame;
- (void)_updateCursorFrame;
- (void)_updateCursorPath;
- (void)setCursorFrame:(CGRect)a3;
- (void)setCursorHidden:(BOOL)a3;
- (void)setHighlightStyle:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation AXAuditUICursorViewController

- (AXAuditUICursorViewController)initWithAXUIService:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXAuditUICursorViewController;
  result = [(AXAuditUICursorViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_axuiService = a3;
  }

  return result;
}

- (void)setHighlightStyle:(unint64_t)a3
{
  self->_highlightStyle = a3;
  v4 = [(AXAuditUICursorViewController *)self cursorView];
  [v4 setHighlightStyle:a3];
}

- (void)setCursorFrame:(CGRect)a3
{
  self->_cursorFrame.origin.x = round(a3.origin.x);
  self->_cursorFrame.origin.y = round(a3.origin.y);
  self->_cursorFrame.size.width = round(a3.size.width);
  self->_cursorFrame.size.height = round(a3.size.height);
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
  v11 = [(AXAuditUICursorViewController *)self view];
  v12 = [v11 window];
  [v12 _convertRectFromSceneReferenceSpace:{v4, v6, v8, v10}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(AXAuditUICursorViewController *)self cursorView];
  [v21 resizeFrameForWindow:{v14, v16, v18, v20}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = [(AXAuditUICursorViewController *)self view];
  [v30 convertRect:0 fromView:{v23, v25, v27, v29}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = [(AXAuditUICursorViewController *)self cursorView];
  [v39 setCursorFrame:{v32, v34, v36, v38}];
}

- (void)_updateCursorPath
{
  if ([(AXAuditUICursorViewController *)self cursorPath])
  {
    v3 = [UIBezierPath bezierPathWithCGPath:[(AXAuditUICursorViewController *)self cursorPath]];
    v8 = UIAccessibilitySceneReferencePathToScreenPath();

    v4 = [(AXAuditUICursorViewController *)self view];
    v5 = UIAccessibilityPathForAccessibilityPath();
    v6 = [v5 CGPath];

    v7 = [(AXAuditUICursorViewController *)self cursorView];
    [v7 setPath:v6];
  }

  else
  {
    v8 = [(AXAuditUICursorViewController *)self cursorView];
    [v8 setPath:0];
  }
}

- (void)setCursorHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(AXAuditUICursorViewController *)self view];
  [v4 setHidden:v3];
}

- (void)viewDidLoad
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXAuditUICursorViewController *)self setView:v7];

  v8 = [[AXAuditUICursorView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(AXAuditUICursorViewController *)self setCursorView:v8];

  v9 = [(AXAuditUICursorViewController *)self view];
  v10 = [(AXAuditUICursorViewController *)self cursorView];
  [v9 addSubview:v10];

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