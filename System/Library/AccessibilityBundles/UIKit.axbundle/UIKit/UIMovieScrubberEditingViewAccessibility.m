@interface UIMovieScrubberEditingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation UIMovieScrubberEditingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UIMovieScrubberEditingView";
  v3 = "B";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"setEnabled:" withFullSignature:{"v", v3, 0}];
  objc_storeStrong(v6, obj);
}

- (void)setEnabled:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = [(UIMovieScrubberEditingViewAccessibility *)self safeBoolForKey:@"isEnabled"]!= a3;
  v7.receiver = v11;
  v7.super_class = UIMovieScrubberEditingViewAccessibility;
  [(UIMovieScrubberEditingViewAccessibility *)&v7 setEnabled:v9];
  if (v8)
  {
    v6 = 0;
    objc_opt_class();
    v3 = [(UIMovieScrubberEditingViewAccessibility *)v11 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uimoviescrubbe.isa)];
    v5 = __UIAccessibilityCastAsSafeCategory();
    MEMORY[0x29EDC9740](v3);
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    [(UIMovieScrubberAccessibility *)v4 _accessibilityClearChildren];
    MEMORY[0x29EDC9740](v4);
  }
}

@end