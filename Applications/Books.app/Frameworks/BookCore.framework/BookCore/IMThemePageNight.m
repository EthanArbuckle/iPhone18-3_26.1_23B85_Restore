@interface IMThemePageNight
- (IMThemePageNight)init;
@end

@implementation IMThemePageNight

- (IMThemePageNight)init
{
  v7.receiver = self;
  v7.super_class = IMThemePageNight;
  v2 = [(IMThemePageGray *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(IMTheme *)v2 setShouldInvertContent:1];
    [(IMTheme *)v3 setAnnotationBlendMode:2];
    [(IMTheme *)v3 setAnnotationPageTheme:3];
    [(IMTheme *)v3 setTextHighlightType:3];
    [(IMTheme *)v3 setPageTurnSpineAlpha:0.04];
    [(IMTheme *)v3 setKeyboardAppearance:1];
    [(IMTheme *)v3 setContentStatusBarStyle:1];
    [(IMTheme *)v3 setImageMultiplyExpandedContentMode:0];
    [(IMTheme *)v3 setGaijiImageFilter:@"invert(65%%)"];
    v4 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.15];
    [(IMTheme *)v3 setSpeakScreenHighlightColor:v4];

    v5 = [UIColor colorWithRed:0.690196078 green:0.690196078 blue:0.690196078 alpha:1.0];
    [(IMTheme *)v3 setSpeakScreenUnderlineColor:v5];
  }

  return v3;
}

@end