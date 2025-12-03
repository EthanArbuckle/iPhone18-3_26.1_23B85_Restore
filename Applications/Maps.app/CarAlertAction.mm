@interface CarAlertAction
+ (id)actionWithTitle:(id)title image:(id)image handler:(id)handler;
@end

@implementation CarAlertAction

+ (id)actionWithTitle:(id)title image:(id)image handler:(id)handler
{
  titleCopy = title;
  imageCopy = image;
  handlerCopy = handler;
  v11 = [[CarAlertButtonViewController alloc] initWithTitle:titleCopy image:imageCopy];
  v12 = [self _actionWithContentViewController:v11 style:0 handler:handlerCopy];
  [v12 setActionHandler:handlerCopy];
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