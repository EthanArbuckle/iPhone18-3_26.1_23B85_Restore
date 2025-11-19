@interface ICSApplicationServices
+ (id)sharedInstance;
@end

@implementation ICSApplicationServices

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001101CC;
  block[3] = &unk_1003567B0;
  block[4] = a1;
  if (qword_1003B0FC8 != -1)
  {
    dispatch_once(&qword_1003B0FC8, block);
  }

  v2 = qword_1003B0FC0;

  return v2;
}

@end