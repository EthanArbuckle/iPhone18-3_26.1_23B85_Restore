@interface PSCalendarPolicyAuthorizationLevelController
- (id)footerStringForSpecifiers:(id)a3;
- (id)specifiers;
- (void)_handleUpgradePromptNotification:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation PSCalendarPolicyAuthorizationLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSCalendarPolicyAuthorizationLevelController;
  [(PSListItemsController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PSCalendarPrivacyUpgradePromptCompletedNotification" object:0];
}

- (void)_handleUpgradePromptNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"PSCalendarPrivacyUpgradePromptAppIdentifierKey"];
  v6 = [v5 isEqualToString:self->_clientIdentifier];

  if (v6)
  {
    v7 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__PSCalendarPolicyAuthorizationLevelController__handleUpgradePromptNotification___block_invoke;
    block[3] = &unk_2782EF4B0;
    block[4] = self;
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
  }
}

- (void)setSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = PSCalendarPolicyAuthorizationLevelController;
  v4 = a3;
  [(PSCalendarPolicyAuthorizationLevelController *)&v9 setSpecifier:v4];
  v5 = [v4 identifier];
  serviceKey = self->_serviceKey;
  self->_serviceKey = v5;

  v7 = [v4 propertyForKey:@"BUNDLE_ID"];

  clientIdentifier = self->_clientIdentifier;
  self->_clientIdentifier = v7;
}

- (id)specifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&v2->super.super.super.super.super.super.isa + v3))
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11.receiver = v2;
    v11.super_class = PSCalendarPolicyAuthorizationLevelController;
    v5 = [(PSListItemsController *)&v11 specifiers];
    [v4 addObjectsFromArray:v5];

    v6 = [v4 firstObject];
    v7 = [(PSCalendarPolicyAuthorizationLevelController *)v2 footerStringForSpecifiers:v4];
    if (v7)
    {
      [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];
    }

    v8 = *(&v2->super.super.super.super.super.super.isa + v3);
    *(&v2->super.super.super.super.super.super.isa + v3) = v4;
  }

  objc_sync_exit(v2);

  v9 = *(&v2->super.super.super.super.super.super.isa + v3);

  return v9;
}

- (id)footerStringForSpecifiers:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v26 = self;
    v7 = *v28;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 values];
        v11 = [v10 firstObject];
        v12 = [v11 isEqual:&unk_282D7F720];

        v13 = [v9 values];
        v14 = [v13 firstObject];
        v15 = [v14 isEqual:&unk_282D7F738];

        if ((v12 & 1) != 0 || v15)
        {

          v18 = MEMORY[0x277CC1E70];
          v19 = [(PSCalendarPolicyAuthorizationLevelController *)v26 serviceKey];
          v17 = [v18 bundleRecordWithApplicationIdentifier:v19 error:0];

          v20 = [v17 localizedName];
          v21 = +[AUCalendarPolicyController loadPrivacySettingsBundle];
          v22 = v21;
          if (v20)
          {
            v23 = @"CALENDARS_AUTH_EVENTKIT_FOOTER";
          }

          else
          {
            v23 = @"CALENDARS_AUTH_EVENTKIT_FOOTER_NO_APP_NAME";
          }

          v16 = [v21 localizedStringForKey:v23 value:&stru_282D7C630 table:@"Privacy"];

          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
  v17 = v4;
LABEL_15:

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

@end