@interface MessageWithActionTileViewWithImageAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MessageWithActionTileViewWithImageAccessibility

- (id)accessibilityLabel
{
  v2 = [(MessageWithActionTileViewWithImageAccessibility *)self safeUIViewForKey:@"messageTileView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(MessageWithActionTileViewWithImageAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_1];
  firstObject = [v3 firstObject];
  v5 = firstObject;
  if (firstObject)
  {
    [firstObject accessibilityActivationPoint];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MessageWithActionTileViewWithImageAccessibility;
    [(MessageWithActionTileViewWithImageAccessibility *)&v12 accessibilityActivationPoint];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

uint64_t __79__MessageWithActionTileViewWithImageAccessibility_accessibilityActivationPoint__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MessageWithActionTileViewWithImageAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MessageWithActionTileViewWithImageAccessibility *)&v3 accessibilityTraits];
}

@end