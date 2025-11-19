@interface FeatureDiscoveryOutlineCellRegistration
+ (id)sharedRegistration;
@end

@implementation FeatureDiscoveryOutlineCellRegistration

+ (id)sharedRegistration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C400AC;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195EC18 != -1)
  {
    dispatch_once(&qword_10195EC18, block);
  }

  v2 = qword_10195EC10;

  return v2;
}

@end