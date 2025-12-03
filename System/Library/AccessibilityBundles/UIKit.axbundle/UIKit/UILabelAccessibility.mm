@interface UILabelAccessibility
- (BOOL)_accessibilityOverridesPotentiallyAttributedAPISelector:(SEL)selector;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)isAccessibilityElement;
- (double)_accessibilityFontSize;
- (id)_accessibilityLabel:(void *)label;
- (id)_axCleanupNewlines:(uint64_t)newlines;
- (id)_axOriginalLabelText:(void *)text;
- (id)accessibilityAttributedLabel;
- (id)accessibilityLocalizationBundleID;
- (id)accessibilityLocalizationBundlePath;
- (id)accessibilityLocalizedStringKey;
- (id)accessibilityLocalizedStringTableName;
- (id)accessibilityValue;
- (id)copyAttributedText:(id)text withAttributes:(id)attributes;
- (unint64_t)accessibilityTraits;
@end

@implementation UILabelAccessibility

- (double)_accessibilityFontSize
{
  font = [(UILabelAccessibility *)self font];
  [font pointSize];
  v5 = v2;
  MEMORY[0x29EDC9740](font);
  return v5;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v16 = a2;
  isAccessibilityUserDefinedElement = [(UILabelAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(UILabelAccessibility *)selfCopy isAccessibilityUserDefinedElement];
    v18 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  }

  else
  {
    [(UILabelAccessibility *)selfCopy alpha];
    if (v3 <= 0.0 || (_accessibilityOverridesInvisibility = 1, ([(UILabelAccessibility *)selfCopy isHidden]& 1) != 0))
    {
      _accessibilityOverridesInvisibility = [(UILabelAccessibility *)selfCopy _accessibilityOverridesInvisibility];
    }

    v15 = _accessibilityOverridesInvisibility & 1;
    if (_accessibilityOverridesInvisibility)
    {
      context = objc_autoreleasePoolPush();
      v14 = [(UILabelAccessibility *)selfCopy _accessibilityLabel:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithStringOrAttributedString:v14];
        v5 = v14;
        v14 = v4;
        MEMORY[0x29EDC9740](v5);
      }

      whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
      location = [v14 stringByTrimmingCharactersInSet:?];
      if ([location length])
      {
        v12 = 0;
      }

      else
      {
        v18 = 0;
        v12 = 1;
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v14, 0);
      objc_autoreleasePoolPop(context);
      if (!v12)
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18 & 1;
}

- (id)_accessibilityLabel:(void *)label
{
  labelCopy = label;
  v5 = a2;
  if (label)
  {
    location = [labelCopy accessibilityUserDefinedLabel];
    if (location)
    {
      v7 = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v7 = [(UILabelAccessibility *)labelCopy _axOriginalLabelText:?];
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v7 = 0;
  }

  v2 = v7;

  return v2;
}

- (id)_axCleanupNewlines:(uint64_t)newlines
{
  v35 = *MEMORY[0x29EDCA608];
  newlinesCopy = newlines;
  location = 0;
  objc_storeStrong(&location, a2);
  if (newlinesCopy)
  {
    if (location)
    {
      v29 = &_axCleanupNewlines__onceToken;
      v28 = 0;
      objc_storeStrong(&v28, &__block_literal_global_26);
      if (*v29 != -1)
      {
        dispatch_once(v29, v28);
      }

      objc_storeStrong(&v28, 0);
      v16 = _axCleanupNewlines__Regex;
      v15 = location;
      v2 = [location length];
      v31 = 0;
      v30 = v2;
      v32 = 0;
      v33 = v2;
      v22[1] = 0;
      v22[2] = v2;
      v23 = [v16 matchesInString:v15 options:0 range:{0, v2}];
      if ([v23 count])
      {
        objc_opt_class();
        v20 = 0;
        if (objc_opt_isKindOfClass())
        {
          v3 = MEMORY[0x29EDC9748](location);
        }

        else
        {
          v21 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:location];
          v20 = 1;
          v3 = MEMORY[0x29EDC9748](v21);
        }

        v22[0] = v3;
        if (v20)
        {
          MEMORY[0x29EDC9740](v21);
        }

        memset(__b, 0, sizeof(__b));
        reverseObjectEnumerator = [v23 reverseObjectEnumerator];
        obj = [reverseObjectEnumerator allObjects];
        v14 = [obj countByEnumeratingWithState:__b objects:v34 count:{16, MEMORY[0x29EDC9740](reverseObjectEnumerator).n128_f64[0]}];
        if (v14)
        {
          v9 = *__b[2];
          v10 = 0;
          v11 = v14;
          while (1)
          {
            v8 = v10;
            if (*__b[2] != v9)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(__b[1] + 8 * v10);
            v7 = v22[0];
            range = [v19 range];
            [v7 replaceCharactersInRange:range withString:{v4, @" "}];
            ++v10;
            if (v8 + 1 >= v11)
            {
              v10 = 0;
              v11 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
              if (!v11)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x29EDC9740](obj);
        v27 = MEMORY[0x29EDC9748](v22[0]);
        v24 = 1;
        objc_storeStrong(v22, 0);
      }

      else
      {
        v27 = MEMORY[0x29EDC9748](location);
        v24 = 1;
      }

      objc_storeStrong(&v23, 0);
    }

    else
    {
      v27 = 0;
      v24 = 1;
    }
  }

  else
  {
    v27 = 0;
    v24 = 1;
  }

  objc_storeStrong(&location, 0);
  v5 = v27;

  return v5;
}

double __43__UILabelAccessibility__axCleanupNewlines___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x29EDBA0D0] regularExpressionWithPattern:@"(?<!\n)\n{1}(?!\n)" options:0 error:{0, a1, a1}];
  v2 = _axCleanupNewlines__Regex;
  _axCleanupNewlines__Regex = v1;
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

- (BOOL)_accessibilityOverridesPotentiallyAttributedAPISelector:(SEL)selector
{
  selfCopy = self;
  v8 = a2;
  name = selector;
  v12 = &_accessibilityOverridesPotentiallyAttributedAPISelector__onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_298);
  if (*v12 != -1)
  {
    dispatch_once(v12, location);
  }

  objc_storeStrong(&location, 0);
  v3 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v3, name);
  if (name == sel_accessibilityLabel)
  {
    return InstanceMethod != _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityLabelBaseMethod;
  }

  if (name == sel_accessibilityAttributedLabel)
  {
    return InstanceMethod != _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedLabelBaseMethod;
  }

  v5.receiver = selfCopy;
  v5.super_class = UILabelAccessibility;
  return [(UILabelAccessibility *)&v5 _accessibilityOverridesPotentiallyAttributedAPISelector:name];
}

