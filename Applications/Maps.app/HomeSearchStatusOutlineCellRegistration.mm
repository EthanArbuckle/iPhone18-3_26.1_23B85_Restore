@interface HomeSearchStatusOutlineCellRegistration
+ (id)sharedRegistration;
@end

@implementation HomeSearchStatusOutlineCellRegistration

+ (id)sharedRegistration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10059FCD4;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195CAC0 != -1)
  {
    dispatch_once(&qword_10195CAC0, block);
  }

  v2 = qword_10195CAB8;

  return v2;
}

@end