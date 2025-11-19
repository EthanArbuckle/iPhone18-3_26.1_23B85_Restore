@interface _UIStatusBarCellularSignalViewAcessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _UIStatusBarCellularSignalViewAcessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIStatusBarDualCellularSignalView"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  v20 = self;
  location[1] = a2;
  v16 = [(_UIStatusBarCellularSignalViewAcessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uistatusbardua_0.isa)];
  *&v2 = MEMORY[0x29EDC9740](v16).n128_u64[0];
  if (!v16 || ((location[0] = [(_UIStatusBarCellularSignalViewAcessibility *)v20 _accessibilityValueForKey:@"AXStatusBarSignalViewServiceKey", v2]) == 0 ? (v18 = 0) : (v21 = MEMORY[0x29EDC9748](location[0]), v18 = 1), objc_storeStrong(location, 0), !v18))
  {
    v14 = MEMORY[0x29EDBD7E8];
    v15 = accessibilityLocalizedString(@"status.cellular.service");
    v17 = [v14 axAttributedStringWithString:?];
    *&v3 = MEMORY[0x29EDC9740](v15).n128_u64[0];
    if (([(_UIStatusBarCellularSignalViewAcessibility *)v20 _accessibilityBoolValueForKey:@"PrimaryCellular", v3]& 1) != 0)
    {
      v12 = MEMORY[0x29EDBD7E8];
      v13 = accessibilityLocalizedString(@"primary.cellular");
      v4 = [v12 axAttributedStringWithString:?];
      v5 = v17;
      v17 = v4;
      MEMORY[0x29EDC9740](v5);
      [v17 setAttribute:@"Primary" forKey:{*MEMORY[0x29EDBD990], MEMORY[0x29EDC9740](v13).n128_f64[0]}];
    }

    else if (([(_UIStatusBarCellularSignalViewAcessibility *)v20 _accessibilityBoolValueForKey:@"SecondaryCellular"]& 1) != 0)
    {
      v10 = MEMORY[0x29EDBD7E8];
      v11 = accessibilityLocalizedString(@"secondary.cellular");
      v6 = [v10 axAttributedStringWithString:?];
      v7 = v17;
      v17 = v6;
      MEMORY[0x29EDC9740](v7);
      [v17 setAttribute:@"Secondary" forKey:{*MEMORY[0x29EDBD990], MEMORY[0x29EDC9740](v11).n128_f64[0]}];
    }

    v21 = MEMORY[0x29EDC9748](v17);
    v18 = 1;
    objc_storeStrong(&v17, 0);
  }

  v8 = v21;

  return v8;
}

@end