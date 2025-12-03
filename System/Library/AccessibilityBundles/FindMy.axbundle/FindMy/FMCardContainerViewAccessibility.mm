@interface FMCardContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScrollDownPage;
- (BOOL)accessibilityScrollToVisibleWithChild:(id)child;
@end

@implementation FMCardContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FindMy.FMScrollView"];
  [validationsCopy validateClass:@"FindMy.FMCardContainerViewController" hasInstanceMethod:@"expandCard" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityScrollToVisibleWithChild:(id)child
{
  childCopy = child;
  v5 = [(FMCardContainerViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_2];
  v6 = v5;
  if (v5 && ([v5 isScrollEnabled] & 1) == 0)
  {
    [childCopy accessibilityFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v6 accessibilityFrame];
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    v27.origin.x = v10;
    v27.origin.y = v12;
    v27.size.width = v14;
    v27.size.height = v16;
    v21 = CGRectContainsRect(v24, v27);
    v25.origin.x = v10;
    v25.origin.y = v12;
    v25.size.width = v14;
    v25.size.height = v16;
    MaxY = CGRectGetMaxY(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v23 = CGRectGetMaxY(v26);
    accessibilityScrollDownPage = 1;
    if (!v21 && MaxY > v23)
    {
      accessibilityScrollDownPage = [(FMCardContainerViewAccessibility *)self accessibilityScrollDownPage];
    }
  }

  else
  {
    accessibilityScrollDownPage = 1;
  }

  return accessibilityScrollDownPage;
}

uint64_t __74__FMCardContainerViewAccessibility_accessibilityScrollToVisibleWithChild___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    MEMORY[0x29C2D5DF0](@"FindMy.FMScrollView");
    v3 = (v2 != 0) & objc_opt_isKindOfClass();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)accessibilityScrollDownPage
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  superview = [v2 superview];
  _accessibilityViewController = [superview _accessibilityViewController];
  v5 = [_accessibilityViewController safeBoolForKey:@"expandCard"];

  return v5;
}

@end