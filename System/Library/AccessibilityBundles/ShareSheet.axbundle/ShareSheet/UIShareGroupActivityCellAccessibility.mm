@interface UIShareGroupActivityCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)_accessibilityAXAttributedLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIShareGroupActivityCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIShareGroupActivityCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIShareGroupActivityCell" hasProperty:@"titleSlotID" withType:"I"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UIShareGroupActivityCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(UIShareGroupActivityCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilityAXAttributedLabel
{
  if ([(UIShareGroupActivityCellAccessibility *)self _accessibilitySlotID])
  {
    v3 = objc_alloc(MEMORY[0x29EDBD7E8]);
    v4 = accessibilityLocalizedString(@"sharing.activity");
    v5 = [v3 initWithString:v4];

    v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[UIShareGroupActivityCellAccessibility _accessibilitySlotID](self, "_accessibilitySlotID")}];
    [v5 setAttribute:v6 forKey:*MEMORY[0x29EDBD9B8]];
  }

  else
  {
    v6 = [(UIShareGroupActivityCellAccessibility *)self safeUIViewForKey:@"titleLabel"];
    v5 = [v6 accessibilityLabel];
  }

  return v5;
}

- (CGRect)accessibilityFrame
{
  if ((accessibilityIsPagesApp() & 1) == 0)
  {
    v34.receiver = self;
    v34.super_class = UIShareGroupActivityCellAccessibility;
    [(UIShareGroupActivityCellAccessibility *)&v34 accessibilityFrame];
  }

  v3 = [(UIShareGroupActivityCellAccessibility *)self accessibilityUserDefinedFrame];
  v4 = v3;
  if (v3)
  {
    [v3 rectValue];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = self;
    [(UIShareGroupActivityCellAccessibility *)v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [(UIShareGroupActivityCellAccessibility *)v13 _accessibilityFrameExpansion];
    v23 = -v22;
    v25 = -v24;
    v35.origin.x = v15;
    v35.origin.y = v17;
    v35.size.width = v19;
    v35.size.height = v21;
    CGRectInset(v35, v23, v25);
    UIAccessibilityFrameForBounds();
    v6 = v26;
    v8 = v27;
    v10 = v28;
    v12 = v29;
  }

  v30 = v6;
  v31 = v8;
  v32 = v10;
  v33 = v12;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

@end