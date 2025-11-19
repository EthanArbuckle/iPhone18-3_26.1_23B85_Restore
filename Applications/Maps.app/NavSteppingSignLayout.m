@interface NavSteppingSignLayout
+ (id)sharedSteppingSignLayout;
@end

@implementation NavSteppingSignLayout

+ (id)sharedSteppingSignLayout
{
  if (qword_10195F690 != -1)
  {
    dispatch_once(&qword_10195F690, &stru_10165CCC0);
  }

  v3 = qword_10195F688;

  return v3;
}

@end