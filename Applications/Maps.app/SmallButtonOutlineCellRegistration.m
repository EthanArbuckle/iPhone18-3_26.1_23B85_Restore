@interface SmallButtonOutlineCellRegistration
+ (id)sharedRegistration;
@end

@implementation SmallButtonOutlineCellRegistration

+ (id)sharedRegistration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D6775C;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195F0E8 != -1)
  {
    dispatch_once(&qword_10195F0E8, block);
  }

  v2 = qword_10195F0E0;

  return v2;
}

@end