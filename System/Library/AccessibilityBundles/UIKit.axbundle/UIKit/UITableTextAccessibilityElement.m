@interface UITableTextAccessibilityElement
- (BOOL)_accessibilityElementServesAsHeadingLandmark;
- (BOOL)_accessibilityImplementsDefaultRowRange;
- (BOOL)_accessibilityIsAwayAlertElement;
- (BOOL)_accessibilityIsSpeakThisElement;
- (BOOL)_accessibilityRetainsCustomRotorActionSetting;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_accessibilityUseElementAtPositionAfterActivation;
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (_NSRange)_accessibilityIndexPathAsRange;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)accessibilityRowRange;
- (double)_accessibilityDelayBeforeUpdatingOnActivation;
- (id)_accessibilityAllDragSourceDescriptors;
- (id)_accessibilityAllDropPointDescriptors;
- (id)_accessibilityCapturedImages;
- (id)_accessibilityCustomActionGroupIdentifier;
- (id)_accessibilityEquivalenceTag;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySpeakThisString;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)_tableViewCellAttributeDelegate;
- (id)_tableViewCellTextDelegate;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (id)accessibilityLocalizationBundleID;
- (id)accessibilityLocalizationBundlePath;
- (id)accessibilityLocalizedStringKey;
- (id)accessibilityLocalizedStringTableName;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)attributeDelegate;
- (id)description;
- (id)setAttributeDelegate:(id *)result;
- (id)setTextDelegate:(id *)result;
- (id)textDelegate;
- (int64_t)_accessibilityScannerActivateBehavior;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityGetBlockForAttribute:(int64_t)a3;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)accessibilityDecrement;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)accessibilityIncrement;
@end

@implementation UITableTextAccessibilityElement

