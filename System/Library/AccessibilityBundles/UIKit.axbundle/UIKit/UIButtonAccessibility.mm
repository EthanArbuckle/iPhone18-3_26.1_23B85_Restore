@interface UIButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityElementHasImage;
- (BOOL)_accessibilityIsEmptyShellOfAButton;
- (BOOL)_axButtonTypeIsModernCircle;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_accessibilityButtonChildrenCombinedFrame;
- (CGRect)accessibilityFrame;
- (id)_accessibilityAuditIssuesWithOptions:(id)options;
- (id)_accessibilityImagePath;
- (id)_contentForState:(unint64_t)state;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (id)automationElements;
- (unint64_t)_accessibilityNativeTraits;
- (unint64_t)accessibilityTraits;
@end

@implementation UIButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UIButton";
  v5 = "@";
  [location[0] validateClass:"Q" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"_imageView" withFullSignature:{v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_backgroundView" withFullSignature:{v5, 0}];
  v3 = @"_UIButtonConfiguration";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"attributedTitle" withFullSignature:{v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_currentConfiguration" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, v6);
}

- (id)automationElements
{
  selfCopy = self;
  v5 = a2;
  if (([(UIButtonAccessibility *)self _accessibilityHasOrderedChildren]& 1) != 0)
  {
    v4.receiver = selfCopy;
    v4.super_class = UIButtonAccessibility;
    automationElements = [(UIButtonAccessibility *)&v4 automationElements];
  }

  else
  {
    automationElements = [(UIButtonAccessibility *)selfCopy _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_14];
  }

  v2 = automationElements;

  return v2;
}

uint64_t __43__UIButtonAccessibility_automationElements__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (id)_contentForState:(unint64_t)state
{
  selfCopy = self;
  v11 = a2;
  stateCopy = state;
  v8.receiver = self;
  v8.super_class = UIButtonAccessibility;
  v9 = [(UIButtonAccessibility *)&v8 _contentForState:state];
  if (!v9 && ([(UIButtonAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    if ((stateCopy & 8) != 0 && ((stateCopy & 1) != 0 || (stateCopy & 2) != 0 || (stateCopy & 4) != 0))
    {
      stateCopy &= ~8uLL;
    }

    v7.receiver = selfCopy;
    v7.super_class = UIButtonAccessibility;
    v3 = [(UIButtonAccessibility *)&v7 _contentForState:stateCopy];
    v4 = v9;
    v9 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v6 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);

  return v6;
}

- (id)_accessibilityImagePath
{
  selfCopy = self;
  v5[1] = a2;
  v5[0] = [(UIButtonAccessibility *)self imageForState:0];
  if (!v5[0])
  {
    v5[0] = [(UIButtonAccessibility *)selfCopy backgroundImageForState:0];
    MEMORY[0x29EDC9740](0);
  }

  accessibilityIdentifier = [v5[0] accessibilityIdentifier];
  objc_storeStrong(location, 0);

  return accessibilityIdentifier;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v73[1] = a2;
  accessibilityUserDefinedLabel = [(UIButtonAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedLabel).n128_u64[0];
  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(UIButtonAccessibility *)selfCopy accessibilityUserDefinedLabel];
  }

  else
  {
    v73[0] = 0;
    if (![0 length])
    {
      location = [(UIButtonAccessibility *)selfCopy currentAttributedTitle];
      string = [location string];
      v54 = [string length];
      *&v3 = MEMORY[0x29EDC9740](string).n128_u64[0];
      if (v54)
      {
        if ([location length])
        {
          v6 = UIAccessibilityConvertAttachmentsInAttributedStringToAX();
          v7 = v73[0];
          v73[0] = v6;
          *&v8 = MEMORY[0x29EDC9740](v7).n128_u64[0];
          if (!v73[0])
          {
            v73[0] = [location string];
            MEMORY[0x29EDC9740](0);
          }
        }
      }

      else
      {
        v4 = [(UIButtonAccessibility *)selfCopy safeValueForKey:@"currentTitle", v3];
        v5 = v73[0];
        v73[0] = v4;
        MEMORY[0x29EDC9740](v5);
      }

      objc_storeStrong(&location, 0);
    }

    if (![v73[0] length])
    {
      v69 = 0;
      objc_opt_class();
      v52 = [(UIButtonAccessibility *)selfCopy safeValueForKey:@"_currentConfiguration"];
      v68 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v52);
      v67 = MEMORY[0x29EDC9748](v68);
      objc_storeStrong(&v68, 0);
      v70 = v67;
      if (v67)
      {
        title = [v70 title];
        v10 = v73[0];
        v73[0] = title;
        MEMORY[0x29EDC9740](v10);
      }

      objc_storeStrong(&v70, 0);
    }

    v50 = [(UIButtonAccessibility *)selfCopy safeValueForKey:@"isSelected"];
    bOOLValue = [v50 BOOLValue];
    *&v11 = MEMORY[0x29EDC9740](v50).n128_u64[0];
    if (bOOLValue)
    {
      v49 = [(UIButtonAccessibility *)selfCopy attributedTitleForState:4, v11];
      string2 = [v49 string];
      v12 = MEMORY[0x29EDC9740](v49).n128_u64[0];
      if (!string2)
      {
        string2 = [(UIButtonAccessibility *)selfCopy titleForState:4, *&v12];
        v12 = MEMORY[0x29EDC9740](0).n128_u64[0];
      }

      if (![v73[0] length] || string2)
      {
        objc_storeStrong(v73, string2);
      }

      objc_storeStrong(&string2, 0);
    }

    if (![v73[0] length])
    {
      v48 = [(UIButtonAccessibility *)selfCopy attributedTitleForState:0];
      string3 = [v48 string];
      v14 = v73[0];
      v73[0] = string3;
      MEMORY[0x29EDC9740](v14);
      *&v15 = MEMORY[0x29EDC9740](v48).n128_u64[0];
      if (![v73[0] length])
      {
        v16 = [(UIButtonAccessibility *)selfCopy titleForState:0];
        v17 = v73[0];
        v73[0] = v16;
        MEMORY[0x29EDC9740](v17);
      }
    }

    v65 = [(UIButtonAccessibility *)selfCopy safeValueForKey:@"currentImage"];
    if ([v73[0] length])
    {
      goto LABEL_78;
    }

    accessibilityIdentifier = [v65 accessibilityIdentifier];
    v46 = UIImageGetTableNextButton();
    v47 = 1;
    if (([v65 isEqual:?] & 1) == 0)
    {
      v47 = [accessibilityIdentifier hasPrefix:@"UIAccessoryButtonInfo"];
    }

    *&v18 = MEMORY[0x29EDC9740](v46).n128_u64[0];
    if (v47)
    {
      accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"more.info.button");
      v63 = 1;
    }

    else if ([accessibilityIdentifier hasPrefix:{@"UINavigationBarBackIndicatorDefault", v18}])
    {
      accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"uibutton.navbar.back.button.title");
      v63 = 1;
    }

    else if ([accessibilityIdentifier hasPrefix:@"UIButtonBarAction"])
    {
      accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"action.button");
      v63 = 1;
    }

    else if ([accessibilityIdentifier isEqualToString:@"UITextFieldClearButton"])
    {
      accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"clear.button.text");
      v63 = 1;
    }

    else
    {
      v63 = 0;
    }

    objc_storeStrong(&accessibilityIdentifier, 0);
    if (!v63)
    {
LABEL_78:
      if (![v73[0] length])
      {
        imageView = [(UIButtonAccessibility *)selfCopy imageView];
        accessibilityLabel = [imageView accessibilityLabel];
        v45 = [accessibilityLabel length];
        *&v19 = MEMORY[0x29EDC9740](accessibilityLabel).n128_u64[0];
        if (v45)
        {
          accessibilityLabel2 = [imageView accessibilityLabel];
          v21 = v73[0];
          v73[0] = accessibilityLabel2;
          MEMORY[0x29EDC9740](v21);
        }

        objc_storeStrong(&imageView, 0);
      }

      if ([v73[0] length] || ((v61 = -[UIButtonAccessibility accessibilityIdentification](selfCopy, "accessibilityIdentification"), (objc_msgSend(v61, "isEqualToString:", @"UITableCellViewDisclosure") & 1) == 0) && -[UIButtonAccessibility buttonType](selfCopy, "buttonType") != 4 && -[UIButtonAccessibility buttonType](selfCopy, "buttonType") != 3 && -[UIButtonAccessibility buttonType](selfCopy, "buttonType") != 2 ? ((objc_msgSend(v61, "isEqualToString:", @"UIClearButton") & 1) == 0 ? (-[UIButtonAccessibility buttonType](selfCopy, "buttonType") != 122 && -[UIButtonAccessibility buttonType](selfCopy, "buttonType") != 7 ? (v63 = 0) : (accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"close.button"), v63 = 1)) : (accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"clear.button.text"), v63 = 1)) : (accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"more.info.button"), v63 = 1), objc_storeStrong(&v61, 0), !v63))
      {
        if (![v73[0] length])
        {
          _accessibilityAXAttributedLabel = [v65 _accessibilityAXAttributedLabel];
          v23 = v73[0];
          v73[0] = _accessibilityAXAttributedLabel;
          MEMORY[0x29EDC9740](v23);
        }

        if (![v73[0] length])
        {
          _accessibilityImagePath = [(UIButtonAccessibility *)selfCopy _accessibilityImagePath];
          if (![_accessibilityImagePath length] || (v58 = objc_msgSend(_accessibilityImagePath, "rangeOfString:", @"ForgotPasswordButton"), v59 = v24, v58 == 0x7FFFFFFFFFFFFFFFLL))
          {
            configuration = [v65 configuration];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            *&v27 = MEMORY[0x29EDC9740](configuration).n128_u64[0];
            if (isKindOfClass)
            {
              v28 = AXSSAccessibilityDescriptionForSymbolName();
            }

            else
            {
              v28 = [(UIButtonAccessibility *)selfCopy _accessibilityRetrieveImagePathLabel:_accessibilityImagePath, v27];
            }

            v29 = v73[0];
            v73[0] = v28;
            *&v30 = MEMORY[0x29EDC9740](v29).n128_u64[0];
            if ([v73[0] length])
            {
              v57 = [MEMORY[0x29EDC7320] dictionaryWithAXAuditIssue:1001 element:selfCopy additionalInfo:0 identifier:0 foregroundColor:0 backgroundColor:0 fontSize:0 elementRect:0 text:?];
              [(UIButtonAccessibility *)selfCopy _accessibilitySetAuditIssueDict:v57];
              objc_storeStrong(&v57, 0);
            }
          }

          else
          {
            v25 = accessibilityLocalizedString(@"help.button");
            v26 = v73[0];
            v73[0] = v25;
            MEMORY[0x29EDC9740](v26);
          }

          objc_storeStrong(&_accessibilityImagePath, 0);
        }

        if ([v73[0] length] || (v40 = objc_msgSend(v65, "accessibilityLabel"), v41 = objc_msgSend(v40, "length"), *&v31 = MEMORY[0x29EDC9740](v40).n128_u64[0], !v41))
        {
          v32 = [v73[0] stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
          v33 = v73[0];
          v73[0] = v32;
          *&v34 = MEMORY[0x29EDC9740](v33).n128_u64[0];
          uppercaseString = [v73[0] uppercaseString];
          v39 = [uppercaseString isEqualToString:v73[0]];
          *&v35 = MEMORY[0x29EDC9740](uppercaseString).n128_u64[0];
          if (v39)
          {
            v56 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v73[0], v35}];
            [v56 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD890]];
            objc_storeStrong(v73, v56);
            objc_storeStrong(&v56, 0);
          }

          accessibilityUserDefinedLabel2 = MEMORY[0x29EDC9748](v73[0]);
          v63 = 1;
        }

        else
        {
          accessibilityUserDefinedLabel2 = [v65 accessibilityLabel];
          v63 = 1;
        }
      }
    }

    objc_storeStrong(&v65, 0);
    objc_storeStrong(v73, 0);
  }

  v36 = accessibilityUserDefinedLabel2;

  return v36;
}

