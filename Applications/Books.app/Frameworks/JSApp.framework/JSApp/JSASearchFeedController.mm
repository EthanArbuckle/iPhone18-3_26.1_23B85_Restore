@interface JSASearchFeedController
- (void)updateSearchText:(id)text;
@end

@implementation JSASearchFeedController

- (void)updateSearchText:(id)text
{
  textCopy = text;
  if ([textCopy isString])
  {
    toString = [textCopy toString];
  }

  else
  {
    toString = 0;
  }

  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_14738;
  v12[3] = &unk_B2CB8;
  objc_copyWeak(&v14, &location);
  v6 = toString;
  v13 = v6;
  v7 = objc_retainBlock(v12);
  if (v7)
  {
    if (+[NSThread isMainThread])
    {
      (v7[2])(v7);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1479C;
      block[3] = &unk_B2100;
      v11 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v14);
  if (v6)
  {
    v16 = @"searchText";
    v17 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  }

  else
  {
    v8 = &__NSDictionary0__struct;
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"JSASearchFeedControllerUpdateSearchTextNotification" object:self userInfo:v8];

  objc_destroyWeak(&location);
}

@end