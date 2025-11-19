@interface BCCoverEffects
+ (id)sharedInstance;
@end

@implementation BCCoverEffects

+ (id)sharedInstance
{
  if (qword_3427D0 != -1)
  {
    sub_1E8F7C();
  }

  v3 = qword_3427C8;

  return v3;
}

@end