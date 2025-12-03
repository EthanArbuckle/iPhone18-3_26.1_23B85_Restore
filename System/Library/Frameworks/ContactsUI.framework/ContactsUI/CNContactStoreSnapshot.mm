@interface CNContactStoreSnapshot
- (CNContactStoreDataSource)dataSource;
- (CNContactStoreSnapshot)init;
- (NSArray)indexSections;
- (NSArray)sections;
- (id)_keysToFetch;
- (id)objectIn_contactsAtIndex:(unint64_t)index;
- (unint64_t)countOf_contacts;
- (void)_generateExcerptsInRange:(_NSRange)range;
- (void)_loadAllContacts;
- (void)_loadContactsInRange:(_NSRange)range inBackground:(BOOL)background;
- (void)dealloc;
- (void)prepareAllContacts;
- (void)prepareEnoughContacts;
@end

@implementation CNContactStoreSnapshot

- (void)prepareEnoughContacts
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = 100;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "preparationSize: %ld", &v7, 0xCu);
  }

  contacts = [(CNContactStoreSnapshot *)self contacts];
  v5 = [contacts count];

  if (v5 >= 0x64)
  {
    v6 = 100;
  }

  else
  {
    v6 = v5;
  }

  [(CNContactStoreSnapshot *)self _loadContactsInRange:0 inBackground:v6, 0];
}

- (CNContactStoreSnapshot)init
{
  v16.receiver = self;
  v16.super_class = CNContactStoreSnapshot;
  v2 = [(CNContactStoreSnapshot *)&v16 init];
  v2->_contactsCount = 0x7FFFFFFFFFFFFFFFLL;
  v3 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
  contactsCache = v2->_contactsCache;
  v2->_contactsCache = v3;

  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  identifiersToIndexPath = v2->_identifiersToIndexPath;
  v2->_identifiersToIndexPath = strongToStrongObjectsMapTable;

  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F0CE7398 attributes:0];
  emptyExcerptInstanceMarker = v2->_emptyExcerptInstanceMarker;
  v2->_emptyExcerptInstanceMarker = v7;

  v9 = dispatch_semaphore_create(1);
  cacheAccessSemaphore = v2->_cacheAccessSemaphore;
  v2->_cacheAccessSemaphore = v9;

  v11 = objc_alloc_init(CNContactDataSourceLIFOScheduler);
  summarizationQueue = v2->_summarizationQueue;
  v2->_summarizationQueue = v11;

  weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  summarizationFutures = v2->_summarizationFutures;
  v2->_summarizationFutures = weakObjectsPointerArray;

  return v2;
}

- (unint64_t)countOf_contacts
{
  dataSource = [(CNContactStoreSnapshot *)self dataSource];
  if (self->_contactsCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(CNContactStoreFilter *)self->_filter showsEverything])
    {
      store = [dataSource store];
      v5 = [store unifiedContactCountWithError:0];
      self->_contactsCount = [v5 unsignedIntegerValue];
    }

    else
    {
      [(CNContactStoreSnapshot *)self _loadAllContacts];
    }
  }

  contactsCount = self->_contactsCount;

  return contactsCount;
}

- (CNContactStoreDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)_keysToFetch
{
  array = [MEMORY[0x1E695DF70] array];
  descriptorForRequiredKeys = [MEMORY[0x1E695CD60] descriptorForRequiredKeys];
  [array addObject:descriptorForRequiredKeys];

  dataSource = [(CNContactStoreSnapshot *)self dataSource];
  keysToFetch = [dataSource keysToFetch];

  if (keysToFetch)
  {
    keysToFetch2 = [dataSource keysToFetch];
    [array addObjectsFromArray:keysToFetch2];
  }

  contactFormatter = [dataSource contactFormatter];

  if (contactFormatter)
  {
    contactFormatter2 = [dataSource contactFormatter];
    descriptorForRequiredKeys2 = [contactFormatter2 descriptorForRequiredKeys];
    [array addObject:descriptorForRequiredKeys2];
  }

  if (![array count])
  {
    v11 = +[CNContactViewController descriptorForRequiredKeys];
    [array addObject:v11];
  }

  return array;
}

