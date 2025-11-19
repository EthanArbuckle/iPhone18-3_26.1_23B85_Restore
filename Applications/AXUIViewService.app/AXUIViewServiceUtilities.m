@interface AXUIViewServiceUtilities
+ (BOOL)axTCCAllowsPhotoLibraryAccess;
@end

@implementation AXUIViewServiceUtilities

+ (BOOL)axTCCAllowsPhotoLibraryAccess
{
  if (qword_1000318C0 != -1)
  {
    sub_100013D94();
  }

  return byte_1000318B8;
}

@end