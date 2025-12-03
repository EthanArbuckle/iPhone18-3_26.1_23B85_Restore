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
    accessibilityIdentification = [(BuddyUINavigationBarAccessibility *)self accessibilityIdentification];
    *buf = 138412546;
    selfCopy = self;
    v32 = 2112;
    v33 = accessibilityIdentification;
    _os_log_impl(&dword_29C309000, v3, OS_LOG_TYPE_INFO, "NavBar: Buddy: identification:%@ %@", buf, 0x16u);
  }

  accessibilityIdentification2 = [(BuddyUINavigationBarAccessibility *)self accessibilityIdentification];
  v6 = [accessibilityIdentification2 isEqualToString:@"AXSetupMainNavBar"];

  if (v6)
  {
    buf[0] = 0;
    objc_opt_class();
    v29 = 0;
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v8 = v7;
    delegate = [v7 delegate];
    v10 = __UIAccessibilityCastAsClass();

    if (buf[0] == 1)
    {
      abort();
    }

    visibleViewController = [(BuddyUINavigationBarAccessibility *)v10 visibleViewController];
    v12 = AXLogUIA();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = v10;
      v32 = 2112;
      v33 = visibleViewController;
      _os_log_impl(&dword_29C309000, v12, OS_LOG_TYPE_INFO, "NavBar: Buddy: nav controller: %@ visible: %@", buf, 0x16u);
    }

    if (visibleViewController)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v14 componentsSeparatedByString:@"Controller"];
      firstObject = [v15 firstObject];

      objc_opt_class();
      v17 = __UIAccessibilityCastAsSafeCategory();
      v18 = v17;
      if (v17 && ([v17 accessibilityShowsEscapeOffer] & 1) == 0)
      {
        v19 = [(__CFString *)firstObject stringByAppendingString:@"DeviceChosen"];

        firstObject = v19;
      }

      v20 = AXLogUIA();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        *buf = 138412546;
        selfCopy = v21;
        v32 = 2112;
        v33 = firstObject;
        v22 = v21;
        _os_log_impl(&dword_29C309000, v20, OS_LOG_TYPE_INFO, "NavBar: Buddy: class: %@, name: %@", buf, 0x16u);
      }
    }

    else
    {
      firstObject = @"UnknownSetupPane";
    }
  }

  else
  {
    v23 = AXLogUIA();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v28.receiver = self;
      v28.super_class = BuddyUINavigationBarAccessibility;
      accessibilityIdentifier = [(BuddyUINavigationBarAccessibility *)&v28 accessibilityIdentifier];
      *buf = 138412290;
      selfCopy = accessibilityIdentifier;
      _os_log_impl(&dword_29C309000, v23, OS_LOG_TYPE_INFO, "NavBar: Buddy: returning super identifier: %@", buf, 0xCu);
    }

    v27.receiver = self;
    v27.super_class = BuddyUINavigationBarAccessibility;
    firstObject = [(BuddyUINavigationBarAccessibility *)&v27 accessibilityIdentifier];
  }

  v25 = *MEMORY[0x29EDCA608];

  return firstObject;
}

@end