- (NSArray)sections
{
  selfCopy = self;
  v60 = *MEMORY[0x1E69E9840];
  if (![(CNContactStoreFilter *)self->_filter showsEverything])
  {
    [(CNContactStoreSnapshot *)selfCopy _loadAllContacts];
  }

  if (!selfCopy->_sections)
  {
    null = [MEMORY[0x1E695DFB0] null];
    sections = selfCopy->_sections;
    selfCopy->_sections = null;

    if ([(CNContactStoreFilter *)selfCopy->_filter supportsSections])
    {
      contacts = [(CNContactStoreSnapshot *)selfCopy contacts];
      v6 = [contacts count];

      if (v6 >= 6)
      {
        dataSource = [(CNContactStoreSnapshot *)selfCopy dataSource];
        sectionHeadersDictionary = [dataSource sectionHeadersDictionary];

        dataSource2 = [(CNContactStoreSnapshot *)selfCopy dataSource];
        localizedSectionHeaders = [dataSource2 localizedSectionHeaders];

        dataSource3 = [(CNContactStoreSnapshot *)selfCopy dataSource];
        store = [dataSource3 store];
        dataSource4 = [(CNContactStoreSnapshot *)selfCopy dataSource];
        v12 = [store sectionListOffsetsForSortOrder:objc_msgSend(dataSource4 error:{"sortOrder"), 0}];

        if (v12)
        {
          v49 = selfCopy;
          v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          obj = v12;
          v13 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
          v48 = v12;
          if (v13)
          {
            v14 = v13;
            v15 = 0;
            v54 = *v56;
            v16 = sectionHeadersDictionary;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v56 != v54)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v55 + 1) + 8 * i);
                first = [v18 first];
                v20 = [v16 objectForKeyedSubscript:first];
                v21 = v20;
                v22 = @"#";
                if (v20)
                {
                  v22 = v20;
                }

                v23 = v22;

                sortKey = [(CNContactSection *)v15 sortKey];
                if (first | sortKey && (v25 = sortKey, -[CNContactSection sortKey](v15, "sortKey"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 isEqual:first], v26, v25, !v27))
                {
                  if (v15)
                  {
                    range = [(CNContactSection *)v15 range];
                    range2 = range + v32;
                  }

                  else
                  {
                    range2 = 0;
                  }

                  v33 = [localizedSectionHeaders objectForKeyedSubscript:v23];
                  v34 = v33;
                  if (v33)
                  {
                    v35 = v33;
                  }

                  else
                  {
                    v35 = v23;
                  }

                  v36 = v35;

                  v37 = objc_alloc_init(CNContactSection);
                  [(CNContactSection *)v37 setSortKey:first];
                  [(CNContactSection *)v37 setTitle:v36];
                  [(CNContactSection *)v37 setIdentifier:v23];
                  v38 = v37;

                  [(NSArray *)v50 addObject:v38];
                  v30 = 0;
                  v15 = v38;
                  v16 = sectionHeadersDictionary;
                }

                else
                {
                  range2 = [(CNContactSection *)v15 range];
                  v30 = v29;
                  v15 = v15;
                }

                second = [v18 second];
                integerValue = [second integerValue];

                [(CNContactSection *)v15 setRange:range2, integerValue + v30];
              }

              v14 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
            }

            while (v14);
          }

          else
          {
            v15 = 0;
          }

          selfCopy = v49;
          v41 = v49->_sections;
          v49->_sections = v50;
          v42 = v50;

          v12 = v48;
        }
      }
    }
  }

  v43 = selfCopy->_sections;
  null2 = [MEMORY[0x1E695DFB0] null];
  if (v43 == null2)
  {
    v45 = 0;
  }

  else
  {
    v45 = selfCopy->_sections;
  }

  v46 = v45;

  return v45;
}

- (NSArray)indexSections
{
  selfCopy = self;
  v41 = *MEMORY[0x1E69E9840];
  indexSections = self->_indexSections;
  if (!indexSections)
  {
    sections = [(CNContactStoreSnapshot *)self sections];
    v5 = objc_alloc(MEMORY[0x1E695DEC8]);
    dataSource = [(CNContactStoreSnapshot *)selfCopy dataSource];
    indexSectionsArray = [dataSource indexSectionsArray];
    v8 = [v5 initWithArray:indexSectionsArray copyItems:1];
    v9 = selfCopy->_indexSections;
    selfCopy->_indexSections = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(sections, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = sections;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          identifier = [*(*(&v35 + 1) + 8 * i) identifier];
          [v10 addObject:identifier];
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v13);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = selfCopy;
    v17 = selfCopy->_indexSections;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      v21 = -1;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v31 + 1) + 8 * j);
          identifier2 = [v23 identifier];
          v25 = [v10 containsObject:identifier2];

          v21 += v25;
          [v23 setRange:{v21 & ~(v21 >> 63), 0}];
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v19);
    }

    selfCopy = v30;
    indexSections = v30->_indexSections;
  }

  null = [MEMORY[0x1E695DFB0] null];
  if (indexSections == null)
  {
    v27 = 0;
  }

  else
  {
    v27 = selfCopy->_indexSections;
  }

  v28 = v27;

  return v27;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_summarizationFutures;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = CNContactStoreSnapshot;
  [(CNContactStoreSnapshot *)&v8 dealloc];
}

- (void)prepareAllContacts
{
  contacts = [(CNContactStoreSnapshot *)self contacts];
  -[CNContactStoreSnapshot _loadContactsInRange:inBackground:](self, "_loadContactsInRange:inBackground:", 0, [contacts count], 0);
}

