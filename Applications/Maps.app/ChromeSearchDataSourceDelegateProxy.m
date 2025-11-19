@interface ChromeSearchDataSourceDelegateProxy
+ (id)protocols;
- (ChromeSearchDataSourceDelegateProxy)initWithChromeViewController:(id)a3;
- (id)delegatesForSelector:(SEL)a3 protocol:(id)a4;
@end

@implementation ChromeSearchDataSourceDelegateProxy

- (id)delegatesForSelector:(SEL)a3 protocol:(id)a4
{
  v6 = a4;
  v7 = [(ChromeDelegateProxy *)self chromeViewController];

  if (&OBJC_PROTOCOL___GEOLogContextDelegate == v6)
  {
    v11 = [v7 searchDataSourceLogDelegate];
    v9 = v11;
    if (v11)
    {
      v15 = v11;
      v10 = &v15;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [v7 searchDataSourceDelegateForSelector:a3];
    v9 = v8;
    if (v8)
    {
      v14 = v8;
      v10 = &v14;
LABEL_6:
      v12 = [NSArray arrayWithObjects:v10 count:1];
      goto LABEL_8;
    }
  }

  v12 = &__NSArray0__struct;
LABEL_8:

  return v12;
}

- (ChromeSearchDataSourceDelegateProxy)initWithChromeViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = ChromeSearchDataSourceDelegateProxy;
    self = [(ChromeDelegateProxy *)&v7 initWithChromeViewController:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)protocols
{
  if (qword_10195DDB8 != -1)
  {
    dispatch_once(&qword_10195DDB8, &stru_10162F5C0);
  }

  v3 = qword_10195DDB0;

  return v3;
}

@end