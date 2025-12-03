@interface UIImageViewAccessibility
- (BOOL)isAccessibilityElement;
- (UIImageViewAccessibility)initWithImage:(id)image;
- (id)accessibilityElements;
- (id)accessibilityIdentification;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UIImageViewAccessibility

- (UIImageViewAccessibility)initWithImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = UIImageViewAccessibility;
  selfCopy = [(UIImageViewAccessibility *)&v7 initWithImage:location[0]];
  v8 = MEMORY[0x29EDC9748](selfCopy);
  accessibilityLabel = [location[0] accessibilityLabel];
  if (accessibilityLabel)
  {
    [v8 setAccessibilityLabel:accessibilityLabel];
  }

  v5 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&accessibilityLabel, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)accessibilityElements
{
  v22 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v17[1] = a2;
  v16.receiver = self;
  v16.super_class = UIImageViewAccessibility;
  v17[0] = [(UIImageViewAccessibility *)&v16 accessibilityElements];
  if (v17[0])
  {
    v19 = MEMORY[0x29EDC9748](v17[0]);
    v15 = 1;
  }

  else
  {
    image = [(UIImageViewAccessibility *)selfCopy image];
    _accessibilityEncodedHierarchyData = [image _accessibilityEncodedHierarchyData];
    MEMORY[0x29EDC9740](image);
    if (_accessibilityEncodedHierarchyData)
    {
      v13 = [objc_alloc(MEMORY[0x29EDC7330]) initWithHierarchyData:_accessibilityEncodedHierarchyData];
      v12 = 0;
      obj = 0;
      v7 = [v13 decodeHierarchyWithContainer:selfCopy error:&obj];
      objc_storeStrong(&v12, obj);
      v11 = v7;
      if (v12 || !v11)
      {
        oslog = AXLogAppAccessibility();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v21, v12);
          _os_log_error_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_ERROR, "Could not decode hierarchy: %@", v21, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      if (v11)
      {
        v20 = v11;
        v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v20 count:1];
        v3 = v17[0];
        v17[0] = v2;
        *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
        [(UIImageViewAccessibility *)selfCopy setAccessibilityElements:v17[0], v4];
      }

      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    v19 = MEMORY[0x29EDC9748](v17[0]);
    v15 = 1;
    objc_storeStrong(&_accessibilityEncodedHierarchyData, 0);
  }

  objc_storeStrong(v17, 0);
  v5 = v19;

  return v5;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v7 = a2;
  accessibilityUserDefinedTraits = [(UIImageViewAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedTraits).n128_u64[0];
  if (accessibilityUserDefinedTraits)
  {
    accessibilityUserDefinedTraits2 = [(UIImageViewAccessibility *)selfCopy accessibilityUserDefinedTraits];
    unsignedLongLongValue = [accessibilityUserDefinedTraits2 unsignedLongLongValue];
    MEMORY[0x29EDC9740](accessibilityUserDefinedTraits2);
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = UIImageViewAccessibility;
    return [(UIImageViewAccessibility *)&v6 accessibilityTraits]| *MEMORY[0x29EDC7F88];
  }

  return unsignedLongLongValue;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [(UIImageViewAccessibility *)self accessibilityUserDefinedLabel];
  if ([v8[0] length])
  {
    accessibilityLabel = MEMORY[0x29EDC9748](v8[0]);
    v7 = 1;
  }

  else
  {
    v4 = [(UIImageViewAccessibility *)selfCopy safeValueForKey:@"image"];
    location = [v4 accessibilityLabel];
    if ([location length])
    {
      accessibilityLabel = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v5.receiver = selfCopy;
      v5.super_class = UIImageViewAccessibility;
      accessibilityLabel = [(UIImageViewAccessibility *)&v5 accessibilityLabel];
    }

    v7 = 1;
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v8, 0);
  v2 = accessibilityLabel;

  return v2;
}

- (id)accessibilityValue
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [(UIImageViewAccessibility *)self accessibilityUserDefinedValue];
  if ([v8[0] length])
  {
    accessibilityValue = MEMORY[0x29EDC9748](v8[0]);
    v7 = 1;
  }

  else
  {
    v4 = [(UIImageViewAccessibility *)selfCopy safeValueForKey:@"image"];
    location = [v4 accessibilityValue];
    if ([location length])
    {
      accessibilityValue = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v5.receiver = selfCopy;
      v5.super_class = UIImageViewAccessibility;
      accessibilityValue = [(UIImageViewAccessibility *)&v5 accessibilityValue];
    }

    v7 = 1;
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v8, 0);
  v2 = accessibilityValue;

  return v2;
}

- (id)accessibilityIdentification
{
  selfCopy = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = UIImageViewAccessibility;
  v8[0] = [(UIImageViewAccessibility *)&v7 accessibilityIdentification];
  if (!v8[0])
  {
    v6 = [(UIImageViewAccessibility *)selfCopy safeValueForKey:@"image"];
    accessibilityIdentification = [v6 accessibilityIdentification];
    v3 = v8[0];
    v8[0] = accessibilityIdentification;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v6);
  }

  v5 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)accessibilityIdentifier
{
  selfCopy = self;
  v5[1] = a2;
  v5[0] = [(UIImageViewAccessibility *)self accessibilityUserDefinedIdentifier];
  if (!v5[0])
  {
    v5[0] = [(UIImageViewAccessibility *)selfCopy accessibilityIdentification];
    MEMORY[0x29EDC9740](0);
  }

  if (!v5[0])
  {
    v4 = [(UIImageViewAccessibility *)selfCopy safeValueForKey:@"image"];
    v5[0] = [v4 accessibilityIdentifier];
    MEMORY[0x29EDC9740](0);
    MEMORY[0x29EDC9740](v4);
  }

  v3 = MEMORY[0x29EDC9748](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v7 = a2;
  storedAccessibilityIdentifier = [(UIImageViewAccessibility *)self storedAccessibilityIdentifier];
  v5 = 0;
  if (storedAccessibilityIdentifier)
  {
    v5 = AXDoesRequestingClientDeserveAutomation() != 0;
  }

  *&v2 = MEMORY[0x29EDC9740](storedAccessibilityIdentifier).n128_u64[0];
  if (v5)
  {
    return 1;
  }

  v6.receiver = selfCopy;
  v6.super_class = UIImageViewAccessibility;
  return [(UIImageViewAccessibility *)&v6 isAccessibilityElement];
}

@end