- (void)_loadAllContacts
{
  v126[2] = *MEMORY[0x1E69E9840];
  if (self->_contactsCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    dataSource = [(CNContactStoreSnapshot *)self dataSource];
    _keysToFetch = [(CNContactStoreSnapshot *)self _keysToFetch];
    if ([(CNContactStoreFilter *)self->_filter supportsSections])
    {
      v4 = *MEMORY[0x1E695C3B0];
      v126[0] = *MEMORY[0x1E695C3B8];
      v126[1] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:2];
      v6 = [_keysToFetch arrayByAddingObjectsFromArray:v5];

      _keysToFetch = v6;
    }

    if ([(CNContactStoreFilter *)self->_filter limitedAccessFilterMode]== 2)
    {
      v7 = *MEMORY[0x1E695C208];
      v125[0] = *MEMORY[0x1E695C330];
      v125[1] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:2];
      v9 = [_keysToFetch arrayByAddingObjectsFromArray:v8];

      _keysToFetch = v9;
    }

    v10 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:_keysToFetch];
    [v10 setUnifyResults:{objc_msgSend(dataSource, "fetchUnified")}];
    [v10 setSortOrder:{objc_msgSend(dataSource, "sortOrder")}];
    predicate = [(CNContactStoreFilter *)self->_filter predicate];
    [v10 setPredicate:predicate];

    [v10 setRankSort:{-[CNContactFilter rankSortedResults](self->_filter, "rankSortedResults")}];
    fullTextString = [(CNContactFilter *)self->_filter fullTextString];
    v13 = [fullTextString length] != 0;

    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0;
    v115 = 0;
    v116 = &v115;
    v117 = 0x2020000000;
    v118 = 0x7FFFFFFFFFFFFFFFLL;
    v111 = 0;
    v112 = &v111;
    v113 = 0x2020000000;
    v114 = 0x7FFFFFFFFFFFFFFFLL;
    v107 = 0;
    v108 = &v107;
    v109 = 0x2020000000;
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    v103 = 0;
    v104 = &v103;
    v105 = 0x2020000000;
    v106 = 0;
    v99 = 0;
    v100 = &v99;
    v101 = 0x2020000000;
    v102 = 0;
    v97[0] = 0;
    v97[1] = v97;
    v97[2] = 0x2020000000;
    v98 = 0;
    v95[0] = 0;
    v95[1] = v95;
    v95[2] = 0x2020000000;
    v96 = 0;
    v94[0] = 0;
    v94[1] = v94;
    v94[2] = 0x2020000000;
    v94[3] = 0;
    v92[0] = 0;
    v92[1] = v92;
    v92[2] = 0x3032000000;
    v92[3] = __Block_byref_object_copy__55801;
    v92[4] = __Block_byref_object_dispose__55802;
    v93 = 0;
    v91[0] = 0;
    v91[1] = v91;
    v91[2] = 0x2020000000;
    v91[3] = 0;
    v89[0] = 0;
    v89[1] = v89;
    v89[2] = 0x3032000000;
    v89[3] = __Block_byref_object_copy__55801;
    v89[4] = __Block_byref_object_dispose__55802;
    v90 = 0;
    v83 = 0;
    v84 = &v83;
    v85 = 0x3032000000;
    v86 = __Block_byref_object_copy__55801;
    v87 = __Block_byref_object_dispose__55802;
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    array = [MEMORY[0x1E695DF70] array];
    dataSource2 = [(CNContactStoreSnapshot *)self dataSource];
    sectionHeadersDictionary = [dataSource2 sectionHeadersDictionary];

    dataSource3 = [(CNContactStoreSnapshot *)self dataSource];
    localizedSectionHeaders = [dataSource3 localizedSectionHeaders];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    filter = [(CNContactStoreSnapshot *)self filter];
    limitedAccessIdentifiers = [filter limitedAccessIdentifiers];

    store = [dataSource store];
    v82 = 0;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __42__CNContactStoreSnapshot__loadAllContacts__block_invoke;
    v59[3] = &unk_1E74E5F68;
    v80 = limitedAccessIdentifiers != 0;
    v54 = dataSource;
    v60 = v54;
    v81 = v13;
    v67 = v95;
    v68 = &v115;
    v69 = &v119;
    v70 = v97;
    v71 = &v111;
    v72 = &v99;
    v73 = &v107;
    v74 = &v103;
    v56 = limitedAccessIdentifiers;
    v61 = v56;
    selfCopy = self;
    v75 = v92;
    v76 = v94;
    v77 = v89;
    v55 = array;
    v63 = v55;
    v23 = sectionHeadersDictionary;
    v64 = v23;
    v24 = localizedSectionHeaders;
    v65 = v24;
    v78 = v91;
    v79 = &v83;
    v25 = dictionary;
    v66 = v25;
    v26 = [store enumerateContactsAndMatchInfoWithFetchRequest:v10 error:&v82 usingBlock:v59];
    v57 = v82;

    if (!v26)
    {
      self->_contactsCount = 0;
      v28 = CNUILogContactStoreDataSource();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v124 = v57;
        _os_log_error_impl(&dword_199A75000, v28, OS_LOG_TYPE_ERROR, "Error fetching contacts: %@", buf, 0xCu);
      }

      goto LABEL_33;
    }

    self->_contactsCount = v120[3];
    objc_storeStrong(&self->_contactMatchInfos, dictionary);
    if ([(CNContactStoreFilter *)self->_filter supportsSections])
    {
      if (v120[3] < 6)
      {
        objc_storeStrong(&self->_identifiersToIndexPath, v84[5]);
        null = [MEMORY[0x1E695DFB0] null];
        sections = self->_sections;
        self->_sections = null;

        [MEMORY[0x1E695DFB0] null];
      }

      else
      {
        objc_storeStrong(&self->_sections, array);
        [(CNContactStoreSnapshot *)self indexSections];
      }
      v27 = ;
      indexSections = self->_indexSections;
      self->_indexSections = v27;
    }

    else
    {
      v29 = *(v100 + 24);
      v30 = v112[3];
      v31 = v116[3];
      v51 = *(v104 + 24);
      v32 = (v29 + v51);
      if (v30 != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++v32;
      }

      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 + 1;
      }

      if (!v33)
      {
        goto LABEL_30;
      }

      obj = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
      contactsCount = self->_contactsCount;
      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = objc_alloc_init(CNContactSection);
        [(CNContactSection *)v34 setIdentifier:@"suggested"];
        v35 = CNContactsUIBundle();
        v36 = [v35 localizedStringForKey:@"SUGGESTIONS_SEARCH_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
        [(CNContactSection *)v34 setTitle:v36];

        [(CNContactSection *)v34 setRange:v116[3], contactsCount - v116[3]];
        contactsCount = v116[3];
        [(NSArray *)obj insertObject:v34 atIndex:0];
      }

      if (v30 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v37 = objc_alloc_init(CNContactSection);
        [(CNContactSection *)v37 setIdentifier:@"marked as known"];
        v38 = CNContactsUIBundle();
        v39 = [v38 localizedStringForKey:@"ACCEPTED_SEARCH_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
        [(CNContactSection *)v37 setTitle:v39];

        [(CNContactSection *)v37 setRange:v112[3], contactsCount - v112[3]];
        contactsCount = v112[3];
        [(NSArray *)obj insertObject:v37 atIndex:0];
      }

      if (v29)
      {
        v40 = objc_alloc_init(CNContactSection);
        [(CNContactSection *)v40 setIdentifier:@"realOther"];
        v41 = CNContactsUIBundle();
        v42 = [v41 localizedStringForKey:@"OTHER_LOCAL_SEARCH_MATCHES_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
        [(CNContactSection *)v40 setTitle:v42];

        [(CNContactSection *)v40 setRange:v108[3], contactsCount - v108[3]];
        contactsCount = v108[3];
        [(NSArray *)obj insertObject:v40 atIndex:0];
      }

      if (v51)
      {
        v43 = objc_alloc_init(CNContactSection);
        [(CNContactSection *)v43 setIdentifier:@"realRelevancePromoted"];
        v44 = CNContactsUIBundle();
        v45 = [v44 localizedStringForKey:@"RELEVANCE_RANKED_SECTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
        [(CNContactSection *)v43 setTitle:v45];

        [(CNContactSection *)v43 setRange:0, contactsCount];
        [(NSArray *)obj insertObject:v43 atIndex:0];
      }

      objc_storeStrong(&self->_sections, obj);
      null2 = [MEMORY[0x1E695DFB0] null];
      v47 = self->_indexSections;
      self->_indexSections = null2;

      indexSections = obj;
    }

LABEL_30:
    if (!v57)
    {
LABEL_34:

      _Block_object_dispose(&v83, 8);
      _Block_object_dispose(v89, 8);

      _Block_object_dispose(v91, 8);
      _Block_object_dispose(v92, 8);

      _Block_object_dispose(v94, 8);
      _Block_object_dispose(v95, 8);
      _Block_object_dispose(v97, 8);
      _Block_object_dispose(&v99, 8);
      _Block_object_dispose(&v103, 8);
      _Block_object_dispose(&v107, 8);
      _Block_object_dispose(&v111, 8);
      _Block_object_dispose(&v115, 8);
      _Block_object_dispose(&v119, 8);

      return;
    }

    v28 = CNUILogContactStoreDataSource();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v124 = v57;
      _os_log_impl(&dword_199A75000, v28, OS_LOG_TYPE_INFO, "Non fatal error during contacts fetching: %@", buf, 0xCu);
    }

LABEL_33:

    goto LABEL_34;
  }
}

