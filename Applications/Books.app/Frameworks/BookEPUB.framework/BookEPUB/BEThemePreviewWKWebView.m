@interface BEThemePreviewWKWebView
- (BEThemePreviewWKWebView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (id)_processPluginProxy;
- (void)be_registerFontFamilyForStyleManager:(id)a3 fontFamily:(id)a4;
@end

@implementation BEThemePreviewWKWebView

- (BEThemePreviewWKWebView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  v7.receiver = self;
  v7.super_class = BEThemePreviewWKWebView;
  v4 = [(BEThemePreviewWKWebView *)&v7 initWithFrame:a4 configuration:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = +[NSMutableSet set];
    [(BEThemePreviewWKWebView *)v4 setRegisteredFonts:v5];

    [(BEThemePreviewWKWebView *)v4 _grantAccessToAssetServices];
  }

  return v4;
}

- (id)_processPluginProxy
{
  v3 = [(BEThemePreviewWKWebView *)self webProcessPluginProxy];

  if (!v3)
  {
    v4 = [(BEThemePreviewWKWebView *)self _remoteObjectRegistry];
    v5 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___BEWebProcessControllerProtocol];
    v6 = [v4 remoteObjectProxyWithInterface:v5];
    [(BEThemePreviewWKWebView *)self setWebProcessPluginProxy:v6];

    if (!v5 || ([(BEThemePreviewWKWebView *)self webProcessPluginProxy], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      v8 = _BookEPUBLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to get process plugin/proxy!", v11, 2u);
      }
    }
  }

  v9 = [(BEThemePreviewWKWebView *)self webProcessPluginProxy];

  return v9;
}

- (void)be_registerFontFamilyForStyleManager:(id)a3 fontFamily:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    if (([v6 isFontPreregistered:v7] & 1) == 0)
    {
      if ([v6 isFontAvailable:v7])
      {
        v8 = [(BEThemePreviewWKWebView *)self registeredFonts];
        v9 = [v8 containsObject:v7];

        if ((v9 & 1) == 0)
        {
          v10 = [(BEThemePreviewWKWebView *)self _processPluginProxy];
          if (v10)
          {
            v11 = [(BEThemePreviewWKWebView *)self registeredFonts];
            [v11 addObject:v7];

            v12 = _BookEPUBLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v24 = v7;
              _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Attempting ThemePreview #fontReg of #fontFamily '%{public}@'", buf, 0xCu);
            }

            objc_initWeak(&location, self);
            v13 = _BookEPUBLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v24 = v7;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Posting font activate notification for font %@", buf, 0xCu);
            }

            v14 = +[NSNotificationCenter defaultCenter];
            v21 = @"FontActivateNotificationFontFamilyKey";
            v22 = v7;
            v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
            [v14 postNotificationName:@"FontActivateNotification" object:0 userInfo:v15];

            v17[0] = _NSConcreteStackBlock;
            v17[1] = 3221225472;
            v17[2] = sub_BAD0;
            v17[3] = &unk_3283D0;
            objc_copyWeak(&v19, &location);
            v18 = v7;
            [v10 registerFontFamily:v18 completion:v17];

            objc_destroyWeak(&v19);
            objc_destroyWeak(&location);
          }

          else
          {
            v16 = _BookEPUBLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v24 = v7;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Failed to get ThemePreview process plugin/proxy! Unable to #fontReg fontFamily:%{public}@", buf, 0xCu);
            }
          }
        }
      }
    }
  }
}

@end