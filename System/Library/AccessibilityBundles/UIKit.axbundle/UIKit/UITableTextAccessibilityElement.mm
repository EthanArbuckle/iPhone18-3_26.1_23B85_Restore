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
- (void)_accessibilityGetBlockForAttribute:(int64_t)attribute;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)accessibilityDecrement;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)accessibilityIncrement;
@end

@implementation UITableTextAccessibilityElement

- (id)_tableViewCellTextDelegate
{
  if (self)
  {
    textDelegate = [(UITableTextAccessibilityElement *)self textDelegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    MEMORY[0x29EDC9740](textDelegate);
    if (isKindOfClass)
    {
      textDelegate2 = [(UITableTextAccessibilityElement *)self textDelegate];
      textDelegate3 = [textDelegate2 safeValueForKey:@"tableViewCell"];
      MEMORY[0x29EDC9740](textDelegate2);
    }

    else
    {
      textDelegate3 = [(UITableTextAccessibilityElement *)self textDelegate];
    }
  }

  else
  {
    textDelegate3 = 0;
  }

  return textDelegate3;
}

- (id)textDelegate
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 56));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (BOOL)_accessibilityElementServesAsHeadingLandmark
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  _accessibilityElementServesAsHeadingLandmark = [_tableViewCellTextDelegate _accessibilityElementServesAsHeadingLandmark];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
  return _accessibilityElementServesAsHeadingLandmark;
}

- (void)accessibilityElementDidBecomeFocused
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [_tableViewCellTextDelegate accessibilityElementDidBecomeFocused];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  _accessibilityCustomActionGroupIdentifier = [_tableViewCellTextDelegate _accessibilityCustomActionGroupIdentifier];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);

  return _accessibilityCustomActionGroupIdentifier;
}

- (id)_accessibilityScrollStatus
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  _accessibilityScrollStatus = [_tableViewCellTextDelegate _accessibilityScrollStatus];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);

  return _accessibilityScrollStatus;
}

- (void)accessibilityElementDidLoseFocus
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [_tableViewCellTextDelegate accessibilityElementDidLoseFocus];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
}

- (id)_tableViewCellAttributeDelegate
{
  if (self)
  {
    attributeDelegate = [(UITableTextAccessibilityElement *)self attributeDelegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    MEMORY[0x29EDC9740](attributeDelegate);
    if (isKindOfClass)
    {
      attributeDelegate2 = [(UITableTextAccessibilityElement *)self attributeDelegate];
      tableViewCell = [attributeDelegate2 tableViewCell];
      MEMORY[0x29EDC9740](attributeDelegate2);
    }

    else
    {
      tableViewCell = [(UITableTextAccessibilityElement *)self attributeDelegate];
    }
  }

  else
  {
    tableViewCell = 0;
  }

  return tableViewCell;
}

- (id)attributeDelegate
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 64));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (!v4[0])
  {
    v4[0] = [(UITableTextAccessibilityElement *)selfCopy _tableViewCellTextDelegate];
    MEMORY[0x29EDC9740](0);
  }

  _accessibilityTextViewTextOperationResponder = [v4[0] _accessibilityTextViewTextOperationResponder];
  objc_storeStrong(v4, 0);

  return _accessibilityTextViewTextOperationResponder;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location[0])
  {
    accessibilityLabel = [location[0] tableTextAccessibleLabel:selfCopy];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableTextAccessibilityElement;
    accessibilityLabel = [(UITableTextAccessibilityElement *)&v4 accessibilityLabel];
  }

  objc_storeStrong(location, 0);
  v2 = accessibilityLabel;

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
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    accessibilityValue = [location[0] accessibilityValue];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableTextAccessibilityElement;
    accessibilityValue = [(UITableTextAccessibilityElement *)&v4 accessibilityValue];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityValue;

  return v2;
}

- (id)accessibilityHint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    accessibilityHint = [location[0] accessibilityHint];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableTextAccessibilityElement;
    accessibilityHint = [(UITableTextAccessibilityElement *)&v4 accessibilityHint];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityHint;

  return v2;
}

