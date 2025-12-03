@interface UIColorAccessibility
- (id)_accessibilityCachedColorDescriptions;
- (id)_accessibilityColorDescriptionWithOptions:(unint64_t)options;
- (void)_accessibilitySetCachedColorDescriptions:(uint64_t)descriptions;
@end

@implementation UIColorAccessibility

- (id)_accessibilityCachedColorDescriptions
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &__UIColor___accessibilityCachedColorDescriptions);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetCachedColorDescriptions:(uint64_t)descriptions
{
  descriptionsCopy = descriptions;
  location = 0;
  objc_storeStrong(&location, a2);
  if (descriptionsCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityColorDescriptionWithOptions:(unint64_t)options
{
  selfCopy = self;
  v11 = a2;
  optionsCopy = options;
  _accessibilityCachedColorDescriptions = [(UIColorAccessibility *)self _accessibilityCachedColorDescriptions];
  MEMORY[0x29EDC9740](_accessibilityCachedColorDescriptions);
  if (!_accessibilityCachedColorDescriptions)
  {
    v5 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    [(UIColorAccessibility *)selfCopy _accessibilitySetCachedColorDescriptions:v5];
    MEMORY[0x29EDC9740](v5);
  }

  _accessibilityCachedColorDescriptions2 = [(UIColorAccessibility *)selfCopy _accessibilityCachedColorDescriptions];
  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:optionsCopy];
  v7 = [_accessibilityCachedColorDescriptions2 objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = AXColorStringForColor();
    [_accessibilityCachedColorDescriptions2 setObject:v7 forKeyedSubscript:{v8, MEMORY[0x29EDC9740](0).n128_f64[0]}];
  }

  v4 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&_accessibilityCachedColorDescriptions2, 0);

  return v4;
}

@end