- (BOOL)_accessibilityElementHasImage
{
  v5 = [(UIButtonAccessibility *)self imageForState:0];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    return 1;
  }

  v4 = [(UIButtonAccessibility *)self backgroundImageForState:0, v2];
  MEMORY[0x29EDC9740](v4);
  return v4 != 0;
}

- (id)accessibilityValue
{
  selfCopy = self;
  v12[1] = a2;
  v11.receiver = self;
  v11.super_class = UIButtonAccessibility;
  v12[0] = [(UIButtonAccessibility *)&v11 accessibilityValue];
  if (![v12[0] length])
  {
    v9 = 0;
    objc_opt_class();
    v6 = [(UIButtonAccessibility *)selfCopy safeValueForKey:@"_currentConfiguration"];
    v8 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v6);
    v7 = MEMORY[0x29EDC9748](v8);
    objc_storeStrong(&v8, 0);
    v10 = v7;
    if (v7)
    {
      subtitle = [v10 subtitle];
      v3 = v12[0];
      v12[0] = subtitle;
      MEMORY[0x29EDC9740](v3);
    }

    objc_storeStrong(&v10, 0);
  }

  v5 = MEMORY[0x29EDC9748](v12[0]);
  objc_storeStrong(v12, 0);

  return v5;
}

- (id)_accessibilityAuditIssuesWithOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v11.receiver = selfCopy;
  v11.super_class = UIButtonAccessibility;
  v12 = [(UIButtonAccessibility *)&v11 _accessibilityAuditIssuesWithOptions:location[0]];
  v10 = [MEMORY[0x29EDC7320] optionsDictionaryForAuditTest:*MEMORY[0x29EDBD790] inDictionary:location[0]];
  v9 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:*MEMORY[0x29EDBD7A8] inDictionary:v10];
  if (v9)
  {
    accessibilityLabel = [(UIButtonAccessibility *)selfCopy accessibilityLabel];
    v8 = [(UIButtonAccessibility *)selfCopy _accessibilityValueForKey:*MEMORY[0x29EDC75F0]];
    v6 = v12;
    allObjects = [v8 allObjects];
    [v6 addObjectsFromArray:?];
    MEMORY[0x29EDC9740](allObjects);
    objc_storeStrong(&v8, 0);
  }

  v5 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(UIButtonAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(UIButtonAccessibility *)self isAccessibilityUserDefinedElement];
    v15 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  }

  else
  {
    accessibilityIdentification = [(UIButtonAccessibility *)self accessibilityIdentification];
    v11 = [accessibilityIdentification isEqualToString:@"UITableCellViewDisclosure"];
    MEMORY[0x29EDC9740](accessibilityIdentification);
    if (v11)
    {
      return 1;
    }

    else
    {
      [(UIButtonAccessibility *)self accessibilityFrame];
      if (__CGSizeEqualToSize(v3, v4, *MEMORY[0x29EDB90E8], *(MEMORY[0x29EDB90E8] + 8)) && ([(UIButtonAccessibility *)self frame], __CGSizeEqualToSize(*MEMORY[0x29EDB90E8], *(MEMORY[0x29EDB90E8] + 8), v5, v6)))
      {
        return 0;
      }

      else
      {
        v9 = 0;
        if (([(UIButtonAccessibility *)self isHiddenOrHasHiddenAncestor]& 1) == 0)
        {
          [(UIButtonAccessibility *)self alpha];
          return v7 > 0.0;
        }

        return v9;
      }
    }
  }

  return v15;
}

