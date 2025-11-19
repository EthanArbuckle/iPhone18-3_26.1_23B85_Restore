@interface CRLWPUtilities
+ (BOOL)anyInputIsNonRoman;
@end

@implementation CRLWPUtilities

+ (BOOL)anyInputIsNonRoman
{
  if (qword_101A34958 != -1)
  {
    sub_101340DAC();
  }

  return byte_101A34950;
}

@end