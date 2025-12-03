@interface SUUIDownloadsCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUIDownloadsCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIDownloadsCellView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIDownloadsCellView" hasInstanceMethod:@"attributedTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIDownloadsCellView" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIDownloadsCellView" hasInstanceMethod:@"progress" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SUUIDownloadsCellView" hasInstanceMethod:@"buttonType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SUUIDownloadsCollectionViewCell"];
  [validationsCopy validateClass:@"SUUIDownloadsCollectionViewCell" hasInstanceVariable:@"_editIndicator" withType:"UIImageView"];
}

- (BOOL)accessibilityActivate
{
  v3 = [(SUUIDownloadsCellViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Suuidownloadsc_0.isa)];
  v4 = [v3 safeValueForKey:@"_editIndicator"];

  if (v4)
  {
    return 0;
  }

  v6 = [(SUUIDownloadsCellViewAccessibility *)self safeValueForKey:@"button"];
  accessibilityActivate = [v6 accessibilityActivate];

  return accessibilityActivate;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(SUUIDownloadsCellViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Suuidownloadsc_0.isa)];
  isSelected = [v3 isSelected];

  v5 = *MEMORY[0x29EDC7FC0];
  if (!isSelected)
  {
    v5 = 0;
  }

  return v5 | v2;
}

- (id)accessibilityLabel
{
  v3 = [(SUUIDownloadsCellViewAccessibility *)self safeValueForKey:@"attributedTitle"];
  v6 = [(SUUIDownloadsCellViewAccessibility *)self safeValueForKey:@"subtitle"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(SUUIDownloadsCellViewAccessibility *)self safeValueForKey:@"progress"];
  [v3 floatValue];

  v4 = [(SUUIDownloadsCellViewAccessibility *)self safeValueForKey:@"buttonType"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
  {
    v6 = @"item.downloading";
    goto LABEL_5;
  }

  if (unsignedIntegerValue == 2)
  {
    v6 = @"item.download.paused";
LABEL_5:
    v7 = accessibilityLocalizedString(v6);
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  v10 = AXFormatFloatWithPercentage();
  v8 = __UIAXStringForVariables();

  return v8;
}

@end