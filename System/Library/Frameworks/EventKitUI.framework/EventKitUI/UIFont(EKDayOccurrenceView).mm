@interface UIFont(EKDayOccurrenceView)
+ (id)ek_defaultOccurrencePrimaryTextFontForSizeClass:()EKDayOccurrenceView;
+ (id)ek_defaultOccurrenceSecondaryTextFont;
+ (id)ek_defaultOccurrenceSmallPrimaryTextFontForSizeClass:()EKDayOccurrenceView;
@end

@implementation UIFont(EKDayOccurrenceView)

+ (id)ek_defaultOccurrenceSecondaryTextFont
{
  if (dyld_program_sdk_at_least())
  {
    defaultOccurrenceSecondaryTextFont = 0;
  }

  else
  {
    defaultOccurrenceSecondaryTextFont = [MEMORY[0x1E6993418] defaultOccurrenceSecondaryTextFont];
  }

  return defaultOccurrenceSecondaryTextFont;
}

+ (id)ek_defaultOccurrencePrimaryTextFontForSizeClass:()EKDayOccurrenceView
{
  if (dyld_program_sdk_at_least())
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E6993418] defaultOccurrencePrimaryTextFontForSizeClass:a3];
  }

  return v4;
}

+ (id)ek_defaultOccurrenceSmallPrimaryTextFontForSizeClass:()EKDayOccurrenceView
{
  if (dyld_program_sdk_at_least())
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E6993418] defaultOccurrenceSmallPrimaryTextFontForSizeClass:a3];
  }

  return v4;
}

@end