void __42__CNContactStoreSnapshot__loadAllContacts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 192) == 1)
  {
    v7 = [*(a1 + 32) filter];
    if ([v7 limitedAccessFilterMode] == 1)
    {
      v8 = *(a1 + 40);
      v9 = [v5 identifier];
      LODWORD(v8) = [v8 containsObject:v9];

      if (!v8)
      {
        goto LABEL_57;
      }
    }

    else
    {
    }

    v10 = [*(a1 + 32) filter];
    if ([v10 limitedAccessFilterMode] == 2)
    {
      v11 = *(a1 + 40);
      v12 = [v5 identifier];
      LOBYTE(v11) = [v11 containsObject:v12];

      if (v11)
      {
        goto LABEL_57;
      }
    }

    else
    {
    }
  }

  v13 = [v5 isCoreRecentsAccepted];
  v14 = [v5 isSuggested];
  v15 = v14;
  if (*(a1 + 193) == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__CNContactStoreSnapshot__loadAllContacts__block_invoke_2;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    v54 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if (v15)
  {
    *(*(*(a1 + 88) + 8) + 24) = 1;
    v16 = *(a1 + 96);
    goto LABEL_16;
  }

  if (v13)
  {
    *(*(*(a1 + 112) + 8) + 24) = 1;
    v16 = *(a1 + 120);
    goto LABEL_16;
  }

  v18 = [v6 relevanceScore];
  if (v18)
  {
    v19 = v18;
    v20 = [v6 relevanceScore];
    v21 = [v20 integerValue];

    if (!v21)
    {
      *(*(*(a1 + 128) + 8) + 24) = 1;
      v16 = *(a1 + 136);
LABEL_16:
      v17 = *(v16 + 8);
      if (*(v17 + 24) == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v17 + 24) = *(*(*(a1 + 104) + 8) + 24);
      }

      goto LABEL_22;
    }
  }

  v22 = [v6 relevanceScore];
  v23 = [v22 integerValue];

  if (v23 >= 1)
  {
    *(*(*(a1 + 144) + 8) + 24) = 1;
  }

