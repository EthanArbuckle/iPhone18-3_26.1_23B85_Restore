@interface AFSiriActivationConnection
+ (id)sharedConnection;
@end

@implementation AFSiriActivationConnection

+ (id)sharedConnection
{
  if (qword_10058FEA8 != -1)
  {
    dispatch_once(&qword_10058FEA8, &stru_10050FE50);
  }

  v3 = qword_10058FEB0;

  return v3;
}

@end