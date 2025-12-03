@interface AVTPuppetStore
+ (id)createPuppetRecords;
- (AVTPuppetStore)initWithEnvironment:(id)environment;
- (id)allAvatarPuppetsExcluding:(id)excluding error:(id *)error;
- (id)allAvatarPuppetsWithError:(id *)error;
- (id)allPuppetRecords;
- (id)avatarPuppetsForFetchRequest:(id)request error:(id *)error;
- (id)avatarsWithIdentifiers:(id)identifiers error:(id *)error;
- (id)primaryAvatarPuppet;
- (void)loadPuppetRecordsIfNeeded;
@end

@implementation AVTPuppetStore

- (AVTPuppetStore)initWithEnvironment:(id)environment
{
  v4.receiver = self;
  v4.super_class = AVTPuppetStore;
  return [(AVTPuppetStore *)&v4 init];
}

- (id)allPuppetRecords
{
  [(AVTPuppetStore *)self loadPuppetRecordsIfNeeded];
  puppetRecords = [(AVTPuppetStore *)self puppetRecords];
  v4 = [puppetRecords copy];

  return v4;
}

- (void)loadPuppetRecordsIfNeeded
{
  puppetRecords = [(AVTPuppetStore *)self puppetRecords];

  if (!puppetRecords)
  {
    createPuppetRecords = [objc_opt_class() createPuppetRecords];
    [(AVTPuppetStore *)self setPuppetRecords:createPuppetRecords];
  }
}

+ (id)createPuppetRecords
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  animojiNames = [MEMORY[0x277CF04A8] animojiNames];
  v4 = [animojiNames countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(animojiNames);
        }

        v8 = [[AVTAvatarPuppetRecord alloc] initWithPuppetName:*(*(&v11 + 1) + 8 * i)];
        [array addObject:v8];
      }

      v5 = [animojiNames countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)avatarPuppetsForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  [(AVTPuppetStore *)self loadPuppetRecordsIfNeeded];
  criteria = [requestCopy criteria];
  v8 = MEMORY[0x277CBEBF8];
  if (criteria <= 2)
  {
    if ((criteria - 1) >= 2)
    {
      if (criteria)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    identifiers = [requestCopy identifiers];
    v10 = [(AVTPuppetStore *)self avatarsWithIdentifiers:identifiers error:error];
LABEL_9:
    v8 = v10;

    goto LABEL_14;
  }

  if ((criteria - 6) < 2)
  {
    identifiers = [requestCopy excludingIdentifiers];
    v10 = [(AVTPuppetStore *)self allAvatarPuppetsExcluding:identifiers error:error];
    goto LABEL_9;
  }

  if (criteria == 5)
  {
    primaryAvatarPuppet = [(AVTPuppetStore *)self primaryAvatarPuppet];
    goto LABEL_13;
  }

  if (criteria == 3)
  {
LABEL_11:
    primaryAvatarPuppet = [(AVTPuppetStore *)self allAvatarPuppetsWithError:error];
LABEL_13:
    v8 = primaryAvatarPuppet;
  }

LABEL_14:

  return v8;
}

- (id)avatarsWithIdentifiers:(id)identifiers error:(id *)error
{
  errorCopy = error;
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = identifiersCopy;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        puppetRecords = [(AVTPuppetStore *)self puppetRecords];
        v12 = [AVTAvatarPuppetRecord matchingIdentifierTest:v10];
        v13 = [puppetRecords indexOfObjectPassingTest:v12];

        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v20 addObject:v10];
        }

        else
        {
          puppetRecords2 = [(AVTPuppetStore *)self puppetRecords];
          v15 = [puppetRecords2 objectAtIndexedSubscript:v13];
          [v21 addObject:v15];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  if ([v21 count])
  {
    v16 = [v21 copy];
  }

  else if (errorCopy)
  {
    [AVTError errorWithCode:404 userInfo:0];
    *errorCopy = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)allAvatarPuppetsExcluding:(id)excluding error:(id *)error
{
  excludingCopy = excluding;
  puppetRecords = [(AVTPuppetStore *)self puppetRecords];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__AVTPuppetStore_allAvatarPuppetsExcluding_error___block_invoke;
  v14[3] = &unk_278CFA3E0;
  v8 = excludingCopy;
  v15 = v8;
  v9 = [puppetRecords indexesOfObjectsPassingTest:v14];

  puppetRecords2 = [(AVTPuppetStore *)self puppetRecords];
  v11 = [puppetRecords2 objectsAtIndexes:v9];

  if ([v11 count])
  {
    v12 = [v11 copy];
  }

  else if (error)
  {
    [AVTError errorWithCode:404 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL __50__AVTPuppetStore_allAvatarPuppetsExcluding_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 indexOfObject:v3] == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (id)allAvatarPuppetsWithError:(id *)error
{
  puppetRecords = [(AVTPuppetStore *)self puppetRecords];
  v4 = [puppetRecords copy];

  return v4;
}

- (id)primaryAvatarPuppet
{
  v11[1] = *MEMORY[0x277D85DE8];
  puppetRecords = [(AVTPuppetStore *)self puppetRecords];
  v4 = [puppetRecords count];

  if (v4)
  {
    puppetRecords2 = [(AVTPuppetStore *)self puppetRecords];
    firstObject = [puppetRecords2 firstObject];
    v7 = [firstObject copy];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end