- (BOOL)_accessibilityIsEmptyShellOfAButton
{
  [(UIButtonAccessibility *)self bounds];
  if (!__CGSizeEqualToSize(*MEMORY[0x29EDB90E8], *(MEMORY[0x29EDB90E8] + 8), v2, v3))
  {
    return 0;
  }

  configuration = [(UIButtonAccessibility *)self configuration];
  v7 = configuration != 0;
  MEMORY[0x29EDC9740](configuration);
  return v7;
}

- (CGRect)_accessibilityButtonChildrenCombinedFrame
{
  selfCopy = self;
  v17[1] = a2;
  v17[0] = [MEMORY[0x29EDBA0F8] stringWithFormat:@"ButtonFrameKey-%p", self];
  location = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v17[0]];
  if (location)
  {
    [location rectValue];
    *&v19 = v2;
    *(&v19 + 1) = v3;
    *&v20 = v4;
    *(&v20 + 1) = v5;
  }

  else
  {
    subviews = [(UIButtonAccessibility *)selfCopy subviews];
    UIAXFrameForElements();
    *&v19 = v6;
    *(&v19 + 1) = v7;
    *&v20 = v8;
    *(&v20 + 1) = v9;
    MEMORY[0x29EDC9740](subviews);
    v15 = [MEMORY[0x29EDBA168] valueWithCGRect:{v19, v20}];
    [*MEMORY[0x29EDC7300] setObject:? forKeyedSubscript:?];
    MEMORY[0x29EDC9740](v15);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v17, 0);
  v11 = *(&v19 + 1);
  v10 = *&v19;
  v13 = *(&v20 + 1);
  v12 = *&v20;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  v7 = a2;
  if ([(UIButtonAccessibility *)self _accessibilityIsEmptyShellOfAButton])
  {
    [(UIButtonAccessibility *)selfCopy _accessibilityButtonChildrenCombinedFrame];
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = UIButtonAccessibility;
    [(UIButtonAccessibility *)&v6 accessibilityFrame];
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  [(UIButtonAccessibility *)self _accessibilityButtonChildrenCombinedFrame];
  AX_CGRectGetCenter();
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  v5 = a2;
  accessibilityTraits = [(UIButtonAccessibility *)self accessibilityTraits];
  if ((accessibilityTraits & *MEMORY[0x29EDC7500]) != 0 && ([(UIButtonAccessibility *)selfCopy _accessibilityViewIsVisible]& 1) != 0)
  {
    return [(UIButtonAccessibility *)selfCopy accessibilityActivate]& 1;
  }

  v4.receiver = selfCopy;
  v4.super_class = UIButtonAccessibility;
  return [(UIButtonAccessibility *)&v4 accessibilityPerformEscape];
}

