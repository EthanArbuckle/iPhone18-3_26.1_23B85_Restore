@interface PUAlbumListCellContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axRenameAlbumAction;
- (BOOL)_axShowsDeleteButton;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (PUAlbumListCellContentViewAccessibility)initWithFrame:(CGRect)frame;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_axTypeStringWithCount:(int64_t)count;
- (id)_deleteButton;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PUAlbumListCellContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUAlbumListCellContentView" hasInstanceVariable:@"_enabled" withType:"B"];
  [validationsCopy validateClass:@"PUAlbumListCellContentView" hasInstanceVariable:@"_editing" withType:"B"];
  [validationsCopy validateClass:@"PUAlbumListCellContentView" hasInstanceVariable:@"_editCapabilities" withType:"Q"];
  [validationsCopy validateClass:@"PUAlbumListCellContentView" hasInstanceVariable:@"_showsDeleteButtonWhenEditing" withType:"B"];
  [validationsCopy validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"setEditing: animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"_deleteButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"showsDeleteButtonWhenEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"setUsesLabelForTitle:" withFullSignature:{"v", "B", 0}];
}

- (BOOL)_axShowsDeleteButton
{
  v3 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_editCapabilities"];
  integerValue = [v3 integerValue];

  if ((integerValue & 1) == 0)
  {
    return 0;
  }

  return [(PUAlbumListCellContentViewAccessibility *)self safeBoolForKey:@"_editing"];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(PUAlbumListCellContentViewAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];

  if (v3)
  {
    return ![(PUAlbumListCellContentViewAccessibility *)self _axShowsDeleteButton];
  }

  else
  {
    return 1;
  }
}

- (id)_deleteButton
{
  v8.receiver = self;
  v8.super_class = PUAlbumListCellContentViewAccessibility;
  _deleteButton = [(PUAlbumListCellContentViewAccessibility *)&v8 _deleteButton];
  v4 = accessibilityPULocalizedString(@"delete.button");
  accessibilityLabel = [(PUAlbumListCellContentViewAccessibility *)self accessibilityLabel];
  v6 = __UIAXStringForVariables();
  [_deleteButton setAccessibilityLabel:{v6, accessibilityLabel, @"__AXStringForVariablesSentinel"}];

  return _deleteButton;
}

