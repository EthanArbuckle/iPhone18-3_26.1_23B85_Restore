@interface UITableViewHeaderFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityScrollToVisibleForNextElementRetrieval:(int64_t)a3;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UITableViewHeaderFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UITableViewHeaderFooterView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v3 = "@";
  [location[0] validateClass:v4 hasInstanceMethod:@"text" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceVariable:@"_detailLabel" withType:"_UITableViewHeaderFooterViewLabel"];
  [location[0] validateClass:v4 hasInstanceMethod:@"contentConfiguration" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"sectionHeader" withFullSignature:{"B", 0}];
  objc_storeStrong(v6, obj);
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  v12 = [(UITableViewHeaderFooterViewAccessibility *)self storedAccessibilityRespondsToUserInteraction];
  *&v2 = MEMORY[0x29EDC9740](v12).n128_u64[0];
  if (v12)
  {
    v11 = [(UITableViewHeaderFooterViewAccessibility *)self storedAccessibilityRespondsToUserInteraction];
    v16 = [v11 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v11);
  }

  else
  {
    v9 = [(UITableViewHeaderFooterViewAccessibility *)self accessibilityCustomActions];
    v10 = [v9 count];
    MEMORY[0x29EDC9740](v9);
    if (v10)
    {
      return 1;
    }

    else
    {
      v13 = 0;
      v8 = 0;
      if (AXRequestingClient() == 4)
      {
        v14 = [MEMORY[0x29EDBDFA0] sharedInstance];
        v13 = 1;
        v8 = [v14 assistiveTouchScannerSpeechEnabled];
      }

      if (v13)
      {
        MEMORY[0x29EDC9740](v14);
      }

      if (v8)
      {
        v7 = [(UITableViewHeaderFooterViewAccessibility *)self accessibilityLabel];
        v6 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
        v5 = [v7 stringByTrimmingCharactersInSet:?];
        v16 = [v5 length] != 0;
        MEMORY[0x29EDC9740](v5);
        MEMORY[0x29EDC9740](v6);
        MEMORY[0x29EDC9740](v7);
      }

      else
      {
        v4 = [(UITableViewHeaderFooterViewAccessibility *)self _accessibilityInternalTextLinks];
        v16 = [v4 count] != 0;
        MEMORY[0x29EDC9740](v4);
      }
    }
  }

  return v16;
}

- (BOOL)isAccessibilityElement
{
  v9 = [(UITableViewHeaderFooterViewAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  if (v9)
  {
    v8 = [(UITableViewHeaderFooterViewAccessibility *)self isAccessibilityUserDefinedElement];
    v11 = [v8 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v8);
  }

  else
  {
    v6 = [(UITableViewHeaderFooterViewAccessibility *)self accessibilityLabel];
    v5 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v4 = [v6 stringByTrimmingCharactersInSet:?];
    v7 = [v4 length];
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
    return v7 != 0;
  }

  return v11;
}

- (id)accessibilityLabel
{
  v14 = self;
  v13[1] = a2;
  v13[0] = [(UITableViewHeaderFooterViewAccessibility *)self accessibilityUserDefinedLabel];
  if (!v13[0])
  {
    v13[0] = [(UITableViewHeaderFooterViewAccessibility *)v14 safeValueForKey:@"text"];
    MEMORY[0x29EDC9740](0);
  }

  if (![v13[0] length])
  {
    v11 = [(UITableViewHeaderFooterViewAccessibility *)v14 safeValueForKey:@"contentConfiguration"];
    v2 = [v11 accessibilityLabel];
    v3 = v13[0];
    v13[0] = v2;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v11);
  }

  v10 = [(UITableViewHeaderFooterViewAccessibility *)v14 safeValueForKey:@"_detailLabel"];
  location = [v10 accessibilityLabel];
  MEMORY[0x29EDC9740](v10);
  v4 = __UIAXStringForVariables();
  v5 = v13[0];
  v13[0] = v4;
  if (([v4 isAXAttributedString] & 1) == 0)
  {
    v6 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v13[0]];
    v7 = v13[0];
    v13[0] = v6;
    MEMORY[0x29EDC9740](v7);
  }

  if (([(UITableViewHeaderFooterViewAccessibility *)v14 _accessibilityBoolValueForKey:@"SkipConvertToLowercase"]& 1) == 0)
  {
    [v13[0] setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD890]];
  }

  v9 = MEMORY[0x29EDC9748](v13[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v13, 0);

  return v9;
}

- (CGRect)accessibilityFrame
{
  v15 = self;
  v14 = a2;
  v13 = 0;
  objc_opt_class();
  v12 = __UIAccessibilityCastAsClass();
  v11 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  v10 = [v11 contentView];
  [v10 accessibilityFrame];
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  MEMORY[0x29EDC9740](v10);
  MEMORY[0x29EDC9740](v11);
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v8 = self;
  v7 = a2;
  v5.receiver = self;
  v5.super_class = UITableViewHeaderFooterViewAccessibility;
  v6 = [(UITableViewHeaderFooterViewAccessibility *)&v5 accessibilityTraits];
  v3 = [(UITableViewHeaderFooterViewAccessibility *)v8 safeValueForKey:@"sectionHeader"];
  v4 = [v3 BOOLValue];
  MEMORY[0x29EDC9740](v3);
  if (v4)
  {
    v6 |= *MEMORY[0x29EDC7F80];
  }

  return v6;
}

- (BOOL)_accessibilityScrollToVisibleForNextElementRetrieval:(int64_t)a3
{
  v42 = self;
  v41 = a2;
  v40 = a3;
  location = [(UITableViewHeaderFooterViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  if (([location isScrollEnabled] & 1) == 0)
  {
    goto LABEL_12;
  }

  [location frame];
  v34 = v3;
  v35 = v4;
  v36 = v5;
  v37 = v6;
  v38 = v6;
  v20 = [location visibleCells];
  v21 = 1;
  if ([v20 count])
  {
    [(UIView *)v42 frame];
    v30 = v7;
    v31 = v8;
    v32 = v9;
    v33 = v10;
    v21 = v10 >= v38;
  }

  MEMORY[0x29EDC9740](v20);
  if (v21)
  {
    [(UIView *)v42 bounds];
    rect.origin.x = v11;
    rect.origin.y = v12;
    rect.size.width = v13;
    rect.size.height = v14;
    if (v40 == 1)
    {
      rect.origin.y = rect.origin.y + rect.size.height - v38 / 2.0;
      [location contentSize];
      v27 = v15;
      v28 = v16;
      if (rect.origin.y > v16)
      {
        [location contentSize];
        v25 = v17;
        v26 = v18;
        rect.origin.y = v18 - 1.0;
      }
    }

    else
    {
      rect.origin.y = rect.origin.y - (rect.size.height - v38 / 2.0);
      if (rect.origin.y < 0.0)
      {
        rect.origin.y = 0.0;
      }
    }

    v44 = UIAccessibilityConvertFrameToScreenCoordinates(rect, v42);
    v24 = v44;
    [location _accessibilityScrollToFrame:v42 forView:{v44.origin.x, v44.origin.y, v44.size.width, v44.size.height}];
    [location _accessibilityOpaqueElementScrollCleanup];
    v43 = 1;
    v23 = 1;
  }

  else
  {
LABEL_12:
    v22.receiver = v42;
    v22.super_class = UITableViewHeaderFooterViewAccessibility;
    v43 = [(UITableViewHeaderFooterViewAccessibility *)&v22 _accessibilityScrollToVisible]& 1;
    v23 = 1;
  }

  objc_storeStrong(&location, 0);
  return v43 & 1;
}

@end