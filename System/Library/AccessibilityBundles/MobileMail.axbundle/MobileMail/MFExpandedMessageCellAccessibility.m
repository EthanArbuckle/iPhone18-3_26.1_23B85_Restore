@interface MFExpandedMessageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityElements;
- (id)accessibilityLabel;
@end

@implementation MFExpandedMessageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WKContentView"];
  [v3 validateClass:@"MFExpandedMessageCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"MFExpandedMessageCell" hasInstanceMethod:@"messageViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UICollectionView" hasInstanceMethod:@"_accessibilityShouldUseCollectionViewCellAccessibilityElements" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UICollectionViewCellAccessibilityElement" hasInstanceMethod:@"indexPath" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFModernAddressAtom" hasInstanceVariable:@"_atomView" withType:"CNAtomView"];
}

- (id)accessibilityLabel
{
  v3 = [(MFExpandedMessageCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_4];
  v4 = [v3 safeValueForKey:@"_atomView"];
  v5 = [v4 accessibilityLabel];

  v12 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsSafeCategory();
  v7 = [v6 _accessibilityMessageIndexDescription];

  if (v7)
  {
    v8 = __AXStringForVariables();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MFExpandedMessageCellAccessibility;
    v8 = [(MFExpandedMessageCellAccessibility *)&v11 accessibilityLabel];
  }

  v9 = v8;

  return v9;
}

uint64_t __56__MFExpandedMessageCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Mfmodernaddres.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityDragSourceDescriptors
{
  v3 = [(MFExpandedMessageCellAccessibility *)self _accessibilityDescendantOfType:NSClassFromString(&cfstr_Wkcontentview.isa)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityDragSourceDescriptors];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFExpandedMessageCellAccessibility;
    v5 = [(MFExpandedMessageCellAccessibility *)&v8 accessibilityDragSourceDescriptors];
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityElements
{
  v13[1] = *MEMORY[0x29EDCA608];
  v3 = [(MFExpandedMessageCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = [v3 safeBoolForKey:@"_accessibilityShouldUseCollectionViewCellAccessibilityElements"];

  if (!v4)
  {
    goto LABEL_4;
  }

  v12 = 0;
  objc_opt_class();
  v5 = [(MFExpandedMessageCellAccessibility *)self safeValueForKey:@"messageViewController"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 view];

  if (v7)
  {
    v13[0] = v7;
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];
  }

  else
  {
LABEL_4:
    v11.receiver = self;
    v11.super_class = MFExpandedMessageCellAccessibility;
    v8 = [(MFExpandedMessageCellAccessibility *)&v11 accessibilityElements];
  }

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

@end