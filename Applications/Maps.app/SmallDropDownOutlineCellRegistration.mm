@interface SmallDropDownOutlineCellRegistration
+ (id)sharedRegistration;
@end

@implementation SmallDropDownOutlineCellRegistration

+ (id)sharedRegistration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100EE120C;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195F618 != -1)
  {
    dispatch_once(&qword_10195F618, block);
  }

  v2 = qword_10195F610;

  return v2;
}

@end