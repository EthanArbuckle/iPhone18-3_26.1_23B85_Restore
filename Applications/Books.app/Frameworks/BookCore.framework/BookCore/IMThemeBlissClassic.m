@interface IMThemeBlissClassic
- (IMThemeBlissClassic)init;
@end

@implementation IMThemeBlissClassic

- (IMThemeBlissClassic)init
{
  v6.receiver = self;
  v6.super_class = IMThemeBlissClassic;
  v2 = [(IMThemePage *)&v6 init];
  if (v2)
  {
    v3 = +[UIColor whiteColor];
    [(IMTheme *)v2 setToolbarTitleColor:v3];

    v4 = [UIColor colorWithWhite:0.909803922 alpha:1.0];
    [(IMTheme *)v2 setTableViewCellSelectedColor:v4];

    [(IMTheme *)v2 setTextHighlightType:2];
  }

  return v2;
}

@end