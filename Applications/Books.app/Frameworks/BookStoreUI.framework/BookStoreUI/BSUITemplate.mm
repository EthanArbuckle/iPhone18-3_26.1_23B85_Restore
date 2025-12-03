@interface BSUITemplate
+ (id)factory;
+ (id)manager;
@end

@implementation BSUITemplate

+ (id)manager
{
  if (qword_3CA710 != -1)
  {
    sub_2BD3E4();
  }

  v3 = qword_3CA708;

  return v3;
}

+ (id)factory
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13DD8;
  block[3] = &unk_386D38;
  block[4] = self;
  if (qword_3CA720 != -1)
  {
    dispatch_once(&qword_3CA720, block);
  }

  v2 = qword_3CA718;

  return v2;
}

@end