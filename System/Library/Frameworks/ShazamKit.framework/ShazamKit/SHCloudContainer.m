@interface SHCloudContainer
+ (CKContainer)sharedContainer;
@end

@implementation SHCloudContainer

+ (CKContainer)sharedContainer
{
  if (qword_100098280 != -1)
  {
    sub_10000F2B0();
  }

  v3 = qword_100098278;

  return v3;
}

@end