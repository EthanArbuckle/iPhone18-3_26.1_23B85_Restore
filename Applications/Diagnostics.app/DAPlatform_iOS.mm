@interface DAPlatform_iOS
- (BOOL)didSetProxyServerInformation;
- (BOOL)isInBoxUpdateModeActive;
- (void)dimCheckerBoardDisplay;
- (void)exitCheckerBoard;
- (void)hideSceneStatusBar;
- (void)sceneStatusBarStyle:(int64_t)style;
- (void)showSceneStatusBar;
- (void)undimCheckerBoardDisplay;
@end

@implementation DAPlatform_iOS

- (void)exitCheckerBoard
{
  if ([(DAPlatform_iOS *)self isCheckerBoardActive])
  {

    +[CBSUtilities exitCheckerBoard];
  }
}

- (BOOL)didSetProxyServerInformation
{
  if (![(DAPlatform_iOS *)self isCheckerBoardActive])
  {
    return 0;
  }

  v2 = +[CBSUtilities proxyServer];
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CBSUtilities proxyServer: %@", &v16, 0xCu);
  }

  server = [v2 server];
  port = [v2 port];
  v6 = port;
  if (server)
  {
    v7 = port == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v9 = +[ASTEnvironment currentEnvironment];
    [v9 setSOCKSProxyServer:server];
    [v9 setSOCKSProxyPort:v6];
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[ASTEnvironment currentEnvironment];
      sOCKSProxyServer = [v11 SOCKSProxyServer];
      v13 = +[ASTEnvironment currentEnvironment];
      sOCKSProxyPort = [v13 SOCKSProxyPort];
      v16 = 138412546;
      v17 = sOCKSProxyServer;
      v18 = 2112;
      v19 = sOCKSProxyPort;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set ASTEnvironment to %@, %@", &v16, 0x16u);
    }
  }

  return v8;
}

- (BOOL)isInBoxUpdateModeActive
{
  if (qword_100202D98 != -1)
  {
    sub_1001589D8();
  }

  return byte_100202D90;
}

- (void)showSceneStatusBar
{
  if ([(DAPlatform_iOS *)self isCheckerBoardActive])
  {
    v2 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CBSUtilities: showSceneStatusBar", v3, 2u);
    }

    +[CBSUtilities showSceneStatusBar];
  }
}

- (void)hideSceneStatusBar
{
  if ([(DAPlatform_iOS *)self isCheckerBoardActive])
  {
    v2 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CBSUtilities: hideSceneStatusBar", v3, 2u);
    }

    +[CBSUtilities hideSceneStatusBar];
  }
}

- (void)sceneStatusBarStyle:(int64_t)style
{
  if ([(DAPlatform_iOS *)self isCheckerBoardActive])
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      styleCopy = style;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CBSUtilities: sceneStatusBarStyle %li", &v5, 0xCu);
    }

    [CBSUtilities sceneStatusBarStyle:style];
  }
}

- (void)dimCheckerBoardDisplay
{
  if ([(DAPlatform_iOS *)self isCheckerBoardActive])
  {
    v2 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CBSUtilities: dimCheckerBoardDisplay", v3, 2u);
    }

    +[CBSUtilities dimDisplay];
  }
}

- (void)undimCheckerBoardDisplay
{
  if ([(DAPlatform_iOS *)self isCheckerBoardActive])
  {
    v2 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CBSUtilities: undimCheckerBoardDisplay", v3, 2u);
    }

    +[CBSUtilities undimDisplay];
  }
}

@end