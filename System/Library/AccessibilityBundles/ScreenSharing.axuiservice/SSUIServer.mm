@interface SSUIServer
- (double)desiredWindowLevelForContentViewController:(id)a3 userInteractionEnabled:(BOOL)a4;
- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (void)_handleSetCursorFrameMessage:(id)a3;
- (void)_handleShowBrailleUIMessage:(id)a3;
- (void)_removeCursorViewController;
- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3;
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

- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 description];
    *buf = 136315138;
    v21 = [v11 UTF8String];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "##process message %s", buf, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = a4;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "messageIdentifier %lu", buf, 0xCu);
  }

  if (a4 == 9)
  {
    v13 = [(SSUIServer *)self cursorViewController];
    v14 = [v13 view];
    v15 = [v14 window];
    v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 _contextId]);

    v18 = @"contextId";
    v19 = v16;
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  else
  {
    if (a4 == 2)
    {
      [(SSUIServer *)self _handleShowBrailleUIMessage:v9];
    }

    else
    {
      if (a4 != 1)
      {
        sub_7450();
      }

      [(SSUIServer *)self _handleSetCursorFrameMessage:v9];
    }

    v12 = 0;
  }

  return v12;
}

- (void)_handleSetCursorFrameMessage:(id)a3
{
  v4 = a3;
  v5 = [(SSUIServer *)self cursorViewController];

  if (!v5)
  {
    v6 = objc_alloc_init(SSUICursorViewController);
    [(SSUIServer *)self setCursorViewController:v6];

    v7 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = [(SSUIServer *)self cursorViewController];
    [v7 addContentViewController:v8 withUserInteractionEnabled:0 forService:self];
  }

  v9 = [(SSUIServer *)self cursorViewController];
  [v9 handleSetCursorFrameMessage:v4];
}

- (void)_handleShowBrailleUIMessage:(id)a3
{
  v4 = a3;
  v5 = [(SSUIServer *)self cursorViewController];
  [v5 handleAlternateMessage:v4];
}

- (void)_removeCursorViewController
{
  v3 = [(SSUIServer *)self cursorViewController];
  [v3 setCursorHidden:1];

  v4 = +[AXUIDisplayManager sharedDisplayManager];
  v5 = [(SSUIServer *)self cursorViewController];
  [v4 removeContentViewController:v5 withUserInteractionEnabled:0 forService:self];

  [(SSUIServer *)self setCursorViewController:0];
}

- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4738;
  block[3] = &unk_103D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (double)desiredWindowLevelForContentViewController:(id)a3 userInteractionEnabled:(BOOL)a4
{
  [(SSUIServer *)self cursorViewController:a3];

  return 10000013.0;
}

@end