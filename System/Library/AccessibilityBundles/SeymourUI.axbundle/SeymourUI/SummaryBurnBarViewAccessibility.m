@interface SummaryBurnBarViewAccessibility
- (int64_t)_positionForPersonalScore:(float)a3 low:(float)a4 lowMiddle:(float)a5 highMiddle:(float)a6 high:(float)a7;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateBurnBarAccessibility:(id)a3 personalScore:(float)a4 low:(float)a5 lowMiddle:(float)a6 highMiddle:(float)a7 high:(float)a8;
@end

@implementation SummaryBurnBarViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v9[2] = *MEMORY[0x29EDCA608];
  v8.receiver = self;
  v8.super_class = SummaryBurnBarViewAccessibility;
  [(SummaryBurnBarViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"burn.bar.title");
  v4 = accessibilityLocalizedString(@"no.data");
  v9[0] = v3;
  v9[1] = v4;
  v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:2];
  v6 = AXLabelForElements();
  [(SummaryBurnBarViewAccessibility *)self setAccessibilityLabel:v6];

  v7 = *MEMORY[0x29EDCA608];
}

- (void)updateBurnBarAccessibility:(id)a3 personalScore:(float)a4 low:(float)a5 lowMiddle:(float)a6 highMiddle:(float)a7 high:(float)a8
{
  v32.receiver = self;
  v32.super_class = SummaryBurnBarViewAccessibility;
  v14 = a3;
  *&v15 = a4;
  *&v16 = a5;
  *&v17 = a6;
  *&v18 = a7;
  *&v19 = a8;
  [(SummaryBurnBarViewAccessibility *)&v32 updateBurnBarAccessibility:v14 personalScore:v15 low:v16 lowMiddle:v17 highMiddle:v18 high:v19];
  v20 = accessibilityLocalizedString(@"burn.bar.title");
  *&v21 = a4;
  *&v22 = a5;
  *&v23 = a6;
  *&v24 = a7;
  *&v25 = a8;
  v26 = _accessibilityStringForBurnBarPosition([(SummaryBurnBarViewAccessibility *)self _positionForPersonalScore:v21 low:v22 lowMiddle:v23 highMiddle:v24 high:v25], 0);
  v27 = MEMORY[0x29EDBA0F8];
  v28 = accessibilityLocalizedString(@"burn.bar.community.scores");
  v29 = [v27 stringWithFormat:v28, a5, a8, a6, a7, v32.receiver, v32.super_class];

  v30 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{4, v20, v14, v26, v29}];

  v31 = AXLabelForElements();
  [(SummaryBurnBarViewAccessibility *)self setAccessibilityLabel:v31];
}

- (int64_t)_positionForPersonalScore:(float)a3 low:(float)a4 lowMiddle:(float)a5 highMiddle:(float)a6 high:(float)a7
{
  if (a3 < a4)
  {
    return 0;
  }

  if (a3 < a5)
  {
    return 1;
  }

  if (a3 < a6)
  {
    return 2;
  }

  if (a3 >= a7)
  {
    return 4 * (a3 >= a7);
  }

  return 3;
}

@end