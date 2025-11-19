@interface MPAssistantSearch
- (id)_audiobooksByName:(id)a3;
- (id)_itemsByTitle:(id)a3 mediaTypes:(int64_t)a4;
- (id)_perform;
- (id)_playlistsByDateCreatedOrder:(id)a3;
- (id)_songCollectionsWithGroupingType:(int64_t)a3 searchString:(id)a4 mediaTypes:(int64_t)a5;
- (id)_stationDictionariesWithParent:(unint64_t)a3;
- (id)_stationDictionaryForGenreName:(id)a3 parent:(unint64_t)a4;
- (id)_stationWithName:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantSearch

- (id)_stationDictionaryForGenreName:(id)a3 parent:(unint64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(MPAssistantSearch *)self _stationDictionariesWithParent:a4];
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
        v15 = [v14 compare:v6 options:129];

        if (!v15)
        {
          v20 = [v13 objectForKey:@"station-dict"];
LABEL_15:
          v21 = v20;
          v7 = v24;
          goto LABEL_16;
        }

        if (a4)
        {
          v16 = [v13 objectForKey:@"children"];
          v17 = [v16 count];

          if (!v17)
          {
            continue;
          }
        }

        v18 = [v13 objectForKey:@"id"];
        v19 = [v18 unsignedLongLongValue];

        v20 = [(MPAssistantSearch *)self _stationDictionaryForGenreName:v6 parent:v19];
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

- (id)_stationDictionariesWithParent:(unint64_t)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2334F3E68;
  v17 = sub_2334F3E78;
  v18 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = [objc_alloc(MEMORY[0x277D44138]) initWithParentNodeID:a3];
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

- (id)_stationWithName:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x277D44140] sharedModel];
    v5 = [v4 userStations];
    v6 = [v4 featuredStations];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];

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
          v13 = [v12 name];
          [v13 rangeOfString:v3 options:129];
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

- (id)_playlistsByDateCreatedOrder:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD5E30];
  v5 = *MEMORY[0x277CD5928];
  v6 = a3;
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

  LODWORD(v15) = [v6 isEqualToString:@"Descending"];
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

  v21 = [v13 collections];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_songCollectionsWithGroupingType:(int64_t)a3 searchString:(id)a4 mediaTypes:(int64_t)a5
{
  v8 = a4;
  v9 = [MEMORY[0x277CD5DE0] titlePropertyForGroupingType:a3];
  if (v9)
  {
    v10 = MEMORY[0x277CD5E30];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    v12 = [v10 predicateWithValue:v11 forProperty:*MEMORY[0x277CD57C8]];

    if (v8)
    {
      v13 = [MEMORY[0x277CBEB98] setWithObject:v9];
      v14 = [MEMORY[0x277CD6120] predicateWithSearchString:v8 forProperties:v13];
    }

    else
    {
      v14 = 0;
    }

    v16 = objc_alloc(MEMORY[0x277CD5E38]);
    v17 = [MEMORY[0x277CBEB98] setWithObjects:{v12, v14, 0}];
    v18 = [v16 initWithFilterPredicates:v17];

    [v18 setUseSections:0];
    [v18 setGroupingType:a3];
    [v18 setIgnoreSystemFilterPredicates:1];
    [v18 setShouldIncludeNonLibraryEntities:1];
    v19 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:self->_userIdentity];
    [v18 setMediaLibrary:v19];

    v15 = [v18 collections];
  }

  else
  {
    v15 = [MEMORY[0x277CBEA60] array];
  }

  return v15;
}

- (id)_itemsByTitle:(id)a3 mediaTypes:(int64_t)a4
{
  v6 = MEMORY[0x277CD5E30];
  v7 = MEMORY[0x277CCABB0];
  v8 = a3;
  v9 = [v7 numberWithInteger:a4];
  v10 = [v6 predicateWithValue:v9 forProperty:*MEMORY[0x277CD57C8]];

  v11 = [MEMORY[0x277CBEB58] setWithObject:*MEMORY[0x277CD58B8]];
  v12 = [MEMORY[0x277CD6120] predicateWithSearchString:v8 forProperties:v11];

  v13 = objc_alloc(MEMORY[0x277CD5E38]);
  v14 = [MEMORY[0x277CBEB98] setWithObjects:{v10, v12, 0}];
  v15 = [v13 initWithFilterPredicates:v14];

  [v15 setUseSections:0];
  [v15 setIgnoreSystemFilterPredicates:1];
  [v15 setShouldIncludeNonLibraryEntities:1];
  v16 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:self->_userIdentity];
  [v15 setMediaLibrary:v16];

  v17 = [v15 items];

  return v17;
}

- (id)_audiobooksByName:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = *MEMORY[0x277CD56D0];
    v6 = a3;
    v7 = [v4 setWithObject:v5];
    v8 = [MEMORY[0x277CD6120] predicateWithSearchString:v6 forProperties:v7];
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

  v13 = [v11 collections];

  return v13;
}

- (id)_perform
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SAMPSearch *)self maxResults];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = MEMORY[0x277CBEB98];
  v7 = [(SAMPSearch *)self searchTypes];
  v8 = [v6 setWithArray:v7];

  v9 = [v8 containsObject:*MEMORY[0x277D486D8]];
  v10 = [(SAMPSearch *)self constraints];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2334F4D58;
  v35[3] = &unk_2789DB580;
  v11 = v5;
  v36 = v11;
  v37 = self;
  v39 = v9;
  v12 = v8;
  v38 = v12;
  [v10 enumerateObjectsUsingBlock:v35];

  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = sub_2334F57EC;
  v32 = &unk_2789DB5D0;
  v13 = v3;
  v33 = v13;
  v34 = v4;
  [v11 enumerateObjectsUsingBlock:&v29];
  if ([v13 count] || !sub_2335055C0(self->_userIdentity))
  {
    v20 = objc_alloc_init(MEMORY[0x277D475B0]);
    [v20 setResults:v13];
    if (![(NSString *)self->_requestAceHash length])
    {
      v21 = [(MPAssistantSearch *)self aceId];
      v22 = sub_233505670(@"Search", v21);
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
      v14 = [(MPAssistantSearch *)self aceId];
      v15 = sub_233505670(@"Search", v14);
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

- (void)performWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantSearch *)self aceId];
    v6 = sub_233505670(@"Search", v5);
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
  v14 = v4;
  v11 = v4;
  sub_233506A24(@"Search", v10, 0, 0, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end