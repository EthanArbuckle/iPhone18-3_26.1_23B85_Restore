@interface CAMPhotoFormatStatusIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsCurrentFormatEssential;
- (BOOL)accessibilityActivate;
- (id)_axCurrentFormatValue;
- (id)_axEncodingName:(id)name;
- (id)_axLocalizedStringForPhotoFormat:(id)format;
- (id)accessibilityValue;
@end

@implementation CAMPhotoFormatStatusIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMPhotoFormatStatusIndicator" isKindOfClass:@"CAMExpandingControl"];
  [validationsCopy validateClass:@"CAMExpandingControl" hasInstanceMethod:@"selectedState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMPhotoFormatStatusIndicator" hasInstanceMethod:@"allowedFormats" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMPhotoFormatStatusIndicator" hasInstanceMethod:@"_essentialFormatIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CAMPhotoFormatStatusIndicator" hasInstanceMethod:@"_advancedFormatIndex" withFullSignature:{"Q", 0}];
}

- (id)accessibilityValue
{
  v3 = [(CAMPhotoFormatStatusIndicatorAccessibility *)self safeValueForKey:@"selectedState"];
  v12 = 0;
  v13 = 0;
  [v3 getValue:&v12 size:16];
  v4 = v12;
  v5 = v13;
  if ([(CAMPhotoFormatStatusIndicatorAccessibility *)self _axIsCurrentFormatEssential])
  {
    _axAllowedFormats = [(CAMPhotoFormatStatusIndicatorAccessibility *)self _axAllowedFormats];
    v7 = [_axAllowedFormats objectAtIndexedSubscript:{-[CAMPhotoFormatStatusIndicatorAccessibility _axAdvancedFormatIndex](self, "_axAdvancedFormatIndex")}];
    v12 = 0;
    v13 = 0;
    [v7 getValue:&v12 size:16];
    v4 = v12;
    v5 = v13;
  }

  v8 = [(CAMPhotoFormatStatusIndicatorAccessibility *)self _axLocalizedStringForPhotoFormat:v4, v5];
  _axCurrentFormatValue = [(CAMPhotoFormatStatusIndicatorAccessibility *)self _axCurrentFormatValue];
  v9 = __UIAXStringForVariables();

  return v9;
}

- (BOOL)accessibilityActivate
{
  v8.receiver = self;
  v8.super_class = CAMPhotoFormatStatusIndicatorAccessibility;
  accessibilityActivate = [(CAMPhotoFormatStatusIndicatorAccessibility *)&v8 accessibilityActivate];
  _axCurrentFormatValue = [(CAMPhotoFormatStatusIndicatorAccessibility *)self _axCurrentFormatValue];
  v5 = _axCurrentFormatValue;
  if (_axCurrentFormatValue)
  {
    v7 = _axCurrentFormatValue;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  return accessibilityActivate;
}

- (id)_axCurrentFormatValue
{
  if ([(CAMPhotoFormatStatusIndicatorAccessibility *)self _axIsCurrentFormatEssential])
  {
    v2 = @"PHOTO_ENCODING_OFF";
  }

  else
  {
    v2 = @"PHOTO_ENCODING_ON";
  }

  v3 = accessibilityCameraUILocalizedString(v2);

  return v3;
}

- (id)_axEncodingName:(id)name
{
  if (name.var0 > 2uLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraUILocalizedString(off_29F2ACD08[name.var0]);
  }

  return v4;
}

- (id)_axLocalizedStringForPhotoFormat:(id)format
{
  var1 = format.var1;
  v4 = [(CAMPhotoFormatStatusIndicatorAccessibility *)self _axEncodingName:format.var0];
  v5 = 24;
  v6 = 12;
  if (var1 != 1)
  {
    v6 = 0;
  }

  if (var1 != 2)
  {
    v5 = v6;
  }

  v7 = var1 == 3;
  if (var1 == 3)
  {
    v8 = 48;
  }

  else
  {
    v8 = v5;
  }

  v9 = +[AXCameraUIGlue integerFormatter];
  v10 = [MEMORY[0x29EDBA070] numberWithInteger:v8];
  v11 = [v9 stringFromNumber:v10];

  if (v7)
  {
    v12 = accessibilityCameraUILocalizedString(@"PHOTO_ENCODING_MAX");

    v11 = v12;
  }

  v13 = __UIAXStringForVariables();

  return v13;
}

- (BOOL)_axIsCurrentFormatEssential
{
  v3 = [(CAMPhotoFormatStatusIndicatorAccessibility *)self safeValueForKey:@"selectedState"];
  _axAllowedFormats = [(CAMPhotoFormatStatusIndicatorAccessibility *)self _axAllowedFormats];
  _axEssentialFormatIndex = [(CAMPhotoFormatStatusIndicatorAccessibility *)self _axEssentialFormatIndex];
  LOBYTE(_axEssentialFormatIndex) = [_axAllowedFormats indexOfObject:v3] == _axEssentialFormatIndex;

  return _axEssentialFormatIndex;
}

@end