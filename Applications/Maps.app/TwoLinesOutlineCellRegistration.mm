@interface TwoLinesOutlineCellRegistration
+ (id)sharedRegistration;
@end

@implementation TwoLinesOutlineCellRegistration

+ (id)sharedRegistration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AF47CC;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195E5D0 != -1)
  {
    dispatch_once(&qword_10195E5D0, block);
  }

  v2 = qword_10195E5C8;

  return v2;
}

@end