- (unint64_t)_accessibilityNativeTraits
{
  selfCopy = self;
  v18 = a2;
  v16.receiver = self;
  v16.super_class = UIButtonAccessibility;
  accessibilityTraits = [(UIButtonAccessibility *)&v16 accessibilityTraits];
  location = [(UIButtonAccessibility *)selfCopy safeValueForKey:@"currentImage"];
  accessibilityIdentifier = [location accessibilityIdentifier];
  v12 = 0;
  v9 = 0;
  if ([accessibilityIdentifier hasPrefix:@"UINavigationBarBackIndicatorDefault"])
  {
    imageView = [(UIButtonAccessibility *)selfCopy imageView];
    v13 = imageView;
    v12 = 1;
    if (imageView)
    {
      [imageView transform];
    }

    else
    {
      memset(&__b, 0, sizeof(__b));
    }

    memcpy(&__dst, MEMORY[0x29EDB90A0], sizeof(__dst));
    v9 = CGAffineTransformEqualToTransform(&__b, &__dst);
  }

  if (v12)
  {
    MEMORY[0x29EDC9740](v13);
  }

  *&v2 = MEMORY[0x29EDC9740](accessibilityIdentifier).n128_u64[0];
  if (v9)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7500];
  }

  _accessibilityButtonMacCatalystPopupButtonCell = [(UIButtonAccessibility *)selfCopy _accessibilityButtonMacCatalystPopupButtonCell];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityButtonMacCatalystPopupButtonCell).n128_u64[0];
  if (_accessibilityButtonMacCatalystPopupButtonCell)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7550];
  }

  else
  {
    buttonType = [(UIButtonAccessibility *)selfCopy buttonType];
    if (buttonType == 125 || buttonType == 124)
    {
      accessibilityTraits |= *MEMORY[0x29EDC7550];
    }
  }

  v5 = accessibilityTraits | *MEMORY[0x29EDC7F70];
  objc_storeStrong(&location, 0);
  return v5;
}