- (BOOL)accessibilityElementsHidden
{
  v2 = [(PUAlbumListCellContentViewAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];

  return v2 == 0;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PUAlbumListCellContentViewAccessibility;
  [(PUAlbumListCellContentViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_titleTextField"];
  [v4 setAccessibilityElementsHidden:1];

  v5 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_titleTextField"];
  v6 = accessibilityPULocalizedString(@"album.name");
  [v5 setAccessibilityLabel:v6];

  v7 = [(PUAlbumListCellContentViewAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v8 = [v7 safeValueForKey:@"_accessibilityClearChildren"];
}

- (id)accessibilityElements
{
  v3 = [(PUAlbumListCellContentViewAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];

  if (v3 && [(PUAlbumListCellContentViewAccessibility *)self _axShowsDeleteButton])
  {
    v4 = [(PUAlbumListCellContentViewAccessibility *)self _accessibilityValueForKey:@"DeleteElement"];
    if (!v4)
    {
      v4 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
      [v4 setAccessibilityDelegate:self];
      [(PUAlbumListCellContentViewAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:@"DeleteElement"];
    }

    v5 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_titleTextField"];
    array = [MEMORY[0x29EDB8DE8] array];
    [array axSafelyAddObject:v4];
    [array axSafelyAddObject:v5];
  }

  else
  {
    array = 0;
  }

  return array;
}

- (PUAlbumListCellContentViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PUAlbumListCellContentViewAccessibility;
  v3 = [(PUAlbumListCellContentViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PUAlbumListCellContentViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"subtitle"];
  if ([v3 length])
  {
    currentLocale = [MEMORY[0x29EDB8DE0] currentLocale];
    v5 = [currentLocale objectForKey:*MEMORY[0x29EDB8CE8]];

    v6 = [v3 stringByReplacingOccurrencesOfString:v5 withString:&stru_2A228A390];

    v7 = [MEMORY[0x29EDBA0E0] localizedScannerWithString:v6];
    v12 = 0;
    if ([v7 scanInteger:&v12])
    {
      v8 = [(PUAlbumListCellContentViewAccessibility *)self _axTypeStringWithCount:v12];
    }

    else
    {
      v8 = v6;
    }

    accessibilityValue = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PUAlbumListCellContentViewAccessibility;
    accessibilityValue = [(PUAlbumListCellContentViewAccessibility *)&v11 accessibilityValue];
    v6 = v3;
  }

  return accessibilityValue;
}

- (id)accessibilityCustomActions
{
  v9[1] = *MEMORY[0x29EDCA608];
  if ([(PUAlbumListCellContentViewAccessibility *)self _axShowsDeleteButton])
  {
    v3 = objc_alloc(MEMORY[0x29EDC78E0]);
    v4 = accessibilityPULocalizedString(@"rename.action");
    v5 = [v3 initWithName:v4 target:self selector:sel__axRenameAlbumAction];

    v9[0] = v5;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (BOOL)accessibilityPerformEscape
{
  _axShowsDeleteButton = [(PUAlbumListCellContentViewAccessibility *)self _axShowsDeleteButton];
  if (_axShowsDeleteButton)
  {
    objc_opt_class();
    v4 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_titleTextField"];
    v5 = __UIAccessibilityCastAsClass();

    AXPerformSafeBlock();
    [v5 setAccessibilityElementsHidden:1];
    [v5 resignFirstResponder];
  }

  return _axShowsDeleteButton;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(PUAlbumListCellContentViewAccessibility *)self safeBoolForKey:@"_enabled"];
  v4 = *MEMORY[0x29EDC7FA8];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *MEMORY[0x29EDC7FA8];
  }

  v6 = [(PUAlbumListCellContentViewAccessibility *)self safeBoolForKey:@"_editing"];
  result = v5;
  if (v6)
  {
    _axShowsDeleteButton = [(PUAlbumListCellContentViewAccessibility *)self _axShowsDeleteButton];
    result = v4;
    if (_axShowsDeleteButton)
    {
      return *MEMORY[0x29EDC7528] | v5;
    }
  }

  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(PUAlbumListCellContentViewAccessibility *)self _axShowsDeleteButton])
  {
    v3 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_deleteButton"];
    [v3 accessibilityActivationPoint];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PUAlbumListCellContentViewAccessibility;
    [(PUAlbumListCellContentViewAccessibility *)&v10 accessibilityActivationPoint];
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (id)accessibilityLabel
{
  v3 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_titleTextField"];
  accessibilityValue = [v3 accessibilityValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [accessibilityValue string];

    accessibilityValue = string;
  }

  if (![accessibilityValue length])
  {
    v6 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"title"];

    accessibilityValue = v6;
  }

  _axCustomContentType = [(PUAlbumListCellContentViewAccessibility *)self _axCustomContentType];
  if ([_axCustomContentType isEqualToString:@"AXAlbumContentTypeFolder"])
  {
    v13 = accessibilityPULocalizedString(@"folder");
    v14 = @"__AXStringForVariablesSentinel";
    v8 = __UIAXStringForVariables();

    accessibilityValue = v8;
  }

  if ([(PUAlbumListCellContentViewAccessibility *)self _axShowsDeleteButton:v13])
  {
    v9 = [(PUAlbumListCellContentViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];

    if (!v9)
    {
      v10 = accessibilityPULocalizedString(@"delete.button");
      v11 = __UIAXStringForVariables();

      accessibilityValue = v11;
    }
  }

  return accessibilityValue;
}

- (id)automationElements
{
  if ([(PUAlbumListCellContentViewAccessibility *)self _axShowsDeleteButton])
  {
    v3 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_deleteButton"];
    v4 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_titleTextField"];
    if (!v3)
    {
      _AXAssert();
    }

    array = [MEMORY[0x29EDB8DE8] array];
    [array axSafelyAddObject:v3];
    [array axSafelyAddObject:v4];
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v25 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v23.receiver = self;
    v23.super_class = PUAlbumListCellContentViewAccessibility;
    selfCopy = [(PUAlbumListCellContentViewAccessibility *)&v23 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    automationElements = [(PUAlbumListCellContentViewAccessibility *)self automationElements];
    v10 = [automationElements countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(automationElements);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          [(PUAlbumListCellContentViewAccessibility *)self convertPoint:v14 toView:x, y];
          v15 = [v14 _accessibilityHitTest:eventCopy withEvent:?];
          if (v15)
          {
            v16 = v15;

            goto LABEL_14;
          }
        }

        v11 = [automationElements countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = self;
  }

  v16 = selfCopy;
LABEL_14:

  v17 = *MEMORY[0x29EDCA608];

  return v16;
}

- (id)_axTypeStringWithCount:(int64_t)count
{
  _axCustomContentType = [(PUAlbumListCellContentViewAccessibility *)self _axCustomContentType];
  v5 = _axCustomContentType;
  if (_axCustomContentType)
  {
    if ([_axCustomContentType isEqualToString:@"AXAlbumContentTypePeople"])
    {
      v6 = @"album.contenttype.people";
    }

    else if ([v5 isEqualToString:@"AXAlbumContentTypePlaces"])
    {
      v6 = @"album.contenttype.places";
    }

    else if ([v5 isEqualToString:@"AXAlbumContentTypeVideos"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"AXAlbumContentTypeSloMo"))
    {
      v6 = @"video.count";
    }

    else if ([v5 isEqualToString:@"AXAlbumContentTypeFavorites"])
    {
      v6 = @"album.contenttype.favorites";
    }

    else if ([v5 isEqualToString:@"AXAlbumContentTypeScreenshots"])
    {
      v6 = @"album.contenttype.screenshots";
    }

    else if ([v5 isEqualToString:@"AXAlbumContentTypeSelfies"])
    {
      v6 = @"album.contenttype.selfies";
    }

    else if ([v5 isEqualToString:@"AXAlbumContentTypeFolder"])
    {
      v6 = @"album.contenttype.folderitems";
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = @"photo.count";
  }

  v7 = MEMORY[0x29EDBA0F8];
  v8 = accessibilityPULocalizedString(v6);
  v9 = [v7 localizedStringWithFormat:v8, count];

  return v9;
}

- (BOOL)_axRenameAlbumAction
{
  objc_opt_class();
  v3 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_titleTextField"];
  v4 = __UIAccessibilityCastAsClass();

  AXPerformSafeBlock();
  [v4 setAccessibilityElementsHidden:0];
  [v4 becomeFirstResponder];

  return 1;
}

@end