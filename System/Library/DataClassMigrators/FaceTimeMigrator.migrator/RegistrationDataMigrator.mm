@interface RegistrationDataMigrator
- (BOOL)performMigration;
@end

@implementation RegistrationDataMigrator

- (BOOL)performMigration
{
  v156 = *MEMORY[0x277D85DE8];
  if ([(DataClassMigrator *)self didRestoreFromBackup])
  {
    CFPreferencesSetAppValue(@"restoredFromBackup", &unk_28495DF68, @"com.apple.conference");
    CFPreferencesAppSynchronize(@"com.apple.conference");
  }

  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v3 = [v2 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C78]];
  v4 = [v2 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8CB8]];
  v5 = [v2 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C08]];
  v89 = [v2 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8BA8]];
  v90 = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{v3, 0}];
  v87 = v5;
  v88 = v4;
  v92 = [MEMORY[0x277CBEA60] arrayWithObjects:{v4, v5, 0}];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v151 = v6;
    _os_log_impl(&dword_23396C000, registration, OS_LOG_TYPE_DEFAULT, "Account types to cleanup: %@", buf, 0xCu);
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = v6;
  v97 = [obj countByEnumeratingWithState:&v139 objects:v155 count:16];
  if (v97)
  {
    v95 = *v140;
    do
    {
      v8 = 0;
      do
      {
        if (*v140 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v99 = v8;
        v9 = *(*(&v139 + 1) + 8 * v8);
        registration2 = [MEMORY[0x277D19298] registration];
        if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v151 = v9;
          _os_log_impl(&dword_23396C000, registration2, OS_LOG_TYPE_DEFAULT, "  Cleaning up type: %@", buf, 0xCu);
        }

        v11 = [v2 accountsWithAccountType:v9];
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v135 objects:v154 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v136;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v136 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v135 + 1) + 8 * i);
              username = [v18 username];
              v20 = [username length];

              if (!v20)
              {
                registration3 = [MEMORY[0x277D19298] registration];
                if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
                {
                  username2 = [v18 username];
                  *buf = 138412546;
                  v151 = username2;
                  v152 = 2112;
                  v153 = v18;
                  _os_log_impl(&dword_23396C000, registration3, OS_LOG_TYPE_DEFAULT, "  Queueing account with username: %@  (%@)", buf, 0x16u);
                }

                [v12 addObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v135 objects:v154 count:16];
          }

          while (v15);
        }

        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v23 = v12;
        v24 = [v23 countByEnumeratingWithState:&v131 objects:v149 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v132;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v132 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v131 + 1) + 8 * j);
              registration4 = [MEMORY[0x277D19298] registration];
              if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v151 = v28;
                _os_log_impl(&dword_23396C000, registration4, OS_LOG_TYPE_DEFAULT, "  Deleting account: %@", buf, 0xCu);
              }

              [v2 removeAccount:v28 withCompletionHandler:&unk_28495DD78];
            }

            v25 = [v23 countByEnumeratingWithState:&v131 objects:v149 count:16];
          }

          while (v25);
        }

        v8 = v99 + 1;
      }

      while (v99 + 1 != v97);
      v97 = [obj countByEnumeratingWithState:&v139 objects:v155 count:16];
    }

    while (v97);
  }

  registration5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v151 = v92;
    _os_log_impl(&dword_23396C000, registration5, OS_LOG_TYPE_DEFAULT, "Account types to delete: %@", buf, 0xCu);
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v96 = v92;
  v100 = [v96 countByEnumeratingWithState:&v127 objects:v148 count:16];
  if (v100)
  {
    v98 = *v128;
    do
    {
      v31 = 0;
      do
      {
        if (*v128 != v98)
        {
          objc_enumerationMutation(v96);
        }

        v102 = v31;
        v32 = *(*(&v127 + 1) + 8 * v31);
        registration6 = [MEMORY[0x277D19298] registration];
        if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v151 = v32;
          _os_log_impl(&dword_23396C000, registration6, OS_LOG_TYPE_DEFAULT, "  Deleting type: %@", buf, 0xCu);
        }

        v34 = [v2 accountsWithAccountType:v32];
        v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v36 = v34;
        v37 = [v36 countByEnumeratingWithState:&v123 objects:v147 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v124;
          do
          {
            for (k = 0; k != v38; ++k)
            {
              if (*v124 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v123 + 1) + 8 * k);
              registration7 = [MEMORY[0x277D19298] registration];
              if (os_log_type_enabled(registration7, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v151 = v41;
                _os_log_impl(&dword_23396C000, registration7, OS_LOG_TYPE_DEFAULT, "  Queued account to delete: %@", buf, 0xCu);
              }

              [v35 addObject:v41];
            }

            v38 = [v36 countByEnumeratingWithState:&v123 objects:v147 count:16];
          }

          while (v38);
        }

        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v43 = v35;
        v44 = [v43 countByEnumeratingWithState:&v119 objects:v146 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v120;
          do
          {
            for (m = 0; m != v45; ++m)
            {
              if (*v120 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v119 + 1) + 8 * m);
              registration8 = [MEMORY[0x277D19298] registration];
              if (os_log_type_enabled(registration8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v151 = v48;
                _os_log_impl(&dword_23396C000, registration8, OS_LOG_TYPE_DEFAULT, "  Deleting account: %@", buf, 0xCu);
              }

              [v2 removeAccount:v48 withCompletionHandler:&unk_28495DD98];
            }

            v45 = [v43 countByEnumeratingWithState:&v119 objects:v146 count:16];
          }

          while (v45);
        }

        v31 = v102 + 1;
      }

      while (v102 + 1 != v100);
      v100 = [v96 countByEnumeratingWithState:&v127 objects:v148 count:16];
    }

    while (v100);
  }

  v50 = v90;
  if (!v90)
  {
    registration9 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23396C000, registration9, OS_LOG_TYPE_DEFAULT, "Didn't get an account type for IDS account, bailing...", buf, 2u);
    }

    goto LABEL_118;
  }

  registration9 = [v2 accountsWithAccountType:v90];
  if (!v89)
  {
    registration10 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23396C000, registration10, OS_LOG_TYPE_DEFAULT, "Didn't get an account type for Apple ID account", buf, 2u);
    }

