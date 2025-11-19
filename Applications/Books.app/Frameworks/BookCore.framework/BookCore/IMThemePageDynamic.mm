@interface IMThemePageDynamic
- (BOOL)isNight:(id)a3;
@end

@implementation IMThemePageDynamic

- (BOOL)isNight:(id)a3
{
  v3 = [a3 traitCollection];
  v4 = [v3 userInterfaceStyle] == &dword_0 + 2;

  return v4;
}

@end