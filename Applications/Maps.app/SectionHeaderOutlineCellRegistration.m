@interface SectionHeaderOutlineCellRegistration
+ (id)sharedRegistration;
@end

@implementation SectionHeaderOutlineCellRegistration

+ (id)sharedRegistration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D14AD8;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195F020 != -1)
  {
    dispatch_once(&qword_10195F020, block);
  }

  v2 = qword_10195F018;

  return v2;
}

@end