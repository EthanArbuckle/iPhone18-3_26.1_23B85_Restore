@interface AXAuditUIServer
- (AXAuditUIServer)init;
- (double)desiredWindowLevelForContentViewController:(id)a3 userInteractionEnabled:(BOOL)a4;
- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (void)_handleSetCursorFrameMessage:(id)a3;
- (void)_handleSetCursorFrameStyleMessage:(id)a3;
- (void)_removeCursorViewController;
- (void)dealloc;
@end

@implementation AXAuditUIServer

- (AXAuditUIServer)init
{
  v3.receiver = self;
  v3.super_class = AXAuditUIServer;
  return [(AXAuditUIServer *)&v3 init];
}

- (void)dealloc
{
  [(AXAuditUIServer *)self _removeCursorViewController];
  v3.receiver = self;
  v3.super_class = AXAuditUIServer;
  [(AXAuditUIServer *)&v3 dealloc];
}

- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (a4 == 2)
  {
    [(AXAuditUIServer *)self _handleSetCursorFrameStyleMessage:v9];
  }

  else
  {
    if (a4 != 1)
    {
      abort();
    }

    [(AXAuditUIServer *)self _handleSetCursorFrameMessage:v9];
  }

  return 0;
}

- (void)_handleSetCursorFrameStyleMessage:(id)a3
{
  v8 = [a3 objectForKey:@"frameStyle"];
  -[AXAuditUIServer set_highlightStyle:](self, "set_highlightStyle:", [v8 integerValue]);
  v4 = [(AXAuditUIServer *)self cursorViewController];

  if (v4)
  {
    v5 = [(AXAuditUIServer *)self _highlightStyle];
    v6 = [(AXAuditUIServer *)self cursorViewController];
    [v6 setHighlightStyle:v5];
  }

  v7 = [(AXAuditUIServer *)self cursorViewController];
  [v7 setHighlightStyle:{objc_msgSend(v8, "integerValue")}];
}

- (void)_handleSetCursorFrameMessage:(id)a3
{
  v21 = a3;
  v4 = [v21 objectForKey:@"frame"];
  v5 = v4;
  if (v4)
  {
    v23 = CGRectFromString(v4);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v10 = [v21 objectForKey:@"path"];
  if (v10)
  {
    v11 = AX_CGPathCreateWithDataRepresentation();
  }

  else
  {
    v11 = 0;
  }

  v24.origin.x = CGRectZero.origin.x;
  v24.origin.y = CGRectZero.origin.y;
  v24.size.width = CGRectZero.size.width;
  v24.size.height = CGRectZero.size.height;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v12 = CGRectEqualToRect(v24, v25);
  v13 = [(AXAuditUIServer *)self cursorViewController];
  v14 = v13;
  if (v12 && v11 == 0)
  {

    if (v14)
    {
      [(AXAuditUIServer *)self _removeCursorViewController];
    }
  }

  else
  {

    if (!v14)
    {
      v16 = objc_alloc_init(AXAuditUICursorViewController);
      [(AXAuditUIServer *)self setCursorViewController:v16];

      v17 = +[AXUIDisplayManager sharedDisplayManager];
      v18 = [(AXAuditUIServer *)self cursorViewController];
      [v17 addContentViewController:v18 withUserInteractionEnabled:0 forService:self];
    }

    v19 = [(AXAuditUIServer *)self cursorViewController];
    [v19 setCursorFrame:{x, y, width, height}];
    [v19 setCursorPath:v11];
    [v19 setHighlightStyle:{-[AXAuditUIServer _highlightStyle](self, "_highlightStyle")}];
    if (v11)
    {
      CFRelease(v11);
    }

    v20 = [(AXAuditUIServer *)self cursorViewController];
    [v20 setCursorHidden:0];
  }
}

- (void)_removeCursorViewController
{
  v3 = [(AXAuditUIServer *)self cursorViewController];
  [v3 setCursorHidden:1];

  v4 = +[AXUIDisplayManager sharedDisplayManager];
  v5 = [(AXAuditUIServer *)self cursorViewController];
  [v4 removeContentViewController:v5 withUserInteractionEnabled:0 forService:self];

  [(AXAuditUIServer *)self setCursorViewController:0];
}

- (double)desiredWindowLevelForContentViewController:(id)a3 userInteractionEnabled:(BOOL)a4
{
  [(AXAuditUIServer *)self cursorViewController:a3];

  return 10000013.0;
}

@end