LABEL_22:
  if ([*(*(a1 + 48) + 96) supportsSections])
  {
    if ([*(a1 + 32) sortOrder] == 3)
    {
      [v5 sectionForSortingByFamilyName];
    }

    else
    {
      [v5 sectionForSortingByGivenName];
    }
    v24 = ;
    v28 = v24;
    if (v24 | *(*(*(a1 + 152) + 8) + 40) && ([v24 isEqual:?] & 1) == 0)
    {
      if (*(*(*(a1 + 152) + 8) + 40))
      {
        ++*(*(*(a1 + 160) + 8) + 24);
      }

      v29 = objc_alloc_init(CNContactSection);
      v30 = *(*(a1 + 168) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      [*(a1 + 56) addObject:*(*(*(a1 + 168) + 8) + 40)];
      [*(*(*(a1 + 168) + 8) + 40) setRange:{*(*(*(a1 + 104) + 8) + 24), 0}];
      [*(*(*(a1 + 168) + 8) + 40) setSortKey:v28];
      v32 = [*(a1 + 64) objectForKeyedSubscript:v28];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = @"#";
      }

      [*(*(*(a1 + 168) + 8) + 40) setIdentifier:v34];

      v35 = *(a1 + 72);
      v36 = [*(*(*(a1 + 168) + 8) + 40) identifier];
      v37 = [v35 objectForKeyedSubscript:v36];
      v38 = v37;
      if (!v37)
      {
        v38 = [*(*(*(a1 + 168) + 8) + 40) identifier];
      }

      [*(*(*(a1 + 168) + 8) + 40) setTitle:v38];
      if (!v37)
      {
      }

      objc_storeStrong((*(*(a1 + 152) + 8) + 40), v28);
      *(*(*(a1 + 176) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24);
    }

    v39 = [*(*(*(a1 + 168) + 8) + 40) range];
    [*(*(*(a1 + 168) + 8) + 40) range];
    [*(*(*(a1 + 168) + 8) + 40) setRange:{v39, v40 + 1}];
    v41 = [MEMORY[0x1E696AC88] indexPathForItem:*(*(*(a1 + 104) + 8) + 24) - *(*(*(a1 + 176) + 8) + 24) inSection:*(*(*(a1 + 160) + 8) + 24)];

    goto LABEL_52;
  }

  if ([v5 isCoreRecentsAccepted])
  {
    v25 = *(*(*(a1 + 128) + 8) + 24) + *(*(*(a1 + 144) + 8) + 24);
    v26 = *(*(*(a1 + 104) + 8) + 24);
    v27 = *(*(a1 + 120) + 8);
  }

  else
  {
    if (![v5 isSuggested])
    {
      v43 = [v6 relevanceScore];
      if ([v43 integerValue])
      {
        v25 = 0;
      }

      else
      {
        v25 = *(*(*(a1 + 144) + 8) + 24);
      }

      v44 = [v6 relevanceScore];
      v45 = [v44 integerValue];
      v42 = *(*(*(a1 + 104) + 8) + 24);
      if (v45 <= 0)
      {
        v42 -= *(*(*(a1 + 136) + 8) + 24);
      }

      goto LABEL_51;
    }

    v25 = *(*(*(a1 + 128) + 8) + 24) + *(*(*(a1 + 144) + 8) + 24) + *(*(*(a1 + 112) + 8) + 24);
    v26 = *(*(*(a1 + 104) + 8) + 24);
    v27 = *(*(a1 + 96) + 8);
  }

  v42 = v26 - *(v27 + 24);
LABEL_51:
  v41 = [MEMORY[0x1E696AC88] indexPathForItem:v42 inSection:v25];
LABEL_52:
  dispatch_semaphore_wait(*(*(a1 + 48) + 24), 0xFFFFFFFFFFFFFFFFLL);
  NSMapInsert(*(*(a1 + 48) + 16), (*(*(*(a1 + 104) + 8) + 24) + 1), v5);
  v46 = *(*(a1 + 48) + 136);
  v47 = [v5 identifier];
  [v46 setObject:v41 forKey:v47];

  if (*(*(*(a1 + 104) + 8) + 24) <= 6)
  {
    v48 = *(*(*(a1 + 184) + 8) + 40);
    v49 = [MEMORY[0x1E696AC88] indexPathForItem:? inSection:?];
    v50 = [v5 identifier];
    [v48 setObject:v49 forKey:v50];
  }

  dispatch_semaphore_signal(*(*(a1 + 48) + 24));
  if (v6)
  {
    v51 = *(a1 + 80);
    v52 = [v5 identifier];
    [v51 setObject:v6 forKey:v52];
  }

  ++*(*(*(a1 + 104) + 8) + 24);

LABEL_57:
}

