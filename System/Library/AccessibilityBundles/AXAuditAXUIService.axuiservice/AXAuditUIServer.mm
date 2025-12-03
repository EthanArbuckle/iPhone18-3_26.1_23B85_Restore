@interface AXAuditUIServer
- (AXAuditUIServer)init;
- (double)desiredWindowLevelForContentViewController:(id)controller userInteractionEnabled:(BOOL)enabled;
- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (void)_handleSetCursorFrameMessage:(id)message;
- (void)_handleSetCursorFrameStyleMessage:(id)message;
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

- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  messageCopy = message;
  withIdentifierCopy = withIdentifier;
  if (identifier == 2)
  {
    [(AXAuditUIServer *)self _handleSetCursorFrameStyleMessage:messageCopy];
  }

  else
  {
    if (identifier != 1)
    {
      abort();
    }

    [(AXAuditUIServer *)self _handleSetCursorFrameMessage:messageCopy];
  }

  return 0;
}

- (void)_handleSetCursorFrameStyleMessage:(id)message
{
  v8 = [message objectForKey:@"frameStyle"];
  -[AXAuditUIServer set_highlightStyle:](self, "set_highlightStyle:", [v8 integerValue]);
  cursorViewController = [(AXAuditUIServer *)self cursorViewController];

  if (cursorViewController)
  {
    _highlightStyle = [(AXAuditUIServer *)self _highlightStyle];
    cursorViewController2 = [(AXAuditUIServer *)self cursorViewController];
    [cursorViewController2 setHighlightStyle:_highlightStyle];
  }

  cursorViewController3 = [(AXAuditUIServer *)self cursorViewController];
  [cursorViewController3 setHighlightStyle:{objc_msgSend(v8, "integerValue")}];
}

- (void)_handleSetCursorFrameMessage:(id)message
{
  messageCopy = message;
  v4 = [messageCopy objectForKey:@"frame"];
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

  v10 = [messageCopy objectForKey:@"path"];
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
  cursorViewController = [(AXAuditUIServer *)self cursorViewController];
  v14 = cursorViewController;
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
      cursorViewController2 = [(AXAuditUIServer *)self cursorViewController];
      [v17 addContentViewController:cursorViewController2 withUserInteractionEnabled:0 forService:self];
    }

    cursorViewController3 = [(AXAuditUIServer *)self cursorViewController];
    [cursorViewController3 setCursorFrame:{x, y, width, height}];
    [cursorViewController3 setCursorPath:v11];
    [cursorViewController3 setHighlightStyle:{-[AXAuditUIServer _highlightStyle](self, "_highlightStyle")}];
    if (v11)
    {
      CFRelease(v11);
    }

    cursorViewController4 = [(AXAuditUIServer *)self cursorViewController];
    [cursorViewController4 setCursorHidden:0];
  }
}

- (void)_removeCursorViewController
{
  cursorViewController = [(AXAuditUIServer *)self cursorViewController];
  [cursorViewController setCursorHidden:1];

  v4 = +[AXUIDisplayManager sharedDisplayManager];
  cursorViewController2 = [(AXAuditUIServer *)self cursorViewController];
  [v4 removeContentViewController:cursorViewController2 withUserInteractionEnabled:0 forService:self];

  [(AXAuditUIServer *)self setCursorViewController:0];
}

- (double)desiredWindowLevelForContentViewController:(id)controller userInteractionEnabled:(BOOL)enabled
{
  [(AXAuditUIServer *)self cursorViewController:controller];

  return 10000013.0;
}

@end