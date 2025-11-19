@interface AVTPuppetStore
+ (id)createPuppetRecords;
- (AVTPuppetStore)initWithEnvironment:(id)a3;
- (id)allAvatarPuppetsExcluding:(id)a3 error:(id *)a4;
- (id)allAvatarPuppetsWithError:(id *)a3;
- (id)allPuppetRecords;
- (id)avatarPuppetsForFetchRequest:(id)a3 error:(id *)a4;
- (id)avatarsWithIdentifiers:(id)a3 error:(id *)a4;
- (id)primaryAvatarPuppet;
- (void)loadPuppetRecordsIfNeeded;
@end

@implementation AVTPuppetStore

- (AVTPuppetStore)initWithEnvironment:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVTPuppetStore;
  return [(AVTPuppetStore *)&v4 init];
}

- (id)allPuppetRecords
{
  [(AVTPuppetStore *)self loadPuppetRecordsIfNeeded];
  v3 = [(AVTPuppetStore *)self puppetRecords];
  v4 = [v3 copy];

  return v4;
}

- (void)loadPuppetRecordsIfNeeded
{
  v3 = [(AVTPuppetStore *)self puppetRecords];

  if (!v3)
  {
    v4 = [objc_opt_class() createPuppetRecords];
    [(AVTPuppetStore *)self setPuppetRecords:v4];
  }
}

+ (id)createPuppetRecords
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [MEMORY[0x277CF04A8] animojiNames];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [[AVTAvatarPuppetRecord alloc] initWithPuppetName:*(*(&v11 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)avatarPuppetsForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(AVTPuppetStore *)self loadPuppetRecordsIfNeeded];
  v7 = [v6 criteria];
  v8 = MEMORY[0x277CBEBF8];
  if (v7 <= 2)
  {
    if ((v7 - 1) >= 2)
    {
      if (v7)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v9 = [v6 identifiers];
    v10 = [(AVTPuppetStore *)self avatarsWithIdentifiers:v9 error:a4];
LABEL_9:
    v8 = v10;

    goto LABEL_14;
  }

  if ((v7 - 6) < 2)
  {
    v9 = [v6 excludingIdentifiers];
    v10 = [(AVTPuppetStore *)self allAvatarPuppetsExcluding:v9 error:a4];
    goto LABEL_9;
  }

  if (v7 == 5)
  {
    v11 = [(AVTPuppetStore *)self primaryAvatarPuppet];
    goto LABEL_13;
  }

  if (v7 == 3)
  {
LABEL_11:
    v11 = [(AVTPuppetStore *)self allAvatarPuppetsWithError:a4];
LABEL_13:
    v8 = v11;
  }

LABEL_14:

  return v8;
}

- (id)avatarsWithIdentifiers:(id)a3 error:(id *)a4
{
  v19 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
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
        v11 = [(AVTPuppetStore *)self puppetRecords];
        v12 = [AVTAvatarPuppetRecord matchingIdentifierTest:v10];
        v13 = [v11 indexOfObjectPassingTest:v12];

        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v20 addObject:v10];
        }

        else
        {
          v14 = [(AVTPuppetStore *)self puppetRecords];
          v15 = [v14 objectAtIndexedSubscript:v13];
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

  else if (v19)
  {
    [AVTError errorWithCode:404 userInfo:0];
    *v19 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)allAvatarPuppetsExcluding:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AVTPuppetStore *)self puppetRecords];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__AVTPuppetStore_allAvatarPuppetsExcluding_error___block_invoke;
  v14[3] = &unk_278CFA3E0;
  v8 = v6;
  v15 = v8;
  v9 = [v7 indexesOfObjectsPassingTest:v14];

  v10 = [(AVTPuppetStore *)self puppetRecords];
  v11 = [v10 objectsAtIndexes:v9];

  if ([v11 count])
  {
    v12 = [v11 copy];
  }

  else if (a4)
  {
    [AVTError errorWithCode:404 userInfo:0];
    *a4 = v12 = 0;
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

- (id)allAvatarPuppetsWithError:(id *)a3
{
  v3 = [(AVTPuppetStore *)self puppetRecords];
  v4 = [v3 copy];

  return v4;
}

- (id)primaryAvatarPuppet
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(AVTPuppetStore *)self puppetRecords];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AVTPuppetStore *)self puppetRecords];
    v6 = [v5 firstObject];
    v7 = [v6 copy];
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