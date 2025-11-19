@interface IMThemePageSepia
- (IMThemePageSepia)init;
@end

@implementation IMThemePageSepia

- (IMThemePageSepia)init
{
  v7.receiver = self;
  v7.super_class = IMThemePageSepia;
  v2 = [(IMThemePage *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(IMTheme *)v2 setAnnotationPageTheme:1];
    [(IMTheme *)v3 setTextHighlightType:1];
    [(IMTheme *)v3 setKeyboardAppearance:2];
    [(IMTheme *)v3 setOverlayContentBackgroundColor:1];
    [(IMTheme *)v3 setGaijiImageFilter:@"invert(25%%)"];
    v4 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.15];
    [(IMTheme *)v3 setSpeakScreenHighlightColor:v4];

    v5 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    [(IMTheme *)v3 setSpeakScreenUnderlineColor:v5];
  }

  return v3;
}

@end