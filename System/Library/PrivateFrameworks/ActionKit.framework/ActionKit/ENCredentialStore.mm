@interface ENCredentialStore
+ (id)loadCredentialsFromAppDefaults;
- (ENCredentialStore)init;
- (ENCredentialStore)initWithCoder:(id)a3;
- (id)credentialsForHost:(id)a3;
- (void)addCredentials:(id)a3;
- (void)clearAllCredentials;
- (void)encodeWithCoder:(id)a3;
- (void)removeCredentials:(id)a3;
@end

@implementation ENCredentialStore

- (ENCredentialStore)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ENCredentialStore;
  v5 = [(ENCredentialStore *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"store"];
    [(ENCredentialStore *)v5 setStore:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ENCredentialStore *)self store];
  [v4 encodeObject:v5 forKey:@"store"];
}

- (void)clearAllCredentials
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(ENCredentialStore *)self store];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) deleteFromKeychain];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(ENCredentialStore *)self store];
  [v9 removeAllObjects];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeCredentials:(id)a3
{
  v4 = a3;
  [v4 deleteFromKeychain];
  v6 = [(ENCredentialStore *)self store];
  v5 = [v4 host];

  [v6 removeObjectForKey:v5];
}

- (id)credentialsForHost:(id)a3
{
  v4 = a3;
  v5 = [(ENCredentialStore *)self store];
  v6 = [v5 objectForKey:v4];

  if (!v6 || [v6 areValid] && (objc_msgSend(v6, "authenticationToken"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = v6;
  }

  else
  {
    [(ENCredentialStore *)self removeCredentials:v6];
    v8 = 0;
  }

  return v8;
}

- (void)addCredentials:(id)a3
{
  v6 = a3;
  if ([v6 saveToKeychain])
  {
    v4 = [(ENCredentialStore *)self store];
    v5 = [v6 host];
    [v4 setObject:v6 forKey:v5];
  }
}

- (ENCredentialStore)init
{
  v5.receiver = self;
  v5.super_class = ENCredentialStore;
  v2 = [(ENCredentialStore *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(ENCredentialStore *)v2 setStore:v3];
  }

  return v2;
}

+ (id)loadCredentialsFromAppDefaults
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"EvernoteCredentials"];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end