- (id)accessibilityIdentifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    accessibilityIdentifier = [location[0] accessibilityIdentifier];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableTextAccessibilityElement;
    accessibilityIdentifier = [(UITableTextAccessibilityElement *)&v4 accessibilityIdentifier];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityIdentifier;

  return v2;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    if (objc_opt_respondsToSelector())
    {
      [location[0] tableTextAccessibleFrame:selfCopy];
    }

    else
    {
      v14.receiver = selfCopy;
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
    v16.receiver = selfCopy;
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
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location[0])
  {
    accessibilityLocalizedStringKey = [location[0] tableTextAccessibleStringKey:selfCopy];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableTextAccessibilityElement;
    accessibilityLocalizedStringKey = [(UITableTextAccessibilityElement *)&v4 accessibilityLocalizedStringKey];
  }

  objc_storeStrong(location, 0);
  v2 = accessibilityLocalizedStringKey;

  return v2;
}

- (id)accessibilityLocalizationBundleID
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location[0])
  {
    accessibilityLocalizationBundleID = [location[0] tableTextAccessibleLocalizationBundleID:selfCopy];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableTextAccessibilityElement;
    accessibilityLocalizationBundleID = [(UITableTextAccessibilityElement *)&v4 accessibilityLocalizationBundleID];
  }

  objc_storeStrong(location, 0);
  v2 = accessibilityLocalizationBundleID;

  return v2;
}

- (id)accessibilityLocalizationBundlePath
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location[0])
  {
    accessibilityLocalizationBundlePath = [location[0] tableTextAccessibleLocalizationBundlePath:selfCopy];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableTextAccessibilityElement;
    accessibilityLocalizationBundlePath = [(UITableTextAccessibilityElement *)&v4 accessibilityLocalizationBundlePath];
  }

  objc_storeStrong(location, 0);
  v2 = accessibilityLocalizationBundlePath;

  return v2;
}

- (id)accessibilityLocalizedStringTableName
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location[0])
  {
    accessibilityLocalizedStringTableName = [location[0] tableTextAccessibleLocalizedTableName:selfCopy];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableTextAccessibilityElement;
    accessibilityLocalizedStringTableName = [(UITableTextAccessibilityElement *)&v4 accessibilityLocalizedStringTableName];
  }

  objc_storeStrong(location, 0);
  v2 = accessibilityLocalizedStringTableName;

  return v2;
}

- (id)accessibilityLanguage
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    accessibilityLanguage = [location[0] accessibilityLanguage];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableTextAccessibilityElement;
    accessibilityLanguage = [(UITableTextAccessibilityElement *)&v4 accessibilityLanguage];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityLanguage;

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    [location[0] accessibilityActivationPoint];
  }

  else
  {
    v6.receiver = selfCopy;
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
  selfCopy = self;
  v6 = a2;
  v4.receiver = self;
  v4.super_class = UITableTextAccessibilityElement;
  accessibilityTraits = [(UITableTextAccessibilityElement *)&v4 accessibilityTraits];
  location = [(UITableTextAccessibilityElement *)selfCopy _tableViewCellAttributeDelegate];
  if (location)
  {
    accessibilityTraits = [location accessibilityTraits];
    accessibilityTraits |= *MEMORY[0x29EDC7FD0];
    v8 = accessibilityTraits;
  }

  else
  {
    [(UITableTextAccessibilityElement *)selfCopy accessibilityFrame];
    if (CGRectGetHeight(v9) == 0.0)
    {
      accessibilityTraits |= *MEMORY[0x29EDC7578];
    }

    v8 = accessibilityTraits;
  }

  objc_storeStrong(&location, 0);
  return v8;
}

- (_NSRange)accessibilityRowRange
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  accessibilityRowRange = [_tableViewCellTextDelegate accessibilityRowRange];
  v7 = v2;
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
  v3 = accessibilityRowRange;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (BOOL)_accessibilityImplementsDefaultRowRange
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  _accessibilityImplementsDefaultRowRange = [_tableViewCellTextDelegate _accessibilityImplementsDefaultRowRange];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
  return _accessibilityImplementsDefaultRowRange;
}

