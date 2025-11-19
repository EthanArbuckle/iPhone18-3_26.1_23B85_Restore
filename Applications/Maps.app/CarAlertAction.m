@interface CarAlertAction
+ (id)actionWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
@end

@implementation CarAlertAction

+ (id)actionWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[CarAlertButtonViewController alloc] initWithTitle:v8 image:v9];
  v12 = [a1 _actionWithContentViewController:v11 style:0 handler:v10];
  [v12 setActionHandler:v10];
  objc_initWeak(&location, v12);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C74B38;
  v17 = &unk_101661B98;
  objc_copyWeak(&v18, &location);
  [(CarAlertButtonViewController *)v11 setCompletionHandler:&v14];
  [v12 setEnabled:{0, v14, v15, v16, v17}];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v12;
}

@end