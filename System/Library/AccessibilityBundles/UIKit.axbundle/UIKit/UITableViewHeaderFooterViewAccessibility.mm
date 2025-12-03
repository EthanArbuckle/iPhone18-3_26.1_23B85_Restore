@interface UITableViewHeaderFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityScrollToVisibleForNextElementRetrieval:(int64_t)retrieval;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UITableViewHeaderFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  storedAccessibilityRespondsToUserInteraction = [(UITableViewHeaderFooterViewAccessibility *)self storedAccessibilityRespondsToUserInteraction];
  *&v2 = MEMORY[0x29EDC9740](storedAccessibilityRespondsToUserInteraction).n128_u64[0];
  if (storedAccessibilityRespondsToUserInteraction)
  {
    storedAccessibilityRespondsToUserInteraction2 = [(UITableViewHeaderFooterViewAccessibility *)self storedAccessibilityRespondsToUserInteraction];
    v16 = [storedAccessibilityRespondsToUserInteraction2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](storedAccessibilityRespondsToUserInteraction2);
  }

  else
  {
    accessibilityCustomActions = [(UITableViewHeaderFooterViewAccessibility *)self accessibilityCustomActions];
    v10 = [accessibilityCustomActions count];
    MEMORY[0x29EDC9740](accessibilityCustomActions);
    if (v10)
    {
      return 1;
    }

    else
    {
      v13 = 0;
      assistiveTouchScannerSpeechEnabled = 0;
      if (AXRequestingClient() == 4)
      {
        mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
        v13 = 1;
        assistiveTouchScannerSpeechEnabled = [mEMORY[0x29EDBDFA0] assistiveTouchScannerSpeechEnabled];
      }

      if (v13)
      {
        MEMORY[0x29EDC9740](mEMORY[0x29EDBDFA0]);
      }

      if (assistiveTouchScannerSpeechEnabled)
      {
        accessibilityLabel = [(UITableViewHeaderFooterViewAccessibility *)self accessibilityLabel];
        whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
        v5 = [accessibilityLabel stringByTrimmingCharactersInSet:?];
        v16 = [v5 length] != 0;
        MEMORY[0x29EDC9740](v5);
        MEMORY[0x29EDC9740](whitespaceAndNewlineCharacterSet);
        MEMORY[0x29EDC9740](accessibilityLabel);
      }

      else
      {
        _accessibilityInternalTextLinks = [(UITableViewHeaderFooterViewAccessibility *)self _accessibilityInternalTextLinks];
        v16 = [_accessibilityInternalTextLinks count] != 0;
        MEMORY[0x29EDC9740](_accessibilityInternalTextLinks);
      }
    }
  }

  return v16;
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(UITableViewHeaderFooterViewAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(UITableViewHeaderFooterViewAccessibility *)self isAccessibilityUserDefinedElement];
    v11 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  }

  else
  {
    accessibilityLabel = [(UITableViewHeaderFooterViewAccessibility *)self accessibilityLabel];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v4 = [accessibilityLabel stringByTrimmingCharactersInSet:?];
    v7 = [v4 length];
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](whitespaceAndNewlineCharacterSet);
    MEMORY[0x29EDC9740](accessibilityLabel);
    return v7 != 0;
  }

  return v11;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = [(UITableViewHeaderFooterViewAccessibility *)self accessibilityUserDefinedLabel];
  if (!v13[0])
  {
    v13[0] = [(UITableViewHeaderFooterViewAccessibility *)selfCopy safeValueForKey:@"text"];
    MEMORY[0x29EDC9740](0);
  }

  if (![v13[0] length])
  {
    v11 = [(UITableViewHeaderFooterViewAccessibility *)selfCopy safeValueForKey:@"contentConfiguration"];
    accessibilityLabel = [v11 accessibilityLabel];
    v3 = v13[0];
    v13[0] = accessibilityLabel;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v11);
  }

  v10 = [(UITableViewHeaderFooterViewAccessibility *)selfCopy safeValueForKey:@"_detailLabel"];
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

  if (([(UITableViewHeaderFooterViewAccessibility *)selfCopy _accessibilityBoolValueForKey:@"SkipConvertToLowercase"]& 1) == 0)
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
  selfCopy = self;
  v14 = a2;
  v13 = 0;
  objc_opt_class();
  v12 = __UIAccessibilityCastAsClass();
  v11 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  contentView = [v11 contentView];
  [contentView accessibilityFrame];
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  MEMORY[0x29EDC9740](contentView);
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
  selfCopy = self;
  v7 = a2;
  v5.receiver = self;
  v5.super_class = UITableViewHeaderFooterViewAccessibility;
  accessibilityTraits = [(UITableViewHeaderFooterViewAccessibility *)&v5 accessibilityTraits];
  v3 = [(UITableViewHeaderFooterViewAccessibility *)selfCopy safeValueForKey:@"sectionHeader"];
  bOOLValue = [v3 BOOLValue];
  MEMORY[0x29EDC9740](v3);
  if (bOOLValue)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7F80];
  }

  return accessibilityTraits;
}

- (BOOL)_accessibilityScrollToVisibleForNextElementRetrieval:(int64_t)retrieval
{
  selfCopy = self;
  v41 = a2;
  retrievalCopy = retrieval;
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
  visibleCells = [location visibleCells];
  v21 = 1;
  if ([visibleCells count])
  {
    [(UIView *)selfCopy frame];
    v30 = v7;
    v31 = v8;
    v32 = v9;
    v33 = v10;
    v21 = v10 >= v38;
  }

  MEMORY[0x29EDC9740](visibleCells);
  if (v21)
  {
    [(UIView *)selfCopy bounds];
    rect.origin.x = v11;
    rect.origin.y = v12;
    rect.size.width = v13;
    rect.size.height = v14;
    if (retrievalCopy == 1)
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

    v44 = UIAccessibilityConvertFrameToScreenCoordinates(rect, selfCopy);
    v24 = v44;
    [location _accessibilityScrollToFrame:selfCopy forView:{v44.origin.x, v44.origin.y, v44.size.width, v44.size.height}];
    [location _accessibilityOpaqueElementScrollCleanup];
    v43 = 1;
    v23 = 1;
  }

  else
  {
LABEL_12:
    v22.receiver = selfCopy;
    v22.super_class = UITableViewHeaderFooterViewAccessibility;
    v43 = [(UITableViewHeaderFooterViewAccessibility *)&v22 _accessibilityScrollToVisible]& 1;
    v23 = 1;
  }

  objc_storeStrong(&location, 0);
  return v43 & 1;
}

@end