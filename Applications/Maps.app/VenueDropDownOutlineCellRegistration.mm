@interface VenueDropDownOutlineCellRegistration
+ (id)sharedRegistration;
@end

@implementation VenueDropDownOutlineCellRegistration

+ (id)sharedRegistration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10057D6B4;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195CA90 != -1)
  {
    dispatch_once(&qword_10195CA90, block);
  }

  v2 = qword_10195CA88;

  return v2;
}

@end