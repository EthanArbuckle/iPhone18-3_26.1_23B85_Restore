@interface ENCredentialStore
+ (id)loadCredentialsFromAppDefaults;
- (ENCredentialStore)init;
- (ENCredentialStore)initWithCoder:(id)coder;
- (id)credentialsForHost:(id)host;
- (void)addCredentials:(id)credentials;
- (void)clearAllCredentials;
- (void)encodeWithCoder:(id)coder;
- (void)removeCredentials:(id)credentials;
@end

@implementation ENCredentialStore

- (ENCredentialStore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ENCredentialStore;
  v5 = [(ENCredentialStore *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"store"];
    [(ENCredentialStore *)v5 setStore:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  store = [(ENCredentialStore *)self store];
  [coderCopy encodeObject:store forKey:@"store"];
}

- (void)clearAllCredentials
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  store = [(ENCredentialStore *)self store];
  allValues = [store allValues];

  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v8++) deleteFromKeychain];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  store2 = [(ENCredentialStore *)self store];
  [store2 removeAllObjects];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeCredentials:(id)credentials
{
  credentialsCopy = credentials;
  [credentialsCopy deleteFromKeychain];
  store = [(ENCredentialStore *)self store];
  host = [credentialsCopy host];

  [store removeObjectForKey:host];
}

- (id)credentialsForHost:(id)host
{
  hostCopy = host;
  store = [(ENCredentialStore *)self store];
  v6 = [store objectForKey:hostCopy];

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

- (void)addCredentials:(id)credentials
{
  credentialsCopy = credentials;
  if ([credentialsCopy saveToKeychain])
  {
    store = [(ENCredentialStore *)self store];
    host = [credentialsCopy host];
    [store setObject:credentialsCopy forKey:host];
  }
}

- (ENCredentialStore)init
{
  v5.receiver = self;
  v5.super_class = ENCredentialStore;
  v2 = [(ENCredentialStore *)&v5 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(ENCredentialStore *)v2 setStore:dictionary];
  }

  return v2;
}

+ (id)loadCredentialsFromAppDefaults
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"EvernoteCredentials"];
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