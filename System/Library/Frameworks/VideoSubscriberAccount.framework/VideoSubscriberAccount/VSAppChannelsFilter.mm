@interface VSAppChannelsFilter
- (NSArray)personalAppDescriptions;
- (VSAppChannelsFilter)init;
- (void)_updateAdamIDs;
- (void)setAllChannelMappings:(id)mappings;
- (void)setPersonalChannelIDs:(id)ds;
@end

@implementation VSAppChannelsFilter

- (VSAppChannelsFilter)init
{
  v11.receiver = self;
  v11.super_class = VSAppChannelsFilter;
  v2 = [(VSAppChannelsFilter *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB98]);
    personalChannelIDs = v2->_personalChannelIDs;
    v2->_personalChannelIDs = v3;

    allChannelMappings = v2->_allChannelMappings;
    v2->_allChannelMappings = MEMORY[0x277CBEBF8];

    v6 = objc_alloc_init(MEMORY[0x277CBEB98]);
    genericAppAdamIDs = v2->_genericAppAdamIDs;
    v2->_genericAppAdamIDs = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB98]);
    personalAppAdamIDs = v2->_personalAppAdamIDs;
    v2->_personalAppAdamIDs = v8;
  }

  return v2;
}

- (void)_updateAdamIDs
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(VSAppChannelsFilter *)self allChannelMappings];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        appAdamID = [v8 appAdamID];
        [v3 addObject:appAdamID];
        personalChannelIDs = [(VSAppChannelsFilter *)self personalChannelIDs];
        if ([personalChannelIDs count])
        {
          v11 = MEMORY[0x277CBEB98];
          channelIDs = [v8 channelIDs];
          v13 = [v11 setWithArray:channelIDs];

          if ([personalChannelIDs intersectsSet:v13])
          {
            [v16 addObject:appAdamID];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = v16;
  if ([v16 count])
  {
    v15 = v16;

    v3 = v15;
  }

  [(VSAppChannelsFilter *)self setPersonalAppAdamIDs:v16, v16];
  [(VSAppChannelsFilter *)self setGenericAppAdamIDs:v3];
}

- (void)setPersonalChannelIDs:(id)ds
{
  dsCopy = ds;
  v7 = dsCopy;
  if (!dsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The personalChannelIDs parameter must not be nil."];
    dsCopy = 0;
  }

  if (self->_personalChannelIDs != dsCopy)
  {
    v5 = [(NSSet *)v7 copy];
    personalChannelIDs = self->_personalChannelIDs;
    self->_personalChannelIDs = v5;

    [(VSAppChannelsFilter *)self _updateAdamIDs];
    dsCopy = v7;
  }
}

- (void)setAllChannelMappings:(id)mappings
{
  mappingsCopy = mappings;
  v7 = mappingsCopy;
  if (!mappingsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The allChannelMappings parameter must not be nil."];
    mappingsCopy = 0;
  }

  if (self->_allChannelMappings != mappingsCopy)
  {
    v5 = [(NSArray *)v7 copy];
    allChannelMappings = self->_allChannelMappings;
    self->_allChannelMappings = v5;

    [(VSAppChannelsFilter *)self _updateAdamIDs];
    mappingsCopy = v7;
  }
}

- (NSArray)personalAppDescriptions
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  personalChannelIDs = [(VSAppChannelsFilter *)self personalChannelIDs];
  v5 = [personalChannelIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(personalChannelIDs);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        appsByChannelID = [(VSAppChannelsFilter *)self appsByChannelID];
        v11 = [appsByChannelID objectForKey:v9];

        if (v11)
        {
          [v3 addObjectsFromArray:v11];
        }
      }

      v6 = [personalChannelIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

@end