@interface MPAssistantSearch
- (id)_audiobooksByName:(id)name;
- (id)_itemsByTitle:(id)title mediaTypes:(int64_t)types;
- (id)_perform;
- (id)_playlistsByDateCreatedOrder:(id)order;
- (id)_songCollectionsWithGroupingType:(int64_t)type searchString:(id)string mediaTypes:(int64_t)types;
- (id)_stationDictionariesWithParent:(unint64_t)parent;
- (id)_stationDictionaryForGenreName:(id)name parent:(unint64_t)parent;
- (id)_stationWithName:(id)name;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSearch

- (id)_stationDictionaryForGenreName:(id)name parent:(unint64_t)parent
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(MPAssistantSearch *)self _stationDictionariesWithParent:parent];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v7 objectForKey:@"children"];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    v24 = v7;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 objectForKey:@"name"];
        v15 = [v14 compare:nameCopy options:129];

        if (!v15)
        {
          v20 = [v13 objectForKey:@"station-dict"];
LABEL_15:
          v21 = v20;
          v7 = v24;
          goto LABEL_16;
        }

        if (parent)
        {
          v16 = [v13 objectForKey:@"children"];
          v17 = [v16 count];

          if (!v17)
          {
            continue;
          }
        }

        v18 = [v13 objectForKey:@"id"];
        unsignedLongLongValue = [v18 unsignedLongLongValue];

        v20 = [(MPAssistantSearch *)self _stationDictionaryForGenreName:nameCopy parent:unsignedLongLongValue];
        if (v20)
        {
          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v21 = 0;
      v7 = v24;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_stationDictionariesWithParent:(unint64_t)parent
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2334F3E68;
  v17 = sub_2334F3E78;
  v18 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = [objc_alloc(MEMORY[0x277D44138]) initWithParentNodeID:parent];
  if (v5)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2334F3E80;
    v10[3] = &unk_2789DB5F8;
    v12 = &v13;
    v6 = v4;
    v11 = v6;
    [v5 startWithCompletionHandler:v10];
    v7 = dispatch_time(0, 30000000000);
    dispatch_semaphore_wait(v6, v7);

    v4 = 0;
  }

  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)_stationWithName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy length])
  {
    mEMORY[0x277D44140] = [MEMORY[0x277D44140] sharedModel];
    userStations = [mEMORY[0x277D44140] userStations];
    featuredStations = [mEMORY[0x277D44140] featuredStations];
    v7 = [userStations arrayByAddingObjectsFromArray:featuredStations];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          name = [v12 name];
          [name rangeOfString:nameCopy options:129];
          if (v14)
          {
            v9 = v12;

            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_playlistsByDateCreatedOrder:(id)order
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD5E30];
  v5 = *MEMORY[0x277CD5928];
  orderCopy = order;
  v7 = [v4 predicateWithValue:MEMORY[0x277CBEC38] forProperty:v5];
  v8 = MEMORY[0x277CBEC28];
  v9 = [MEMORY[0x277CD5E30] predicateWithValue:MEMORY[0x277CBEC28] forProperty:*MEMORY[0x277CD5910]];
  v10 = [MEMORY[0x277CD5E30] predicateWithValue:v8 forProperty:*MEMORY[0x277CD5920]];
  v11 = objc_alloc(MEMORY[0x277CD5E38]);
  v12 = [MEMORY[0x277CBEB98] setWithObjects:{v7, v9, v10, 0}];
  v13 = [v11 initWithFilterPredicates:v12];

  v14 = *MEMORY[0x277CD5900];
  v28[0] = *MEMORY[0x277CD5900];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v13 _setOrderingProperties:v15];

  LODWORD(v15) = [orderCopy isEqualToString:@"Descending"];
  if (v15)
  {
    v26 = v14;
    v27 = &unk_2848D8C70;
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v27;
    v18 = &v26;
  }

  else
  {
    v24 = v14;
    v25 = &unk_2848D8C88;
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v25;
    v18 = &v24;
  }

  v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
  [v13 _setOrderingDirectionMappings:v19];

  [v13 setUseSections:0];
  [v13 setGroupingType:6];
  [v13 setIgnoreSystemFilterPredicates:1];
  [v13 setShouldIncludeNonLibraryEntities:1];
  v20 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:self->_userIdentity];
  [v13 setMediaLibrary:v20];

  collections = [v13 collections];

  v22 = *MEMORY[0x277D85DE8];

  return collections;
}

- (id)_songCollectionsWithGroupingType:(int64_t)type searchString:(id)string mediaTypes:(int64_t)types
{
  stringCopy = string;
  v9 = [MEMORY[0x277CD5DE0] titlePropertyForGroupingType:type];
  if (v9)
  {
    v10 = MEMORY[0x277CD5E30];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:types];
    v12 = [v10 predicateWithValue:v11 forProperty:*MEMORY[0x277CD57C8]];

    if (stringCopy)
    {
      v13 = [MEMORY[0x277CBEB98] setWithObject:v9];
      v14 = [MEMORY[0x277CD6120] predicateWithSearchString:stringCopy forProperties:v13];
    }

    else
    {
      v14 = 0;
    }

    v16 = objc_alloc(MEMORY[0x277CD5E38]);
    v17 = [MEMORY[0x277CBEB98] setWithObjects:{v12, v14, 0}];
    v18 = [v16 initWithFilterPredicates:v17];

    [v18 setUseSections:0];
    [v18 setGroupingType:type];
    [v18 setIgnoreSystemFilterPredicates:1];
    [v18 setShouldIncludeNonLibraryEntities:1];
    v19 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:self->_userIdentity];
    [v18 setMediaLibrary:v19];

    collections = [v18 collections];
  }

  else
  {
    collections = [MEMORY[0x277CBEA60] array];
  }

  return collections;
}

