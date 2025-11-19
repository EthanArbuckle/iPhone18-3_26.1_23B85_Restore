@interface CSLUIApplicationIconGenerator
+ (void)_calendarIconImageOnCallbackQueue:(id)a3 completion:(id)a4;
+ (void)iconImageForApplication:(id)a3 callbackQueue:(id)a4 completion:(id)a5;
@end

@implementation CSLUIApplicationIconGenerator

+ (void)iconImageForApplication:(id)a3 callbackQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:kCalendarBundleIdentifier])
  {
    [a1 _calendarIconImageOnCallbackQueue:v9 completion:v10];
  }

  else
  {
    v11 = [[ISIcon alloc] initWithBundleIdentifier:v8];
    +[CSLUIIconView centerIconDiameter];
    v13 = v12;
    v14 = +[UIScreen mainScreen];
    [v14 scale];
    v16 = v15;

    v17 = [[ISImageDescriptor alloc] initWithSize:v13 scale:{v13, v16}];
    [v17 setShape:2];
    v18 = cslprf_icon_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v8;
      v26 = 2048;
      v27 = v13;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "iconImageForApplication fetching icon using Icon Services getCGImageForImageDescriptor bundleID=%@ size=%lf", buf, 0x16u);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_15D4;
    v19[3] = &unk_3C8F8;
    v23 = v16;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    [v11 getCGImageForImageDescriptor:v17 completion:v19];
  }
}

+ (void)_calendarIconImageOnCallbackQueue:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_46588 != -1)
  {
    sub_2372C();
  }

  v7 = qword_46580;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1870;
  v10[3] = &unk_3C940;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

@end