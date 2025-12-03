@interface CARSettingsCellSpecifierWrapperPanel
+ (id)panelWrappingCellSpecifier:(id)specifier;
@end

@implementation CARSettingsCellSpecifierWrapperPanel

+ (id)panelWrappingCellSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = objc_opt_new();
  [v4 setWrappedSpecifier:specifierCopy];

  return v4;
}

@end