- (id)_itemsByTitle:(id)title mediaTypes:(int64_t)types
{
  v6 = MEMORY[0x277CD5E30];
  v7 = MEMORY[0x277CCABB0];
  titleCopy = title;
  v9 = [v7 numberWithInteger:types];
  v10 = [v6 predicateWithValue:v9 forProperty:*MEMORY[0x277CD57C8]];

  v11 = [MEMORY[0x277CBEB58] setWithObject:*MEMORY[0x277CD58B8]];
  v12 = [MEMORY[0x277CD6120] predicateWithSearchString:titleCopy forProperties:v11];

  v13 = objc_alloc(MEMORY[0x277CD5E38]);
  v14 = [MEMORY[0x277CBEB98] setWithObjects:{v10, v12, 0}];
  v15 = [v13 initWithFilterPredicates:v14];

  [v15 setUseSections:0];
  [v15 setIgnoreSystemFilterPredicates:1];
  [v15 setShouldIncludeNonLibraryEntities:1];
  v16 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:self->_userIdentity];
  [v15 setMediaLibrary:v16];

  items = [v15 items];

  return items;
}

- (id)_audiobooksByName:(id)name
{
  if (name)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = *MEMORY[0x277CD56D0];
    nameCopy = name;
    v7 = [v4 setWithObject:v5];
    v8 = [MEMORY[0x277CD6120] predicateWithSearchString:nameCopy forProperties:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc(MEMORY[0x277CD5E38]);
  v10 = [MEMORY[0x277CBEB98] setWithObject:v8];
  v11 = [v9 initWithFilterPredicates:v10];

  [v11 setUseSections:0];
  [v11 setGroupingType:10];
  [v11 setIgnoreSystemFilterPredicates:1];
  [v11 setShouldIncludeNonLibraryEntities:1];
  v12 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:self->_userIdentity];
  [v11 setMediaLibrary:v12];

  collections = [v11 collections];

  return collections;
}

- (id)_perform
{
  v44 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  maxResults = [(SAMPSearch *)self maxResults];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = MEMORY[0x277CBEB98];
  searchTypes = [(SAMPSearch *)self searchTypes];
  v8 = [v6 setWithArray:searchTypes];

  v9 = [v8 containsObject:*MEMORY[0x277D486D8]];
  constraints = [(SAMPSearch *)self constraints];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2334F4D58;
  v35[3] = &unk_2789DB580;
  v11 = v5;
  v36 = v11;
  selfCopy = self;
  v39 = v9;
  v12 = v8;
  v38 = v12;
  [constraints enumerateObjectsUsingBlock:v35];

  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = sub_2334F57EC;
  v32 = &unk_2789DB5D0;
  v13 = array;
  v33 = v13;
  v34 = maxResults;
  [v11 enumerateObjectsUsingBlock:&v29];
  if ([v13 count] || !sub_2335055C0(self->_userIdentity))
  {
    v20 = objc_alloc_init(MEMORY[0x277D475B0]);
    [v20 setResults:v13];
    if (![(NSString *)self->_requestAceHash length])
    {
      aceId = [(MPAssistantSearch *)self aceId];
      v22 = sub_233505670(@"Search", aceId);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v22;
    }

    v24 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_requestAceHash;
      v26 = [v13 count];
      *buf = 138543618;
      v41 = v25;
      v42 = 2048;
      v43 = v26;
      _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: found %ld results.", buf, 0x16u);
    }
  }

  else
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      aceId2 = [(MPAssistantSearch *)self aceId];
      v15 = sub_233505670(@"Search", aceId2);
      v16 = self->_requestAceHash;
      self->_requestAceHash = v15;
    }

    v17 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = self->_requestAceHash;
      *buf = 138543362;
      v41 = v18;
      _os_log_impl(&dword_2334D9000, v17, OS_LOG_TYPE_ERROR, "Search (search) <%{public}@>: still loading library", buf, 0xCu);
    }

    v19 = objc_alloc(MEMORY[0x277D47208]);
    v20 = [v19 initWithErrorCode:*MEMORY[0x277D48630]];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)performWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantSearch *)self aceId];
    v6 = sub_233505670(@"Search", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Search (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  [(MPAssistantSearch *)self _prepare];
  v10 = self->_requestAceHash;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2334F5AA8;
  v13[3] = &unk_2789DB648;
  v13[4] = self;
  v14 = completionCopy;
  v11 = completionCopy;
  sub_233506A24(@"Search", v10, 0, 0, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end