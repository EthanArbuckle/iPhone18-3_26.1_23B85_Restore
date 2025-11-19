@interface MailIntentHandler
+ (OS_os_log)log;
- (id)handlerForIntent:(id)a3;
@end

@implementation MailIntentHandler

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004948;
  block[3] = &unk_10000C3A0;
  block[4] = a1;
  if (qword_100011EF0 != -1)
  {
    dispatch_once(&qword_100011EF0, block);
  }

  v2 = qword_100011EE8;

  return v2;
}

- (id)handlerForIntent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = &off_10000C1B8;
LABEL_7:
    v5 = objc_alloc_init(*v4);
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_10000C1A8;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_10000C1B0;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

@end