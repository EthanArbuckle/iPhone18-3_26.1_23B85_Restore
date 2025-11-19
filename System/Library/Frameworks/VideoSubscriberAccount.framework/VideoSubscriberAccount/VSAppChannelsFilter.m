@interface VSAppChannelsFilter
- (NSArray)personalAppDescriptions;
- (VSAppChannelsFilter)init;
- (void)_updateAdamIDs;
- (void)setAllChannelMappings:(id)a3;
- (void)setPersonalChannelIDs:(id)a3;
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
        v9 = [v8 appAdamID];
        [v3 addObject:v9];
        v10 = [(VSAppChannelsFilter *)self personalChannelIDs];
        if ([v10 count])
        {
          v11 = MEMORY[0x277CBEB98];
          v12 = [v8 channelIDs];
          v13 = [v11 setWithArray:v12];

          if ([v10 intersectsSet:v13])
          {
            [v16 addObject:v9];
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

- (void)setPersonalChannelIDs:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The personalChannelIDs parameter must not be nil."];
    v4 = 0;
  }

  if (self->_personalChannelIDs != v4)
  {
    v5 = [(NSSet *)v7 copy];
    personalChannelIDs = self->_personalChannelIDs;
    self->_personalChannelIDs = v5;

    [(VSAppChannelsFilter *)self _updateAdamIDs];
    v4 = v7;
  }
}

- (void)setAllChannelMappings:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The allChannelMappings parameter must not be nil."];
    v4 = 0;
  }

  if (self->_allChannelMappings != v4)
  {
    v5 = [(NSArray *)v7 copy];
    allChannelMappings = self->_allChannelMappings;
    self->_allChannelMappings = v5;

    [(VSAppChannelsFilter *)self _updateAdamIDs];
    v4 = v7;
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
  v4 = [(VSAppChannelsFilter *)self personalChannelIDs];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(VSAppChannelsFilter *)self appsByChannelID];
        v11 = [v10 objectForKey:v9];

        if (v11)
        {
          [v3 addObjectsFromArray:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 allObjects];

  return v12;
}

@end