@interface SKUIDownloadsCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIDownloadsCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIDownloadsCellView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIDownloadsCellView" hasInstanceMethod:@"attributedTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIDownloadsCellView" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIDownloadsCellView" hasInstanceMethod:@"progress" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SKUIDownloadsCellView" hasInstanceMethod:@"buttonType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SKUIDownloadsCollectionViewCell"];
  [validationsCopy validateClass:@"SKUIDownloadsCollectionViewCell" hasInstanceVariable:@"_editIndicator" withType:"UIImageView"];
}

- (BOOL)accessibilityActivate
{
  v3 = [(SKUIDownloadsCellViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Skuidownloadsc_1.isa)];
  v4 = [v3 safeValueForKey:@"_editIndicator"];

  if (v4)
  {
    return 0;
  }

  v6 = [(SKUIDownloadsCellViewAccessibility *)self safeValueForKey:@"button"];
  accessibilityActivate = [v6 accessibilityActivate];

  return accessibilityActivate;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(SKUIDownloadsCellViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Skuidownloadsc_1.isa)];
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
  v3 = [(SKUIDownloadsCellViewAccessibility *)self safeValueForKey:@"attributedTitle"];
  v6 = [(SKUIDownloadsCellViewAccessibility *)self safeValueForKey:@"subtitle"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(SKUIDownloadsCellViewAccessibility *)self safeValueForKey:@"progress"];
  [v3 floatValue];

  v4 = [(SKUIDownloadsCellViewAccessibility *)self safeValueForKey:@"buttonType"];
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
    v7 = accessibilitySKUILocalizedString(v6);
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  v10 = AXFormatFloatWithPercentage();
  v8 = __UIAXStringForVariables();

  return v8;
}

@end