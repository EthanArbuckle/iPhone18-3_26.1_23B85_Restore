@interface CRLInternalOSUtilities
+ (BOOL)isInternalOSInstall;
@end

@implementation CRLInternalOSUtilities

+ (BOOL)isInternalOSInstall
{
  if (qword_101A34CA8 != -1)
  {
    sub_100011214();
  }

  return byte_101A34CA0;
}

@end