@interface IMThemeBlissClassic
- (id)backgroundColorForNavigationBar:(id)a3;
@end

@implementation IMThemeBlissClassic

- (id)backgroundColorForNavigationBar:(id)a3
{
  v3 = [a3 traitCollection];

  return [UIColor bc_darkSystemBackgroundForTraitCollection:v3];
}

@end