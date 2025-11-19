@interface PGProgressIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
@end

@implementation PGProgressIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PGProgressIndicator" hasInstanceMethod:@"progress" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PGProgressIndicator" hasInstanceVariable:@"_elapsedTrack" withType:"PGVibrantFillView"];
  [v3 validateClass:@"PGMaterialView"];
  [v3 validateClass:@"PGProgressIndicator" hasInstanceVariable:@"_completeTrack" withType:"PGVibrantFillView"];
}

- (id)accessibilityLabel
{
  [(PGProgressIndicatorAccessibility *)self safeCGFloatForKey:@"progress"];
  v2 = accessibilityLocalizedString(@"pip.playback.progress");
  v3 = MEMORY[0x29EDBA0F8];
  v4 = AXFormatFloatWithPercentage();
  v5 = [v3 stringWithFormat:v2, v4];

  return v5;
}

- (CGRect)accessibilityFrame
{
  v3 = [(PGProgressIndicatorAccessibility *)self safeUIViewForKey:@"_elapsedTrack"];
  [v3 safeCGRectForKey:@"bounds"];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12.n128_u64[0] = v5;
  v13.n128_u64[0] = v7;
  v14.n128_u64[0] = v9;
  v15.n128_u64[0] = v11;

  MEMORY[0x2A1C69F48](self, v12, v13, v14, v15);
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

@end