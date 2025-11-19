@interface NSExtension(UserNotificationsUI)
- (double)un_effectiveContentSizeRatio;
- (id)_un_contentSizeRatio;
- (id)_un_extensionContainerBundleIdentifier;
- (id)un_allowedSourceIdentifiers;
- (id)un_supportedCategoryIdentifiers;
- (uint64_t)un_isDefaultContentHidden;
- (uint64_t)un_isDefaultTitleOverridden;
- (uint64_t)un_isUserInteractionEnabled;
- (void)_un_customSectionIdentifiers;
- (void)_un_extensionContainerBundleIdentifier;
- (void)un_supportedCategoryIdentifiers;
@end

@implementation NSExtension(UserNotificationsUI)

- (id)_un_extensionContainerBundleIdentifier
{
  v2 = objc_alloc(MEMORY[0x277CC1E50]);
  v3 = [a1 identifier];
  v10 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:&v10];
  v5 = v10;

  if (v4)
  {
    v6 = [v4 containingBundleRecord];
    v7 = [v6 bundleIdentifier];
  }

  else
  {
    v8 = UNLogExtensions;
    if (os_log_type_enabled(UNLogExtensions, OS_LOG_TYPE_ERROR))
    {
      [(NSExtension(UserNotificationsUI) *)v8 _un_extensionContainerBundleIdentifier];
    }

    v7 = 0;
  }

  return v7;
}

- (void)_un_customSectionIdentifiers
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = @"UNNotificationExtensionCustomSectionIdentifier";
  _os_log_error_impl(&dword_23AB78000, log, OS_LOG_TYPE_ERROR, "Invalid value for %{public}@ in Info.plist", &v1, 0xCu);
}

- (id)un_allowedSourceIdentifiers
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 _un_extensionContainerBundleIdentifier];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = [a1 _un_customSectionIdentifiers];
  }

  v5 = v4;

  return v5;
}

- (id)un_supportedCategoryIdentifiers
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"UNNotificationExtensionCategory"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    goto LABEL_5;
  }

  v5 = UNLogExtensions;
  if (os_log_type_enabled(UNLogExtensions, OS_LOG_TYPE_ERROR))
  {
    [(NSExtension(UserNotificationsUI) *)v5 un_supportedCategoryIdentifiers];
  }

  v4 = MEMORY[0x277CBEBF8];
LABEL_9:

  return v4;
}

- (id)_un_contentSizeRatio
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"UNNotificationExtensionInitialContentSizeRatio"];

  return v2;
}

- (double)un_effectiveContentSizeRatio
{
  v1 = [a1 _un_contentSizeRatio];
  v2 = v1;
  if (v1)
  {
    [v1 floatValue];
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  return v4;
}

- (uint64_t)un_isDefaultContentHidden
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"UNNotificationExtensionDefaultContentHidden"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)un_isDefaultTitleOverridden
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"UNNotificationExtensionOverridesDefaultTitle"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)un_isUserInteractionEnabled
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"UNNotificationExtensionUserInteractionEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_un_extensionContainerBundleIdentifier
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 identifier];
  v7 = [a3 localizedDescription];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_23AB78000, v5, OS_LOG_TYPE_ERROR, "Encountered error obtaining application extension record for extension %{public}@: %{public}@", &v8, 0x16u);
}

- (void)un_supportedCategoryIdentifiers
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = @"UNNotificationExtensionCategory";
  _os_log_error_impl(&dword_23AB78000, log, OS_LOG_TYPE_ERROR, "Invalid value for %{public}@ in Info.plist", &v1, 0xCu);
}

@end