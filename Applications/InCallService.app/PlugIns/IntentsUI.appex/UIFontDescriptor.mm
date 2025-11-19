@interface UIFontDescriptor
+ (id)voicemailCaptionRegularFontDescriptor;
+ (id)voicemailHeadlineShortFontDescriptor;
@end

@implementation UIFontDescriptor

+ (id)voicemailHeadlineShortFontDescriptor
{
  if (qword_1000C6028 != -1)
  {
    sub_10007A1DC();
  }

  v3 = qword_1000C6020;

  return v3;
}

+ (id)voicemailCaptionRegularFontDescriptor
{
  if (qword_1000C6038 != -1)
  {
    sub_10007A1F0();
  }

  v3 = qword_1000C6030;

  return v3;
}

@end