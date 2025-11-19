@interface CKBrowserCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (id)_axShinyStatusLabel;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation CKBrowserCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKBrowserCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"CKBrowserCell" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKBrowserCell" hasInstanceMethod:@"browserLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKBrowserCell" hasInstanceMethod:@"shinyStatus" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CKBrowserCell" hasInstanceMethod:@"shinyStatusView" withFullSignature:{"@", 0}];
}

- (CGRect)accessibilityFrame
{
  v3 = [(CKBrowserCellAccessibility *)self safeValueForKey:@"contentView"];
  v4 = [(CKBrowserCellAccessibility *)self safeValueForKey:@"iconView"];
  v5 = [v4 safeValueForKey:@"frame"];
  [v5 rectValue];
  v31 = UIAccessibilityConvertFrameToScreenCoordinates(v30, v3);
  y = v31.origin.y;
  x = v31.origin.x;
  height = v31.size.height;
  width = v31.size.width;

  v6 = [(CKBrowserCellAccessibility *)self safeValueForKey:@"browserLabel"];
  v7 = [v6 safeValueForKey:@"frame"];
  [v7 rectValue];
  v33 = UIAccessibilityConvertFrameToScreenCoordinates(v32, v3);
  v8 = v33.origin.x;
  v9 = v33.origin.y;
  v10 = v33.size.width;
  v11 = v33.size.height;

  v12 = [(CKBrowserCellAccessibility *)self safeValueForKey:@"shinyStatusView"];
  v13 = [v12 safeValueForKey:@"frame"];
  [v13 rectValue];
  v35 = UIAccessibilityConvertFrameToScreenCoordinates(v34, v3);
  v14 = v35.origin.x;
  v15 = v35.origin.y;
  v16 = v35.size.width;
  v17 = v35.size.height;

  v36.origin.y = y;
  v36.origin.x = x;
  v36.size.height = height;
  v36.size.width = width;
  v40.origin.x = v8;
  v40.origin.y = v9;
  v40.size.width = v10;
  v40.size.height = v11;
  v37 = CGRectUnion(v36, v40);
  v41.origin.x = v14;
  v41.origin.y = v15;
  v41.size.width = v16;
  v41.size.height = v17;
  v38 = CGRectUnion(v37, v41);
  v18 = v38.origin.x;
  v19 = v38.origin.y;
  v20 = v38.size.width;
  v21 = v38.size.height;

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)accessibilityLabel
{
  v3 = [(CKBrowserCellAccessibility *)self safeValueForKey:@"browserLabel"];
  v4 = [v3 accessibilityLabel];
  v7 = [(CKBrowserCellAccessibility *)self _axShinyStatusLabel];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (BOOL)accessibilityActivate
{
  v21 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [(CKBrowserCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v5 = v4;
  if (v4)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_10;
  }

  v7 = [v4 indexPathForCell:v3];
  if (!v7)
  {
LABEL_9:

LABEL_10:
    v13.receiver = self;
    v13.super_class = CKBrowserCellAccessibility;
    v11 = [(CKBrowserCellAccessibility *)&v13 accessibilityActivate];
    goto LABEL_11;
  }

  v8 = [v5 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_9;
  }

  v14 = MEMORY[0x29EDCA5F8];
  v15 = 3221225472;
  v16 = __51__CKBrowserCellAccessibility_accessibilityActivate__block_invoke;
  v17 = &unk_29F2B0BB8;
  v18 = v8;
  v19 = v5;
  v20 = v7;
  v9 = v7;
  v10 = v8;
  AXPerformSafeBlock();

  v11 = 1;
LABEL_11:

  return v11;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(CKBrowserCellAccessibility *)self safeUIViewForKey:@"iconView"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(CKBrowserCellAccessibility *)self safeValueForKey:@"browserLabel"];
  v3 = [v2 accessibilityLabel];
  v4 = MEMORY[0x29C2D0360]();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CKBrowserCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CKBrowserCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_axShinyStatusLabel
{
  v2 = [(CKBrowserCellAccessibility *)self safeValueForKey:@"shinyStatus"];
  v3 = [v2 integerValue];

  if (v3 == 1)
  {
    v4 = @"app.status.new";
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = @"app.status.new.from.test.flight";
LABEL_5:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end