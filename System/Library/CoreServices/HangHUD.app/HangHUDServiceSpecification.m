@interface HangHUDServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation HangHUDServiceSpecification

+ (BSServiceInterface)interface
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F884;
  block[3] = &unk_100030840;
  block[4] = a1;
  if (qword_10003E7C8 != -1)
  {
    dispatch_once(&qword_10003E7C8, block);
  }

  v2 = qword_10003E7C0;

  return v2;
}

@end