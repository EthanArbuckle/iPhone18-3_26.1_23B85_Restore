@interface BNJSAWindowProvider
+ (id)sharedInstance;
@end

@implementation BNJSAWindowProvider

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004568;
  block[3] = &unk_1000085F0;
  block[4] = self;
  if (qword_10000CEA0 != -1)
  {
    dispatch_once(&qword_10000CEA0, block);
  }

  v2 = qword_10000CEA8;

  return v2;
}

@end