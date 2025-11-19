@interface MFComposeImageSizeViewAccessibility
- (BOOL)accessibilityElementsHidden;
@end

@implementation MFComposeImageSizeViewAccessibility

void __67__MFComposeImageSizeViewAccessibility_setSizeDescription_forScale___block_invoke()
{
  v11[4] = *MEMORY[0x29EDCA608];
  v0 = [MEMORY[0x29EDB9F48] bundleForClass:NSClassFromString(&cfstr_Mfcomposeimage.isa)];
  v1 = [v0 localizedStringForKey:@"SMALL_SIZE_BAR_TITLE" value:&stru_2A2207348 table:@"Main"];
  v11[0] = v1;
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:NSClassFromString(&cfstr_Mfcomposeimage.isa)];
  v3 = [v2 localizedStringForKey:@"MEDIUM_SIZE_BAR_TITLE" value:&stru_2A2207348 table:@"Main"];
  v11[1] = v3;
  v4 = [MEMORY[0x29EDB9F48] bundleForClass:NSClassFromString(&cfstr_Mfcomposeimage.isa)];
  v5 = [v4 localizedStringForKey:@"LARGE_SIZE_BAR_TITLE" value:&stru_2A2207348 table:@"Main"];
  v11[2] = v5;
  v6 = [MEMORY[0x29EDB9F48] bundleForClass:NSClassFromString(&cfstr_Mfcomposeimage.isa)];
  v7 = [v6 localizedStringForKey:@"ACTUAL_SIZE_BAR_TITLE" value:&stru_2A2207348 table:@"Main"];
  v11[3] = v7;
  v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:4];
  v9 = setSizeDescription_forScale__scaleLabels;
  setSizeDescription_forScale__scaleLabels = v8;

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t __67__MFComposeImageSizeViewAccessibility_setSizeDescription_forScale___block_invoke_308(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _scaleLabelIndexForScale:*(a1 + 56)];
  v2 = [setSizeDescription_forScale__scaleLabels objectAtIndex:*(*(*(a1 + 40) + 8) + 24)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)accessibilityElementsHidden
{
  v2 = [(MFComposeImageSizeViewAccessibility *)self safeValueForKey:@"alpha"];
  [v2 floatValue];
  v4 = v3 != 1.0;

  return v4;
}

@end