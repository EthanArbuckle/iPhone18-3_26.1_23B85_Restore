@interface IMThemePageDynamic
- (BOOL)isNight:(id)night;
@end

@implementation IMThemePageDynamic

- (BOOL)isNight:(id)night
{
  traitCollection = [night traitCollection];
  v4 = [traitCollection userInterfaceStyle] == &dword_0 + 2;

  return v4;
}

@end