@interface UIButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityElementHasImage;
- (BOOL)_accessibilityIsEmptyShellOfAButton;
- (BOOL)_axButtonTypeIsModernCircle;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_accessibilityButtonChildrenCombinedFrame;
- (CGRect)accessibilityFrame;
- (id)_accessibilityAuditIssuesWithOptions:(id)a3;
- (id)_accessibilityImagePath;
- (id)_contentForState:(unint64_t)a3;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (id)automationElements;
- (unint64_t)_accessibilityNativeTraits;
- (unint64_t)accessibilityTraits;
@end

@implementation UIButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v6 = self;
  v5 = a2;
  if (([(UIButtonAccessibility *)self _accessibilityHasOrderedChildren]& 1) != 0)
  {
    v4.receiver = v6;
    v4.super_class = UIButtonAccessibility;
    v7 = [(UIButtonAccessibility *)&v4 automationElements];
  }

  else
  {
    v7 = [(UIButtonAccessibility *)v6 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_14];
  }

  v2 = v7;

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

- (id)_contentForState:(unint64_t)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v8.receiver = self;
  v8.super_class = UIButtonAccessibility;
  v9 = [(UIButtonAccessibility *)&v8 _contentForState:a3];
  if (!v9 && ([(UIButtonAccessibility *)v12 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    if ((v10 & 8) != 0 && ((v10 & 1) != 0 || (v10 & 2) != 0 || (v10 & 4) != 0))
    {
      v10 &= ~8uLL;
    }

    v7.receiver = v12;
    v7.super_class = UIButtonAccessibility;
    v3 = [(UIButtonAccessibility *)&v7 _contentForState:v10];
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
  v6 = self;
  v5[1] = a2;
  v5[0] = [(UIButtonAccessibility *)self imageForState:0];
  if (!v5[0])
  {
    v5[0] = [(UIButtonAccessibility *)v6 backgroundImageForState:0];
    MEMORY[0x29EDC9740](0);
  }

  v4 = [v5[0] accessibilityIdentifier];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)accessibilityLabel
{
  v74 = self;
  v73[1] = a2;
  v55 = [(UIButtonAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](v55).n128_u64[0];
  if (v55)
  {
    v75 = [(UIButtonAccessibility *)v74 accessibilityUserDefinedLabel];
  }

  else
  {
    v73[0] = 0;
    if (![0 length])
    {
      location = [(UIButtonAccessibility *)v74 currentAttributedTitle];
      v53 = [location string];
      v54 = [v53 length];
      *&v3 = MEMORY[0x29EDC9740](v53).n128_u64[0];
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
        v4 = [(UIButtonAccessibility *)v74 safeValueForKey:@"currentTitle", v3];
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
      v52 = [(UIButtonAccessibility *)v74 safeValueForKey:@"_currentConfiguration"];
      v68 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v52);
      v67 = MEMORY[0x29EDC9748](v68);
      objc_storeStrong(&v68, 0);
      v70 = v67;
      if (v67)
      {
        v9 = [v70 title];
        v10 = v73[0];
        v73[0] = v9;
        MEMORY[0x29EDC9740](v10);
      }

      objc_storeStrong(&v70, 0);
    }

    v50 = [(UIButtonAccessibility *)v74 safeValueForKey:@"isSelected"];
    v51 = [v50 BOOLValue];
    *&v11 = MEMORY[0x29EDC9740](v50).n128_u64[0];
    if (v51)
    {
      v49 = [(UIButtonAccessibility *)v74 attributedTitleForState:4, v11];
      v66 = [v49 string];
      v12 = MEMORY[0x29EDC9740](v49).n128_u64[0];
      if (!v66)
      {
        v66 = [(UIButtonAccessibility *)v74 titleForState:4, *&v12];
        v12 = MEMORY[0x29EDC9740](0).n128_u64[0];
      }

      if (![v73[0] length] || v66)
      {
        objc_storeStrong(v73, v66);
      }

      objc_storeStrong(&v66, 0);
    }

    if (![v73[0] length])
    {
      v48 = [(UIButtonAccessibility *)v74 attributedTitleForState:0];
      v13 = [v48 string];
      v14 = v73[0];
      v73[0] = v13;
      MEMORY[0x29EDC9740](v14);
      *&v15 = MEMORY[0x29EDC9740](v48).n128_u64[0];
      if (![v73[0] length])
      {
        v16 = [(UIButtonAccessibility *)v74 titleForState:0];
        v17 = v73[0];
        v73[0] = v16;
        MEMORY[0x29EDC9740](v17);
      }
    }

    v65 = [(UIButtonAccessibility *)v74 safeValueForKey:@"currentImage"];
    if ([v73[0] length])
    {
      goto LABEL_78;
    }

    v64 = [v65 accessibilityIdentifier];
    v46 = UIImageGetTableNextButton();
    v47 = 1;
    if (([v65 isEqual:?] & 1) == 0)
    {
      v47 = [v64 hasPrefix:@"UIAccessoryButtonInfo"];
    }

    *&v18 = MEMORY[0x29EDC9740](v46).n128_u64[0];
    if (v47)
    {
      v75 = accessibilityLocalizedString(@"more.info.button");
      v63 = 1;
    }

    else if ([v64 hasPrefix:{@"UINavigationBarBackIndicatorDefault", v18}])
    {
      v75 = accessibilityLocalizedString(@"uibutton.navbar.back.button.title");
      v63 = 1;
    }

    else if ([v64 hasPrefix:@"UIButtonBarAction"])
    {
      v75 = accessibilityLocalizedString(@"action.button");
      v63 = 1;
    }

    else if ([v64 isEqualToString:@"UITextFieldClearButton"])
    {
      v75 = accessibilityLocalizedString(@"clear.button.text");
      v63 = 1;
    }

    else
    {
      v63 = 0;
    }

    objc_storeStrong(&v64, 0);
    if (!v63)
    {
LABEL_78:
      if (![v73[0] length])
      {
        v62 = [(UIButtonAccessibility *)v74 imageView];
        v44 = [v62 accessibilityLabel];
        v45 = [v44 length];
        *&v19 = MEMORY[0x29EDC9740](v44).n128_u64[0];
        if (v45)
        {
          v20 = [v62 accessibilityLabel];
          v21 = v73[0];
          v73[0] = v20;
          MEMORY[0x29EDC9740](v21);
        }

        objc_storeStrong(&v62, 0);
      }

      if ([v73[0] length] || ((v61 = -[UIButtonAccessibility accessibilityIdentification](v74, "accessibilityIdentification"), (objc_msgSend(v61, "isEqualToString:", @"UITableCellViewDisclosure") & 1) == 0) && -[UIButtonAccessibility buttonType](v74, "buttonType") != 4 && -[UIButtonAccessibility buttonType](v74, "buttonType") != 3 && -[UIButtonAccessibility buttonType](v74, "buttonType") != 2 ? ((objc_msgSend(v61, "isEqualToString:", @"UIClearButton") & 1) == 0 ? (-[UIButtonAccessibility buttonType](v74, "buttonType") != 122 && -[UIButtonAccessibility buttonType](v74, "buttonType") != 7 ? (v63 = 0) : (v75 = accessibilityLocalizedString(@"close.button"), v63 = 1)) : (v75 = accessibilityLocalizedString(@"clear.button.text"), v63 = 1)) : (v75 = accessibilityLocalizedString(@"more.info.button"), v63 = 1), objc_storeStrong(&v61, 0), !v63))
      {
        if (![v73[0] length])
        {
          v22 = [v65 _accessibilityAXAttributedLabel];
          v23 = v73[0];
          v73[0] = v22;
          MEMORY[0x29EDC9740](v23);
        }

        if (![v73[0] length])
        {
          v60 = [(UIButtonAccessibility *)v74 _accessibilityImagePath];
          if (![v60 length] || (v58 = objc_msgSend(v60, "rangeOfString:", @"ForgotPasswordButton"), v59 = v24, v58 == 0x7FFFFFFFFFFFFFFFLL))
          {
            v42 = [v65 configuration];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            *&v27 = MEMORY[0x29EDC9740](v42).n128_u64[0];
            if (isKindOfClass)
            {
              v28 = AXSSAccessibilityDescriptionForSymbolName();
            }

            else
            {
              v28 = [(UIButtonAccessibility *)v74 _accessibilityRetrieveImagePathLabel:v60, v27];
            }

            v29 = v73[0];
            v73[0] = v28;
            *&v30 = MEMORY[0x29EDC9740](v29).n128_u64[0];
            if ([v73[0] length])
            {
              v57 = [MEMORY[0x29EDC7320] dictionaryWithAXAuditIssue:1001 element:v74 additionalInfo:0 identifier:0 foregroundColor:0 backgroundColor:0 fontSize:0 elementRect:0 text:?];
              [(UIButtonAccessibility *)v74 _accessibilitySetAuditIssueDict:v57];
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

          objc_storeStrong(&v60, 0);
        }

        if ([v73[0] length] || (v40 = objc_msgSend(v65, "accessibilityLabel"), v41 = objc_msgSend(v40, "length"), *&v31 = MEMORY[0x29EDC9740](v40).n128_u64[0], !v41))
        {
          v32 = [v73[0] stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
          v33 = v73[0];
          v73[0] = v32;
          *&v34 = MEMORY[0x29EDC9740](v33).n128_u64[0];
          v38 = [v73[0] uppercaseString];
          v39 = [v38 isEqualToString:v73[0]];
          *&v35 = MEMORY[0x29EDC9740](v38).n128_u64[0];
          if (v39)
          {
            v56 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v73[0], v35}];
            [v56 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD890]];
            objc_storeStrong(v73, v56);
            objc_storeStrong(&v56, 0);
          }

          v75 = MEMORY[0x29EDC9748](v73[0]);
          v63 = 1;
        }

        else
        {
          v75 = [v65 accessibilityLabel];
          v63 = 1;
        }
      }
    }

    objc_storeStrong(&v65, 0);
    objc_storeStrong(v73, 0);
  }

  v36 = v75;

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
  v13 = self;
  v12[1] = a2;
  v11.receiver = self;
  v11.super_class = UIButtonAccessibility;
  v12[0] = [(UIButtonAccessibility *)&v11 accessibilityValue];
  if (![v12[0] length])
  {
    v9 = 0;
    objc_opt_class();
    v6 = [(UIButtonAccessibility *)v13 safeValueForKey:@"_currentConfiguration"];
    v8 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v6);
    v7 = MEMORY[0x29EDC9748](v8);
    objc_storeStrong(&v8, 0);
    v10 = v7;
    if (v7)
    {
      v2 = [v10 subtitle];
      v3 = v12[0];
      v12[0] = v2;
      MEMORY[0x29EDC9740](v3);
    }

    objc_storeStrong(&v10, 0);
  }

  v5 = MEMORY[0x29EDC9748](v12[0]);
  objc_storeStrong(v12, 0);

  return v5;
}

- (id)_accessibilityAuditIssuesWithOptions:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11.receiver = v14;
  v11.super_class = UIButtonAccessibility;
  v12 = [(UIButtonAccessibility *)&v11 _accessibilityAuditIssuesWithOptions:location[0]];
  v10 = [MEMORY[0x29EDC7320] optionsDictionaryForAuditTest:*MEMORY[0x29EDBD790] inDictionary:location[0]];
  v9 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:*MEMORY[0x29EDBD7A8] inDictionary:v10];
  if (v9)
  {
    v3 = [(UIButtonAccessibility *)v14 accessibilityLabel];
    v8 = [(UIButtonAccessibility *)v14 _accessibilityValueForKey:*MEMORY[0x29EDC75F0]];
    v6 = v12;
    v7 = [v8 allObjects];
    [v6 addObjectsFromArray:?];
    MEMORY[0x29EDC9740](v7);
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
  v13 = [(UIButtonAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v13).n128_u64[0];
  if (v13)
  {
    v12 = [(UIButtonAccessibility *)self isAccessibilityUserDefinedElement];
    v15 = [v12 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v12);
  }

  else
  {
    v10 = [(UIButtonAccessibility *)self accessibilityIdentification];
    v11 = [v10 isEqualToString:@"UITableCellViewDisclosure"];
    MEMORY[0x29EDC9740](v10);
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

  v4 = [(UIButtonAccessibility *)self configuration];
  v7 = v4 != 0;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (CGRect)_accessibilityButtonChildrenCombinedFrame
{
  v18 = self;
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
    v14 = [(UIButtonAccessibility *)v18 subviews];
    UIAXFrameForElements();
    *&v19 = v6;
    *(&v19 + 1) = v7;
    *&v20 = v8;
    *(&v20 + 1) = v9;
    MEMORY[0x29EDC9740](v14);
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
  v8 = self;
  v7 = a2;
  if ([(UIButtonAccessibility *)self _accessibilityIsEmptyShellOfAButton])
  {
    [(UIButtonAccessibility *)v8 _accessibilityButtonChildrenCombinedFrame];
  }

  else
  {
    v6.receiver = v8;
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
  v6 = self;
  v5 = a2;
  v2 = [(UIButtonAccessibility *)self accessibilityTraits];
  if ((v2 & *MEMORY[0x29EDC7500]) != 0 && ([(UIButtonAccessibility *)v6 _accessibilityViewIsVisible]& 1) != 0)
  {
    return [(UIButtonAccessibility *)v6 accessibilityActivate]& 1;
  }

  v4.receiver = v6;
  v4.super_class = UIButtonAccessibility;
  return [(UIButtonAccessibility *)&v4 accessibilityPerformEscape];
}

- (unint64_t)_accessibilityNativeTraits
{
  v19 = self;
  v18 = a2;
  v16.receiver = self;
  v16.super_class = UIButtonAccessibility;
  v17 = [(UIButtonAccessibility *)&v16 accessibilityTraits];
  location = [(UIButtonAccessibility *)v19 safeValueForKey:@"currentImage"];
  v8 = [location accessibilityIdentifier];
  v12 = 0;
  v9 = 0;
  if ([v8 hasPrefix:@"UINavigationBarBackIndicatorDefault"])
  {
    v7 = [(UIButtonAccessibility *)v19 imageView];
    v13 = v7;
    v12 = 1;
    if (v7)
    {
      [v7 transform];
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

  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v9)
  {
    v17 |= *MEMORY[0x29EDC7500];
  }

  v6 = [(UIButtonAccessibility *)v19 _accessibilityButtonMacCatalystPopupButtonCell];
  *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v6)
  {
    v17 |= *MEMORY[0x29EDC7550];
  }

  else
  {
    v10 = [(UIButtonAccessibility *)v19 buttonType];
    if (v10 == 125 || v10 == 124)
    {
      v17 |= *MEMORY[0x29EDC7550];
    }
  }

  v5 = v17 | *MEMORY[0x29EDC7F70];
  objc_storeStrong(&location, 0);
  return v5;
}

- (unint64_t)accessibilityTraits
{
  v5 = [(UIButtonAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return [(UIButtonAccessibility *)self _accessibilityNativeTraits];
  }

  v4 = [(UIButtonAccessibility *)self accessibilityUserDefinedTraits];
  v7 = [v4 unsignedLongLongValue];
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (id)accessibilityPath
{
  v37 = self;
  v36[1] = a2;
  v36[0] = 0;
  v34 = 0;
  objc_opt_class();
  v19 = [(UIButtonAccessibility *)v37 currentAttributedTitle];
  v33 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v19);
  v32 = MEMORY[0x29EDC9748](v33);
  objc_storeStrong(&v33, 0);
  v35 = v32;
  v17 = [v32 string];
  v18 = [v17 length];
  *&v2 = MEMORY[0x29EDC9740](v17).n128_u64[0];
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
        v8 = [v35 string];
        v9 = v36[0];
        v36[0] = v8;
        MEMORY[0x29EDC9740](v9);
      }
    }
  }

  else
  {
    v3 = [(UIButtonAccessibility *)v37 safeValueForKey:@"currentTitle", v2];
    v4 = v36[0];
    v36[0] = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v30[1] = COERCE_ID(3.0);
  if (!-[UIButtonAccessibility _axButtonTypeIsModernCircle](v37, "_axButtonTypeIsModernCircle") || [v36[0] length])
  {
    goto LABEL_19;
  }

  v30[0] = [(UIButtonAccessibility *)v37 safeUIViewForKey:@"_imageView"];
  v16 = 1;
  if ([(UIButtonAccessibility *)v37 buttonType]!= 7)
  {
    v16 = v30[0] == 0;
  }

  v29 = v16;
  v26 = 0;
  if (v16)
  {
    v27 = [(UIButtonAccessibility *)v37 safeUIViewForKey:@"_backgroundView"];
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
    v38 = MEMORY[0x29EDC9748](v24);
    v21 = 1;
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(v30, 0);
  if (!v21)
  {
LABEL_19:
    v20.receiver = v37;
    v20.super_class = UIButtonAccessibility;
    v38 = [(UIButtonAccessibility *)&v20 accessibilityPath];
    v21 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(v36, 0);
  v13 = v38;

  return v13;
}

- (BOOL)_axButtonTypeIsModernCircle
{
  v4 = [(UIButtonAccessibility *)self buttonType];
  v3 = 1;
  if (v4 != 3)
  {
    v3 = 1;
    if (v4 != 4)
    {
      v3 = 1;
      if (v4 != 5)
      {
        v3 = 1;
        if (v4 != 2)
        {
          v3 = 1;
          if (v4 != 7)
          {
            v3 = 1;
            if (v4 != 118)
            {
              v3 = 1;
              if (v4 != 119)
              {
                v3 = 1;
                if (v4 != 120)
                {
                  v3 = 1;
                  if (v4 != 121)
                  {
                    v3 = 1;
                    if (v4 != 122)
                    {
                      return v4 == 123;
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