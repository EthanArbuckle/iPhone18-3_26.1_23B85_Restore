@interface NavSettingsTraceSpeedMultiplierController
- (void)prepareContent;
@end

@implementation NavSettingsTraceSpeedMultiplierController

- (void)prepareContent
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100FF1B04;
  v3[3] = &unk_1016612C8;
  v4 = &off_1016EDCA0;
  v2 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v3];
}

@end