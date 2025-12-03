@interface VUIDownloadButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)_accessibilityDownloadState;
- (unint64_t)accessibilityTraits;
@end

@implementation VUIDownloadButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIDownloadButton" hasProperty:@"viewModel" withType:"@"];
  [validationsCopy validateClass:@"VUIDownloadButtonViewModel" hasProperty:@"downloadProgress" withType:"d"];
  [validationsCopy validateClass:@"VUIDownloadButtonViewModel" hasProperty:@"downloadState" withType:"Q"];
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

    accessibilityValue = AXFormatFloatWithPercentage();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = VUIDownloadButtonAccessibility;
    accessibilityValue = [(VUIDownloadButtonAccessibility *)&v6 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityHint
{
  _accessibilityDownloadState = [(VUIDownloadButtonAccessibility *)self _accessibilityDownloadState];
  if (_accessibilityDownloadState == 4)
  {
    v4 = @"download.button.remove.hint";
    goto LABEL_5;
  }

  if (_accessibilityDownloadState == 2)
  {
    v4 = @"download.button.cancel.hint";
LABEL_5:
    accessibilityHint = accessibilityLocalizedString(v4);
    goto LABEL_7;
  }

  v7.receiver = self;
  v7.super_class = VUIDownloadButtonAccessibility;
  accessibilityHint = [(VUIDownloadButtonAccessibility *)&v7 accessibilityHint];
LABEL_7:

  return accessibilityHint;
}

@end