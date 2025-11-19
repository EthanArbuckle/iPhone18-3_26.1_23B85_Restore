@interface _UICollectionViewOutlineCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation _UICollectionViewOutlineCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNAccountsAndGroupsViewController"];
  [v3 validateClass:@"CNAccountsAndGroupsViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNAccountsAndGroupsViewController" hasInstanceMethod:@"diffableDataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNAccountsAndGroupsItem"];
  [v3 validateClass:@"CNAccountsAndGroupsItem" hasProperty:@"selected" customGetter:@"isSelected" customSetter:0 withType:"B"];
}

- (unint64_t)accessibilityTraits
{
  v3 = [(_UICollectionViewOutlineCellAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_7 startWithSelf:0];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [v4 safeValueForKey:@"delegate"];
  MEMORY[0x29C2D1D40](@"CNAccountsAndGroupsViewController");
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 safeValueForKey:@"diffableDataSource"];
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__4;
    v26 = __Block_byref_object_dispose__4;
    v27 = 0;
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = __64___UICollectionViewOutlineCellAccessibility_accessibilityTraits__block_invoke_310;
    v18 = &unk_29F2B5A70;
    v21 = &v22;
    v8 = v7;
    v19 = v8;
    v20 = self;
    AXPerformSafeBlock();
    v9 = v23[5];

    _Block_object_dispose(&v22, 8);
    v10 = [v9 safeBoolForKey:@"selected"];
    v14.receiver = self;
    v14.super_class = _UICollectionViewOutlineCellAccessibility;
    v11 = [(_UICollectionViewOutlineCellAccessibility *)&v14 accessibilityTraits];

    if (v10)
    {
      v12 = *MEMORY[0x29EDC7FC0] | v11;
    }

    else
    {
      v12 = v11 & ~*MEMORY[0x29EDC7FC0];
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = _UICollectionViewOutlineCellAccessibility;
    v12 = [(_UICollectionViewOutlineCellAccessibility *)&v28 accessibilityTraits];
  }

  return v12;
}

@end