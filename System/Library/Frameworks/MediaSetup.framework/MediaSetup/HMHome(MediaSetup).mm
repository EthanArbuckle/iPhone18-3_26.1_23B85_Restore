@interface HMHome(MediaSetup)
- (BOOL)userIdentifierBelongsInHome:()MediaSetup;
- (id)userWithIdentifier:()MediaSetup;
- (uint64_t)hasAccessoryTypeHomePod;
- (uint64_t)isCurrentUserHomeOwner;
- (uint64_t)isCurrentUserRestrictedGuest;
- (uint64_t)isUpdatedForBolt;
- (uint64_t)userIdentifierBelongsToCurrentUser:()MediaSetup;
@end

@implementation HMHome(MediaSetup)

- (uint64_t)hasAccessoryTypeHomePod
{
  v2 = [a1 accessories];

  if (v2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v3 = [a1 accessories];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__HMHome_MediaSetup__hasAccessoryTypeHomePod__block_invoke;
    v6[3] = &unk_278AA2AF8;
    v6[4] = &v7;
    [v3 enumerateObjectsUsingBlock:v6];

    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (uint64_t)isCurrentUserHomeOwner
{
  v2 = [a1 currentUser];
  v3 = [v2 uniqueIdentifier];
  v4 = [a1 owner];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 isEqual:v5];

  return v6;
}

- (uint64_t)isCurrentUserRestrictedGuest
{
  v2 = [a1 currentUser];
  v3 = [a1 homeAccessControlForUser:v2];
  v4 = [v3 isRestrictedGuest];

  return v4;
}

- (uint64_t)isUpdatedForBolt
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 accessories];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 isHomePod] && !objc_msgSend(v6, "supportsThirdPartyMusic"))
        {
          v7 = 0;
          goto LABEL_12;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_12:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (uint64_t)userIdentifierBelongsToCurrentUser:()MediaSetup
{
  v4 = a3;
  v5 = [a1 currentUser];
  v6 = [v5 uniqueIdentifier];
  v7 = [v6 isEqual:v4];

  return v7;
}

- (BOOL)userIdentifierBelongsInHome:()MediaSetup
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 allUsers];
    v6 = [v5 hmf_firstObjectWithUniqueIdentifier:v4];

    v7 = v6 != 0;
  }

  else
  {
    v8 = _MSLogingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HMHome(MediaSetup) userIdentifierBelongsInHome:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)userWithIdentifier:()MediaSetup
{
  v4 = a3;
  v5 = [a1 allUsers];
  v6 = [v5 hmf_firstObjectWithUniqueIdentifier:v4];

  return v6;
}

- (void)userIdentifierBelongsInHome:()MediaSetup .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[HMHome(MediaSetup) userIdentifierBelongsInHome:]";
  _os_log_error_impl(&dword_23986C000, log, OS_LOG_TYPE_ERROR, "%s NIL userIdentifier passed", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end