void __42__CNContactStoreSnapshot__loadAllContacts__block_invoke_2(uint64_t a1)
{
  v2 = +[CNUIDataCollectionSearchSession currentSession];
  [v2 didFetchResultSuggested:*(a1 + 32)];
}

- (void)_generateExcerptsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  array = [MEMORY[0x1E695DF70] array];
  v32 = objc_opt_new();
  v33 = objc_opt_new();
  dispatch_semaphore_wait(self->_cacheAccessSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (location < location + length)
  {
    v7 = (location + 1);
    do
    {
      v8 = NSMapGet(self->_contactsCache, v7);
      contactMatchInfos = self->_contactMatchInfos;
      identifier = [v8 identifier];
      v11 = [(NSMutableDictionary *)contactMatchInfos objectForKey:identifier];

      if (v11)
      {
        excerpt = [v11 excerpt];
        if (!excerpt || (v13 = excerpt, [v11 excerpt], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "future"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isFinished"), v15, v14, v13, (v16 & 1) == 0))
        {
          identifier2 = [v8 identifier];
          [array addObject:identifier2];

          identifier3 = [v8 identifier];
          [v32 setObject:v8 forKey:identifier3];

          excerpt2 = [v11 excerpt];

          if (!excerpt2)
          {
            v20 = objc_alloc_init(MEMORY[0x1E69967D0]);
            [v11 setExcerpt:v20];
          }

          identifier4 = [v8 identifier];
          [v33 setObject:v11 forKey:identifier4];
        }
      }

      ++v7;
      --length;
    }

    while (length);
  }

  dispatch_semaphore_signal(self->_cacheAccessSemaphore);
  if ([array count])
  {
    summarizer = self->_summarizer;
    if (!summarizer)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695CDC0]);
      v24 = self->_summarizer;
      self->_summarizer = v23;

      summarizer = self->_summarizer;
    }

    v25 = self->_contactMatchInfos;
    dataSource = [(CNContactStoreSnapshot *)self dataSource];
    store = [dataSource store];
    v28 = [(CNContactMatchSummarizer *)summarizer summariesFutureForContactsIdentifiers:array matchInfos:v25 contactStore:store scheduler:self->_summarizationQueue];

    v29 = self->_emptyExcerptInstanceMarker;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __51__CNContactStoreSnapshot__generateExcerptsInRange___block_invoke;
    v34[3] = &unk_1E74E5F20;
    v35 = v33;
    v36 = v29;
    v30 = v29;
    [v28 addSuccessBlock:v34];
    summarizationFutures = [(CNContactStoreSnapshot *)self summarizationFutures];
    [summarizationFutures addPointer:v28];
  }
}

