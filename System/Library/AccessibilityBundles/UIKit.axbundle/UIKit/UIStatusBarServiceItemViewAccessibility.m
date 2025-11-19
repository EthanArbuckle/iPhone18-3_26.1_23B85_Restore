@interface UIStatusBarServiceItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityCoreTelephonyServiceStringName;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarServiceItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIStatusBarServiceItemView" hasInstanceVariable:@"_serviceString" withType:"NSString"];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityCoreTelephonyServiceStringName
{
  v8[1] = *MEMORY[0x29EDCA608];
  v5[1] = a1;
  if (a1)
  {
    v5[0] = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:@"__service__string__"];
    v3 = v5[0];
    v7 = *MEMORY[0x29EDBDA08];
    v8[0] = MEMORY[0x29EDB8EB0];
    v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v3 setAttributes:?];
    MEMORY[0x29EDC9740](v4);
    v6 = MEMORY[0x29EDC9748](v5[0]);
    objc_storeStrong(v5, 0);
  }

  else
  {
    v6 = 0;
  }

  v1 = v6;

  return v1;
}

- (id)accessibilityLabel
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  v17 = [(UIStatusBarServiceItemViewAccessibility *)self safeValueForKey:@"_contentType"];
  v18 = [v17 intValue];
  *&v2 = MEMORY[0x29EDC9740](v17).n128_u64[0];
  v23 = v18;
  if (v18 == 2)
  {
    Type = AXDeviceGetType();
    if (Type == 2)
    {
      v3 = accessibilityLocalizedString(@"status.service.ipod");
      v4 = location[0];
      location[0] = v3;
      MEMORY[0x29EDC9740](v4);
    }

    else
    {
      if (Type == 3)
      {
        v5 = accessibilityLocalizedString(@"status.service.ipad");
      }

      else
      {
        v5 = [(UIStatusBarServiceItemViewAccessibility *)v25 _accessibilityCoreTelephonyServiceStringName];
      }

      v6 = location[0];
      location[0] = v5;
      MEMORY[0x29EDC9740](v6);
    }
  }

  else if (v23 == 1)
  {
    v7 = [(UIStatusBarServiceItemViewAccessibility *)v25 safeValueForKey:@"_serviceString", v2];
    v8 = location[0];
    location[0] = v7;
    MEMORY[0x29EDC9740](v8);
  }

  else
  {
    v21 = [(UIStatusBarServiceItemViewAccessibility *)v25 _accessibilityCoreTelephonyServiceStringName];
    if ([v21 hasAttribute:*MEMORY[0x29EDBDA08]])
    {
      v20 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:&stru_2A2358AA8];
      v13 = v20;
      v14 = accessibilityLocalizedString(@"status.service.network.format");
      [v13 appendFormat:v21];
      *&v9 = MEMORY[0x29EDC9740](v14).n128_u64[0];
      v15 = v20;
      v16 = [v21 coalescedAttributes];
      v19 = [v20 rangeOfString:v21];
      [v15 setAttributes:v16 withRange:{v19, v10}];
      MEMORY[0x29EDC9740](v16);
      objc_storeStrong(location, v20);
      objc_storeStrong(&v20, 0);
    }

    else
    {
      objc_storeStrong(location, v21);
    }

    objc_storeStrong(&v21, 0);
  }

  v12 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);

  return v12;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarServiceItemViewAccessibility;
  return [(UIStatusBarServiceItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end