- (_NSRange)_accessibilityIndexPathAsRange
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  _accessibilityIndexPathAsRange = [_tableViewCellTextDelegate _accessibilityIndexPathAsRange];
  v7 = v2;
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
  v3 = _accessibilityIndexPathAsRange;
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
  _accessibilityRetainsCustomRotorActionSetting = [v4[0] _accessibilityRetainsCustomRotorActionSetting];
  objc_storeStrong(v4, 0);
  return _accessibilityRetainsCustomRotorActionSetting;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  _accessibilitySupportsActivateAction = [v4[0] _accessibilitySupportsActivateAction];
  objc_storeStrong(v4, 0);
  return _accessibilitySupportsActivateAction;
}

- (BOOL)accessibilityActivate
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  accessibilityActivate = [v4[0] accessibilityActivate];
  objc_storeStrong(v4, 0);
  return accessibilityActivate;
}

- (double)_accessibilityDelayBeforeUpdatingOnActivation
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [_tableViewCellTextDelegate _accessibilityDelayBeforeUpdatingOnActivation];
  v5 = v2;
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
  return v5;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [_tableViewCellTextDelegate _accessibilitySetSelectedTextRange:{range.location, range.length}];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
}

- (BOOL)_accessibilityIsAwayAlertElement
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  _accessibilityIsAwayAlertElement = [_tableViewCellTextDelegate _accessibilityIsAwayAlertElement];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
  return _accessibilityIsAwayAlertElement;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  _accessibilitySelectedTextRange = [_tableViewCellTextDelegate _accessibilitySelectedTextRange];
  v7 = v2;
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
  v3 = _accessibilitySelectedTextRange;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)_accessibilityEquivalenceTag
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  _accessibilityEquivalenceTag = [_tableViewCellTextDelegate _accessibilityEquivalenceTag];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);

  return _accessibilityEquivalenceTag;
}

- (BOOL)_accessibilityIsSpeakThisElement
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  _accessibilityIsSpeakThisElement = [_tableViewCellTextDelegate _accessibilityIsSpeakThisElement];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
  return _accessibilityIsSpeakThisElement;
}

- (void)_accessibilityGetBlockForAttribute:(int64_t)attribute
{
  selfCopy = self;
  v7 = a2;
  attributeCopy = attribute;
  if (attribute == 5)
  {
    _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)selfCopy _tableViewCellTextDelegate];
    v9 = [_tableViewCellTextDelegate _accessibilityGetBlockForAttribute:5];
    MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = UITableTextAccessibilityElement;
    return [(UITableTextAccessibilityElement *)&v5 _accessibilityGetBlockForAttribute:attributeCopy];
  }

  return v9;
}

- (id)_accessibilitySpeakThisString
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = 0;
  if (!_accessibilitySpeakThisString_BaseNSObjectMethod)
  {
    v2 = objc_opt_class();
    _accessibilitySpeakThisString_BaseNSObjectMethod = class_getInstanceMethod(v2, 0x1FC1A25D1);
    v3 = objc_opt_class();
    _accessibilitySpeakThisString_BaseUIResponderMethod = class_getInstanceMethod(v3, 0x1FC1A25D1);
  }

  location = [(UITableTextAccessibilityElement *)selfCopy _tableViewCellTextDelegate];
  if (location)
  {
    v4 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v4, sel__accessibilitySpeakThisString);
    if (InstanceMethod != _accessibilitySpeakThisString_BaseNSObjectMethod && InstanceMethod != _accessibilitySpeakThisString_BaseUIResponderMethod)
    {
      _accessibilitySpeakThisString = [location _accessibilitySpeakThisString];
      v6 = v14[0];
      v14[0] = _accessibilitySpeakThisString;
      MEMORY[0x29EDC9740](v6);
    }
  }

  if (!v14[0])
  {
    v11.receiver = selfCopy;
    v11.super_class = UITableTextAccessibilityElement;
    _accessibilitySpeakThisString2 = [(UITableTextAccessibilityElement *)&v11 _accessibilitySpeakThisString];
    v8 = v14[0];
    v14[0] = _accessibilitySpeakThisString2;
    MEMORY[0x29EDC9740](v8);
  }

  v10 = MEMORY[0x29EDC9748](v14[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);

  return v10;
}

