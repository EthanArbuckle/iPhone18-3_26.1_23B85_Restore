@interface CAMPIPVideoPreviewViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axMovePIPToAnchor:(int64_t)a3;
- (id)_axPreviewViewController;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
@end

@implementation CAMPIPVideoPreviewViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"_animateFrontPIPVideoPreviewToAnchor" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"CAMPreviewViewController"];
  [v3 validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"previewView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMPreviewView" hasInstanceMethod:@"frontPIPAnchor" withFullSignature:{"q", 0}];
}

- (id)_axPreviewViewController
{
  v3 = MEMORY[0x29C2CF1C0](@"CAMPreviewViewController", a2);

  return [(CAMPIPVideoPreviewViewAccessibility *)self _accessibilityFindViewControllerAncestorOfType:v3];
}

- (id)accessibilityValue
{
  v3 = [(CAMPIPVideoPreviewViewAccessibility *)self _axPreviewViewController];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = [v3 safeValueForKey:@"previewView"];
  v6 = [v5 safeIntegerForKey:@"frontPIPAnchor"];

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = @"pip.video.bottom.left";
      goto LABEL_12;
    }

    if (v6 == 3)
    {
      v7 = @"pip.video.bottom.right";
      goto LABEL_12;
    }

LABEL_9:
    v11.receiver = self;
    v11.super_class = CAMPIPVideoPreviewViewAccessibility;
    v8 = [(CAMPIPVideoPreviewViewAccessibility *)&v11 accessibilityValue];
    goto LABEL_13;
  }

  if (!v6)
  {
    v7 = @"pip.video.top.left";
    goto LABEL_12;
  }

  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = @"pip.video.top.right";
LABEL_12:
  v8 = accessibilityCameraUIFRSVLocalizedString(v7);
LABEL_13:
  v9 = v8;

  return v9;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(CAMPIPVideoPreviewViewAccessibility *)self _axPreviewViewController];
  v5 = v4;
  if (v4)
  {
    if ((([v4 safeValueForKey:@"previewView"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "safeIntegerForKey:", @"frontPIPAnchor"), v6, !v7) || (v8 = objc_alloc(MEMORY[0x29EDC78E0]), accessibilityCameraUIFRSVLocalizedString(@"pip.video.move.to.top.left"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "initWithName:target:selector:", v9, self, sel__axMoveToTopLeft_), v9, objc_msgSend(v3, "addObject:", v10), v10, v7 != 1)) && (v11 = objc_alloc(MEMORY[0x29EDC78E0]), accessibilityCameraUIFRSVLocalizedString(@"pip.video.move.to.top.right"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "initWithName:target:selector:", v12, self, sel__axMoveToTopRight_), v12, objc_msgSend(v3, "addObject:", v13), v13, v7 == 2) || (v14 = objc_alloc(MEMORY[0x29EDC78E0]), accessibilityCameraUIFRSVLocalizedString(@"pip.video.move.to.bottom.left"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "initWithName:target:selector:", v15, self, sel__axMoveToBottomLeft_), v15, objc_msgSend(v3, "addObject:", v16), v16, v7 != 3))
    {
      v17 = objc_alloc(MEMORY[0x29EDC78E0]);
      v18 = accessibilityCameraUIFRSVLocalizedString(@"pip.video.move.to.bottom.right");
      v19 = [v17 initWithName:v18 target:self selector:sel__axMoveToBottomRight_];

      [v3 addObject:v19];
    }
  }

  return v3;
}

- (BOOL)_axMovePIPToAnchor:(int64_t)a3
{
  v3 = [(CAMPIPVideoPreviewViewAccessibility *)self _axPreviewViewController];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    AXPerformSafeBlock();
  }

  return v4 != 0;
}

@end