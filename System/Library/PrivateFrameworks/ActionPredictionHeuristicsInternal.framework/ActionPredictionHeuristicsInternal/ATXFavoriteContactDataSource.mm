@interface ATXFavoriteContactDataSource
+ (id)_entryToDict:(id)dict device:(id)device;
- (ATXFavoriteContactDataSource)initWithDevice:(id)device;
- (void)favoritesWithContacts:(id)contacts callback:(id)callback;
@end

@implementation ATXFavoriteContactDataSource

- (ATXFavoriteContactDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXFavoriteContactDataSource;
  v6 = [(ATXFavoriteContactDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)favoritesWithContacts:(id)contacts callback:(id)callback
{
  contactsCopy = contacts;
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA368))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__14;
    v17 = __Block_byref_object_dispose__14;
    v18 = 0;
    device = self->_device;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__ATXFavoriteContactDataSource_favoritesWithContacts_callback___block_invoke;
    v9[3] = &unk_278C3D488;
    v10 = contactsCopy;
    selfCopy = self;
    v12 = &v13;
    [(ATXHeuristicDevice *)device accessFavoriteContacts:v9];
    callbackCopy[2](callbackCopy, v14[5], 0);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    callbackCopy[2](callbackCopy, MEMORY[0x277CBEBF8], 0);
  }
}

void __63__ATXFavoriteContactDataSource_favoritesWithContacts_callback___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        v9 = 0;
        do
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v3 entriesForContact:*(*(&v27 + 1) + 8 * v9)];
          if ([v10 count])
          {
            [v4 addObjectsFromArray:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = [v3 entries];
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [ATXFavoriteContactDataSource _entryToDict:*(*(&v23 + 1) + 8 * v16) device:*(*(a1 + 40) + 8), v23];
        if (v17)
        {
          [v11 addObject:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  v18 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    __63__ATXFavoriteContactDataSource_favoritesWithContacts_callback___block_invoke_cold_1(v11, v18);
  }

  v19 = [v11 copy];
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)_entryToDict:(id)dict device:(id)device
{
  deviceCopy = device;
  dictCopy = dict;
  v7 = objc_opt_new();
  v8 = [deviceCopy wrap:dictCopy];
  [v7 setObject:v8 forKeyedSubscript:@"CNFavoritesEntry"];

  name = [dictCopy name];
  [v7 setObject:name forKeyedSubscript:@"name"];

  value = [dictCopy value];
  [v7 setObject:value forKeyedSubscript:@"handle"];

  actionType = [dictCopy actionType];
  [v7 setObject:actionType forKeyedSubscript:@"actionType"];

  bundleIdentifier = [dictCopy bundleIdentifier];
  [v7 setObject:bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];

  contactProperty = [dictCopy contactProperty];

  contact = [contactProperty contact];

  if (contact)
  {
    v15 = [deviceCopy dictContactForCNContact:contact];
    [v7 setObject:v15 forKeyedSubscript:@"contact"];
  }

  return v7;
}

void __63__ATXFavoriteContactDataSource_favoritesWithContacts_callback___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_debug_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_DEBUG, "Found %lu favorite(s) for query", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end