- (int64_t)_accessibilityScannerActivateBehavior
{
  _tableViewCellAttributeDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  _accessibilityScannerActivateBehavior = [_tableViewCellAttributeDelegate _accessibilityScannerActivateBehavior];
  MEMORY[0x29EDC9740](_tableViewCellAttributeDelegate);
  return _accessibilityScannerActivateBehavior;
}

- (id)accessibilityUserInputLabels
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = 0;
  location = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  if (location)
  {
    accessibilityUserInputLabels = [location accessibilityUserInputLabels];
    v5 = v13[0];
    v13[0] = accessibilityUserInputLabels;
    if (![accessibilityUserInputLabels count])
    {
      v10 = [location tableTextAccessibleLabel:selfCopy];
      v6 = MEMORY[0x29ED3D9A0]();
      v7 = v13[0];
      v13[0] = v6;
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v10);
    }
  }

  else
  {
    v11.receiver = selfCopy;
    v11.super_class = UITableTextAccessibilityElement;
    accessibilityUserInputLabels2 = [(UITableTextAccessibilityElement *)&v11 accessibilityUserInputLabels];
    v3 = v13[0];
    v13[0] = accessibilityUserInputLabels2;
    MEMORY[0x29EDC9740](v3);
  }

  v9 = MEMORY[0x29EDC9748](v13[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v13, 0);

  return v9;
}

- (void)accessibilityDecrement
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [_tableViewCellTextDelegate accessibilityDecrement];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
}

- (void)accessibilityIncrement
{
  _tableViewCellTextDelegate = [(UITableTextAccessibilityElement *)self _tableViewCellTextDelegate];
  [_tableViewCellTextDelegate accessibilityIncrement];
  MEMORY[0x29EDC9740](_tableViewCellTextDelegate);
}

- (id)description
{
  selfCopy = self;
  v8 = a2;
  v3 = MEMORY[0x29EDBA0F8];
  v7.receiver = self;
  v7.super_class = UITableTextAccessibilityElement;
  v5 = [(UITableTextAccessibilityElement *)&v7 description];
  accessibilityContainer = [(UITableTextAccessibilityElement *)selfCopy accessibilityContainer];
  v6 = [v3 stringWithFormat:@"%@ < %@", v5, accessibilityContainer];
  MEMORY[0x29EDC9740](accessibilityContainer);
  MEMORY[0x29EDC9740](v5);

  return v6;
}

- (id)_accessibilityAllDragSourceDescriptors
{
  textDelegate = [(UITableTextAccessibilityElement *)self textDelegate];
  accessibilityDragSourceDescriptors = [textDelegate accessibilityDragSourceDescriptors];
  MEMORY[0x29EDC9740](textDelegate);

  return accessibilityDragSourceDescriptors;
}

- (id)_accessibilityAllDropPointDescriptors
{
  textDelegate = [(UITableTextAccessibilityElement *)self textDelegate];
  accessibilityDropPointDescriptors = [textDelegate accessibilityDropPointDescriptors];
  MEMORY[0x29EDC9740](textDelegate);

  return accessibilityDropPointDescriptors;
}

- (id)_accessibilityCapturedImages
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableTextAccessibilityElement *)self _tableViewCellAttributeDelegate];
  if (location[0])
  {
    _accessibilityCapturedImages = [location[0] _accessibilityCapturedImages];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableTextAccessibilityElement;
    _accessibilityCapturedImages = [(UITableTextAccessibilityElement *)&v4 _accessibilityCapturedImages];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = _accessibilityCapturedImages;

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