- (unint64_t)accessibilityTraits
{
  accessibilityUserDefinedTraits = [(UIButtonAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedTraits).n128_u64[0];
  if (!accessibilityUserDefinedTraits)
  {
    return [(UIButtonAccessibility *)self _accessibilityNativeTraits];
  }

  accessibilityUserDefinedTraits2 = [(UIButtonAccessibility *)self accessibilityUserDefinedTraits];
  unsignedLongLongValue = [accessibilityUserDefinedTraits2 unsignedLongLongValue];
  MEMORY[0x29EDC9740](accessibilityUserDefinedTraits2);
  return unsignedLongLongValue;
}

- (id)accessibilityPath
{
  selfCopy = self;
  v36[1] = a2;
  v36[0] = 0;
  v34 = 0;
  objc_opt_class();
  currentAttributedTitle = [(UIButtonAccessibility *)selfCopy currentAttributedTitle];
  v33 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](currentAttributedTitle);
  v32 = MEMORY[0x29EDC9748](v33);
  objc_storeStrong(&v33, 0);
  v35 = v32;
  string = [v32 string];
  v18 = [string length];
  *&v2 = MEMORY[0x29EDC9740](string).n128_u64[0];
  if (v18)
  {
    if ([v35 length])
    {
      v5 = UIAccessibilityConvertAttachmentsInAttributedStringToAX();
      v6 = v36[0];
      v36[0] = v5;
      *&v7 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      if (!v36[0])
      {
        string2 = [v35 string];
        v9 = v36[0];
        v36[0] = string2;
        MEMORY[0x29EDC9740](v9);
      }
    }
  }

  else
  {
    v3 = [(UIButtonAccessibility *)selfCopy safeValueForKey:@"currentTitle", v2];
    v4 = v36[0];
    v36[0] = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v30[1] = COERCE_ID(3.0);
  if (!-[UIButtonAccessibility _axButtonTypeIsModernCircle](selfCopy, "_axButtonTypeIsModernCircle") || [v36[0] length])
  {
    goto LABEL_19;
  }

  v30[0] = [(UIButtonAccessibility *)selfCopy safeUIViewForKey:@"_imageView"];
  v16 = 1;
  if ([(UIButtonAccessibility *)selfCopy buttonType]!= 7)
  {
    v16 = v30[0] == 0;
  }

  v29 = v16;
  v26 = 0;
  if (v16)
  {
    v27 = [(UIButtonAccessibility *)selfCopy safeUIViewForKey:@"_backgroundView"];
    v26 = 1;
    v10 = MEMORY[0x29EDC9748](v27);
  }

  else
  {
    v10 = MEMORY[0x29EDC9748](v30[0]);
  }

  v28 = v10;
  if (v26)
  {
    MEMORY[0x29EDC9740](v27);
  }

  [v28 accessibilityFrame];
  rect = v40;
  if (CGRectIsEmpty(v40))
  {
    v21 = 0;
  }

  else
  {
    v15 = MEMORY[0x29EDC7948];
    AX_CGRectGetCenter();
    v22 = v11;
    v23 = v12;
    v24 = [v15 bezierPathWithArcCenter:1 radius:v11 startAngle:v12 endAngle:rect.size.width / 2.0 + 3.0 clockwise:{0.0, 6.28318531}];
    accessibilityPath = MEMORY[0x29EDC9748](v24);
    v21 = 1;
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(v30, 0);
  if (!v21)
  {
LABEL_19:
    v20.receiver = selfCopy;
    v20.super_class = UIButtonAccessibility;
    accessibilityPath = [(UIButtonAccessibility *)&v20 accessibilityPath];
    v21 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(v36, 0);
  v13 = accessibilityPath;

  return v13;
}

- (BOOL)_axButtonTypeIsModernCircle
{
  buttonType = [(UIButtonAccessibility *)self buttonType];
  v3 = 1;
  if (buttonType != 3)
  {
    v3 = 1;
    if (buttonType != 4)
    {
      v3 = 1;
      if (buttonType != 5)
      {
        v3 = 1;
        if (buttonType != 2)
        {
          v3 = 1;
          if (buttonType != 7)
          {
            v3 = 1;
            if (buttonType != 118)
            {
              v3 = 1;
              if (buttonType != 119)
              {
                v3 = 1;
                if (buttonType != 120)
                {
                  v3 = 1;
                  if (buttonType != 121)
                  {
                    v3 = 1;
                    if (buttonType != 122)
                    {
                      return buttonType == 123;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

@end