LABEL_94:

    goto LABEL_95;
  }

  v52 = [v2 accountsWithAccountType:?];
  if (v52)
  {
    registration10 = v52;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v105 = [v52 countByEnumeratingWithState:&v115 objects:v145 count:16];
    if (v105)
    {
      v101 = *v116;
      v103 = registration9;
      v93 = registration10;
      do
      {
        for (n = 0; n != v105; ++n)
        {
          if (*v116 != v101)
          {
            objc_enumerationMutation(v93);
          }

          v55 = *(*(&v115 + 1) + 8 * n);
          registration11 = [MEMORY[0x277D19298] registration];
          if (os_log_type_enabled(registration11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v151 = v55;
            _os_log_impl(&dword_23396C000, registration11, OS_LOG_TYPE_DEFAULT, "Checking %@", buf, 0xCu);
          }

          username3 = [v55 username];
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          v58 = registration9;
          v59 = [v58 countByEnumeratingWithState:&v111 objects:v144 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v112;
            while (2)
            {
              for (ii = 0; ii != v60; ++ii)
              {
                if (*v112 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                v63 = *(*(&v111 + 1) + 8 * ii);
                username4 = [v63 username];
                if (IMAreEmailsLogicallyTheSame())
                {
                  accountProperties = [v63 accountProperties];
                  v66 = [accountProperties objectForKey:@"profileID"];
                  if (![v66 length])
                  {
                    v91 = accountProperties;
                    accountProperties2 = [v55 accountProperties];
                    v68 = [accountProperties2 objectForKey:@"profileID"];

                    accountProperties3 = [v55 accountProperties];
                    v70 = [accountProperties3 objectForKey:@"dsid"];

                    [v63 setAccountProperty:v68 forKey:@"profileID"];
                    [v63 setAccountProperty:v70 forKey:@"dsid"];
                    registration12 = [MEMORY[0x277D19298] registration];
                    if (os_log_type_enabled(registration12, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v151 = v68;
                      _os_log_impl(&dword_23396C000, registration12, OS_LOG_TYPE_DEFAULT, "Didn't find a profileID on the account, updating with value from the AppleID account %@", buf, 0xCu);
                    }

                    v110[0] = MEMORY[0x277D85DD0];
                    v110[1] = 3221225472;
                    v110[2] = sub_23396DC9C;
                    v110[3] = &unk_2789F5BF8;
                    v110[4] = v63;
                    [v2 saveVerifiedAccount:v63 withCompletionHandler:v110];

                    accountProperties = v91;
                  }

                  goto LABEL_87;
                }
              }

              v60 = [v58 countByEnumeratingWithState:&v111 objects:v144 count:16];
              if (v60)
              {
                continue;
              }

              break;
            }
          }

LABEL_87:

          registration9 = v103;
        }

        registration10 = v93;
        v105 = [v93 countByEnumeratingWithState:&v115 objects:v145 count:16];
      }

      while (v105);
    }

    goto LABEL_94;
  }

LABEL_95:
  v72 = [v2 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8BA0]];
  if (v72)
  {
    [v2 accountsWithAccountType:v72];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v73 = v109 = 0u;
    v74 = [v73 countByEnumeratingWithState:&v106 objects:v143 count:16];
    if (v74)
    {
      v75 = v74;
      v104 = registration9;
      v76 = *v107;
      while (2)
      {
        for (jj = 0; jj != v75; ++jj)
        {
          if (*v107 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = *(*(&v106 + 1) + 8 * jj);
          v79 = [v78 accountPropertyForKey:@"primaryAccount"];
          bOOLValue = [v79 BOOLValue];

          if (bOOLValue)
          {
            username5 = [v78 username];
            registration13 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v151 = username5;
              _os_log_impl(&dword_23396C000, registration13, OS_LOG_TYPE_DEFAULT, "Found iCloud account with username %@", buf, 0xCu);
            }

            goto LABEL_108;
          }
        }

        v75 = [v73 countByEnumeratingWithState:&v106 objects:v143 count:16];
        if (v75)
        {
          continue;
        }

        break;
      }

      username5 = 0;
LABEL_108:
      registration9 = v104;
    }

    else
    {
      username5 = 0;
    }

    if ([username5 length])
    {
      registration14 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v151 = username5;
        _os_log_impl(&dword_23396C000, registration14, OS_LOG_TYPE_DEFAULT, "Kicking sign in with: %@", buf, 0xCu);
      }

      IDSiCloudSignIn();
    }
  }

  else
  {
    username5 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(username5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23396C000, username5, OS_LOG_TYPE_DEFAULT, "Didn't get an account type for iCloud account, bailing...", buf, 2u);
    }
  }

  v50 = v90;
LABEL_118:

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, @"FaceTimeRegistrationRestoredFromBackupNotification", 0, 0, 1uLL);

  v85 = *MEMORY[0x277D85DE8];
  return 1;
}

@end