void __51__CNContactStoreSnapshot__generateExcerptsInRange___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__CNContactStoreSnapshot__generateExcerptsInRange___block_invoke_2;
  v4[3] = &unk_1E74E5EF8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __51__CNContactStoreSnapshot__generateExcerptsInRange___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v10 = [v5 objectForKey:a2];
  v7 = [v10 excerpt];
  v8 = [v6 length];
  v9 = v6;
  if (!v8)
  {
    v9 = *(a1 + 40);
  }

  [v7 finishWithResult:v9];
}

- (void)_loadContactsInRange:(_NSRange)range inBackground:(BOOL)background
{
  backgroundCopy = background;
  length = range.length;
  location = range.location;
  selfCopy = self;
  v68 = *MEMORY[0x1E69E9840];
  dataSource = [(CNContactStoreSnapshot *)self dataSource];
  if ([(CNContactStoreFilter *)selfCopy->_filter showsEverything])
  {
    v44 = backgroundCopy;
    v9 = [MEMORY[0x1E695CD58] predicateForPreferredNameInRange:{location, length}];
    v10 = objc_alloc(MEMORY[0x1E695CD78]);
    _keysToFetch = [(CNContactStoreSnapshot *)selfCopy _keysToFetch];
    v12 = [v10 initWithKeysToFetch:_keysToFetch];

    [v12 setSortOrder:{objc_msgSend(dataSource, "sortOrder")}];
    v45 = v9;
    [v12 setPredicate:v9];
    [v12 setUnifyResults:{objc_msgSend(dataSource, "fetchUnified")}];
    array = [MEMORY[0x1E695DF70] array];
    v46 = dataSource;
    store = [dataSource store];
    v63 = 0;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __60__CNContactStoreSnapshot__loadContactsInRange_inBackground___block_invoke;
    v61[3] = &unk_1E74E5ED0;
    v15 = array;
    v62 = v15;
    v42 = v12;
    v41 = [store enumerateContactsAndMatchInfoWithFetchRequest:v12 error:&v63 usingBlock:v61];
    v43 = v63;

    dispatch_semaphore_wait(selfCopy->_cacheAccessSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    sections = [(CNContactStoreSnapshot *)selfCopy sections];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v58;
      v49 = sections;
      v50 = selfCopy;
      v47 = *v58;
      v48 = v17;
      do
      {
        v21 = 0;
        v51 = v19;
        do
        {
          if (*v58 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v57 + 1) + 8 * v21);
          identifiersToIndexPath = selfCopy->_identifiersToIndexPath;
          identifier = [v22 identifier];
          v25 = [(NSMapTable *)identifiersToIndexPath objectForKey:identifier];

          if (v25)
          {
            ++location;
          }

          else
          {
            if (sections)
            {
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v26 = sections;
              v27 = [v26 countByEnumeratingWithState:&v53 objects:v66 count:16];
              v52 = location;
              if (v27)
              {
                v28 = v27;
                v29 = 0;
                v30 = *v54;
                v31 = location;
                while (2)
                {
                  v32 = 0;
                  v33 = v29;
                  v29 += v28;
                  v34 = v31;
                  do
                  {
                    if (*v54 != v30)
                    {
                      objc_enumerationMutation(v26);
                    }

                    [*(*(&v53 + 1) + 8 * v32) range];
                    v31 = v34 - v35;
                    if (v34 < v35)
                    {
                      v31 = v34;
                      v29 = v33;
                      goto LABEL_22;
                    }

                    ++v33;
                    ++v32;
                    v34 -= v35;
                  }

                  while (v28 != v32);
                  v28 = [v26 countByEnumeratingWithState:&v53 objects:v66 count:16];
                  if (v28)
                  {
                    continue;
                  }

                  break;
                }
              }

              else
              {
                v29 = 0;
                v31 = location;
              }

LABEL_22:

              v36 = [MEMORY[0x1E696AC88] indexPathForItem:v31 inSection:v29];
              sections = v49;
              selfCopy = v50;
              location = v52;
              v20 = v47;
              v17 = v48;
            }

            else
            {
              v36 = [MEMORY[0x1E696AC88] indexPathForItem:location inSection:0];
            }

            v37 = selfCopy->_identifiersToIndexPath;
            identifier2 = [v22 identifier];
            [(NSMapTable *)v37 setObject:v36 forKey:identifier2];

            NSMapInsert(selfCopy->_contactsCache, ++location, v22);
            v19 = v51;
          }

          ++v21;
        }

        while (v21 != v19);
        v19 = [v17 countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v19);
    }

    if (v44)
    {
      selfCopy->_currentlyLoadingBackgroundRange.location = 0;
      selfCopy->_currentlyLoadingBackgroundRange.length = 0;
    }

    dispatch_semaphore_signal(selfCopy->_cacheAccessSemaphore);

    v39 = v41;
    if (!v43)
    {
      v39 = 1;
    }

    if ((v39 & 1) == 0)
    {
      v40 = CNUILogContactStoreDataSource();
      dataSource = v46;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v65 = v43;
        _os_log_error_impl(&dword_199A75000, v40, OS_LOG_TYPE_ERROR, "Error fetching contacts: %@", buf, 0xCu);
      }

      goto LABEL_36;
    }

    dataSource = v46;
    if (v43)
    {
      v40 = CNUILogContactStoreDataSource();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v65 = v43;
        _os_log_impl(&dword_199A75000, v40, OS_LOG_TYPE_INFO, "Non fatal error during contacts fetching: %@", buf, 0xCu);
      }

LABEL_36:
    }
  }
}

