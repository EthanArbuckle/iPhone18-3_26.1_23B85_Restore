@interface AirPlayAlertViewController
+ (id)alertWithTitle:(id)title withMessage:(id)message actions:(id)actions withCompletion:(id)completion;
@end

@implementation AirPlayAlertViewController

+ (id)alertWithTitle:(id)title withMessage:(id)message actions:(id)actions withCompletion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
  v11 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  if (v11)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = actionsCopy;
    obj = actionsCopy;
    v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v26;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100004898;
          v23[3] = &unk_10001C790;
          v18 = completionCopy;
          v23[4] = v17;
          v24 = v18;
          v19 = [UIAlertAction actionWithTitle:v17 style:0 handler:v23];
          [v11 addAction:v19];
          if ((v14 & 1) == 0)
          {
            [v11 setPreferredAction:v19];
          }

          v14 = 1;
        }

        v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    actionsCopy = v21;
  }

  return v11;
}

@end