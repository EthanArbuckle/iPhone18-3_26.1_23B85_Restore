@interface HMHome(Announce)
- (BOOL)isAnnounceEnabledForAnyAccessory;
- (BOOL)isAnnounceEnabledForAnyAccessoryOrUser;
- (BOOL)isAnnounceSupported;
- (id)_usersWithAnnounceEnabledIncludingCurrentUser:()Announce;
- (id)usersIncludingCurrentUserWithAnnounceAndRemoteAccessEnabled;
- (uint64_t)announceAccessAllowedForCurrentUser;
- (uint64_t)announceAccessAllowedForUser:()Announce;
- (uint64_t)isAnnounceAvailable;
@end

@implementation HMHome(Announce)

- (BOOL)isAnnounceSupported
{
  appleAnnounceAccessories = [self appleAnnounceAccessories];
  v2 = [appleAnnounceAccessories count] != 0;

  return v2;
}

- (uint64_t)isAnnounceAvailable
{
  v2 = +[ANHomeManager shared];
  currentAccessory = [v2 currentAccessory];

  if (!currentAccessory)
  {
    goto LABEL_5;
  }

  home = [currentAccessory home];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [self uniqueIdentifier];
  v7 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (!v7)
  {
LABEL_5:
    if (![self announceAccessAllowedForCurrentUser])
    {
      goto LABEL_4;
    }

LABEL_6:
    isAnnounceEnabledForAnyAccessoryOrUser = [self isAnnounceEnabledForAnyAccessoryOrUser];
    goto LABEL_7;
  }

  if ([currentAccessory an_isAnnounceEnabled])
  {
    goto LABEL_6;
  }

LABEL_4:
  isAnnounceEnabledForAnyAccessoryOrUser = 0;
LABEL_7:

  return isAnnounceEnabledForAnyAccessoryOrUser;
}