Method __80__UILabelAccessibility__accessibilityOverridesPotentiallyAttributedAPISelector___block_invoke()
{
  v0 = objc_opt_class();
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityLabelBaseMethod = class_getInstanceMethod(v0, sel_accessibilityLabel);
  v1 = objc_opt_class();
  result = class_getInstanceMethod(v1, sel_accessibilityAttributedLabel);
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedLabelBaseMethod = result;
  return result;
}

- (id)accessibilityValue
{
  selfCopy = self;
  v5 = a2;
  if (([(UILabelAccessibility *)self accessibilityExposeLabelAsValue]& 1) != 0)
  {
    accessibilityValue = [(UILabelAccessibility *)selfCopy _axOriginalLabelText:?];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UILabelAccessibility;
    accessibilityValue = [(UILabelAccessibility *)&v4 accessibilityValue];
  }

  v2 = accessibilityValue;

  return v2;
}

- (id)_axOriginalLabelText:(void *)text
{
  textCopy = text;
  v42 = a2;
  if (!text)
  {
    v44 = 0;
    goto LABEL_35;
  }

  textCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_axOriginalLabelText", textCopy];
  v23 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:textCopy];
  *&v2 = MEMORY[0x29EDC9740](v23).n128_u64[0];
  if (!v23)
  {
    accessibilityIdentification = [textCopy accessibilityIdentification];
    v22 = [accessibilityIdentification isEqualToString:@"doubleHeightLabel"];
    *&v3 = MEMORY[0x29EDC9740](accessibilityIdentification).n128_u64[0];
    if (v22)
    {
      v39 = [textCopy safeValueForKey:{@"text", v3}];
      if (v42)
      {
        v38 = 0;
        v36 = 0;
        v37 = 0;
        v35 = 0;
        DurationRangeInString = _accessibilityFindDurationRangeInString(v39, &v35);
        v20 = v4;
        objc_storeStrong(&v38, v35);
        v36 = DurationRangeInString;
        v37 = v20;
        if (DurationRangeInString == 0x7FFFFFFFFFFFFFFFLL)
        {
          v40 = 0;
        }

        else
        {
          v5 = objc_allocWithZone(MEMORY[0x29EDBD7E8]);
          v34 = [v5 initWithString:v39];
          [v34 setAttribute:*MEMORY[0x29EDB8F00] forKey:v38 withRange:{v36, v37}];
          [*MEMORY[0x29EDC7300] setObject:v34 forKeyedSubscript:textCopy];
          v44 = MEMORY[0x29EDC9748](v34);
          v40 = 1;
          objc_storeStrong(&v34, 0);
        }

        objc_storeStrong(&v38, 0);
      }

      else
      {
        [*MEMORY[0x29EDC7300] setObject:v39 forKeyedSubscript:textCopy];
        v44 = MEMORY[0x29EDC9748](v39);
        v40 = 1;
      }

      objc_storeStrong(&v39, 0);
      if (v40)
      {
        goto LABEL_34;
      }
    }

    v32 = 0;
    objc_opt_class();
    v18 = [textCopy safeValueForKey:@"attributedText"];
    v31 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v18);
    v30 = MEMORY[0x29EDC9748](v31);
    objc_storeStrong(&v31, 0);
    v33 = v30;
    v29 = 0;
    if ([v30 length])
    {
      if ((v42 & 1) == 0)
      {
        string = [v33 string];
        v7 = v29;
        v29 = string;
        *&v8 = MEMORY[0x29EDC9740](v7).n128_u64[0];
        [*MEMORY[0x29EDC7300] setObject:v29 forKeyedSubscript:{textCopy, v8}];
        v44 = MEMORY[0x29EDC9748](v29);
        v40 = 1;
LABEL_33:
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v33, 0);
        goto LABEL_34;
      }

      v28 = UIAccessibilityConvertAttachmentsInAttributedStringToAX();
      if (v28)
      {
        v46 = &_axOriginalLabelText__onceToken;
        v45 = 0;
        objc_storeStrong(&v45, &__block_literal_global_340);
        if (*v46 != -1)
        {
          dispatch_once(v46, v45);
        }

        objc_storeStrong(&v45, 0);
        if (!AXDoesRequestingClientDeserveAutomation())
        {
          [v28 removeAttributes:_axOriginalLabelText__Attributes];
        }

        v27 = [textCopy _accessibilityValueForKey:*MEMORY[0x29EDC7610]];
        if (v27)
        {
          obj = [v28 stringByReplacingOccurrencesOfString:v27 withString:{@", "}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v28, obj);
          }

          objc_storeStrong(&obj, 0);
        }

        v25 = [(UILabelAccessibility *)textCopy _axCleanupNewlines:v28];
        [*MEMORY[0x29EDC7300] setObject:v25 forKeyedSubscript:textCopy];
        v44 = MEMORY[0x29EDC9748](v25);
        v40 = 1;
        objc_storeStrong(&v25, 0);
        objc_storeStrong(&v27, 0);
      }

      else
      {
        v40 = 0;
      }

      objc_storeStrong(&v28, 0);
      if (v40)
      {
        goto LABEL_33;
      }
    }

    if (![v29 length])
    {
      v9 = [textCopy safeValueForKey:@"text"];
      v10 = v29;
      v29 = v9;
      MEMORY[0x29EDC9740](v10);
    }

    v11 = [(UILabelAccessibility *)textCopy _axCleanupNewlines:v29];
    v12 = v29;
    v29 = v11;
    *&v13 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    v24 = [textCopy _accessibilityValueForKey:{*MEMORY[0x29EDC7610], v13}];
    if (v24)
    {
      v14 = [v29 stringByReplacingOccurrencesOfString:v24 withString:{@", "}];
      v15 = v29;
      v29 = v14;
      MEMORY[0x29EDC9740](v15);
    }

    [*MEMORY[0x29EDC7300] setObject:v29 forKeyedSubscript:textCopy];
    v44 = MEMORY[0x29EDC9748](v29);
    v40 = 1;
    objc_storeStrong(&v24, 0);
    goto LABEL_33;
  }

  v44 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:{textCopy, v2}];
  v40 = 1;
