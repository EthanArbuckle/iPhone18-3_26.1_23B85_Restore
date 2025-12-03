@interface SearchResultOutlineCellRegistration
+ (id)sharedRegistration;
@end

@implementation SearchResultOutlineCellRegistration

+ (id)sharedRegistration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FC9A58;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195F988 != -1)
  {
    dispatch_once(&qword_10195F988, block);
  }

  v2 = qword_10195F980;

  return v2;
}

@end