@interface UIAirDropGroupActivityCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axAppNameForSuggestionCell;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UIAirDropGroupActivityCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIAirDropGroupActivityCell" hasInstanceMethod:@"progress" withFullSignature:{"d", 0}];
  [v3 validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"textSlotID" withType:"I"];
  [v3 validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"subtitleSlotID" withType:"I"];
  [v3 validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"transportSlotID" withType:"I"];
  [v3 validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"displayName" withType:"@"];
  [v3 validateClass:@"UIAirDropGroupActivityCell" hasProperty:@"subtitle" withType:"@"];
  [v3 validateClass:@"UIAirDropGroupActivityCell" hasInstanceMethod:@"node" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIAirDropNode" hasInstanceMethod:@"peopleSuggestion" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFPeopleSuggestion" hasInstanceMethod:@"transportBundleIdentifier" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UIAirDropGroupActivityCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(UIAirDropGroupActivityCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [(UIAirDropGroupActivityCellAccessibility *)self safeStringForKey:@"displayName"];
  v4 = [(UIAirDropGroupActivityCellAccessibility *)self safeStringForKey:@"subtitle"];
  if ([(UIAirDropGroupActivityCellAccessibility *)self _accessibilityTextSlotID])
  {
    v5 = objc_alloc(MEMORY[0x29EDBD7E8]);
    v6 = accessibilityLocalizedString(@"sharing.person");
    v7 = [v5 initWithString:v6];

    v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[UIAirDropGroupActivityCellAccessibility _accessibilityTextSlotID](self, "_accessibilityTextSlotID")}];
    [v7 setAttribute:v8 forKey:*MEMORY[0x29EDBD9B8]];

    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[UIAirDropGroupActivityCellAccessibility _accessibilityTextSlotID](self, "_accessibilityTextSlotID")}];
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_29C327000, v9, OS_LOG_TYPE_DEFAULT, "Returning slot id %@ for %@", buf, 0x16u);
    }
  }

  else
  {
    if (v3 | v4)
    {
      v11 = __UIAXStringForVariables();
    }

    else
    {
      v14.receiver = self;
      v14.super_class = UIAirDropGroupActivityCellAccessibility;
      v11 = [(UIAirDropGroupActivityCellAccessibility *)&v14 accessibilityLabel];
    }

    v7 = v11;
  }

  v12 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)accessibilityValue
{
  v3 = [(UIAirDropGroupActivityCellAccessibility *)self _accessibilityTransportSlotID];
  v4 = [(UIAirDropGroupActivityCellAccessibility *)self _axAppNameForSuggestionCell];
  v5 = objc_alloc(MEMORY[0x29EDBD7E8]);
  v6 = accessibilityLocalizedString(@"sharing.sugggestion");
  v7 = [v5 initWithString:v6];

  if (v3)
  {
    v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v3];
    [v7 setAttribute:v8 forKey:*MEMORY[0x29EDBD9C0]];
  }

  else
  {
    if (![v4 length])
    {
      goto LABEL_6;
    }

    v8 = v7;
    v7 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:v4];
  }

LABEL_6:
  v9 = objc_alloc(MEMORY[0x29EDBD7E8]);
  v10 = accessibilityLocalizedString(@" ");
  v11 = [v9 initWithString:v10];

  v12 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[UIAirDropGroupActivityCellAccessibility _accessibilitySubtitleSlotID](self, "_accessibilitySubtitleSlotID")}];
  [v11 setAttribute:v12 forKey:*MEMORY[0x29EDBD9B8]];

  [(UIAirDropGroupActivityCellAccessibility *)self safeFloatForKey:@"progress"];
  if (v13 <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = AXFormatFloatWithPercentage();
  }

  v15 = __AXStringForVariables();

  return v15;
}

- (id)_axAppNameForSuggestionCell
{
  v2 = [(UIAirDropGroupActivityCellAccessibility *)self valueForKey:@"node"];
  v3 = [v2 safeValueForKey:@"peopleSuggestion"];
  v4 = [v3 safeStringForKey:@"transportBundleIdentifier"];

  v5 = AXAppNameForBundleId();

  return v5;
}

@end