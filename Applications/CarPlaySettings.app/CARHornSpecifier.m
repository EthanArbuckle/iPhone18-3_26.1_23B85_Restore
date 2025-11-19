@interface CARHornSpecifier
- (CARHornSpecifier)init;
@end

@implementation CARHornSpecifier

- (CARHornSpecifier)init
{
  v3 = sub_10001C80C(@"ACCESSIBILITY_CAR_HORN");
  v6.receiver = self;
  v6.super_class = CARHornSpecifier;
  v4 = [(CARSettingsSwitchCellSpecifier *)&v6 initWithTitle:v3 image:0 icon:0];

  return v4;
}

@end