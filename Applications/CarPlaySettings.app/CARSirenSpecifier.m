@interface CARSirenSpecifier
- (CARSirenSpecifier)init;
@end

@implementation CARSirenSpecifier

- (CARSirenSpecifier)init
{
  v3 = sub_10001C80C(@"ACCESSIBILITY_SIREN");
  v6.receiver = self;
  v6.super_class = CARSirenSpecifier;
  v4 = [(CARSettingsSwitchCellSpecifier *)&v6 initWithTitle:v3 image:0 icon:0];

  return v4;
}

@end