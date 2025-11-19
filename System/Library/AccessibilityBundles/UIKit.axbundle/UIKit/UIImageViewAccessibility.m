@interface UIImageViewAccessibility
- (BOOL)isAccessibilityElement;
- (UIImageViewAccessibility)initWithImage:(id)a3;
- (id)accessibilityElements;
- (id)accessibilityIdentification;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UIImageViewAccessibility

- (UIImageViewAccessibility)initWithImage:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v7.receiver = v3;
  v7.super_class = UIImageViewAccessibility;
  v10 = [(UIImageViewAccessibility *)&v7 initWithImage:location[0]];
  v8 = MEMORY[0x29EDC9748](v10);
  v6 = [location[0] accessibilityLabel];
  if (v6)
  {
    [v8 setAccessibilityLabel:v6];
  }

  v5 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v5;
}

- (id)accessibilityElements
{
  v22 = *MEMORY[0x29EDCA608];
  v18 = self;
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
    v8 = [(UIImageViewAccessibility *)v18 image];
    v14 = [v8 _accessibilityEncodedHierarchyData];
    MEMORY[0x29EDC9740](v8);
    if (v14)
    {
      v13 = [objc_alloc(MEMORY[0x29EDC7330]) initWithHierarchyData:v14];
      v12 = 0;
      obj = 0;
      v7 = [v13 decodeHierarchyWithContainer:v18 error:&obj];
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
        [(UIImageViewAccessibility *)v18 setAccessibilityElements:v17[0], v4];
      }

      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    v19 = MEMORY[0x29EDC9748](v17[0]);
    v15 = 1;
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(v17, 0);
  v5 = v19;

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v8 = self;
  v7 = a2;
  v5 = [(UIImageViewAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v4 = [(UIImageViewAccessibility *)v8 accessibilityUserDefinedTraits];
    v9 = [v4 unsignedLongLongValue];
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    v6.receiver = v8;
    v6.super_class = UIImageViewAccessibility;
    return [(UIImageViewAccessibility *)&v6 accessibilityTraits]| *MEMORY[0x29EDC7F88];
  }

  return v9;
}

- (id)accessibilityLabel
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [(UIImageViewAccessibility *)self accessibilityUserDefinedLabel];
  if ([v8[0] length])
  {
    v10 = MEMORY[0x29EDC9748](v8[0]);
    v7 = 1;
  }

  else
  {
    v4 = [(UIImageViewAccessibility *)v9 safeValueForKey:@"image"];
    location = [v4 accessibilityLabel];
    if ([location length])
    {
      v10 = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v5.receiver = v9;
      v5.super_class = UIImageViewAccessibility;
      v10 = [(UIImageViewAccessibility *)&v5 accessibilityLabel];
    }

    v7 = 1;
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v8, 0);
  v2 = v10;

  return v2;
}

- (id)accessibilityValue
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [(UIImageViewAccessibility *)self accessibilityUserDefinedValue];
  if ([v8[0] length])
  {
    v10 = MEMORY[0x29EDC9748](v8[0]);
    v7 = 1;
  }

  else
  {
    v4 = [(UIImageViewAccessibility *)v9 safeValueForKey:@"image"];
    location = [v4 accessibilityValue];
    if ([location length])
    {
      v10 = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v5.receiver = v9;
      v5.super_class = UIImageViewAccessibility;
      v10 = [(UIImageViewAccessibility *)&v5 accessibilityValue];
    }

    v7 = 1;
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v8, 0);
  v2 = v10;

  return v2;
}

- (id)accessibilityIdentification
{
  v9 = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = UIImageViewAccessibility;
  v8[0] = [(UIImageViewAccessibility *)&v7 accessibilityIdentification];
  if (!v8[0])
  {
    v6 = [(UIImageViewAccessibility *)v9 safeValueForKey:@"image"];
    v2 = [v6 accessibilityIdentification];
    v3 = v8[0];
    v8[0] = v2;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v6);
  }

  v5 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)accessibilityIdentifier
{
  v6 = self;
  v5[1] = a2;
  v5[0] = [(UIImageViewAccessibility *)self accessibilityUserDefinedIdentifier];
  if (!v5[0])
  {
    v5[0] = [(UIImageViewAccessibility *)v6 accessibilityIdentification];
    MEMORY[0x29EDC9740](0);
  }

  if (!v5[0])
  {
    v4 = [(UIImageViewAccessibility *)v6 safeValueForKey:@"image"];
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
  v8 = self;
  v7 = a2;
  v4 = [(UIImageViewAccessibility *)self storedAccessibilityIdentifier];
  v5 = 0;
  if (v4)
  {
    v5 = AXDoesRequestingClientDeserveAutomation() != 0;
  }

  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v5)
  {
    return 1;
  }

  v6.receiver = v8;
  v6.super_class = UIImageViewAccessibility;
  return [(UIImageViewAccessibility *)&v6 isAccessibilityElement];
}

@end