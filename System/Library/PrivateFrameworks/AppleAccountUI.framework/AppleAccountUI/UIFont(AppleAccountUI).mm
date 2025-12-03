@interface UIFont(AppleAccountUI)
+ (id)aa_fontForLargeButton;
+ (id)aa_fontForLargerInformationLabel;
+ (id)aa_fontForPageTitle;
+ (id)aa_fontForPrimaryInformationLabel;
@end

@implementation UIFont(AppleAccountUI)

+ (id)aa_fontForPageTitle
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v2 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  v3 = MEMORY[0x1E69DB878];
  v4 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v7 = 32.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 36.0;
  }

  [v4 scaledValueForValue:v7];
  if (v2 == 1)
  {
    [v3 _thinSystemFontOfSize:?];
  }

  else
  {
    [v3 _lightSystemFontOfSize:?];
  }
  v8 = ;

  return v8;
}

+ (id)aa_fontForLargeButton
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v2 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  v3 = MEMORY[0x1E69DB878];
  v4 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v7 = 23.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 26.0;
  }

  [v4 scaledValueForValue:v7];
  if (v2 == 1)
  {
    [v3 _thinSystemFontOfSize:?];
  }

  else
  {
    [v3 _lightSystemFontOfSize:?];
  }
  v8 = ;

  return v8;
}

+ (id)aa_fontForPrimaryInformationLabel
{
  v0 = MEMORY[0x1E69DB878];
  v1 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v1 scaledValueForValue:13.0];
  v2 = [v0 systemFontOfSize:?];

  return v2;
}

+ (id)aa_fontForLargerInformationLabel
{
  v0 = MEMORY[0x1E69DB878];
  v1 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = 17.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = 23.0;
  }

  [v1 scaledValueForValue:v4];
  v5 = [v0 systemFontOfSize:?];

  return v5;
}

@end