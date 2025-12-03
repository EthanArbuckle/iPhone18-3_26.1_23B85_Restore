@interface UIAlertController
+ (id)rc_OKAlertControllerWithTitle:(id)title message:(id)message handler:(id)handler;
+ (id)rc_alertControllerWithTitle:(id)title message:(id)message buttons:(id)buttons;
- (void)rc_showInMainWindow;
@end

@implementation UIAlertController

+ (id)rc_OKAlertControllerWithTitle:(id)title message:(id)message handler:(id)handler
{
  handlerCopy = handler;
  v8 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_100295BB8 table:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100081BAC;
  v14[3] = &unk_10028B7B0;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = [UIAlertAction actionWithTitle:v10 style:0 handler:v14];
  [v8 addAction:v12];

  return v8;
}

+ (id)rc_alertControllerWithTitle:(id)title message:(id)message buttons:(id)buttons
{
  buttonsCopy = buttons;
  v8 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = buttonsCopy;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"title"];
        v15 = [v13 objectForKeyedSubscript:@"style"];
        integerValue = [v15 integerValue];

        v17 = [v13 objectForKeyedSubscript:@"action"];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100081DF4;
        v22[3] = &unk_10028B7B0;
        v23 = v17;
        v18 = v17;
        v19 = [UIAlertAction actionWithTitle:v14 style:integerValue handler:v22];
        [v8 addAction:v19];
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  return v8;
}

- (void)rc_showInMainWindow
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  window = [delegate window];
  rootViewController = [window rootViewController];

  presentedViewController = [rootViewController presentedViewController];
  if (presentedViewController)
  {
    v7 = presentedViewController;
  }

  else
  {
    v7 = rootViewController;
  }

  v8 = v7;

  [v8 presentViewController:self animated:1 completion:0];
}

@end