- (id)_tableViewCellTextDelegate
{
  if (a1)
  {
    v3 = [(UITableTextAccessibilityElement *)a1 textDelegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    MEMORY[0x29EDC9740](v3);
    if (isKindOfClass)
    {
      v2 = [(UITableTextAccessibilityElement *)a1 textDelegate];
      v6 = [v2 safeValueForKey:@"tableViewCell"];
      MEMORY[0x29EDC9740](v2);
    }

    else
    {
      v6 = [(UITableTextAccessibilityElement *)a1 textDelegate];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)textDelegate
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (BOOL)_accessibilityElementServesAsHeadingLandmark
{
  v3 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v4 = [v3 _accessibilityElementServesAsHeadingLandmark];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (void)accessibilityElementDidBecomeFocused
{
  v2 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [v2 accessibilityElementDidBecomeFocused];
  MEMORY[0x29EDC9740](v2);
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  v3 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v4 = [v3 _accessibilityCustomActionGroupIdentifier];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_accessibilityScrollStatus
{
  v3 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v4 = [v3 _accessibilityScrollStatus];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (void)accessibilityElementDidLoseFocus
{
  v2 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [v2 accessibilityElementDidLoseFocus];
  MEMORY[0x29EDC9740](v2);
}

- (id)_tableViewCellAttributeDelegate
{
  if (a1)
  {
    v3 = [(UITableTextAccessibilityElement *)a1 attributeDelegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    MEMORY[0x29EDC9740](v3);
    if (isKindOfClass)
    {
      v2 = [(UITableTextAccessibilityElement *)a1 attributeDelegate];
      v6 = [v2 tableViewCell];
      MEMORY[0x29EDC9740](v2);
    }

    else
    {
      v6 = [(UITableTextAccessibilityElement *)a1 attributeDelegate];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)attributeDelegate
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (!v4[0])
  {
    v4[0] = [(UITableTextAccessibilityElement *)v5 _tableViewCellTextDelegate];
    MEMORY[0x29EDC9740](0);
  }

  v3 = [v4[0] _accessibilityTextViewTextOperationResponder];
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)accessibilityLabel
{
  v6 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location[0])
  {
    v7 = [location[0] tableTextAccessibleLabel:v6];
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = UITableTextAccessibilityElement;
    v7 = [(UITableTextAccessibilityElement *)&v4 accessibilityLabel];
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (BOOL)_accessibilityUseElementAtPositionAfterActivation
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    v4 = [location[0] _accessibilityUseElementAtPositionAfterActivation] & 1;
  }

  else
  {
    v4 = 1;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)accessibilityValue
{
  v7 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    v8 = [location[0] accessibilityValue];
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = UITableTextAccessibilityElement;
    v8 = [(UITableTextAccessibilityElement *)&v4 accessibilityValue];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (id)accessibilityHint
{
  v7 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    v8 = [location[0] accessibilityHint];
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = UITableTextAccessibilityElement;
    v8 = [(UITableTextAccessibilityElement *)&v4 accessibilityHint];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (id)accessibilityIdentifier
{
  v7 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    v8 = [location[0] accessibilityIdentifier];
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = UITableTextAccessibilityElement;
    v8 = [(UITableTextAccessibilityElement *)&v4 accessibilityIdentifier];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (CGRect)accessibilityFrame
{
  v18 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    if (objc_opt_respondsToSelector())
    {
      [location[0] tableTextAccessibleFrame:v18];
    }

    else
    {
      v14.receiver = v18;
      v14.super_class = UITableTextAccessibilityElement;
      [(UITableTextAccessibilityElement *)&v14 accessibilityFrame];
    }

    v19 = v6;
    v20 = v7;
    v21 = v8;
    v22 = v9;
    v15 = 1;
  }

  else
  {
    v16.receiver = v18;
    v16.super_class = UITableTextAccessibilityElement;
    [(UITableTextAccessibilityElement *)&v16 accessibilityFrame];
    v19 = v2;
    v20 = v3;
    v21 = v4;
    v22 = v5;
    v15 = 1;
  }

  objc_storeStrong(location, 0);
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)accessibilityLocalizedStringKey
{
  v6 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location[0])
  {
    v7 = [location[0] tableTextAccessibleStringKey:v6];
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = UITableTextAccessibilityElement;
    v7 = [(UITableTextAccessibilityElement *)&v4 accessibilityLocalizedStringKey];
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (id)accessibilityLocalizationBundleID
{
  v6 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location[0])
  {
    v7 = [location[0] tableTextAccessibleLocalizationBundleID:v6];
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = UITableTextAccessibilityElement;
    v7 = [(UITableTextAccessibilityElement *)&v4 accessibilityLocalizationBundleID];
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (id)accessibilityLocalizationBundlePath
{
  v6 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location[0])
  {
    v7 = [location[0] tableTextAccessibleLocalizationBundlePath:v6];
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = UITableTextAccessibilityElement;
    v7 = [(UITableTextAccessibilityElement *)&v4 accessibilityLocalizationBundlePath];
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (id)accessibilityLocalizedStringTableName
{
  v6 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location[0])
  {
    v7 = [location[0] tableTextAccessibleLocalizedTableName:v6];
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = UITableTextAccessibilityElement;
    v7 = [(UITableTextAccessibilityElement *)&v4 accessibilityLocalizedStringTableName];
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (id)accessibilityLanguage
{
  v7 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    v8 = [location[0] accessibilityLanguage];
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = UITableTextAccessibilityElement;
    v8 = [(UITableTextAccessibilityElement *)&v4 accessibilityLanguage];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  v9 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    [location[0] accessibilityActivationPoint];
  }

  else
  {
    v6.receiver = v9;
    v6.super_class = UITableTextAccessibilityElement;
    [(UITableTextAccessibilityElement *)&v6 accessibilityActivationPoint];
  }

  v10 = v2;
  v11 = v3;
  v7 = 1;
  objc_storeStrong(location, 0);
  v4 = v10;
  v5 = v11;
  result.y = v5;
  result.x = v4;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v7 = self;
  v6 = a2;
  v4.receiver = self;
  v4.super_class = UITableTextAccessibilityElement;
  v5 = [(UITableTextAccessibilityElement *)&v4 accessibilityTraits];
  location = [(UITableTextAccessibilityElement *)v7 _tableViewCellAttributeDelegate];
  if (location)
  {
    v5 = [location accessibilityTraits];
    v5 |= *MEMORY[0x29EDC7FD0];
    v8 = v5;
  }

  else
  {
    [(UITableTextAccessibilityElement *)v7 accessibilityFrame];
    if (CGRectGetHeight(v9) == 0.0)
    {
      v5 |= *MEMORY[0x29EDC7578];
    }

    v8 = v5;
  }

  objc_storeStrong(&location, 0);
  return v8;
}

- (_NSRange)accessibilityRowRange
{
  v5 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v6 = [v5 accessibilityRowRange];
  v7 = v2;
  MEMORY[0x29EDC9740](v5);
  v3 = v6;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (BOOL)_accessibilityImplementsDefaultRowRange
{
  v3 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v4 = [v3 _accessibilityImplementsDefaultRowRange];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (_NSRange)_accessibilityIndexPathAsRange
{
  v5 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v6 = [v5 _accessibilityIndexPathAsRange];
  v7 = v2;
  MEMORY[0x29EDC9740](v5);
  v3 = v6;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (BOOL)_accessibilityRetainsCustomRotorActionSetting
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v3 = [v4[0] _accessibilityRetainsCustomRotorActionSetting];
  objc_storeStrong(v4, 0);
  return v3;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v3 = [v4[0] _accessibilitySupportsActivateAction];
  objc_storeStrong(v4, 0);
  return v3;
}

- (BOOL)accessibilityActivate
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v3 = [v4[0] accessibilityActivate];
  objc_storeStrong(v4, 0);
  return v3;
}

- (double)_accessibilityDelayBeforeUpdatingOnActivation
{
  v4 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [v4 _accessibilityDelayBeforeUpdatingOnActivation];
  v5 = v2;
  MEMORY[0x29EDC9740](v4);
  return v5;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  v3 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [v3 _accessibilitySetSelectedTextRange:{a3.location, a3.length}];
  MEMORY[0x29EDC9740](v3);
}

- (BOOL)_accessibilityIsAwayAlertElement
{
  v3 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v4 = [v3 _accessibilityIsAwayAlertElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v5 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v6 = [v5 _accessibilitySelectedTextRange];
  v7 = v2;
  MEMORY[0x29EDC9740](v5);
  v3 = v6;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)_accessibilityEquivalenceTag
{
  v3 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v4 = [v3 _accessibilityEquivalenceTag];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (BOOL)_accessibilityIsSpeakThisElement
{
  v3 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  v4 = [v3 _accessibilityIsSpeakThisElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (void)_accessibilityGetBlockForAttribute:(int64_t)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  if (a3 == 5)
  {
    v4 = [(UITableTextAccessibilityElement *)v8 _tableViewCellTextDelegate];
    v9 = [v4 _accessibilityGetBlockForAttribute:5];
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = UITableTextAccessibilityElement;
    return [(UITableTextAccessibilityElement *)&v5 _accessibilityGetBlockForAttribute:v6];
  }

  return v9;
}

- (id)_accessibilitySpeakThisString
{
  v15 = self;
  v14[1] = a2;
  v14[0] = 0;
  if (!_accessibilitySpeakThisString_BaseNSObjectMethod)
  {
    v2 = objc_opt_class();
    _accessibilitySpeakThisString_BaseNSObjectMethod = class_getInstanceMethod(v2, 0x1FC1A25D1);
    v3 = objc_opt_class();
    _accessibilitySpeakThisString_BaseUIResponderMethod = class_getInstanceMethod(v3, 0x1FC1A25D1);
  }

  location = [(UITableTextAccessibilityElement *)v15 _tableViewCellTextDelegate];
  if (location)
  {
    v4 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v4, sel__accessibilitySpeakThisString);
    if (InstanceMethod != _accessibilitySpeakThisString_BaseNSObjectMethod && InstanceMethod != _accessibilitySpeakThisString_BaseUIResponderMethod)
    {
      v5 = [location _accessibilitySpeakThisString];
      v6 = v14[0];
      v14[0] = v5;
      MEMORY[0x29EDC9740](v6);
    }
  }

  if (!v14[0])
  {
    v11.receiver = v15;
    v11.super_class = UITableTextAccessibilityElement;
    v7 = [(UITableTextAccessibilityElement *)&v11 _accessibilitySpeakThisString];
    v8 = v14[0];
    v14[0] = v7;
    MEMORY[0x29EDC9740](v8);
  }

  v10 = MEMORY[0x29EDC9748](v14[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);

  return v10;
}

- (int64_t)_accessibilityScannerActivateBehavior
{
  v3 = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  v4 = [v3 _accessibilityScannerActivateBehavior];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityUserInputLabels
{
  v14 = self;
  v13[1] = a2;
  v13[0] = 0;
  location = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location)
  {
    v4 = [location accessibilityUserInputLabels];
    v5 = v13[0];
    v13[0] = v4;
    if (![v4 count])
    {
      v10 = [location tableTextAccessibleLabel:v14];
      v6 = MEMORY[0x29ED3D9A0]();
      v7 = v13[0];
      v13[0] = v6;
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v10);
    }
  }

  else
  {
    v11.receiver = v14;
    v11.super_class = UITableTextAccessibilityElement;
    v2 = [(UITableTextAccessibilityElement *)&v11 accessibilityUserInputLabels];
    v3 = v13[0];
    v13[0] = v2;
    MEMORY[0x29EDC9740](v3);
  }

  v9 = MEMORY[0x29EDC9748](v13[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v13, 0);

  return v9;
}

- (void)accessibilityDecrement
{
  v2 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [v2 accessibilityDecrement];
  MEMORY[0x29EDC9740](v2);
}

- (void)accessibilityIncrement
{
  v2 = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [v2 accessibilityIncrement];
  MEMORY[0x29EDC9740](v2);
}

- (id)description
{
  v9 = self;
  v8 = a2;
  v3 = MEMORY[0x29EDBA0F8];
  v7.receiver = self;
  v7.super_class = UITableTextAccessibilityElement;
  v5 = [(UITableTextAccessibilityElement *)&v7 description];
  v4 = [(UITableTextAccessibilityElement *)v9 accessibilityContainer];
  v6 = [v3 stringWithFormat:@"%@ < %@", v5, v4];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);

  return v6;
}

- (id)_accessibilityAllDragSourceDescriptors
{
  v3 = [(UITableTextAccessibilityElement *)self textDelegate];
  v4 = [v3 accessibilityDragSourceDescriptors];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_accessibilityAllDropPointDescriptors
{
  v3 = [(UITableTextAccessibilityElement *)self textDelegate];
  v4 = [v3 accessibilityDropPointDescriptors];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_accessibilityCapturedImages
{
  v7 = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    v8 = [location[0] _accessibilityCapturedImages];
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = UITableTextAccessibilityElement;
    v8 = [(UITableTextAccessibilityElement *)&v4 _accessibilityCapturedImages];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (id)setTextDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 7, a2);
  }

  return result;
}

- (id)setAttributeDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 8, a2);
  }

  return result;
}

@end