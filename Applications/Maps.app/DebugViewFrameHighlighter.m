@interface DebugViewFrameHighlighter
+ (BOOL)frameHighlightingEnabled;
+ (BOOL)shouldHighlightOnLaunch;
+ (void)setFrameHighlightingEnabled:(BOOL)a3 persistToDefaults:(BOOL)a4;
@end

@implementation DebugViewFrameHighlighter

+ (BOOL)shouldHighlightOnLaunch
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"kDebugViewFrameHighlightingEnabledDefaultsKey"];

  return v3;
}

+ (void)setFrameHighlightingEnabled:(BOOL)a3 persistToDefaults:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  Uid = sel_getUid("_enableToolsDebugColorViewBounds:");
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_autoreleasePoolPush();
    [objc_opt_class() Uid];
    objc_autoreleasePoolPop(v7);
    if (v4)
    {
      v10 = +[NSUserDefaults standardUserDefaults];
      [v10 setBool:v5 forKey:@"kDebugViewFrameHighlightingEnabledDefaultsKey"];
    }
  }

  else
  {
    v8 = sub_100C7D420();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      Name = sel_getName(Uid);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "UIView.class doesn't respond to %s", buf, 0xCu);
    }

    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 setBool:0 forKey:@"kDebugViewFrameHighlightingEnabledDefaultsKey"];
  }
}

+ (BOOL)frameHighlightingEnabled
{
  Uid = sel_getUid("_toolsDebugColorViewBounds");
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [objc_opt_class() Uid];
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v5 = sub_100C7D420();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      Name = sel_getName(Uid);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "UIView.class doesn't respond to %s", &v7, 0xCu);
    }

    return 0;
  }

  return v4;
}

@end