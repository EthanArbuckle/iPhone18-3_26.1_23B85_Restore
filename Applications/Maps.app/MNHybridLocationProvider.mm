@interface MNHybridLocationProvider
+ (id)navdInstance;
@end

@implementation MNHybridLocationProvider

+ (id)navdInstance
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100AFEAF0;
  v8[3] = &unk_1016611D0;
  v8[4] = self;
  v2 = objc_retainBlock(v8);
  if (+[NSThread isMainThread])
  {
    if (qword_10195E620 != -1)
    {
      dispatch_once(&qword_10195E620, v2);
    }
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100AFEC58;
    v6[3] = &unk_101661760;
    v7 = v2;
    dispatch_sync(&_dispatch_main_q, v6);
  }

  v3 = qword_10195E618;
  v4 = qword_10195E618;

  return v3;
}

@end