@interface ScheduleSettingsStyleController
- (id)notAvailableText;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_accountsChanged;
- (void)_reloadFoldersAndSpecifiersForced:(BOOL)a3;
- (void)dealloc;
- (void)listItemSelected:(id)a3;
- (void)reloadFolders;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ScheduleSettingsStyleController

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = ScheduleSettingsStyleController;
  [(PSListItemsController *)&v3 dealloc];
}

- (id)specifiers
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v2)
  {
    v32 = *MEMORY[0x277D3FC48];
    v42.receiver = self;
    v42.super_class = ScheduleSettingsStyleController;
    v2 = [-[PSListItemsController specifiers](&v42 specifiers)];
    v4 = [-[ScheduleSettingsStyleController specifier](self "specifier")];

    v5 = [v4 objectForKey:@"ScheduleSettingsAccountKey"];
    self->_account = v5;
    v6 = [(ACAccountType *)[(ACAccount *)v5 accountType] identifier];
    self->_isExchangeAccount = [(NSString *)v6 isEqualToString:*MEMORY[0x277CB8C00]];

    self->_mailAccountUniqueId = 0;
    v7 = [v4 objectForKey:@"ScheduleSettingsAccountUniqueIdentifierKey"];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [MEMORY[0x277D28280] mailAccounts];
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          if ([objc_msgSend(v13 "uniqueIdForPersistentConnection")])
          {
            self->_mailAccountUniqueId = [v13 uniqueID];
            self->_supportsUserPushedMailboxes = [v13 supportsUserPushedMailboxes];
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    v14 = [v2 objectAtIndex:0];
    [v14 setName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SELECT_SCHEDULE", &stru_284EEC2E8, @"ScheduleSettings"}];
    v15 = [(ScheduleSettingsStyleController *)self notAvailableText];
    if (v15)
    {
      v16 = v15;
      [v14 setProperty:v15 forKey:*MEMORY[0x277D3FF88]];
      if ([v16 _isNaturallyRTL])
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithInt:v17];
      [v14 setProperty:v18 forKey:*MEMORY[0x277D3FF40]];
      v19 = [MEMORY[0x277CCABB0] numberWithInt:v17];
      [v14 setProperty:v19 forKey:*MEMORY[0x277D3FD78]];
    }

    v33 = self;
    if ([(ScheduleSettingsStyleController *)self shouldShowMailboxes])
    {
      mailboxInfos = self->_mailboxInfos;
      if (!mailboxInfos)
      {
        [(ScheduleSettingsStyleController *)self reloadFolders];
        mailboxInfos = self->_mailboxInfos;
      }

      if ([(NSArray *)mailboxInfos count])
      {
        [v2 addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "groupSpecifierWithName:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"PUSHED_MAILBOXES", &stru_284EEC2E8, @"ScheduleSettings"}];
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v21 = self->_mailboxInfos;
        v22 = [(NSArray *)v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v35;
          v25 = *MEMORY[0x277D25820];
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v35 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v27 = *(*(&v34 + 1) + 8 * j);
              v28 = [v27 objectForKey:v25];
              v29 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:0 cell:13 edit:0];
              [v29 setProperty:v27 forKey:@"mailbox"];
              [v2 addObject:v29];
            }

            v23 = [(NSArray *)v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v23);
        }
      }
    }

    *(&v33->super.super.super.super.super.super.isa + v32) = v2;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)reloadFolders
{
  v9[5] = *MEMORY[0x277D85DE8];

  self->_mailboxInfos = 0;
  self->_monitored = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = *MEMORY[0x277D25838];
  v9[0] = *MEMORY[0x277D25820];
  v9[1] = v3;
  v4 = *MEMORY[0x277D25830];
  v9[2] = *MEMORY[0x277D25828];
  v9[3] = v4;
  v9[4] = *MEMORY[0x277D25840];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];
  mailAccountUniqueId = self->_mailAccountUniqueId;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__ScheduleSettingsStyleController_reloadFolders__block_invoke;
  v8[3] = &unk_278BB4680;
  v8[4] = self;
  [MEMORY[0x277D25848] mailboxListingForAccountWithUniqueIdentifier:mailAccountUniqueId keys:v5 completionBlock:v8];
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __48__ScheduleSettingsStyleController_reloadFolders__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 1504) = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 1504);
  result = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    v7 = *MEMORY[0x277D25830];
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([objc_msgSend(v9 objectForKey:{v7), "BOOLValue"}])
        {
          [*(*(a1 + 32) + 1512) addObject:v9];
        }

        ++v8;
      }

      while (v5 != v8);
      result = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)notAvailableText
{
  v3 = [objc_msgSend(-[ScheduleSettingsStyleController specifier](self "specifier")];
  v4 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD08]) styleForAccount:self->_account uniqueIdentifier:v3];
  if (v4)
  {
    if (v4 != 2)
    {
      return 0;
    }

    v5 = @"WHEN_FETCH_NOT_AVAILABLE";
  }

  else
  {
    v5 = @"WHEN_PUSH_NOT_AVAILABLE";
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v6 localizedStringForKey:v5 value:&stru_284EEC2E8 table:@"ScheduleSettings"];
}

