@interface PUAlbumListCellContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axRenameAlbumAction;
- (BOOL)_axShowsDeleteButton;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (PUAlbumListCellContentViewAccessibility)initWithFrame:(CGRect)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_axTypeStringWithCount:(int64_t)a3;
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

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUAlbumListCellContentView" hasInstanceVariable:@"_enabled" withType:"B"];
  [v3 validateClass:@"PUAlbumListCellContentView" hasInstanceVariable:@"_editing" withType:"B"];
  [v3 validateClass:@"PUAlbumListCellContentView" hasInstanceVariable:@"_editCapabilities" withType:"Q"];
  [v3 validateClass:@"PUAlbumListCellContentView" hasInstanceVariable:@"_showsDeleteButtonWhenEditing" withType:"B"];
  [v3 validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"setEditing: animated:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"_deleteButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"showsDeleteButtonWhenEditing" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAlbumListCellContentView" hasInstanceMethod:@"setUsesLabelForTitle:" withFullSignature:{"v", "B", 0}];
}

- (BOOL)_axShowsDeleteButton
{
  v3 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_editCapabilities"];
  v4 = [v3 integerValue];

  if ((v4 & 1) == 0)
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
  v3 = [(PUAlbumListCellContentViewAccessibility *)&v8 _deleteButton];
  v4 = accessibilityPULocalizedString(@"delete.button");
  v5 = [(PUAlbumListCellContentViewAccessibility *)self accessibilityLabel];
  v6 = __UIAXStringForVariables();
  [v3 setAccessibilityLabel:{v6, v5, @"__AXStringForVariablesSentinel"}];

  return v3;
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
    v6 = [MEMORY[0x29EDB8DE8] array];
    [v6 axSafelyAddObject:v4];
    [v6 axSafelyAddObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PUAlbumListCellContentViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = PUAlbumListCellContentViewAccessibility;
  v3 = [(PUAlbumListCellContentViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PUAlbumListCellContentViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"subtitle"];
  if ([v3 length])
  {
    v4 = [MEMORY[0x29EDB8DE0] currentLocale];
    v5 = [v4 objectForKey:*MEMORY[0x29EDB8CE8]];

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

    v9 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PUAlbumListCellContentViewAccessibility;
    v9 = [(PUAlbumListCellContentViewAccessibility *)&v11 accessibilityValue];
    v6 = v3;
  }

  return v9;
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
  v3 = [(PUAlbumListCellContentViewAccessibility *)self _axShowsDeleteButton];
  if (v3)
  {
    objc_opt_class();
    v4 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"_titleTextField"];
    v5 = __UIAccessibilityCastAsClass();

    AXPerformSafeBlock();
    [v5 setAccessibilityElementsHidden:1];
    [v5 resignFirstResponder];
  }

  return v3;
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
    v8 = [(PUAlbumListCellContentViewAccessibility *)self _axShowsDeleteButton];
    result = v4;
    if (v8)
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
  v4 = [v3 accessibilityValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 string];

    v4 = v5;
  }

  if (![v4 length])
  {
    v6 = [(PUAlbumListCellContentViewAccessibility *)self safeValueForKey:@"title"];

    v4 = v6;
  }

  v7 = [(PUAlbumListCellContentViewAccessibility *)self _axCustomContentType];
  if ([v7 isEqualToString:@"AXAlbumContentTypeFolder"])
  {
    v13 = accessibilityPULocalizedString(@"folder");
    v14 = @"__AXStringForVariablesSentinel";
    v8 = __UIAXStringForVariables();

    v4 = v8;
  }

  if ([(PUAlbumListCellContentViewAccessibility *)self _axShowsDeleteButton:v13])
  {
    v9 = [(PUAlbumListCellContentViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];

    if (!v9)
    {
      v10 = accessibilityPULocalizedString(@"delete.button");
      v11 = __UIAXStringForVariables();

      v4 = v11;
    }
  }

  return v4;
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

    v5 = [MEMORY[0x29EDB8DE8] array];
    [v5 axSafelyAddObject:v3];
    [v5 axSafelyAddObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v25 = *MEMORY[0x29EDCA608];
  v7 = a4;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v23.receiver = self;
    v23.super_class = PUAlbumListCellContentViewAccessibility;
    v8 = [(PUAlbumListCellContentViewAccessibility *)&v23 _accessibilityHitTest:v7 withEvent:x, y];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [(PUAlbumListCellContentViewAccessibility *)self automationElements];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          [(PUAlbumListCellContentViewAccessibility *)self convertPoint:v14 toView:x, y];
          v15 = [v14 _accessibilityHitTest:v7 withEvent:?];
          if (v15)
          {
            v16 = v15;

            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = self;
  }

  v16 = v8;
LABEL_14:

  v17 = *MEMORY[0x29EDCA608];

  return v16;
}

- (id)_axTypeStringWithCount:(int64_t)a3
{
  v4 = [(PUAlbumListCellContentViewAccessibility *)self _axCustomContentType];
  v5 = v4;
  if (v4)
  {
    if ([v4 isEqualToString:@"AXAlbumContentTypePeople"])
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
  v9 = [v7 localizedStringWithFormat:v8, a3];

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