- (id)objectIn_contactsAtIndex:(unint64_t)index
{
  contactsCount = self->_contactsCount;
  if (contactsCount <= index)
  {
    v19 = 0;
    goto LABEL_45;
  }

  if (index >= 0x32)
  {
    v6 = index - 50;
  }

  else
  {
    v6 = 0;
  }

  if (v6 + 100 <= contactsCount)
  {
    v7 = 100;
  }

  else
  {
    v7 = contactsCount - v6;
  }

  lastRequestedIndex = self->_lastRequestedIndex;
  v9 = v7 + v6;
  v10 = 100;
  if (v7 + v6 + 100 > contactsCount)
  {
    v10 = contactsCount - (v7 + v6);
  }

  if (lastRequestedIndex >= index)
  {
    v9 = 0;
    v10 = 0;
  }

  if ((v6 - 100) >= 0)
  {
    v11 = v6 - 99;
  }

  else
  {
    v11 = 0;
  }

  v12 = contactsCount - v11;
  v13 = v11 + 100 > contactsCount;
  v14 = 100;
  if (v13)
  {
    v14 = v12;
  }

  if (lastRequestedIndex > index)
  {
    v15 = v6;
  }

  else
  {
    v15 = v9;
  }

  if (lastRequestedIndex > index)
  {
    v16 = v14;
  }

  else
  {
    v16 = v10;
  }

  if (lastRequestedIndex > index)
  {
    v17 = v11;
  }

  else
  {
    v17 = v9;
  }

  self->_lastRequestedIndex = index;
  dispatch_semaphore_wait(self->_cacheAccessSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v18 = NSMapGet(self->_contactsCache, (index + 1));
  v19 = v18;
  if (self->_currentlyLoadingBackgroundRange.length)
  {
    v20 = 0;
    if (v18)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v20 = NSMapGet(self->_contactsCache, (v15 + 1)) == 0;
    if (v19)
    {
      goto LABEL_32;
    }
  }

  location = self->_currentlyLoadingBackgroundRange.location;
  if (location > index)
  {
LABEL_32:
    v22 = 0;
    if (!v20)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v22 = self->_currentlyLoadingBackgroundRange.length + location >= index;
  if (v20)
  {
LABEL_33:
    self->_currentlyLoadingBackgroundRange.location = v17;
    self->_currentlyLoadingBackgroundRange.length = v16;
  }

LABEL_34:
  dispatch_semaphore_signal(self->_cacheAccessSemaphore);
  if (v19)
  {
    goto LABEL_37;
  }

  if (v22)
  {
    do
    {
      dispatch_semaphore_wait(self->_cacheAccessSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      v19 = NSMapGet(self->_contactsCache, (index + 1));
      dispatch_semaphore_signal(self->_cacheAccessSemaphore);
    }

    while (!v19);
LABEL_37:
    if (!v20)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  [(CNContactStoreSnapshot *)self _loadContactsInRange:v6 inBackground:v7, 0];
  dispatch_semaphore_wait(self->_cacheAccessSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v19 = NSMapGet(self->_contactsCache, (index + 1));
  dispatch_semaphore_signal(self->_cacheAccessSemaphore);
  if (v20)
  {
LABEL_38:
    v23 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__CNContactStoreSnapshot_objectIn_contactsAtIndex___block_invoke;
    block[3] = &unk_1E74E5EA8;
    block[4] = self;
    block[5] = v17;
    block[6] = v16;
    dispatch_async(v23, block);
  }

LABEL_39:
  if ([(NSMutableDictionary *)self->_contactMatchInfos count])
  {
    contactMatchInfos = self->_contactMatchInfos;
    identifier = [v19 identifier];
    v26 = [(NSMutableDictionary *)contactMatchInfos objectForKey:identifier];

    if (v26)
    {
      excerpt = [v26 excerpt];
      if (!excerpt || (v28 = excerpt, [v26 excerpt], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "future"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isFinished"), v30, v29, v28, (v31 & 1) == 0))
      {
        [(CNContactStoreSnapshot *)self _generateExcerptsInRange:v6, v7];
      }
    }
  }

LABEL_45:

  return v19;
}

@end