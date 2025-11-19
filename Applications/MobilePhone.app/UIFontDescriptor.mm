@interface UIFontDescriptor
+ (id)voicemailCaptionRegularFontDescriptor;
+ (id)voicemailHeadlineShortFontDescriptor;
@end

@implementation UIFontDescriptor

+ (id)voicemailHeadlineShortFontDescriptor
{
  if (voicemailHeadlineShortFontDescriptor_onceToken != -1)
  {
    +[UIFontDescriptor(VoicemailUI) voicemailHeadlineShortFontDescriptor];
  }

  v3 = voicemailHeadlineShortFontDescriptor_sFontDescriptor;

  return v3;
}

void __69__UIFontDescriptor_VoicemailUI__voicemailHeadlineShortFontDescriptor__block_invoke(id a1)
{
  voicemailHeadlineShortFontDescriptor_sFontDescriptor = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline addingSymbolicTraits:0x8000 options:0];

  _objc_release_x1();
}

+ (id)voicemailCaptionRegularFontDescriptor
{
  if (voicemailCaptionRegularFontDescriptor_onceToken != -1)
  {
    +[UIFontDescriptor(VoicemailUI) voicemailCaptionRegularFontDescriptor];
  }

  v3 = voicemailCaptionRegularFontDescriptor_sFontDescriptor;

  return v3;
}

void __70__UIFontDescriptor_VoicemailUI__voicemailCaptionRegularFontDescriptor__block_invoke(id a1)
{
  voicemailCaptionRegularFontDescriptor_sFontDescriptor = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 addingSymbolicTraits:0x8000 options:0];

  _objc_release_x1();
}

@end