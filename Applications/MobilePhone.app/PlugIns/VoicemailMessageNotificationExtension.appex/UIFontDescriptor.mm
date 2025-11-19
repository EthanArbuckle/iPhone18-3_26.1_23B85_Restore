@interface UIFontDescriptor
+ (id)voicemailCaptionRegularFontDescriptor;
+ (id)voicemailHeadlineShortFontDescriptor;
@end

@implementation UIFontDescriptor

+ (id)voicemailHeadlineShortFontDescriptor
{
  if (qword_10009A768 != -1)
  {
    sub_10005FF44();
  }

  v3 = qword_10009A760;

  return v3;
}

+ (id)voicemailCaptionRegularFontDescriptor
{
  if (qword_10009A778 != -1)
  {
    sub_10005FF58();
  }

  v3 = qword_10009A770;

  return v3;
}

@end