@interface CARBabyCryingSpecifier
- (CARBabyCryingSpecifier)init;
@end

@implementation CARBabyCryingSpecifier

- (CARBabyCryingSpecifier)init
{
  v3 = sub_10001C80C(@"ACCESSIBILITY_BABY_CRYING");
  v6.receiver = self;
  v6.super_class = CARBabyCryingSpecifier;
  v4 = [(CARSettingsSwitchCellSpecifier *)&v6 initWithTitle:v3 image:0 icon:0];

  return v4;
}

@end