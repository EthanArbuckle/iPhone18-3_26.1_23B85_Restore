@interface NMSSHHostConfig
- (NMSSHHostConfig)init;
- (id)arrayByRemovingDuplicateElementsFromArray:(id)a3;
- (id)mergedArray:(id)a3 withArray:(id)a4;
- (void)mergeFrom:(id)a3;
@end

@implementation NMSSHHostConfig

- (void)mergeFrom:(id)a3
{
  v16 = a3;
  v4 = [(NMSSHHostConfig *)self hostPatterns];
  v5 = [v16 hostPatterns];
  v6 = [(NMSSHHostConfig *)self mergedArray:v4 withArray:v5];
  [(NMSSHHostConfig *)self setHostPatterns:v6];

  v7 = [(NMSSHHostConfig *)self hostname];

  if (!v7)
  {
    v8 = [v16 hostname];
    [(NMSSHHostConfig *)self setHostname:v8];
  }

  v9 = [(NMSSHHostConfig *)self user];

  if (!v9)
  {
    v10 = [v16 user];
    [(NMSSHHostConfig *)self setUser:v10];
  }

  v11 = [(NMSSHHostConfig *)self port];

  if (!v11)
  {
    v12 = [v16 port];
    [(NMSSHHostConfig *)self setPort:v12];
  }

  v13 = [(NMSSHHostConfig *)self identityFiles];
  v14 = [v16 identityFiles];
  v15 = [(NMSSHHostConfig *)self mergedArray:v13 withArray:v14];
  [(NMSSHHostConfig *)self setIdentityFiles:v15];
}

- (id)mergedArray:(id)a3 withArray:(id)a4
{
  v5 = [a3 arrayByAddingObjectsFromArray:a4];
  v6 = [(NMSSHHostConfig *)self arrayByRemovingDuplicateElementsFromArray:v5];

  return v6;
}

- (id)arrayByRemovingDuplicateElementsFromArray:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v4 containsObject:{v10, v14}] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NMSSHHostConfig)init
{
  v6.receiver = self;
  v6.super_class = NMSSHHostConfig;
  v2 = [(NMSSHHostConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBF8];
    [(NMSSHHostConfig *)v2 setHostPatterns:MEMORY[0x277CBEBF8]];
    [(NMSSHHostConfig *)v3 setIdentityFiles:v4];
  }

  return v3;
}

@end