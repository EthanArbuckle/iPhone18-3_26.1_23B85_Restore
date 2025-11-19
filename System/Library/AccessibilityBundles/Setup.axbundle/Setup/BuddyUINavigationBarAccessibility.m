@interface BuddyUINavigationBarAccessibility
- (id)accessibilityIdentifier;
@end

@implementation BuddyUINavigationBarAccessibility

- (id)accessibilityIdentifier
{
  v34 = *MEMORY[0x29EDCA608];
  v3 = AXLogUIA();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(BuddyUINavigationBarAccessibility *)self accessibilityIdentification];
    *buf = 138412546;
    v31 = self;
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_29C309000, v3, OS_LOG_TYPE_INFO, "NavBar: Buddy: identification:%@ %@", buf, 0x16u);
  }

  v5 = [(BuddyUINavigationBarAccessibility *)self accessibilityIdentification];
  v6 = [v5 isEqualToString:@"AXSetupMainNavBar"];

  if (v6)
  {
    buf[0] = 0;
    objc_opt_class();
    v29 = 0;
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v8 = v7;
    v9 = [v7 delegate];
    v10 = __UIAccessibilityCastAsClass();

    if (buf[0] == 1)
    {
      abort();
    }

    v11 = [(BuddyUINavigationBarAccessibility *)v10 visibleViewController];
    v12 = AXLogUIA();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v31 = v10;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_29C309000, v12, OS_LOG_TYPE_INFO, "NavBar: Buddy: nav controller: %@ visible: %@", buf, 0x16u);
    }

    if (v11)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v14 componentsSeparatedByString:@"Controller"];
      v16 = [v15 firstObject];

      objc_opt_class();
      v17 = __UIAccessibilityCastAsSafeCategory();
      v18 = v17;
      if (v17 && ([v17 accessibilityShowsEscapeOffer] & 1) == 0)
      {
        v19 = [(__CFString *)v16 stringByAppendingString:@"DeviceChosen"];

        v16 = v19;
      }

      v20 = AXLogUIA();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        *buf = 138412546;
        v31 = v21;
        v32 = 2112;
        v33 = v16;
        v22 = v21;
        _os_log_impl(&dword_29C309000, v20, OS_LOG_TYPE_INFO, "NavBar: Buddy: class: %@, name: %@", buf, 0x16u);
      }
    }

    else
    {
      v16 = @"UnknownSetupPane";
    }
  }

  else
  {
    v23 = AXLogUIA();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v28.receiver = self;
      v28.super_class = BuddyUINavigationBarAccessibility;
      v24 = [(BuddyUINavigationBarAccessibility *)&v28 accessibilityIdentifier];
      *buf = 138412290;
      v31 = v24;
      _os_log_impl(&dword_29C309000, v23, OS_LOG_TYPE_INFO, "NavBar: Buddy: returning super identifier: %@", buf, 0xCu);
    }

    v27.receiver = self;
    v27.super_class = BuddyUINavigationBarAccessibility;
    v16 = [(BuddyUINavigationBarAccessibility *)&v27 accessibilityIdentifier];
  }

  v25 = *MEMORY[0x29EDCA608];

  return v16;
}

@end