@interface IMThemePageGray
- (IMThemePageGray)init;
@end

@implementation IMThemePageGray

- (IMThemePageGray)init
{
  v7.receiver = self;
  v7.super_class = IMThemePageGray;
  v2 = [(IMThemePage *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(IMTheme *)v2 setTextHighlightType:2];
    [(IMTheme *)v3 setAnnotationBlendMode:3];
    [(IMTheme *)v3 setAnnotationPageTheme:2];
    [(IMTheme *)v3 setShouldInvertContent:1];
    [(IMTheme *)v3 setKeyboardAppearance:1];
    [(IMTheme *)v3 setContentStatusBarStyle:1];
    [(IMTheme *)v3 setImageMultiplyExpandedContentMode:0];
    [(IMTheme *)v3 setGaijiImageFilter:@"invert(90%%)"];
    v4 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.15];
    [(IMTheme *)v3 setSpeakScreenHighlightColor:v4];

    v5 = [UIColor colorWithRed:0.788235294 green:0.792156863 blue:0.792156863 alpha:1.0];
    [(IMTheme *)v3 setSpeakScreenUnderlineColor:v5];
  }

  return v3;
}

@end