LABEL_34:
  objc_storeStrong(&textCopy, 0);
LABEL_35:
  v16 = v44;

  return v16;
}

- (id)accessibilityAttributedLabel
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UILabelAccessibility *)self accessibilityLabel];
  if ([location[0] isAXAttributedString])
  {
    cfAttributedString = [location[0] cfAttributedString];
  }

  else if (location[0])
  {
    cfAttributedString = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:location[0]];
  }

  else
  {
    cfAttributedString = 0;
  }

  objc_storeStrong(location, 0);
  v2 = cfAttributedString;

  return v2;
}

- (id)copyAttributedText:(id)text withAttributes:(id)attributes
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v16 = 0;
  objc_storeStrong(&v16, attributes);
  v14 = 0;
  v10 = [(UILabelAccessibility *)selfCopy safeValueForKey:@"defaultAttributes"];
  v13 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v10);
  v12 = MEMORY[0x29EDC9748](v13);
  objc_storeStrong(&v13, 0);
  v15 = [v12 mutableCopy];
  MEMORY[0x29EDC9740](v12);
  v4 = objc_alloc(MEMORY[0x29EDBA038]);
  v11 = [v4 initWithString:location[0] attributes:v15];
  v6 = v11;
  _accessibilityAttributedLocalizedString = [location[0] _accessibilityAttributedLocalizedString];
  [v6 _setAccessibilityAttributedLocalizedString:?];
  MEMORY[0x29EDC9740](_accessibilityAttributedLocalizedString);
  v8 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (id)accessibilityLocalizedStringKey
{
  selfCopy = self;
  v10[1] = a2;
  v9 = 0;
  objc_opt_class();
  v4 = [(UILabelAccessibility *)selfCopy safeValueForKey:@"attributedText"];
  v8 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10[0] = v7;
  _accessibilityAttributedLocalizedString = [v7 _accessibilityAttributedLocalizedString];
  v5 = [_accessibilityAttributedLocalizedString attributeValueForKey:@"UIAccessibilityTokenLocalizedStringKey"];
  v3 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v10, 0);

  return v3;
}