- (void)listItemSelected:(id)a3
{
  v4.receiver = self;
  v4.super_class = ScheduleSettingsStyleController;
  [(PSListItemsController *)&v4 listItemSelected:a3];
  [-[ScheduleSettingsStyleController table](self "table")];
  [(ScheduleSettingsStyleController *)self reloadSpecifiers];
}

- (void)_reloadFoldersAndSpecifiersForced:(BOOL)a3
{
  if (!self->_ignoringNotifications)
  {
    if ([MEMORY[0x277D28280] accountWithUniqueId:self->_mailAccountUniqueId])
    {
      v6 = self->_monitored;
      [(ScheduleSettingsStyleController *)self reloadFolders];
      if (a3 || ([(NSMutableSet *)self->_monitored isEqualToSet:v6]& 1) == 0)
      {
        [(ScheduleSettingsStyleController *)self reloadSpecifiers];
      }
    }

    else
    {
      v5 = [(ScheduleSettingsStyleController *)self navigationController];

      [v5 popViewControllerAnimated:1];
    }
  }
}

- (void)_accountsChanged
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__reloadFoldersAndSpecifiers object:0];

  [(ScheduleSettingsStyleController *)self performSelector:sel__reloadFoldersAndSpecifiers withObject:0 afterDelay:0.1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = [(ScheduleSettingsStyleController *)self indexForIndexPath:a4];
  v8 = [objc_msgSend(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:{v7), "propertyForKey:", @"mailbox"}];
  if (v8)
  {
    v9 = v8;
    v10 = [a3 dequeueReusableCellWithIdentifier:@"PushedMailboxTableCell"];
    if (!v10)
    {
      v10 = [[PushedMailboxTableCell alloc] initWithStyle:0 reuseIdentifier:@"PushedMailboxTableCell"];
    }

    v11 = [objc_msgSend(v9 objectForKey:{*MEMORY[0x277D25838]), "integerValue"}];
    [(PushedMailboxTableCell *)v10 setType:v11];
    -[PushedMailboxTableCell setLevel:](v10, "setLevel:", [objc_msgSend(v9 objectForKey:{*MEMORY[0x277D25828]), "intValue"}]);
    -[PushedMailboxTableCell setMailboxName:](v10, "setMailboxName:", [v9 objectForKey:*MEMORY[0x277D25820]]);
    [(PushedMailboxTableCell *)v10 setEnabled:v11 << 32 != 0x700000000];
    [(PushedMailboxTableCell *)v10 setChecked:[(NSMutableSet *)self->_monitored containsObject:v9]];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ScheduleSettingsStyleController;
    return [(PSListItemsController *)&v13 tableView:a3 cellForRowAtIndexPath:a4];
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = [(ScheduleSettingsStyleController *)self indexForIndexPath:a4];
  v8 = [objc_msgSend(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:{v7), "propertyForKey:", @"mailbox"}];
  if (v8)
  {
    v9 = v8;
    v10 = [a3 cellForRowAtIndexPath:a4];
    [a3 deselectRowAtIndexPath:a4 animated:1];
    v11 = [v10 isChecked] ^ 1;
    [v10 setChecked:v11];
    monitored = self->_monitored;
    if (v11)
    {
      [(NSMutableSet *)monitored addObject:v9];
    }

    else
    {
      [(NSMutableSet *)monitored removeObject:v9];
    }

    [(ScheduleSettingsStyleController *)self setPushStateForMailbox:v9 state:v11];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ScheduleSettingsStyleController;
    [(PSListItemsController *)&v13 tableView:a3 didSelectRowAtIndexPath:a4];
  }
}

@end