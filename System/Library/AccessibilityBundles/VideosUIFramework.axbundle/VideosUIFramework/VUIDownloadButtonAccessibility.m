@interface VUIDownloadButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)_accessibilityDownloadState;
- (unint64_t)accessibilityTraits;
@end

@implementation VUIDownloadButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIDownloadButton" hasProperty:@"viewModel" withType:"@"];
  [v3 validateClass:@"VUIDownloadButtonViewModel" hasProperty:@"downloadProgress" withType:"d"];
  [v3 validateClass:@"VUIDownloadButtonViewModel" hasProperty:@"downloadState" withType:"Q"];
}

- (unint64_t)_accessibilityDownloadState
{
  v2 = [(VUIDownloadButtonAccessibility *)self safeValueForKey:@"viewModel"];
  v3 = [v2 safeIntegerForKey:@"downloadState"];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(VUIDownloadButtonAccessibility *)self _accessibilityDownloadState]- 1;
  if (v2 > 3)
  {
    v3 = @"download.button.download";
  }

  else
  {
    v3 = off_29F31C248[v2];
  }

  return accessibilityLocalizedString(v3);
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VUIDownloadButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VUIDownloadButtonAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FF0];
}

- (id)accessibilityValue
{
  if ([(VUIDownloadButtonAccessibility *)self _accessibilityDownloadState]== 2)
  {
    v3 = [(VUIDownloadButtonAccessibility *)self safeValueForKey:@"viewModel"];
    [v3 safeCGFloatForKey:@"downloadProgress"];

    v4 = AXFormatFloatWithPercentage();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = VUIDownloadButtonAccessibility;
    v4 = [(VUIDownloadButtonAccessibility *)&v6 accessibilityValue];
  }

  return v4;
}

- (id)accessibilityHint
{
  v3 = [(VUIDownloadButtonAccessibility *)self _accessibilityDownloadState];
  if (v3 == 4)
  {
    v4 = @"download.button.remove.hint";
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = @"download.button.cancel.hint";
LABEL_5:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_7;
  }

  v7.receiver = self;
  v7.super_class = VUIDownloadButtonAccessibility;
  v5 = [(VUIDownloadButtonAccessibility *)&v7 accessibilityHint];
LABEL_7:

  return v5;
}

@end