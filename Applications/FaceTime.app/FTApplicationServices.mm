@interface FTApplicationServices
+ (id)sharedInstance;
@end

@implementation FTApplicationServices

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000034CC;
  block[3] = &unk_10010AF00;
  block[4] = a1;
  if (qword_100126960 != -1)
  {
    dispatch_once(&qword_100126960, block);
  }

  v2 = qword_100126958;

  return v2;
}

@end