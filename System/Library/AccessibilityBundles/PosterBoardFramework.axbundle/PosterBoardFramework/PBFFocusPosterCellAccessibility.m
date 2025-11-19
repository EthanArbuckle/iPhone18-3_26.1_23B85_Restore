@interface PBFFocusPosterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axWidgetDescriptorFromLookupInfo:(id)a3;
- (id)_axWidgetNames;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PBFFocusPosterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PRSWidget"];
  [v3 validateClass:@"PRComplicationDescriptor"];
  [v3 validateClass:@"PBFGenericComplicationLookupInfo"];
  [v3 validateClass:@"PBFFocusPosterCell" hasInstanceMethod:@"isCheckboxOn" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PBFFocusPosterCell" hasInstanceMethod:@"posterPreview" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PBFPosterConfigurationGalleryPreview" hasInstanceMethod:@"galleryLocalizedTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PBFPosterConfigurationGalleryPreview" hasInstanceMethod:@"subtitleComplication" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PBFPosterConfigurationGalleryPreview" hasInstanceMethod:@"suggestedComplications" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PBFFocusPosterCell" hasInstanceVariable:@"_checkboxView" withType:"PBFFocusCheckboxView"];
  [v3 validateClass:@"PRSWidget" hasClassMethod:@"pbf_PRSWidgetFromComplicationLookupInfo:uniqueIdentifier:intent:" withFullSignature:{"@", "@", "@", "@", 0}];
  [v3 validateClass:@"PRComplicationDescriptor" hasInstanceMethod:@"initWithPRSWidget:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"PRComplicationDescriptor" hasInstanceMethod:@"widgetDescriptor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHSWidgetDescriptor" hasProperty:@"displayName" withType:"@"];
}

- (id)accessibilityLabel
{
  v2 = [(PBFFocusPosterCellAccessibility *)self safeValueForKey:@"posterPreview"];
  v3 = AXMappedLabelOrValueForPosterPreview(v2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_5:
    v8 = v5;
    goto LABEL_6;
  }

  v6 = AXPosterProvider(v2);
  v7 = [v6 isEqualToString:@"com.apple.GradientPoster.GradientPosterExtension"];

  if (v7)
  {
    v5 = accessibilityLocalizedString(@"color.poster.label");
    goto LABEL_5;
  }

  v10 = accessibilityLocalizedString(@"lock.screen.wallpaper.label");
  v11 = [v2 safeSwiftStringForKey:@"galleryLocalizedTitle"];
  v8 = AXCFormattedString();

LABEL_6:

  return v8;
}

- (id)accessibilityValue
{
  v3 = [(PBFFocusPosterCellAccessibility *)self safeValueForKey:@"posterPreview"];
  v4 = AXMappedLabelOrValueForPosterPreview(v3);
  if (!v4)
  {
    v8.receiver = self;
    v8.super_class = PBFFocusPosterCellAccessibility;
    v4 = [(PBFFocusPosterCellAccessibility *)&v8 accessibilityValue];
  }

  v7 = [(PBFFocusPosterCellAccessibility *)self _axWidgetNames];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(PBFFocusPosterCellAccessibility *)self safeBoolForKey:@"isCheckboxOn"];
  v3 = *MEMORY[0x29EDC7FC0];
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | *MEMORY[0x29EDC7F70];
}

- (id)accessibilityHint
{
  v3 = [(PBFFocusPosterCellAccessibility *)self safeUIViewForKey:@"_checkboxView"];
  if (v3)
  {
    if ([(PBFFocusPosterCellAccessibility *)self safeBoolForKey:@"isCheckboxOn"])
    {
      v4 = @"focus.poster.cell.unlink.hint";
    }

    else
    {
      v4 = @"focus.poster.cell.link.hint";
    }
  }

  else
  {
    v4 = @"focus.poster.cell.hint";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

- (id)_axWidgetNames
{
  v40 = *MEMORY[0x29EDCA608];
  v3 = [(PBFFocusPosterCellAccessibility *)self safeValueForKey:@"posterPreview"];
  v4 = [v3 safeArrayForKey:@"suggestedComplications"];
  v5 = [MEMORY[0x29EDB8DE8] array];
  v6 = [MEMORY[0x29EDB8E00] dictionary];
  v29 = v3;
  v7 = [v3 safeValueForKey:@"subtitleComplication"];
  v8 = [(PBFFocusPosterCellAccessibility *)self _axWidgetDescriptorFromLookupInfo:v7];

  if (v8)
  {
    v9 = AXTopWidgetAndAppName(v8);
    [v5 axSafelyAddObject:v9];
  }

  v28 = v8;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(PBFFocusPosterCellAccessibility *)self _axWidgetDescriptorFromLookupInfo:*(*(&v34 + 1) + 8 * i)];
        AXMapAppNameToWidgets(v15, v6);
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  v27 = v10;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [v6 allKeys];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v6 objectForKey:*(*(&v30 + 1) + 8 * j)];
        v22 = AXFormatAndListWithElements();
        v23 = __UIAXStringForVariables();
        [v5 axSafelyAddObject:{v23, v22, @"__AXStringForVariablesSentinel"}];
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v18);
  }

  v24 = AXFormatAndListWithElements();

  v25 = *MEMORY[0x29EDCA608];

  return v24;
}

- (id)_axWidgetDescriptorFromLookupInfo:(id)a3
{
  v3 = a3;
  MEMORY[0x29C2E7EC0](@"PBFGenericComplicationLookupInfo");
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v13 = v3;
    AXPerformSafeBlock();
    v4 = v15[5];

    _Block_object_dispose(&v14, 8);
    if (v4)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__0;
      v18 = __Block_byref_object_dispose__0;
      v19 = 0;
      v8 = MEMORY[0x29EDCA5F8];
      v9 = 3221225472;
      v10 = __69__PBFFocusPosterCellAccessibility__axWidgetDescriptorFromLookupInfo___block_invoke_2;
      v11 = &unk_29F2EB418;
      v12 = v4;
      AXPerformSafeBlock();
      v5 = v15[5];

      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 safeValueForKey:{@"widgetDescriptor", v8, v9, v10, v11}];

  return v6;
}

uint64_t __69__PBFFocusPosterCellAccessibility__axWidgetDescriptorFromLookupInfo___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29C2E7EC0](@"PRSWidget") pbf_PRSWidgetFromComplicationLookupInfo:*(a1 + 32) uniqueIdentifier:&stru_2A229E280 intent:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __69__PBFFocusPosterCellAccessibility__axWidgetDescriptorFromLookupInfo___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x29C2E7EC0](@"PRComplicationDescriptor")) initWithPRSWidget:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end