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
  v8.receiver = self;
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
  v8.receiver = self;
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
  v11.receiver = self;
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
    uniqueIdentifier = [v4 uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    [v3 setHomeKitID:uUIDString];

    name = [v4 name];
    [v3 setName:name];

    hmu_isEndpoint = [v4 hmu_isEndpoint];

    return [v3 setIsEndpoint:hmu_isEndpoint];
  }

  return result;
}

- (void)populateWithUser:()Home
{
  if (a3)
  {
    v4 = a3;
    name = [v4 name];
    [self setName:name];

    uniqueIdentifier = [v4 uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    [self setHomeKitID:uUIDString];

    uniqueIdentifier2 = [v4 uniqueIdentifier];
    uUIDString2 = [uniqueIdentifier2 UUIDString];
    [self setHomeKitUserID:uUIDString2];

    userIDSURI = [v4 userIDSURI];
    prefixedURI = [userIDSURI prefixedURI];
    [self setIdsID:prefixedURI];

    userID = [v4 userID];

    [self setUserID:userID];
  }
}

- (void)populateWithUser:()Home andAccessory:
{
  v12 = a3;
  [self populateWithAccessory:a4];
  if (v12)
  {
    name = [v12 name];
    [self setName:name];

    uniqueIdentifier = [v12 uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    [self setHomeKitUserID:uUIDString];

    userIDSURI = [v12 userIDSURI];
    prefixedURI = [userIDSURI prefixedURI];
    [self setIdsID:prefixedURI];

    userID = [v12 userID];
    [self setUserID:userID];
  }
}

+ (id)participantsFromUsersInHome:()Home
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = +[ANHomeManager shared];
  currentAccessory = [v5 currentAccessory];

  if (currentAccessory)
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