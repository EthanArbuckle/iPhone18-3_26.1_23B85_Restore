@interface THTestDriver
+ (BOOL)closeBookWithBookController:(id)controller;
+ (BOOL)goToFirstChapterWithController:(id)controller;
+ (BOOL)turnPageWithBookController:(id)controller direction:(int)direction;
+ (id)validateController:(id)controller;
@end

@implementation THTestDriver

+ (id)validateController:(id)controller
{
  objc_opt_class();

  return BUDynamicCast();
}

+ (BOOL)turnPageWithBookController:(id)controller direction:(int)direction
{
  documentViewController = [self validateController:controller];
  if (documentViewController)
  {
    v6 = documentViewController;
    documentViewController = [documentViewController documentViewController];
    if (documentViewController)
    {
      documentViewController = [objc_msgSend(v6 "documentViewController")];
      if (documentViewController)
      {
        if (direction < 0)
        {
          v7 = block;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v8 = sub_5A714;
        }

        else
        {
          v7 = v10;
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v8 = sub_5A744;
        }

        v7[2] = v8;
        v7[3] = &unk_45AE00;
        v7[4] = v6;
        dispatch_async(&_dispatch_main_q, v7);
        LOBYTE(documentViewController) = 1;
      }
    }
  }

  return documentViewController;
}

+ (BOOL)closeBookWithBookController:(id)controller
{
  v3 = [self validateController:controller];
  v4 = v3;
  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5A804;
    block[3] = &unk_45AE00;
    block[4] = v3;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v4 != 0;
}

+ (BOOL)goToFirstChapterWithController:(id)controller
{
  v3 = [self validateController:controller];
  if (v3)
  {
    v4 = v3;
    if ([v3 chapterBrowserController])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_5A8A0;
      block[3] = &unk_45AE00;
      block[4] = v4;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  return 0;
}

@end