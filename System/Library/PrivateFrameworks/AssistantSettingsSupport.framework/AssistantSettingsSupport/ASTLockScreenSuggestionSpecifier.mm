@interface ASTLockScreenSuggestionSpecifier
- (ASTLockScreenSuggestionSpecifier)initWithListController:(id)a3 groupSpecifier:(id)a4;
- (id)isLockScreenSwitchEnabled:(id)a3;
- (id)specifierForBundleID:(id)a3;
- (id)specifiers;
- (void)setLockScreenSwitchEnabled:(id)a3 forSpecifier:(id)a4;
- (void)specifiers;
@end

@implementation ASTLockScreenSuggestionSpecifier

- (ASTLockScreenSuggestionSpecifier)initWithListController:(id)a3 groupSpecifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = ASTLockScreenSuggestionSpecifier;
  return [(ASTLockScreenSuggestionSpecifier *)&v5 init:a3];
}

- (id)specifiers
{
  v28 = *MEMORY[0x277D85DE8];
  if (!self->_disabledLockScreenBundles)
  {
    v3 = [MEMORY[0x277CEF608] sharedInstance];
    v4 = [v3 disabledLockScreenBundles];
    disabledLockScreenBundles = self->_disabledLockScreenBundles;
    self->_disabledLockScreenBundles = v4;
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

- (id)specifierForBundleID:(id)a3
{
  v4 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:a3];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = [v4 localizedName];
    if ([v6 length])
    {
LABEL_6:
      v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:sel_setLockScreenSwitchEnabled_forSpecifier_ get:sel_isLockScreenSwitchEnabled_ detail:0 cell:6 edit:0];
      [v8 setProperty:v6 forKey:@"APP_NAME"];
      v9 = [v4 bundleIdentifier];
      [v8 setProperty:v9 forKey:@"BUNDLE_ID"];

      [v8 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
      v10 = [v4 bundleIdentifier];
      [v8 setProperty:v10 forKey:*MEMORY[0x277D40008]];

      goto LABEL_8;
    }

    v7 = [v4 localizedShortName];

    if ([v7 length])
    {
      v6 = v7;
      goto LABEL_6;
    }

    v6 = [v4 itemName];

    if (v6)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)isLockScreenSwitchEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  disabledLockScreenBundles = self->_disabledLockScreenBundles;
  v5 = [a3 propertyForKey:@"BUNDLE_ID"];
  v6 = [v3 numberWithInt:{-[NSSet containsObject:](disabledLockScreenBundles, "containsObject:", v5) ^ 1}];

  return v6;
}

- (void)setLockScreenSwitchEnabled:(id)a3 forSpecifier:(id)a4
{
  v6 = MEMORY[0x277CEF608];
  v7 = a4;
  v8 = a3;
  v13 = [v6 sharedInstance];
  v9 = [v8 BOOLValue];

  v10 = [v7 propertyForKey:@"BUNDLE_ID"];

  [v13 setLockScreenEnabled:v9 bundleId:v10];
  v11 = [v13 disabledLockScreenBundles];
  disabledLockScreenBundles = self->_disabledLockScreenBundles;
  self->_disabledLockScreenBundles = v11;
}

- (void)specifiers
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFSetRef PSSBSCopyDisplayIdentifiers(void)"];
  [v0 handleFailureInFunction:v1 file:@"ASTLockScreenSuggestionSpecifier.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

@end