- (id)accessibilityLocalizationBundleID
{
  selfCopy = self;
  v10[1] = a2;
  v9 = 0;
  objc_opt_class();
  v4 = [(UILabelAccessibility *)selfCopy safeValueForKey:@"attributedText"];
  v8 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10[0] = v7;
  _accessibilityAttributedLocalizedString = [v7 _accessibilityAttributedLocalizedString];
  v5 = [_accessibilityAttributedLocalizedString attributeValueForKey:@"UIAccessibilityTokenLocalizedStringBundleID"];
  v3 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v10, 0);

  return v3;
}

- (id)accessibilityLocalizationBundlePath
{
  selfCopy = self;
  v10[1] = a2;
  v9 = 0;
  objc_opt_class();
  v4 = [(UILabelAccessibility *)selfCopy safeValueForKey:@"attributedText"];
  v8 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10[0] = v7;
  _accessibilityAttributedLocalizedString = [v7 _accessibilityAttributedLocalizedString];
  v5 = [_accessibilityAttributedLocalizedString attributeValueForKey:@"UIAccessibilityTokenLocalizationBundlePath"];
  v3 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v10, 0);

  return v3;
}

- (id)accessibilityLocalizedStringTableName
{
  selfCopy = self;
  v10[1] = a2;
  v9 = 0;
  objc_opt_class();
  v4 = [(UILabelAccessibility *)selfCopy safeValueForKey:@"attributedText"];
  v8 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10[0] = v7;
  _accessibilityAttributedLocalizedString = [v7 _accessibilityAttributedLocalizedString];
  v5 = [_accessibilityAttributedLocalizedString attributeValueForKey:@"UIAccessibilityTokenLocalizedStringTableName"];
  v3 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v10, 0);

  return v3;
}