- (BOOL)isAnnounceEnabledForAnyAccessory
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = +[ANHomeManager shared];
  currentAccessory = [v2 currentAccessory];

  if (!currentAccessory)
  {
    goto LABEL_4;
  }

  home = [currentAccessory home];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [self uniqueIdentifier];
  v7 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v7)
  {
    v8 = MEMORY[0x277CD1650];
    accessories = [self accessories];
    accessories2 = [v8 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories];

    v11 = [MEMORY[0x277CD1650] hmu_accessoriesExcludingCurrentAccessoryFromAccessories:accessories2];
    v12 = [MEMORY[0x277CD1650] hmu_accessoriesFromAccessories:v11 excludingStereoCompanionForAccessory:currentAccessory];
  }

  else
  {
LABEL_4:
    v13 = MEMORY[0x277CD1650];
    accessories2 = [self accessories];
    v12 = [v13 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories2];
  }

  v14 = ANLogHandleHome_Announce();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v12 count];
    v16 = [v12 count];
    v17 = "ies";
    v22 = &stru_2851BDB18;
    v21 = 138412802;
    if (v16 == 1)
    {
      v17 = "y";
    }

    v23 = 2048;
    v24 = v15;
    v25 = 2080;
    v26 = v17;
    _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@%lu accessor%s with announce enabled", &v21, 0x20u);
  }

  v18 = [v12 count] != 0;
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)isAnnounceEnabledForAnyAccessoryOrUser
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = +[ANHomeManager shared];
  currentAccessory = [v2 currentAccessory];

  if (!currentAccessory)
  {
    goto LABEL_4;
  }

  home = [currentAccessory home];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [self uniqueIdentifier];
  v7 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v7)
  {
    v8 = MEMORY[0x277CD1650];
    accessories = [self accessories];
    v10 = [v8 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories];

    v11 = [MEMORY[0x277CD1650] hmu_accessoriesExcludingCurrentAccessoryFromAccessories:v10];
    v12 = [MEMORY[0x277CD1650] hmu_accessoriesFromAccessories:v11 excludingStereoCompanionForAccessory:currentAccessory];
    usersIncludingCurrentUserWithAnnounceEnabled = [self usersIncludingCurrentUserWithAnnounceEnabled];
  }

  else
  {
LABEL_4:
    v14 = MEMORY[0x277CD1650];
    accessories2 = [self accessories];
    v12 = [v14 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories2];

    usersIncludingCurrentUserWithAnnounceEnabled = [self usersWithAnnounceEnabled];
  }

  v16 = ANLogHandleHome_Announce();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v12 count];
    if ([v12 count] == 1)
    {
      v18 = "y";
    }

    else
    {
      v18 = "ies";
    }

    v19 = [usersIncludingCurrentUserWithAnnounceEnabled count];
    v20 = [usersIncludingCurrentUserWithAnnounceEnabled count];
    v25 = 138413314;
    v26 = &stru_2851BDB18;
    v21 = "s";
    v28 = v17;
    v27 = 2048;
    v29 = 2080;
    if (v20 == 1)
    {
      v21 = "";
    }

    v30 = v18;
    v31 = 2048;
    v32 = v19;
    v33 = 2080;
    v34 = v21;
    _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "%@%lu accessor%s with announce enabled.  %ld user%s with announce enabled", &v25, 0x34u);
  }

  if ([v12 count])
  {
    v22 = 1;
  }

  else
  {
    v22 = [usersIncludingCurrentUserWithAnnounceEnabled count] != 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (uint64_t)announceAccessAllowedForCurrentUser
{
  currentUser = [self currentUser];
  v3 = [self announceAccessAllowedForUser:currentUser];

  return v3;
}

- (uint64_t)announceAccessAllowedForUser:()Announce
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self homeAccessControlForUser:v4];
  isAnnounceAccessAllowed = [v5 isAnnounceAccessAllowed];

  v7 = ANLogHandleHome_Announce();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [v4 name];
    uniqueIdentifier = [v4 uniqueIdentifier];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:isAnnounceAccessAllowed];
    v19 = 138413058;
    v20 = &stru_2851BDB18;
    v21 = 2112;
    v22 = name;
    v23 = 2112;
    v24 = uniqueIdentifier;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Announce Access Allowed For User (Name = %@, ID = %@): %@", &v19, 0x2Au);
  }

  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v12 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA8C8]];

  if (v12)
  {
    v13 = ANLogHandleHome_Announce();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [v4 name];
      uniqueIdentifier2 = [v4 uniqueIdentifier];
      v19 = 138412802;
      v20 = &stru_2851BDB18;
      v21 = 2112;
      v22 = name2;
      v23 = 2112;
      v24 = uniqueIdentifier2;
      v16 = "%@[Override] Force Allow Announce For User (Name = %@, ID = %@) Enabled";
LABEL_10:
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, v16, &v19, 0x20u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ((isAnnounceAccessAllowed & 1) == 0)
  {
    v13 = ANLogHandleHome_Announce();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [v4 name];
      uniqueIdentifier2 = [v4 uniqueIdentifier];
      v19 = 138412802;
      v20 = &stru_2851BDB18;
      v21 = 2112;
      v22 = name2;
      v23 = 2112;
      v24 = uniqueIdentifier2;
      v16 = "%@Announce is DISABLED For User (Name = %@, ID = %@)";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = 1;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)usersIncludingCurrentUserWithAnnounceAndRemoteAccessEnabled
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  hmu_allUsersIncludingCurrentUser = [self hmu_allUsersIncludingCurrentUser];
  v4 = [hmu_allUsersIncludingCurrentUser countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(hmu_allUsersIncludingCurrentUser);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([self announceAccessAllowedForUser:v8] && objc_msgSend(self, "hmu_isRemoteAccessAllowedForUser:", v8))
        {
          [v2 addObject:v8];
        }
      }

      v5 = [hmu_allUsersIncludingCurrentUser countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_usersWithAnnounceEnabledIncludingCurrentUser:()Announce
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [self hmu_allUsersIncludingCurrentUser];
  }

  else
  {
    [self users];
  }
  v5 = ;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__HMHome_Announce___usersWithAnnounceEnabledIncludingCurrentUser___block_invoke;
  v13[3] = &unk_278C86D78;
  v13[4] = self;
  v6 = [v5 na_filter:v13];
  v7 = ANLogHandleHome_Announce();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 count];
    if (a3)
    {
      v9 = " (including current user)";
    }

    else
    {
      v9 = "";
    }

    v10 = [v6 count];
    *buf = 138413058;
    v15 = &stru_2851BDB18;
    v16 = 2048;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    v20 = 2048;
    v21 = v10;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_INFO, "%@Home has %ld users%s, %ld have intercom enabled", buf, 0x2Au);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

@end