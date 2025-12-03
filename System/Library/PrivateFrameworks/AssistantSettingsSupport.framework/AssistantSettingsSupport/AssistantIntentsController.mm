@interface AssistantIntentsController
- (AssistantIntentsController)init;
- (id)specifiers;
- (void)_fetchIntentsSpecifiersWithCompletion:(id)completion;
- (void)dealloc;
- (void)setAccess:(id)access forSpecifier:(id)specifier;
- (void)tccPreferencesChanged;
- (void)viewDidTapLearnMore:(id)more;
@end

@implementation AssistantIntentsController

- (AssistantIntentsController)init
{
  v5.receiver = self;
  v5.super_class = AssistantIntentsController;
  v2 = [(AssistantIntentsController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, tccPreferencesChangedCallback, @"com.apple.tcc.access.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.tcc.access.changed", 0);
  v4.receiver = self;
  v4.super_class = AssistantIntentsController;
  [(AssistantIntentsController *)&v4 dealloc];
}

- (void)tccPreferencesChanged
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__AssistantIntentsController_tccPreferencesChanged__block_invoke;
  v2[3] = &unk_278CD1570;
  v2[4] = self;
  [(AssistantIntentsController *)self _fetchIntentsSpecifiersWithCompletion:v2];
}

void __51__AssistantIntentsController_tccPreferencesChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  v5 = [*(a1 + 32) intentsSpecifiers];
  v6 = [v5 count];

  if (v4 == v6 && [v3 count])
  {
    v7 = 0;
    v8 = 0;
    v9 = *MEMORY[0x277D401A8];
    do
    {
      while (1)
      {
        v10 = [v3 objectAtIndexedSubscript:v7];
        v11 = [v10 propertyForKey:v9];
        v12 = [*(a1 + 32) intentsSpecifiers];
        v13 = [v12 objectAtIndexedSubscript:v7];
        v14 = [v13 propertyForKey:v9];

        if (v11 == v14)
        {
          break;
        }

        v15 = [*(a1 + 32) intentsSpecifiers];
        v16 = [v15 objectAtIndexedSubscript:v7];
        v17 = [v3 objectAtIndexedSubscript:v7];
        v18 = [v17 propertyForKey:v9];
        [v16 setProperty:v18 forKey:v9];

        ++v7;
        v8 = 1;
        if ([v3 count] <= v7)
        {
          goto LABEL_10;
        }
      }

      ++v7;
    }

    while ([v3 count] > v7);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__AssistantIntentsController_tccPreferencesChanged__block_invoke_2;
    block[3] = &unk_278CD1548;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_11:
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    v4 = [(AssistantIntentsController *)self loadSpecifiersFromPlistName:@"Assistant_Intents" target:self];
    v5 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v4;

    if (self->_intentsSpecifiers)
    {
      v6 = [*(&self->super.super.super.super.super.isa + v3) arrayByAddingObjectsFromArray:?];
      v7 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v6;
    }

    else
    {
      lastObject = [*(&self->super.super.super.super.super.isa + v3) lastObject];
      objc_initWeak(&location, lastObject);

      objc_initWeak(&from, self);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __40__AssistantIntentsController_specifiers__block_invoke;
      v11[3] = &unk_278CD15C0;
      objc_copyWeak(&v12, &from);
      objc_copyWeak(&v13, &location);
      [(AssistantIntentsController *)self _fetchIntentsSpecifiersWithCompletion:v11];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  v9 = *(&self->super.super.super.super.super.isa + v3);

  return v9;
}

void __40__AssistantIntentsController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIntentsSpecifiers:v3];

  if ([v3 count])
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__AssistantIntentsController_specifiers__block_invoke_2;
      block[3] = &unk_278CD1598;
      objc_copyWeak(&v9, (a1 + 32));
      v7 = v3;
      v8 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v9);
    }
  }
}

void __40__AssistantIntentsController_specifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained insertContiguousSpecifiers:*(a1 + 32) afterSpecifier:*(a1 + 40) animated:0];
}

- (void)_fetchIntentsSpecifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__AssistantIntentsController__fetchIntentsSpecifiersWithCompletion___block_invoke;
  v6[3] = &unk_278CD15E8;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [IntentsUtilities intentsAppsWithCompletion:v6];
}

void __68__AssistantIntentsController__fetchIntentsSpecifiersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v24 = a1;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APPS_GROUP"];
    v19 = v23 = v4;
    [v4 addObject:?];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v22 = *v26;
      v21 = *MEMORY[0x277D40008];
      v7 = *MEMORY[0x277CBED28];
      v8 = *MEMORY[0x277D40020];
      v9 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = MEMORY[0x277D3FAD8];
          v13 = [v11 displayName];
          v14 = [v12 preferenceSpecifierNamed:v13 target:*(v24 + 32) set:sel_setAccess_forSpecifier_ get:sel_accesssForSpecifier_ detail:0 cell:6 edit:0];

          v15 = [v11 appID];
          [v14 setProperty:v15 forKey:v21];

          [v14 setProperty:v7 forKey:v8];
          v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "accessGranted")}];
          [v14 setProperty:v16 forKey:v9];

          v17 = [v11 appID];
          [v14 setProperty:v17 forKey:@"intentsAppID"];

          [v23 addObject:v14];
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    (*(*(v24 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setAccess:(id)access forSpecifier:(id)specifier
{
  accessCopy = access;
  specifierCopy = specifier;
  v6 = *MEMORY[0x277D401A8];
  v7 = [specifierCopy propertyForKey:*MEMORY[0x277D401A8]];
  v8 = [accessCopy isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [specifierCopy propertyForKey:@"intentsAppID"];
    +[IntentsUtilities setAccess:appID:](IntentsUtilities, "setAccess:appID:", [accessCopy BOOLValue], v9);
    [specifierCopy setProperty:accessCopy forKey:v6];
  }
}

- (void)viewDidTapLearnMore:(id)more
{
  v4 = objc_alloc_init(SiriAboutAssistantModalViewController);
  [(SiriModalTextViewController *)v4 presentFromParentViewController:self];
}

@end