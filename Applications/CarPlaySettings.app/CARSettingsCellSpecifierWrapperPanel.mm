@interface CARSettingsCellSpecifierWrapperPanel
+ (id)panelWrappingCellSpecifier:(id)a3;
@end

@implementation CARSettingsCellSpecifierWrapperPanel

+ (id)panelWrappingCellSpecifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setWrappedSpecifier:v3];

  return v4;
}

@end