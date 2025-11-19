@interface PPXJSAWindowProvider
+ (PPXJSAWindowProvider)sharedProvider;
@end

@implementation PPXJSAWindowProvider

+ (PPXJSAWindowProvider)sharedProvider
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000048C0;
  block[3] = &unk_100031638;
  block[4] = a1;
  if (qword_100038780 != -1)
  {
    dispatch_once(&qword_100038780, block);
  }

  v2 = qword_100038788;

  return v2;
}

@end