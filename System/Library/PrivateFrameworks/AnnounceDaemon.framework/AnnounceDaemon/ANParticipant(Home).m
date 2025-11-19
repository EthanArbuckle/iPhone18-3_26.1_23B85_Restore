@interface ANParticipant(Home)
+ (id)participantsFromUsersInHome:()Home;
- (id)initWithAccessory:()Home;
- (id)initWithUser:()Home;
- (id)initWithUser:()Home andAccessory:;
- (uint64_t)populateWithAccessory:()Home;
- (void)populateWithUser:()Home;
- (void)populateWithUser:()Home andAccessory:;
@end

@implementation ANParticipant(Home)

- (id)initWithAccessory:()Home
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &off_2851D5BE8;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    [v5 populateWithAccessory:v4];
  }

  return v6;
}

- (id)initWithUser:()Home
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &off_2851D5BE8;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    [v5 populateWithUser:v4];
  }

  return v6;
}

- (id)initWithUser:()Home andAccessory:
{
  v6 = a3;
  v7 = a4;
  v11.receiver = a1;
  v11.super_class = &off_2851D5BE8;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = v8;
  if (v8)
  {
    [v8 populateWithUser:v6 andAccessory:v7];
  }

  return v9;
}

- (uint64_t)populateWithAccessory:()Home
{
  if (a3)
  {
    v3 = result;
    v4 = a3;
    [v3 setIsAccessory:1];
    v5 = [v4 uniqueIdentifier];
    v6 = [v5 UUIDString];
    [v3 setHomeKitID:v6];

    v7 = [v4 name];
    [v3 setName:v7];

    v8 = [v4 hmu_isEndpoint];

    return [v3 setIsEndpoint:v8];
  }

  return result;
}

- (void)populateWithUser:()Home
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 name];
    [a1 setName:v5];

    v6 = [v4 uniqueIdentifier];
    v7 = [v6 UUIDString];
    [a1 setHomeKitID:v7];

    v8 = [v4 uniqueIdentifier];
    v9 = [v8 UUIDString];
    [a1 setHomeKitUserID:v9];

    v10 = [v4 userIDSURI];
    v11 = [v10 prefixedURI];
    [a1 setIdsID:v11];

    v12 = [v4 userID];

    [a1 setUserID:v12];
  }
}

- (void)populateWithUser:()Home andAccessory:
{
  v12 = a3;
  [a1 populateWithAccessory:a4];
  if (v12)
  {
    v6 = [v12 name];
    [a1 setName:v6];

    v7 = [v12 uniqueIdentifier];
    v8 = [v7 UUIDString];
    [a1 setHomeKitUserID:v8];

    v9 = [v12 userIDSURI];
    v10 = [v9 prefixedURI];
    [a1 setIdsID:v10];

    v11 = [v12 userID];
    [a1 setUserID:v11];
  }
}

+ (id)participantsFromUsersInHome:()Home
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = +[ANHomeManager shared];
  v6 = [v5 currentAccessory];

  if (v6)
  {
    [v3 hmu_allUsersIncludingCurrentUser];
  }

  else
  {
    [v3 hmu_users];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v3 announceAccessAllowedForUser:{v12, v16}])
        {
          v13 = [objc_alloc(MEMORY[0x277CEABB0]) initWithUser:v12];
          [v4 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

@end