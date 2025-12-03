@interface SSUIServer
- (double)desiredWindowLevelForContentViewController:(id)controller userInteractionEnabled:(BOOL)enabled;
- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (void)_handleSetCursorFrameMessage:(id)message;
- (void)_handleShowBrailleUIMessage:(id)message;
- (void)_removeCursorViewController;
- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation SSUIServer

- (void)dealloc
{
  [(SSUIServer *)self _removeCursorViewController];
  v3.receiver = self;
  v3.super_class = SSUIServer;
  [(SSUIServer *)&v3 dealloc];
}

- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  messageCopy = message;
  withIdentifierCopy = withIdentifier;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [messageCopy description];
    *buf = 136315138;
    identifierCopy = [v11 UTF8String];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "##process message %s", buf, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    identifierCopy = identifier;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "messageIdentifier %lu", buf, 0xCu);
  }

  if (identifier == 9)
  {
    cursorViewController = [(SSUIServer *)self cursorViewController];
    view = [cursorViewController view];
    window = [view window];
    v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [window _contextId]);

    v18 = @"contextId";
    v19 = v16;
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  else
  {
    if (identifier == 2)
    {
      [(SSUIServer *)self _handleShowBrailleUIMessage:messageCopy];
    }

    else
    {
      if (identifier != 1)
      {
        sub_7450();
      }

      [(SSUIServer *)self _handleSetCursorFrameMessage:messageCopy];
    }

    v12 = 0;
  }

  return v12;
}

- (void)_handleSetCursorFrameMessage:(id)message
{
  messageCopy = message;
  cursorViewController = [(SSUIServer *)self cursorViewController];

  if (!cursorViewController)
  {
    v6 = objc_alloc_init(SSUICursorViewController);
    [(SSUIServer *)self setCursorViewController:v6];

    v7 = +[AXUIDisplayManager sharedDisplayManager];
    cursorViewController2 = [(SSUIServer *)self cursorViewController];
    [v7 addContentViewController:cursorViewController2 withUserInteractionEnabled:0 forService:self];
  }

  cursorViewController3 = [(SSUIServer *)self cursorViewController];
  [cursorViewController3 handleSetCursorFrameMessage:messageCopy];
}

- (void)_handleShowBrailleUIMessage:(id)message
{
  messageCopy = message;
  cursorViewController = [(SSUIServer *)self cursorViewController];
  [cursorViewController handleAlternateMessage:messageCopy];
}

- (void)_removeCursorViewController
{
  cursorViewController = [(SSUIServer *)self cursorViewController];
  [cursorViewController setCursorHidden:1];

  v4 = +[AXUIDisplayManager sharedDisplayManager];
  cursorViewController2 = [(SSUIServer *)self cursorViewController];
  [v4 removeContentViewController:cursorViewController2 withUserInteractionEnabled:0 forService:self];

  [(SSUIServer *)self setCursorViewController:0];
}

- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)identifier
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4738;
  block[3] = &unk_103D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (double)desiredWindowLevelForContentViewController:(id)controller userInteractionEnabled:(BOOL)enabled
{
  [(SSUIServer *)self cursorViewController:controller];

  return 10000013.0;
}

@end