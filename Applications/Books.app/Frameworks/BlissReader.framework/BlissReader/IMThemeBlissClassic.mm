@interface IMThemeBlissClassic
- (id)backgroundColorForNavigationBar:(id)bar;
@end

@implementation IMThemeBlissClassic

- (id)backgroundColorForNavigationBar:(id)bar
{
  traitCollection = [bar traitCollection];

  return [UIColor bc_darkSystemBackgroundForTraitCollection:traitCollection];
}

@end