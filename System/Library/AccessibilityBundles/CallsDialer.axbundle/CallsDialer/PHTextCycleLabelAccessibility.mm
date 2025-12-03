@interface PHTextCycleLabelAccessibility
- (id)accessibilityLanguage;
- (unint64_t)accessibilityTraits;
@end

@implementation PHTextCycleLabelAccessibility

- (id)accessibilityLanguage
{
  v3 = [(PHTextCycleLabelAccessibility *)self _accessibilityValueForKey:@"_accessibilityLanguageMap"];
  if (!v3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDB8DC0]) initWithObjectsAndKeys:{@"en", @"Emergency call", @"de", @"Notruf", @"fr", @"Appel d’urgence", @"it", @"Solo emergenze", @"ja", @"緊急電話", @"es", @"Llamada SOS", @"pt", @"Ligação emergência", @"ru", @"Экстренный вызов", 0}];
    [(PHTextCycleLabelAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"_accessibilityLanguageMap"];
  }

  accessibilityLabel = [(PHTextCycleLabelAccessibility *)self accessibilityLabel];
  v5 = [v3 objectForKey:accessibilityLabel];

  if (!v5)
  {
    _AXAssert();
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PHTextCycleLabelAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(PHTextCycleLabelAccessibility *)&v3 accessibilityTraits];
}

@end