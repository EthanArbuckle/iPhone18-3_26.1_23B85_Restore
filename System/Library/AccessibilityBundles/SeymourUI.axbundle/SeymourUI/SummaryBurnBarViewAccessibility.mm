@interface SummaryBurnBarViewAccessibility
- (int64_t)_positionForPersonalScore:(float)score low:(float)low lowMiddle:(float)middle highMiddle:(float)highMiddle high:(float)high;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateBurnBarAccessibility:(id)accessibility personalScore:(float)score low:(float)low lowMiddle:(float)middle highMiddle:(float)highMiddle high:(float)high;
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

- (void)updateBurnBarAccessibility:(id)accessibility personalScore:(float)score low:(float)low lowMiddle:(float)middle highMiddle:(float)highMiddle high:(float)high
{
  v32.receiver = self;
  v32.super_class = SummaryBurnBarViewAccessibility;
  accessibilityCopy = accessibility;
  *&v15 = score;
  *&v16 = low;
  *&v17 = middle;
  *&v18 = highMiddle;
  *&v19 = high;
  [(SummaryBurnBarViewAccessibility *)&v32 updateBurnBarAccessibility:accessibilityCopy personalScore:v15 low:v16 lowMiddle:v17 highMiddle:v18 high:v19];
  v20 = accessibilityLocalizedString(@"burn.bar.title");
  *&v21 = score;
  *&v22 = low;
  *&v23 = middle;
  *&v24 = highMiddle;
  *&v25 = high;
  v26 = _accessibilityStringForBurnBarPosition([(SummaryBurnBarViewAccessibility *)self _positionForPersonalScore:v21 low:v22 lowMiddle:v23 highMiddle:v24 high:v25], 0);
  v27 = MEMORY[0x29EDBA0F8];
  v28 = accessibilityLocalizedString(@"burn.bar.community.scores");
  v29 = [v27 stringWithFormat:v28, low, high, middle, highMiddle, v32.receiver, v32.super_class];

  v30 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{4, v20, accessibilityCopy, v26, v29}];

  v31 = AXLabelForElements();
  [(SummaryBurnBarViewAccessibility *)self setAccessibilityLabel:v31];
}

- (int64_t)_positionForPersonalScore:(float)score low:(float)low lowMiddle:(float)middle highMiddle:(float)highMiddle high:(float)high
{
  if (score < low)
  {
    return 0;
  }

  if (score < middle)
  {
    return 1;
  }

  if (score < highMiddle)
  {
    return 2;
  }

  if (score >= high)
  {
    return 4 * (score >= high);
  }

  return 3;
}

@end