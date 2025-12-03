@interface MKAnnotationViewAccessibility_iOS
+ (id)_disclosureCalloutButton;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityLocality;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MKAnnotationViewAccessibility_iOS

- (id)accessibilityHint
{
  v2 = [(MKAnnotationViewAccessibility_iOS *)self safeValueForKey:@"annotation"];
  NSClassFromString(&cfstr_Fmfsamapannota.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = 0;
  }

  else
  {
    v4 = AXMapKitLocString(@"MAP_PIN_HINT");
  }

  return v4;
}

- (id)accessibilityLabel
{
  v13.receiver = self;
  v13.super_class = MKAnnotationViewAccessibility_iOS;
  accessibilityLabel = [(MKAnnotationViewAccessibility_iOS *)&v13 accessibilityLabel];
  if (!accessibilityLabel)
  {
    annotation = [(MKAnnotationViewAccessibility_iOS *)self annotation];
    if (objc_opt_respondsToSelector())
    {
      title = [annotation title];
      accessibilityLabel2 = [title accessibilityLabel];

      if (accessibilityLabel2)
      {
        accessibilityLabel3 = [title accessibilityLabel];

        title = accessibilityLabel3;
      }
    }

    else
    {
      title = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      subtitle = [annotation subtitle];
      accessibilityLabel4 = [subtitle accessibilityLabel];

      if (accessibilityLabel4)
      {
        accessibilityLabel5 = [subtitle accessibilityLabel];

        subtitle = accessibilityLabel5;
      }
    }

    else
    {
      subtitle = 0;
    }

    accessibilityLabel = __UIAXStringForVariables();
    if (![accessibilityLabel length])
    {
      v11 = AXMapKitLocString(@"MAP_PIN_TITLE");

      accessibilityLabel = v11;
    }
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MKAnnotationViewAccessibility_iOS;
  return *MEMORY[0x29EDBDBF8] | [(MKAnnotationViewAccessibility_iOS *)&v3 accessibilityTraits];
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(MKAnnotationViewAccessibility_iOS *)self isAccessibilityUserDefinedElement];
  v3 = isAccessibilityUserDefinedElement;
  if (isAccessibilityUserDefinedElement)
  {
    bOOLValue = [isAccessibilityUserDefinedElement BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(MKAnnotationViewAccessibility_iOS *)self isAccessibilityElement]&& [(MKAnnotationViewAccessibility_iOS *)self pointInside:eventCopy withEvent:x, y])
  {
    selfCopy = self;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MKAnnotationViewAccessibility_iOS;
    selfCopy = [(MKAnnotationViewAccessibility_iOS *)&v11 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  v9 = selfCopy;

  return v9;
}

- (id)accessibilityValue
{
  v6.receiver = self;
  v6.super_class = MKAnnotationViewAccessibility_iOS;
  accessibilityValue = [(MKAnnotationViewAccessibility_iOS *)&v6 accessibilityValue];
  if (!accessibilityValue)
  {
    annotation = [(MKAnnotationViewAccessibility_iOS *)self annotation];
    accessibilityValue = [annotation _accessibilityValueForKey:@"AccessibilityDeterminedLocation"];
  }

  return accessibilityValue;
}

- (id)accessibilityLocality
{
  annotation = [(MKAnnotationViewAccessibility_iOS *)self annotation];
  v3 = [annotation _accessibilityValueForKey:@"AccessibilityDeterminedLocality"];

  return v3;
}

+ (id)_disclosureCalloutButton
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___MKAnnotationViewAccessibility_iOS;
  v2 = objc_msgSendSuper2(&v4, sel__disclosureCalloutButton);
  [v2 setAccessibilityIdentifier:@"AccessibilityMoreInfoButtonIdentifier"];

  return v2;
}

@end