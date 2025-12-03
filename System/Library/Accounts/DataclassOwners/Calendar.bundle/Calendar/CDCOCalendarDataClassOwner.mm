@interface CDCOCalendarDataClassOwner
+ (id)dataclasses;
- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass;
- (CalDatabase)createDatabaseReferenceForAccount:(id)account;
- (id)_DAAccountIdentifierForAccount:(id)account withChildren:(id)children;
- (id)accountStore;
- (id)actionsForAddingAccount:(id)account forDataclass:(id)dataclass;
- (id)actionsForDeletingAccount:(id)account forDataclass:(id)dataclass;
@end

@implementation CDCOCalendarDataClassOwner

- (CalDatabase)createDatabaseReferenceForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_alloc_init(CalDatabaseInitializationConfiguration);
  [v4 setOptions:20];
  v5 = CalDatabaseCreateWithConfigurationForAccount();

  return v5;
}

- (id)accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = objc_alloc_init(ACAccountStore);
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (id)_DAAccountIdentifierForAccount:(id)account withChildren:(id)children
{
  accountCopy = account;
  childrenCopy = children;
  identifier = [accountCopy identifier];
  accountType = [accountCopy accountType];
  identifier2 = [accountType identifier];
  v10 = ACAccountTypeIdentifierCalDAV;
  if ([identifier2 isEqualToString:ACAccountTypeIdentifierCalDAV])
  {
  }

  else
  {
    v11 = [childrenCopy count];

    if (!v11)
    {
      goto LABEL_15;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    accountType = childrenCopy;
    v12 = [accountType countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v22 = identifier;
      v23 = childrenCopy;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(accountType);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          accountType2 = [v16 accountType];
          identifier3 = [accountType2 identifier];
          v19 = [identifier3 isEqualToString:v10];

          if (v19)
          {
            identifier = [v16 identifier];

            childrenCopy = v23;
            goto LABEL_14;
          }
        }

        v13 = [accountType countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      identifier = v22;
      childrenCopy = v23;
    }
  }

LABEL_14:

LABEL_15:
  v20 = [NSString stringWithFormat:@"com.apple.dataaccessd-%@", identifier];

  return v20;
}

+ (id)dataclasses
{
  v4 = kAccountDataclassCalendars;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)actionsForAddingAccount:(id)account forDataclass:(id)dataclass
{
  accountCopy = account;
  dataclassCopy = dataclass;
  accountType = [accountCopy accountType];
  v9 = [(CDCOCalendarDataClassOwner *)self createDatabaseReferenceForAccount:0];
  if ([CalStoreSetupAndTeardownUtils isReadOnlyAccount:accountCopy])
  {
    v10 = [ACDataclassAction actionWithType:1];
    v35 = v10;
    v11 = [NSArray arrayWithObjects:&v35 count:1];

    goto LABEL_16;
  }

  identifier = [accountType identifier];
  if ([identifier isEqualToString:ACAccountTypeIdentifierExchange])
  {
    goto LABEL_12;
  }

  identifier2 = [accountType identifier];
  if ([identifier2 isEqualToString:ACAccountTypeIdentifierHotmail])
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  identifier3 = [accountType identifier];
  if ([identifier3 isEqualToString:ACAccountTypeIdentifierGmail])
  {
LABEL_10:

    goto LABEL_11;
  }

  identifier4 = [accountType identifier];
  if ([identifier4 isEqualToString:ACAccountTypeIdentifierYahoo])
  {
LABEL_9:

    goto LABEL_10;
  }

  identifier5 = [accountType identifier];
  if ([identifier5 isEqualToString:ACAccountTypeIdentifierCalDAV])
  {

    goto LABEL_9;
  }

  identifier6 = [accountType identifier];
  v28 = ACAccountTypeIdentifierAppleAccount;
  if ([identifier6 isEqualToString:?])
  {
    identifier7 = [accountCopy identifier];
    v27 = [CalAccountUtils isAccountDataSeparated:identifier7];

    if (v27)
    {
LABEL_13:
      if ([CalStoreSetupAndTeardownUtils isLocalStoreEmptyInDatabase:v9])
      {
        v16 = [ACDataclassAction actionWithType:1];
        v34 = v16;
        v11 = [NSArray arrayWithObjects:&v34 count:1];
      }

      else
      {
        v17 = [ACDataclassAction actionWithType:4];
        v33[0] = v17;
        v18 = [ACDataclassAction destructiveActionWithType:6];
        v33[1] = v18;
        v19 = [ACDataclassAction actionWithType:0];
        v33[2] = v19;
        v11 = [NSArray arrayWithObjects:v33 count:3];
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  identifier8 = [accountType identifier];
  v23 = [identifier8 isEqualToString:v28];

  if (v23)
  {
    if ([CalStoreSetupAndTeardownUtils isLocalStoreEmptyInDatabase:v9])
    {
      v24 = [ACDataclassAction actionWithType:1];
      v32 = v24;
      v11 = [NSArray arrayWithObjects:&v32 count:1];
    }

    else
    {
      v25 = [ACDataclassAction actionWithType:5];
      v31[0] = v25;
      v26 = [ACDataclassAction actionWithType:0];
      v31[1] = v26;
      v11 = [NSArray arrayWithObjects:v31 count:2];
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_16:
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

- (id)actionsForDeletingAccount:(id)account forDataclass:(id)dataclass
{
  accountCopy = account;
  dataclassCopy = dataclass;
  accountType = [accountCopy accountType];
  v9 = [(CDCOCalendarDataClassOwner *)self createDatabaseReferenceForAccount:accountCopy];
  if ([CalStoreSetupAndTeardownUtils isReadOnlyAccount:accountCopy])
  {
    v10 = [ACDataclassAction destructiveActionWithType:3];
    v33 = v10;
    v11 = [NSArray arrayWithObjects:&v33 count:1];

    goto LABEL_14;
  }

  identifier = [accountType identifier];
  if ([identifier isEqualToString:ACAccountTypeIdentifierExchange])
  {
    goto LABEL_12;
  }

  identifier2 = [accountType identifier];
  if ([identifier2 isEqualToString:ACAccountTypeIdentifierHotmail])
  {
LABEL_11:

LABEL_12:
LABEL_13:
    v16 = [ACDataclassAction destructiveActionWithType:3];
    v32[0] = v16;
    v17 = [ACDataclassAction actionWithType:0];
    v32[1] = v17;
    v11 = [NSArray arrayWithObjects:v32 count:2];

    goto LABEL_14;
  }

  identifier3 = [accountType identifier];
  if ([identifier3 isEqualToString:ACAccountTypeIdentifierGmail])
  {
LABEL_10:

    goto LABEL_11;
  }

  identifier4 = [accountType identifier];
  if ([identifier4 isEqualToString:ACAccountTypeIdentifierYahoo])
  {
LABEL_9:

    goto LABEL_10;
  }

  identifier5 = [accountType identifier];
  if ([identifier5 isEqualToString:ACAccountTypeIdentifierCalDAV])
  {

    goto LABEL_9;
  }

  identifier6 = [accountType identifier];
  v27 = ACAccountTypeIdentifierAppleAccount;
  if ([identifier6 isEqualToString:?])
  {
    identifier7 = [accountCopy identifier];
    v26 = [CalAccountUtils isAccountDataSeparated:identifier7];

    if (v26)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  identifier8 = [accountType identifier];
  v21 = [identifier8 isEqualToString:v27];

  if (v21)
  {
    if ([CalStoreSetupAndTeardownUtils isStoreEmptyForAccount:accountCopy inDatabase:v9])
    {
      v22 = [ACDataclassAction destructiveActionWithType:3];
      v31 = v22;
      v11 = [NSArray arrayWithObjects:&v31 count:1];
    }

    else
    {
      v23 = [ACDataclassAction destructiveActionWithType:3];
      v30[0] = v23;
      v24 = [ACDataclassAction actionWithType:2];
      v30[1] = v24;
      v25 = [ACDataclassAction actionWithType:0];
      v30[2] = v25;
      v11 = [NSArray arrayWithObjects:v30 count:3];
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass
{
  actionCopy = action;
  accountCopy = account;
  childrenCopy = children;
  dataclassCopy = dataclass;
  accountType = [accountCopy accountType];
  v14 = [(CDCOCalendarDataClassOwner *)self createDatabaseReferenceForAccount:accountCopy];
  if (CalDatabaseIsAuxiliaryDatabase())
  {
    v15 = [(CDCOCalendarDataClassOwner *)self createDatabaseReferenceForAccount:0];
  }

  else
  {
    v15 = CFRetain(v14);
  }

  v61 = v15;
  accountStore = [(CDCOCalendarDataClassOwner *)self accountStore];
  v60 = [(CDCOCalendarDataClassOwner *)self _DAAccountIdentifierForAccount:accountCopy withChildren:childrenCopy];
  CalDatabaseSetClientIdentifier();
  identifier = [accountType identifier];
  v17 = ACAccountTypeIdentifierAppleAccount;
  if ([identifier isEqualToString:ACAccountTypeIdentifierAppleAccount])
  {
    identifier2 = [accountCopy identifier];
    v19 = [CalAccountUtils isAccountDataSeparated:identifier2];

    if ((v19 & 1) == 0)
    {
      type = [actionCopy type];
      v21 = 0;
      if (type > 2)
      {
        v23 = v61;
        v22 = accountStore;
        if (type == &dword_0 + 3)
        {
          if ([CalStoreSetupAndTeardownUtils clearAllEventsFromStoreForParentAccount:accountCopy withChildren:childrenCopy inDatabase:v14])
          {
            v28 = accountCopy;
            v29 = childrenCopy;
            goto LABEL_61;
          }

          goto LABEL_69;
        }

        if (type != &dword_4 + 1)
        {
          goto LABEL_73;
        }

        if (![CalStoreSetupAndTeardownUtils isLocalStoreEmptyInDatabase:v61])
        {
          if ([CalStoreSetupAndTeardownUtils setUpCalStoreForParentAccount:accountCopy withChildren:childrenCopy inDatabase:v14])
          {
            v47 = [CalStoreSetupAndTeardownUtils copyStoreForAccount:accountCopy withChildren:childrenCopy inDatabase:v14];
            if (!v47)
            {
              goto LABEL_44;
            }

            v48 = v47;
            v49 = [CalStoreSetupAndTeardownUtils mergeEventsFromLocalStoreIntoStore:v47 inDatabase:v14];
            CFRelease(v48);
            if (v49)
            {
              v50 = _ACLogSystem();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                sub_1F3C();
              }

              v39 = v14;
              goto LABEL_43;
            }
          }

          goto LABEL_69;
        }
      }

      else
      {
        v23 = v61;
        v22 = accountStore;
        if (type != &dword_0 + 1)
        {
          if (type != &dword_0 + 2)
          {
            goto LABEL_73;
          }

          v24 = _ACLogSystem();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            sub_1F08();
          }

          [CalStoreSetupAndTeardownUtils setLocalStoreEnabled:1 inDatabase:v14];
          v25 = [CalStoreSetupAndTeardownUtils copyStoreForAccount:accountCopy withChildren:childrenCopy inDatabase:v14];
          if (v25)
          {
            v26 = v25;
            v27 = [CalStoreSetupAndTeardownUtils mergeEventsIntoLocalStoreFromStore:v25 inDatabase:v14];
            CFRelease(v26);
            if (v27)
            {
              v28 = accountCopy;
              v29 = childrenCopy;
LABEL_61:
              [CalStoreSetupAndTeardownUtils removeStoreForAccount:v28 withChildren:v29 inDatabase:v14 mainDatabase:v23 accountStore:v22];
              goto LABEL_44;
            }
          }

          goto LABEL_69;
        }
      }

      if ([CalStoreSetupAndTeardownUtils setUpCalStoreForParentAccount:accountCopy withChildren:childrenCopy inDatabase:v14])
      {
        v38 = _ACLogSystem();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          sub_1F70();
        }

        goto LABEL_42;
      }

LABEL_69:
      v21 = 0;
      goto LABEL_73;
    }
  }

  else
  {
  }

  identifier3 = [accountType identifier];
  if ([identifier3 isEqualToString:v17])
  {
    goto LABEL_24;
  }

  v31 = v14;
  identifier4 = [accountType identifier];
  if ([identifier4 isEqualToString:ACAccountTypeIdentifierCalDAV])
  {
LABEL_23:

    v14 = v31;
LABEL_24:

    goto LABEL_25;
  }

  v33 = accountType;
  identifier5 = [accountType identifier];
  if ([identifier5 isEqualToString:ACAccountTypeIdentifierExchange])
  {
LABEL_22:

    accountType = v33;
    goto LABEL_23;
  }

  identifier6 = [v33 identifier];
  if ([identifier6 isEqualToString:ACAccountTypeIdentifierHotmail])
  {
LABEL_21:

    goto LABEL_22;
  }

  v59 = v33;
  identifier7 = [v33 identifier];
  if ([identifier7 isEqualToString:ACAccountTypeIdentifierGmail])
  {

    goto LABEL_21;
  }

  identifier8 = [v33 identifier];
  v56 = [identifier8 isEqualToString:ACAccountTypeIdentifierYahoo];

  accountType = v59;
  v14 = v31;
  if ((v56 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_25:
  if ([actionCopy type] != &dword_4 + 2)
  {
    if ([actionCopy type] == &dword_0 + 1)
    {
      v22 = accountStore;
      if (![CalStoreSetupAndTeardownUtils setUpCalStoreForParentAccount:accountCopy withChildren:childrenCopy inDatabase:v14])
      {
        v21 = 0;
        v23 = v61;
        goto LABEL_73;
      }

      v38 = _ACLogSystem();
      v23 = v61;
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    if ([actionCopy type] == &dword_4)
    {
      v21 = [CalStoreSetupAndTeardownUtils setUpCalStoreForParentAccount:accountCopy withChildren:childrenCopy inDatabase:v14];
LABEL_72:
      v23 = v61;
      v22 = accountStore;
      goto LABEL_73;
    }

    if ([actionCopy type] == &dword_0 + 3)
    {
      v53 = [CalStoreSetupAndTeardownUtils clearAllEventsFromStoreForParentAccount:accountCopy withChildren:childrenCopy inDatabase:v14];
      if (v53)
      {
        [CalStoreSetupAndTeardownUtils removeStoreForAccount:accountCopy withChildren:childrenCopy inDatabase:v14 mainDatabase:v61 accountStore:accountStore];
      }

      v54 = v14;
      v55 = childrenCopy;
      v58 = accountCopy;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v40 = childrenCopy;
      v41 = [v40 countByEnumeratingWithState:&v64 objects:v68 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v65;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v65 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v64 + 1) + 8 * i);
            v46 = [v45 accountPropertyForKey:@"CalDAVMobileAccountDelegatePrincipalPath"];

            if (v46)
            {
              [(CDCOCalendarDataClassOwner *)self performAction:actionCopy forAccount:v45 withChildren:&__NSArray0__struct forDataclass:dataclassCopy];
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v64 objects:v68 count:16];
        }

        while (v42);
      }

      childrenCopy = v55;
      accountCopy = v58;
      v14 = v54;
      v23 = v61;
      v22 = accountStore;
      v21 = v53;
      goto LABEL_73;
    }

LABEL_71:
    v21 = 0;
    goto LABEL_72;
  }

  v23 = v61;
  v36 = [CalStoreSetupAndTeardownUtils drainLocalStoreInDatabase:v61];
  v37 = [CalStoreSetupAndTeardownUtils setUpCalStoreForParentAccount:accountCopy withChildren:childrenCopy inDatabase:v14];
  v21 = 0;
  v22 = accountStore;
  if (v36 && v37)
  {
    v38 = _ACLogSystem();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
LABEL_42:

      v39 = v23;
LABEL_43:
      [CalStoreSetupAndTeardownUtils setLocalStoreEnabled:0 inDatabase:v39];
LABEL_44:
      v21 = 1;
      goto LABEL_73;
    }

LABEL_29:
    sub_1FA4();
    goto LABEL_42;
  }

LABEL_73:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v21;
}

@end