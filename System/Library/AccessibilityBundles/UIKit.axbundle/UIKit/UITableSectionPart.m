@interface UITableSectionPart
- (CGRect)accessibilityFrame;
@end

@implementation UITableSectionPart

- (CGRect)accessibilityFrame
{
  v10 = [(UITableSectionPart *)self accessibilityContainer];
  [v10 accessibilityFrame];
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  MEMORY[0x29EDC9740](v10);
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end