@interface SBFolderIconAccessibility
- (id)accessibilityLabel;
- (id)automationElements;
- (void)dealloc;
@end

@implementation SBFolderIconAccessibility

- (void)dealloc
{
  [(SBFolderIconAccessibility *)self _accessibilityUnregister];
  v3.receiver = self;
  v3.super_class = SBFolderIconAccessibility;
  [(SBFolderIconAccessibility *)&v3 dealloc];
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"folder.label");
  v8.receiver = self;
  v8.super_class = SBFolderIconAccessibility;
  v5 = [(SBFolderIconAccessibility *)&v8 accessibilityLabel];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (id)automationElements
{
  v2 = [(SBFolderIconAccessibility *)self safeValueForKey:@"_folder"];
  v3 = [v2 safeValueForKey:@"allIcons"];
  v4 = [v3 allObjects];

  return v4;
}

@end