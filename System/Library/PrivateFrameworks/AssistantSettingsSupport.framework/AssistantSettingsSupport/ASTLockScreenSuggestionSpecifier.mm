@interface ASTLockScreenSuggestionSpecifier
- (ASTLockScreenSuggestionSpecifier)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (id)isLockScreenSwitchEnabled:(id)enabled;
- (id)specifierForBundleID:(id)d;
- (id)specifiers;
- (void)setLockScreenSwitchEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)specifiers;
@end

@implementation ASTLockScreenSuggestionSpecifier

- (ASTLockScreenSuggestionSpecifier)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = ASTLockScreenSuggestionSpecifier;
  return [(ASTLockScreenSuggestionSpecifier *)&v5 init:controller];
}

- (id)specifiers
{
  v28 = *MEMORY[0x277D85DE8];
  if (!self->_disabledLockScreenBundles)
  {
    mEMORY[0x277CEF608] = [MEMORY[0x277CEF608] sharedInstance];
    disabledLockScreenBundles = [mEMORY[0x277CEF608] disabledLockScreenBundles];
    disabledLockScreenBundles = self->_disabledLockScreenBundles;
    self->_disabledLockScreenBundles = disabledLockScreenBundles;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v6 = getSBSCopyDisplayIdentifiersSymbolLoc_ptr;
  v26 = getSBSCopyDisplayIdentifiersSymbolLoc_ptr;
  if (!getSBSCopyDisplayIdentifiersSymbolLoc_ptr)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke;
    v22[3] = &unk_278CD1658;
    v22[4] = &v23;
    __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke(v22);
    v6 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v6)
  {
    [ASTLockScreenSuggestionSpecifier specifiers];
  }

  v7 = v6();
  v8 = [v7 count];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [(ASTLockScreenSuggestionSpecifier *)self specifierForBundleID:*(*(&v18 + 1) + 8 * i), v18];
        if (v14)
        {
          [v9 addObject:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v11);
  }

  v15 = [v9 sortedArrayUsingComparator:&__block_literal_global_3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __46__ASTLockScreenSuggestionSpecifier_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (id)specifierForBundleID:(id)d
{
  v4 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:d];
  bundleIdentifier = [v4 bundleIdentifier];

  if (bundleIdentifier)
  {
    localizedName = [v4 localizedName];
    if ([localizedName length])
    {
LABEL_6:
      v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:localizedName target:self set:sel_setLockScreenSwitchEnabled_forSpecifier_ get:sel_isLockScreenSwitchEnabled_ detail:0 cell:6 edit:0];
      [v8 setProperty:localizedName forKey:@"APP_NAME"];
      bundleIdentifier2 = [v4 bundleIdentifier];
      [v8 setProperty:bundleIdentifier2 forKey:@"BUNDLE_ID"];

      [v8 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
      bundleIdentifier3 = [v4 bundleIdentifier];
      [v8 setProperty:bundleIdentifier3 forKey:*MEMORY[0x277D40008]];

      goto LABEL_8;
    }

    localizedShortName = [v4 localizedShortName];

    if ([localizedShortName length])
    {
      localizedName = localizedShortName;
      goto LABEL_6;
    }

    localizedName = [v4 itemName];

    if (localizedName)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)isLockScreenSwitchEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  disabledLockScreenBundles = self->_disabledLockScreenBundles;
  v5 = [enabled propertyForKey:@"BUNDLE_ID"];
  v6 = [v3 numberWithInt:{-[NSSet containsObject:](disabledLockScreenBundles, "containsObject:", v5) ^ 1}];

  return v6;
}

- (void)setLockScreenSwitchEnabled:(id)enabled forSpecifier:(id)specifier
{
  v6 = MEMORY[0x277CEF608];
  specifierCopy = specifier;
  enabledCopy = enabled;
  sharedInstance = [v6 sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  v10 = [specifierCopy propertyForKey:@"BUNDLE_ID"];

  [sharedInstance setLockScreenEnabled:bOOLValue bundleId:v10];
  disabledLockScreenBundles = [sharedInstance disabledLockScreenBundles];
  disabledLockScreenBundles = self->_disabledLockScreenBundles;
  self->_disabledLockScreenBundles = disabledLockScreenBundles;
}

- (void)specifiers
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFSetRef PSSBSCopyDisplayIdentifiers(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"ASTLockScreenSuggestionSpecifier.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

@end