double __45__UILabelAccessibility__axOriginalLabelText___block_invoke(uint64_t a1)
{
  v4[5] = *MEMORY[0x29EDCA608];
  v4[0] = *MEMORY[0x29EDC7638];
  v4[1] = *MEMORY[0x29EDC7630];
  v4[2] = *MEMORY[0x29EDC7658];
  v4[3] = *MEMORY[0x29EDC7650];
  v4[4] = *MEMORY[0x29EDC7640];
  v1 = [MEMORY[0x29EDB8D80] arrayWithObjects:v4 count:{5, a1, a1}];
  v2 = _axOriginalLabelText__Attributes;
  _axOriginalLabelText__Attributes = v1;
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v18 = a2;
  accessibilityUserDefinedTraits = [(UILabelAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedTraits).n128_u64[0];
  if (accessibilityUserDefinedTraits)
  {
    accessibilityUserDefinedTraits2 = [(UILabelAccessibility *)selfCopy accessibilityUserDefinedTraits];
    unsignedLongLongValue = [accessibilityUserDefinedTraits2 unsignedLongLongValue];
    MEMORY[0x29EDC9740](accessibilityUserDefinedTraits2);
  }

  else
  {
    v5 = *MEMORY[0x29EDC7FD0];
    v16.receiver = selfCopy;
    v16.super_class = UILabelAccessibility;
    v17 = v5 | [(UILabelAccessibility *)&v16 accessibilityTraits];
    accessibilityIdentification = [(UILabelAccessibility *)selfCopy accessibilityIdentification];
    v7 = [accessibilityIdentification isEqualToString:@"doubleHeightLabel"];
    MEMORY[0x29EDC9740](accessibilityIdentification);
    if (v7)
    {
      v17 |= *MEMORY[0x29EDC7FF0];
    }

    v15 = MEMORY[0x29EDC9748](selfCopy);
    v10 = 0;
    HasButtonLikeGesture = 0;
    if ([v15 isUserInteractionEnabled])
    {
      v14 = 0;
      objc_opt_class();
      v13 = __UIAccessibilityCastAsSafeCategory();
      v12 = MEMORY[0x29EDC9748](v13);
      objc_storeStrong(&v13, 0);
      v11 = v12;
      v10 = 1;
      HasButtonLikeGesture = [(UIViewAccessibility *)v12 _accessibilityHasButtonLikeGestureRecognizer];
    }

    if (v10)
    {
      MEMORY[0x29EDC9740](v11);
    }

    if (HasButtonLikeGesture)
    {
      v17 |= *MEMORY[0x29EDC7F70];
    }

    unsignedLongLongValue = v17;
    objc_storeStrong(&v15, 0);
  }

  return unsignedLongLongValue;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  selfCopy = self;
  v10 = a2;
  accessibilityIdentification = [(UILabelAccessibility *)self accessibilityIdentification];
  v8 = [accessibilityIdentification isEqualToString:@"doubleHeightLabel"];
  *&v2 = MEMORY[0x29EDC9740](accessibilityIdentification).n128_u64[0];
  if (v8)
  {
    return 1;
  }

  storedAccessibilityRespondsToUserInteraction = [(UILabelAccessibility *)selfCopy storedAccessibilityRespondsToUserInteraction];
  *&v3 = MEMORY[0x29EDC9740](storedAccessibilityRespondsToUserInteraction).n128_u64[0];
  if (storedAccessibilityRespondsToUserInteraction)
  {
    storedAccessibilityRespondsToUserInteraction2 = [(UILabelAccessibility *)selfCopy storedAccessibilityRespondsToUserInteraction];
    v12 = [storedAccessibilityRespondsToUserInteraction2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](storedAccessibilityRespondsToUserInteraction2);
  }

  else if (([(UILabelAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = UILabelAccessibility;
    return [(UILabelAccessibility *)&v9 accessibilityRespondsToUserInteraction];
  }

  return v12;
}

@end