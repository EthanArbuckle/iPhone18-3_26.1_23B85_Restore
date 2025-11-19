@interface CARBoldTextSpecifier
- (CARBoldTextSpecifier)init;
@end

@implementation CARBoldTextSpecifier

- (CARBoldTextSpecifier)init
{
  v3 = sub_10001C80C(@"ACCESSIBILITY_BOLD_TEXT");
  v6.receiver = self;
  v6.super_class = CARBoldTextSpecifier;
  v4 = [(CARSettingsSwitchCellSpecifier *)&v6 initWithTitle:v3 image:0 icon:0];

  return v4;
}

@end