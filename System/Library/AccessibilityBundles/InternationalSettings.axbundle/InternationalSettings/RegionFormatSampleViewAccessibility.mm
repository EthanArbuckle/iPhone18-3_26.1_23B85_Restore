@interface RegionFormatSampleViewAccessibility
- (void)setTextForRegionExample:(id)a3;
@end

@implementation RegionFormatSampleViewAccessibility

- (void)setTextForRegionExample:(id)a3
{
  v20.receiver = self;
  v20.super_class = RegionFormatSampleViewAccessibility;
  [(RegionFormatSampleViewAccessibility *)&v20 setTextForRegionExample:a3];
  v4 = [(RegionFormatSampleViewAccessibility *)self safeValueForKey:@"_accessibilityLabels"];
  v5 = [v4 objectAtIndex:2];
  v6 = MEMORY[0x29EDBD7E8];
  v7 = [v5 text];
  v8 = [v6 axAttributedStringWithString:v7];

  v9 = [MEMORY[0x29EDBA070] numberWithBool:1];
  [v8 setAttribute:v9 forKey:*MEMORY[0x29EDBD888]];

  [v5 setAccessibilityLabel:v8];
  v10 = [v4 objectAtIndex:1];

  v11 = MEMORY[0x29EDBD7E8];
  v12 = [v10 text];
  v13 = [v11 axAttributedStringWithString:v12];

  v14 = [MEMORY[0x29EDBA070] numberWithBool:1];
  [v13 setAttribute:v14 forKey:*MEMORY[0x29EDBD898]];

  [v10 setAccessibilityLabel:v13];
  v15 = [v4 objectAtIndex:3];

  v16 = MEMORY[0x29EDBD7E8];
  v17 = [v15 text];
  v18 = [v16 axAttributedStringWithString:v17];

  v19 = [MEMORY[0x29EDBA070] numberWithBool:1];
  [v18 setAttribute:v19 forKey:*MEMORY[0x29EDBD968]];

  [v15 setAccessibilityLabel:v18];
}

@end