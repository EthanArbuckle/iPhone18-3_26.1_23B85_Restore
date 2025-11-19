@interface CARTextSizeSpecifier
- (CARTextSizeSpecifier)init;
@end

@implementation CARTextSizeSpecifier

- (CARTextSizeSpecifier)init
{
  v3 = sub_10001C80C(@"ACCESSIBILITY_TEXT_SIZE");
  v6.receiver = self;
  v6.super_class = CARTextSizeSpecifier;
  v4 = [(CARSettingsCellSpecifier *)&v6 initWithTitle:v3 image:0 icon:0 accessoryType:1];

  return v4;
}

@end