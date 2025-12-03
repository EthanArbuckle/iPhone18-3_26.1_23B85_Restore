@interface HomeOutlineHiddenCellRegistration
+ (id)sharedRegistration;
@end

@implementation HomeOutlineHiddenCellRegistration

+ (id)sharedRegistration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AE66E0;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195E5A8 != -1)
  {
    dispatch_once(&qword_10195E5A8, block);
  }

  v2 = qword_10195E5A0;

  return v2;
}

@end