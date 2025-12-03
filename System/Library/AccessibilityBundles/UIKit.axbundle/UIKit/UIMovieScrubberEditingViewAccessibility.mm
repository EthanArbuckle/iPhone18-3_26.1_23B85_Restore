@interface UIMovieScrubberEditingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation UIMovieScrubberEditingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UIMovieScrubberEditingView";
  v3 = "B";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"setEnabled:" withFullSignature:{"v", v3, 0}];
  objc_storeStrong(v6, obj);
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  v10 = a2;
  enabledCopy = enabled;
  v8 = [(UIMovieScrubberEditingViewAccessibility *)self safeBoolForKey:@"isEnabled"]!= enabled;
  v7.receiver = selfCopy;
  v7.super_class = UIMovieScrubberEditingViewAccessibility;
  [(UIMovieScrubberEditingViewAccessibility *)&v7 setEnabled:enabledCopy];
  if (v8)
  {
    v6 = 0;
    objc_opt_class();
    v3 = [(UIMovieScrubberEditingViewAccessibility *)selfCopy _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uimoviescrubbe.isa)];
    v5 = __UIAccessibilityCastAsSafeCategory();
    MEMORY[0x29EDC9740](v3);
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    [(UIMovieScrubberAccessibility *)v4 _accessibilityClearChildren];
    MEMORY[0x29EDC9740](v4);
  }
}

@end