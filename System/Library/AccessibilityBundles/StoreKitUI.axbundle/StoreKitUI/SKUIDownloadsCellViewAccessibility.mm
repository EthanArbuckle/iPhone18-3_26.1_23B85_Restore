@interface SKUIDownloadsCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIDownloadsCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIDownloadsCellView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIDownloadsCellView" hasInstanceMethod:@"attributedTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIDownloadsCellView" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIDownloadsCellView" hasInstanceMethod:@"progress" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SKUIDownloadsCellView" hasInstanceMethod:@"buttonType" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SKUIDownloadsCollectionViewCell"];
  [v3 validateClass:@"SKUIDownloadsCollectionViewCell" hasInstanceVariable:@"_editIndicator" withType:"UIImageView"];
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
  v7 = [v6 accessibilityActivate];

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(SKUIDownloadsCellViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Skuidownloadsc_1.isa)];
  v4 = [v3 isSelected];

  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
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
  v5 = [v4 unsignedIntegerValue];

  if (v5 == 1)
  {
    v6 = @"item.downloading";
    goto LABEL_5;
  }

  if (v5 == 2)
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