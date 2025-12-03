@interface MPModelStoreBrowseResponseParser
- (BOOL)_parseFeaturedContentChild:(id)child isMemberOfChartSet:(BOOL)set insertingResultsToSectionedCollection:(id)collection atSectionIndex:(int64_t)index additionalContentIdentifiers:(id)identifiers allAdditionalContentIdentifiersNeedingLookup:(id)lookup;
- (BOOL)_storeItemMetadataIsAvailableForContentIdentifier:(id)identifier;
- (MPModelStoreBrowseResponseParser)initWithPreviousParser:(id)parser additionalStoreItemMetadataResponse:(id)response options:(id)options sectionBuilder:(id)builder contentItemBuilder:(id)itemBuilder userIdentity:(id)identity;
- (MPModelStoreBrowseResponseParser)initWithRawResponseOutput:(id)output options:(id)options sectionBuilder:(id)builder contentItemBuilder:(id)itemBuilder userIdentity:(id)identity;
- (MPSectionedCollection)additionalContentIdentifiers;
- (MPSectionedCollection)results;
- (NSArray)allAdditionalContentIdentifiersNeedingLookup;
- (id)_storeItemMetadataForContentIdentifier:(id)identifier;
- (void)_parse;
- (void)_parseFeaturedContentStructureModelChildren:(id)children;
- (void)_parseSingleContentListFromPageDataDictionary:(id)dictionary isMemberOfChartSet:(BOOL)set;
- (void)_parseUsingAdditionalContentIdentifiersFromPreviousParser;
- (void)_populateStorePlatformDataResultsFromRawResponseOutputDictionary:(id)dictionary;
- (void)_populateUnavailableContentIdentifiersFromPageDataDictionary:(id)dictionary;
@end

@implementation MPModelStoreBrowseResponseParser

- (BOOL)_storeItemMetadataIsAvailableForContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(MPModelStoreBrowseResponseParser *)self->_previousParser _storeItemMetadataIsAvailableForContentIdentifier:identifierCopy]|| ([(MPStoreItemMetadataResponse *)self->_additionalStoreItemMetadataResponse storeItemMetadataForItemIdentifier:identifierCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = 1;
  }

  else
  {
    v8 = [(NSDictionary *)self->_storePlatformDataResults objectForKey:identifierCopy];
    v6 = _NSIsNSDictionary();
  }

  return v6;
}

- (id)_storeItemMetadataForContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(MPModelStoreBrowseResponseParser *)self->_previousParser _storeItemMetadataForContentIdentifier:identifierCopy];
  if (v5 || ([(MPStoreItemMetadataResponse *)self->_additionalStoreItemMetadataResponse storeItemMetadataForItemIdentifier:identifierCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v8 = [(NSDictionary *)self->_storePlatformDataResults objectForKey:identifierCopy];
    if (_NSIsNSDictionary())
    {
      v9 = v8;
      v6 = [[MPStoreItemMetadata alloc] initWithStorePlatformDictionary:v9];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)_populateUnavailableContentIdentifiersFromPageDataDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"unAvailableContentIds"];
  if (_NSIsNSDictionary())
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__37772;
    v25 = __Block_byref_object_dispose__37773;
    v26 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __97__MPModelStoreBrowseResponseParser__populateUnavailableContentIdentifiersFromPageDataDictionary___block_invoke;
    v20[3] = &unk_1E767CAF8;
    v20[4] = &v21;
    [v5 enumerateKeysAndObjectsUsingBlock:v20];
    v6 = [v22[5] copy];
    unavailableContentIdentifiers = self->_unavailableContentIdentifiers;
    self->_unavailableContentIdentifiers = v6;

    _Block_object_dispose(&v21, 8);
  }

  else if ([v5 conformsToProtocol:&unk_1F1550CB8])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v9 = 0;
    v10 = [v8 countByEnumeratingWithState:&v16 objects:v27 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = MPStoreItemMetadataStringNormalizeStoreIDValue(*(*(&v16 + 1) + 8 * v12));
          if (v13)
          {
            if (!v9)
            {
              v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [v9 addObject:{v13, v16}];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v27 count:16];
      }

      while (v10);
    }

    v14 = [v9 copy];
    v15 = self->_unavailableContentIdentifiers;
    self->_unavailableContentIdentifiers = v14;
  }
}

void __97__MPModelStoreBrowseResponseParser__populateUnavailableContentIdentifiersFromPageDataDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 BOOLValue])
  {
    v6 = MPStoreItemMetadataStringNormalizeStoreIDValue(v11);
    if (v6)
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      if (!v7)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v7 = *(*(*(a1 + 32) + 8) + 40);
      }

      [v7 addObject:v6];
    }
  }
}

- (void)_populateStorePlatformDataResultsFromRawResponseOutputDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"storePlatformData"];
  if (_NSIsNSDictionary())
  {
    allValues = [v5 allValues];
    firstObject = [allValues firstObject];

    if (_NSIsNSDictionary())
    {
      v8 = [firstObject objectForKey:@"results"];
      if (_NSIsNSDictionary())
      {
        v9 = v8;
        v13 = 0;
        v14 = &v13;
        v15 = 0x3032000000;
        v16 = __Block_byref_object_copy__37772;
        v17 = __Block_byref_object_dispose__37773;
        v18 = 0;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __101__MPModelStoreBrowseResponseParser__populateStorePlatformDataResultsFromRawResponseOutputDictionary___block_invoke;
        v12[3] = &unk_1E767CAF8;
        v12[4] = &v13;
        [v9 enumerateKeysAndObjectsUsingBlock:v12];
        v10 = [v14[5] copy];
        storePlatformDataResults = self->_storePlatformDataResults;
        self->_storePlatformDataResults = v10;

        _Block_object_dispose(&v13, 8);
      }
    }
  }
}

void __101__MPModelStoreBrowseResponseParser__populateStorePlatformDataResultsFromRawResponseOutputDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = MPStoreItemMetadataStringNormalizeStoreIDValue(a2);
  if (v5 && _NSIsNSDictionary())
  {
    v6 = v12;
    v7 = *(*(*(a1 + 32) + 8) + 40);
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 32) + 8) + 40);
    }

    v11 = [v6 copy];
    [v7 setObject:v11 forKey:v5];
  }
}

- (void)_parseUsingAdditionalContentIdentifiersFromPreviousParser
{
  results = [(MPModelStoreBrowseResponseParser *)self->_previousParser results];
  additionalContentIdentifiers = [(MPModelStoreBrowseResponseParser *)self->_previousParser additionalContentIdentifiers];
  v5 = objc_alloc_init(MPMutableSectionedCollection);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MPMutableSectionedCollection);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __93__MPModelStoreBrowseResponseParser__parseUsingAdditionalContentIdentifiersFromPreviousParser__block_invoke;
  v28[3] = &unk_1E767CB70;
  v9 = v7;
  v29 = v9;
  v10 = v5;
  v30 = v10;
  v11 = results;
  v31 = v11;
  v12 = additionalContentIdentifiers;
  v32 = v12;
  selfCopy = self;
  v13 = v6;
  v34 = v13;
  v14 = v8;
  v35 = v14;
  [v11 enumerateSectionsUsingBlock:v28];
  if ([v13 count])
  {
    v15 = [MPChangeDetails alloc];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __93__MPModelStoreBrowseResponseParser__parseUsingAdditionalContentIdentifiersFromPreviousParser__block_invoke_4;
    v26 = &unk_1E767CB98;
    v27 = v13;
    v16 = [(MPChangeDetails *)v15 initWithBlock:&v23];
  }

  else
  {
    v16 = 0;
  }

  if ([(MPSectionedCollection *)v10 numberOfSections:v23]< 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = [(MPMutableSectionedCollection *)v10 copy];
  }

  results = self->_results;
  self->_results = v17;

  objc_storeStrong(&self->_changeDetails, v16);
  if ([(MPSectionedCollection *)v9 numberOfSections]< 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = [(MPMutableSectionedCollection *)v9 copy];
  }

  additionalContentIdentifiers = self->_additionalContentIdentifiers;
  self->_additionalContentIdentifiers = v19;

  v21 = [v14 count];
  if (v21)
  {
    v21 = [v14 copy];
  }

  allAdditionalContentIdentifiersNeedingLookup = self->_allAdditionalContentIdentifiersNeedingLookup;
  self->_allAdditionalContentIdentifiersNeedingLookup = v21;
}

void __93__MPModelStoreBrowseResponseParser__parseUsingAdditionalContentIdentifiersFromPreviousParser__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) appendSection:v5];
  [*(a1 + 40) appendSection:v5];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __93__MPModelStoreBrowseResponseParser__parseUsingAdditionalContentIdentifiersFromPreviousParser__block_invoke_2;
  v20[3] = &unk_1E767CB20;
  v6 = *(a1 + 48);
  v21 = *(a1 + 40);
  [v6 enumerateItemsInSectionAtIndex:a3 usingBlock:v20];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = [*(a1 + 40) numberOfItemsInSection:a3];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__MPModelStoreBrowseResponseParser__parseUsingAdditionalContentIdentifiersFromPreviousParser__block_invoke_3;
  v9[3] = &unk_1E767CB48;
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v14 = v17;
  v9[4] = v7;
  v10 = *(a1 + 40);
  v11 = *(a1 + 72);
  v15 = v19;
  v16 = a3;
  v12 = *(a1 + 32);
  v13 = *(a1 + 80);
  [v8 enumerateItemsInSectionAtIndex:a3 usingBlock:v9];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

void __93__MPModelStoreBrowseResponseParser__parseUsingAdditionalContentIdentifiersFromPreviousParser__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v10 = [v4 _storeItemMetadataIsAvailableForContentIdentifier:v3];
    [*(a1 + 56) appendItem:v11];
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_9:
    [*(a1 + 64) addObject:v11];
    *(*(*(a1 + 72) + 8) + 24) = 0;
    goto LABEL_10;
  }

  v5 = [v4 _storeItemMetadataForContentIdentifier:v3];
  if (!v5)
  {
    [*(a1 + 56) appendItem:v11];
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [*(*(a1 + 32) + 104) modelObjectWithStoreItemMetadata:v5 userIdentity:*(*(a1 + 32) + 56)];
  if (v7)
  {
    [*(a1 + 40) appendItem:v7];
    v8 = *(a1 + 48);
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:*(*(*(a1 + 80) + 8) + 24) inSection:*(a1 + 88)];
    [v8 addObject:v9];

    ++*(*(*(a1 + 80) + 8) + 24);
  }

LABEL_10:
}

- (void)_parseSingleContentListFromPageDataDictionary:(id)dictionary isMemberOfChartSet:(BOOL)set
{
  setCopy = set;
  v86 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v53 = [dictionaryCopy objectForKey:@"title"];
  if ((_NSIsNSString() & 1) == 0)
  {

LABEL_5:
    v4 = [dictionaryCopy objectForKey:@"pageTitle"];
    if (_NSIsNSString())
    {
      v53 = v4;
    }

    else
    {
      v53 = 0;
    }

    goto LABEL_9;
  }

  if (!v53)
  {
    goto LABEL_5;
  }

LABEL_9:
  v5 = [dictionaryCopy objectForKey:@"seeAllUrl"];
  if (_NSIsNSString())
  {
    v51 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  }

  else
  {
    v51 = 0;
  }

  v57 = objc_alloc_init(MPModelStoreBrowseSectionUniformContentItemTypeResolver);
  v52 = [dictionaryCopy objectForKey:@"adamIds"];
  if (!_NSIsNSArray())
  {
    v55 = 0;
    v56 = 0;
    v8 = 0;
    goto LABEL_43;
  }

  v6 = v52;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v78 objects:v85 count:16];
  if (!v7)
  {
    v55 = 0;
    v56 = 0;
    v8 = 0;
    goto LABEL_42;
  }

  v55 = 0;
  v56 = 0;
  v8 = 0;
  v9 = *v79;
  v10 = 1;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v79 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = MPStoreItemMetadataStringNormalizeStoreIDValue(*(*(&v78 + 1) + 8 * i));
      if (v12 && ![(NSSet *)self->_unavailableContentIdentifiers containsObject:v12])
      {
        if (v10)
        {
          v13 = [(MPModelStoreBrowseResponseParser *)self _storeItemMetadataForContentIdentifier:v12];
          v14 = v13 != 0;
          if (v13)
          {
            v15 = [(MPStoreModelObjectBuilder *)self->_contentItemBuilder modelObjectWithStoreItemMetadata:v13 userIdentity:self->_userIdentity];
            if (v15)
            {
              v16 = v55;
              if (!v55)
              {
                v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              v55 = v16;
              [v16 addObject:v15];
              detailedItemType = [v15 detailedItemType];
            }

            else
            {
              detailedItemType = 0;
            }

            v10 = 1;
LABEL_36:
            [(MPModelStoreBrowseSectionUniformContentItemTypeResolver *)v57 addContentItemType:detailedItemType];
            goto LABEL_37;
          }
        }

        else
        {
          v14 = [(MPModelStoreBrowseResponseParser *)self _storeItemMetadataIsAvailableForContentIdentifier:v12];
        }

        v18 = v8;
        if (!v8)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v8 = v18;
        [v18 addObject:v12];
        if (v14)
        {
          detailedItemType = 0;
        }

        else
        {
          v19 = v56;
          if (!v56)
          {
            v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v56 = v19;
          [v19 addObject:v12];
          detailedItemType = 0;
          v10 = 0;
        }

        goto LABEL_36;
      }

LABEL_37:
    }

    v7 = [v6 countByEnumeratingWithState:&v78 objects:v85 count:16];
  }

  while (v7);
LABEL_42:

LABEL_43:
  uniformContentItemType = [(MPModelStoreBrowseSectionUniformContentItemTypeResolver *)v57 uniformContentItemType];
  if (!uniformContentItemType)
  {
    v21 = [dictionaryCopy objectForKey:@"kinds"];
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__37772;
    v76 = __Block_byref_object_dispose__37773;
    v77 = 0;
    if (_NSIsNSDictionary())
    {
      v22 = v21;
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __101__MPModelStoreBrowseResponseParser__parseSingleContentListFromPageDataDictionary_isMemberOfChartSet___block_invoke;
      v71[3] = &unk_1E767CAF8;
      v71[4] = &v72;
      [v22 enumerateKeysAndObjectsUsingBlock:v71];
      goto LABEL_59;
    }

    if ([v21 conformsToProtocol:&unk_1F1550CB8])
    {
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v67 objects:v84 count:16];
      if (v24)
      {
        v25 = *v68;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v68 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v67 + 1) + 8 * j);
            if (_NSIsNSString())
            {
              v28 = v27;
              v29 = v73[5];
              if (!v29)
              {
                v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                v31 = v73[5];
                v73[5] = v30;

                v29 = v73[5];
              }

              [v29 addObject:v28];
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v67 objects:v84 count:16];
        }

        while (v24);
      }

LABEL_59:
    }

    if ([v73[5] count] == 1)
    {
      anyObject = [v73[5] anyObject];
      if ([anyObject isEqualToString:@"album"])
      {
        uniformContentItemType = 1;
      }

      else if ([anyObject isEqualToString:@"musicVideo"])
      {
        uniformContentItemType = 6;
      }

      else if ([anyObject isEqualToString:@"song"])
      {
        uniformContentItemType = 10;
      }

      else
      {
        uniformContentItemType = 0;
      }
    }

    else
    {
      uniformContentItemType = 0;
    }

    _Block_object_dispose(&v72, 8);
  }

  v33 = [(MPModelStoreBrowseSectionBuilder *)self->_sectionBuilder modelObjectWithTitle:v53 loadAdditionalContentURL:v51 uniformContentItemType:uniformContentItemType isMemberOfChartSet:setCopy isBrick:0 previouslyRetrievedNestedResponse:0];
  v34 = objc_alloc_init(MPMutableSectionedCollection);
  [(MPMutableSectionedCollection *)v34 appendSection:v33];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v35 = v55;
  v36 = [v35 countByEnumeratingWithState:&v63 objects:v83 count:16];
  if (v36)
  {
    v37 = *v64;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v64 != v37)
        {
          objc_enumerationMutation(v35);
        }

        [(MPMutableSectionedCollection *)v34 appendItem:*(*(&v63 + 1) + 8 * k)];
      }

      v36 = [v35 countByEnumeratingWithState:&v63 objects:v83 count:16];
    }

    while (v36);
  }

  v39 = objc_alloc_init(MPMutableSectionedCollection);
  [(MPMutableSectionedCollection *)v39 appendSection:v33];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v40 = v8;
  v41 = [v40 countByEnumeratingWithState:&v59 objects:v82 count:16];
  if (v41)
  {
    v42 = *v60;
    do
    {
      for (m = 0; m != v41; ++m)
      {
        if (*v60 != v42)
        {
          objc_enumerationMutation(v40);
        }

        [(MPMutableSectionedCollection *)v39 appendItem:*(*(&v59 + 1) + 8 * m)];
      }

      v41 = [v40 countByEnumeratingWithState:&v59 objects:v82 count:16];
    }

    while (v41);
  }

  v44 = [(MPMutableSectionedCollection *)v34 copy];
  results = self->_results;
  self->_results = v44;

  v46 = [(MPMutableSectionedCollection *)v39 copy];
  additionalContentIdentifiers = self->_additionalContentIdentifiers;
  self->_additionalContentIdentifiers = v46;

  v48 = [v56 copy];
  allAdditionalContentIdentifiersNeedingLookup = self->_allAdditionalContentIdentifiersNeedingLookup;
  self->_allAdditionalContentIdentifiersNeedingLookup = v48;
}

void __101__MPModelStoreBrowseResponseParser__parseSingleContentListFromPageDataDictionary_isMemberOfChartSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (_NSIsNSString() && (objc_opt_respondsToSelector() & 1) != 0 && [v5 BOOLValue])
  {
    v6 = v11;
    v7 = *(*(*(a1 + 32) + 8) + 40);
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v7 addObject:v6];
  }
}

- (BOOL)_parseFeaturedContentChild:(id)child isMemberOfChartSet:(BOOL)set insertingResultsToSectionedCollection:(id)collection atSectionIndex:(int64_t)index additionalContentIdentifiers:(id)identifiers allAdditionalContentIdentifiersNeedingLookup:(id)lookup
{
  setCopy = set;
  v111 = *MEMORY[0x1E69E9840];
  childCopy = child;
  collectionCopy = collection;
  identifiersCopy = identifiers;
  lookupCopy = lookup;
  if (!_NSIsNSDictionary())
  {
    v16 = 0;
    goto LABEL_112;
  }

  v14 = childCopy;
  v15 = [v14 objectForKey:@"name"];
  if (_NSIsNSString())
  {
    if (v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v17 = [v14 objectForKey:@"title"];
  if (_NSIsNSString())
  {
    v15 = v17;
  }

  else
  {
    v15 = 0;
  }

LABEL_11:
  selfCopy = self;
  v18 = [v14 objectForKey:@"seeAllUrl"];
  if (_NSIsNSString())
  {
    v19 = [MEMORY[0x1E695DFF8] URLWithString:v18];

    if (v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v20 = [v14 objectForKey:@"link"];
  if (_NSIsNSDictionary())
  {
    v21 = [v20 objectForKey:@"url"];
    if (_NSIsNSString())
    {
      v19 = [MEMORY[0x1E695DFF8] URLWithString:v21];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_22:
  v22 = [v14 objectForKey:@"fcKind"];
  v73 = (objc_opt_respondsToSelector() & 1) != 0 && [v22 integerValue] == 325;
  v23 = [v14 objectForKey:@"content"];
  if ((_NSIsNSArray() & 1) == 0)
  {

LABEL_29:
    v24 = [v14 objectForKey:@"links"];
    if (_NSIsNSArray())
    {
      v23 = v24;
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_33;
  }

  if (!v23)
  {
    goto LABEL_29;
  }

LABEL_33:
  v89 = objc_alloc_init(MPModelStoreBrowseSectionUniformContentItemTypeResolver);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = v23;
  v25 = [obj countByEnumeratingWithState:&v104 objects:v110 count:16];
  if (!v25)
  {
    v51 = 0;
    v52 = 0;
    goto LABEL_86;
  }

  v74 = setCopy;
  v76 = v22;
  v77 = v19;
  v79 = v15;
  v81 = v14;
  v75 = childCopy;
  v84 = 0;
  v86 = 0;
  v90 = 0;
  v26 = *v105;
  v27 = 1;
  v28 = selfCopy;
  do
  {
    for (i = 0; i != v25; i = i + 1)
    {
      if (*v105 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v104 + 1) + 8 * i);
      if (_NSIsNSDictionary())
      {
        v31 = v30;
        v32 = [v31 objectForKey:@"type"];
        if (_NSIsNSString())
        {
          v33 = [v32 isEqualToString:@"content"];
        }

        else
        {
          v33 = 0;
        }

        v34 = [v31 objectForKey:@"contentId"];
        v35 = v34;
        if (v34)
        {
          v36 = MPStoreItemMetadataStringNormalizeStoreIDValue(v34);
          if (v36)
          {
            v37 = v33;
          }

          else
          {
            v37 = 0;
          }

          if (v37 != 1 || [(NSSet *)v28->_unavailableContentIdentifiers containsObject:v36])
          {
            goto LABEL_81;
          }

          v38 = [(MPModelStoreBrowseResponseParser *)v28 _storeItemMetadataForContentIdentifier:v36];
          contentItemBuilder = v28->_contentItemBuilder;
          v91 = v38;
          if (v38)
          {
            if (v27)
            {
              v40 = [(MPStoreModelObjectBuilder *)contentItemBuilder modelObjectWithStoreItemMetadata:v38 userIdentity:v28->_userIdentity];
              if (v40)
              {
                v41 = v40;
                detailedItemType = [v40 detailedItemType];
                v43 = v84;
                if (!v84)
                {
                  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                v84 = v43;
                [v43 addObject:v41];

                if (v90)
                {
                  v44 = v90;
                }

                else
                {
                  v44 = 1;
                }

                if (detailedItemType)
                {
                  v27 = 1;
                  goto LABEL_74;
                }
              }

              else if (v90)
              {
                v44 = v90;
              }

              else
              {
                v44 = 1;
              }

              v90 = v44;
              v47 = v91;
              detailedItemType = 0;
              v27 = 1;
LABEL_80:
              [(MPModelStoreBrowseSectionUniformContentItemTypeResolver *)v89 addContentItemType:detailedItemType];

              v28 = selfCopy;
LABEL_81:

              continue;
            }

            v47 = v38;
            v48 = [(MPModelStoreBrowseContentItemBuilder *)v28->_contentItemBuilder contentItemTypeForStoreItemMetadata:v38];
            detailedItemType = v48;
            if (v90)
            {
              v49 = v90;
            }

            else
            {
              v49 = 1;
            }

            if (!v48)
            {
              v27 = 0;
              v90 = v49;
              goto LABEL_80;
            }
          }

          else
          {
            v45 = [v31 objectForKey:@"kindIds"];
            detailedItemType = [(MPModelStoreBrowseContentItemBuilder *)contentItemBuilder contentItemTypeForRawResponseKindIdentifiers:v45];

            if (v90)
            {
              v46 = v90;
            }

            else
            {
              v46 = 1;
            }

            if (!detailedItemType)
            {
              v27 = 0;
              v90 = v46;
LABEL_74:
              v47 = v91;
              goto LABEL_80;
            }

            v47 = 0;
          }

          v50 = v86;
          if (!v86)
          {
            v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v86 = v50;
          [v50 addObject:v36];
          if (!v47)
          {
            [lookupCopy addObject:v36];
          }

          v27 = 0;
          goto LABEL_80;
        }

        v36 = 0;
        goto LABEL_81;
      }
    }

    v25 = [obj countByEnumeratingWithState:&v104 objects:v110 count:16];
  }

  while (v25);
  childCopy = v75;
  v22 = v76;
  v15 = v79;
  v14 = v81;
  v19 = v77;
  setCopy = v74;
  v25 = v84;
  v51 = v86;
  v52 = v90;
LABEL_86:

  uniformContentItemType = [(MPModelStoreBrowseSectionUniformContentItemTypeResolver *)v89 uniformContentItemType];
  v54 = [v25 count];
  if ((v52 & 1) != 0 || v54)
  {
    if ((v52 & 1) == 0 || v54)
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  v16 = 0;
  if (!v15 || !v19)
  {
    goto LABEL_111;
  }

LABEL_93:
  if (selfCopy->_options.useCarPlayBrowseTopLevelContentOnly && uniformContentItemType == 7)
  {
LABEL_95:
    v16 = 0;
    goto LABEL_111;
  }

  v87 = v51;
  v78 = v19;
  v80 = v15;
  v82 = v14;
  v55 = [(MPModelStoreBrowseSectionBuilder *)selfCopy->_sectionBuilder modelObjectWithTitle:v15 loadAdditionalContentURL:v19 uniformContentItemType:uniformContentItemType isMemberOfChartSet:setCopy isBrick:v73 previouslyRetrievedNestedResponse:0];
  [collectionCopy insertSection:v55 atIndex:index];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v85 = v25;
  v56 = v25;
  v57 = [v56 countByEnumeratingWithState:&v100 objects:v109 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = 0;
    v60 = *v101;
    do
    {
      for (j = 0; j != v58; ++j)
      {
        if (*v101 != v60)
        {
          objc_enumerationMutation(v56);
        }

        v62 = *(*(&v100 + 1) + 8 * j);
        v63 = [MEMORY[0x1E696AC88] indexPathForItem:v59 inSection:index];
        [collectionCopy insertItem:v62 atIndexPath:v63];
        ++v59;
      }

      v58 = [v56 countByEnumeratingWithState:&v100 objects:v109 count:16];
    }

    while (v58);
  }

  [identifiersCopy insertSection:v55 atIndex:index];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v64 = v87;
  v65 = [v64 countByEnumeratingWithState:&v96 objects:v108 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = 0;
    v68 = *v97;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v97 != v68)
        {
          objc_enumerationMutation(v64);
        }

        v70 = *(*(&v96 + 1) + 8 * k);
        v71 = [MEMORY[0x1E696AC88] indexPathForItem:v67 inSection:index];
        [identifiersCopy insertItem:v70 atIndexPath:v71];
        ++v67;
      }

      v66 = [v64 countByEnumeratingWithState:&v96 objects:v108 count:16];
    }

    while (v66);
  }

  v16 = 1;
  v15 = v80;
  v14 = v82;
  v19 = v78;
  v25 = v85;
  v51 = v87;
LABEL_111:

LABEL_112:
  return v16;
}

- (void)_parseFeaturedContentStructureModelChildren:(id)children
{
  v60 = *MEMORY[0x1E69E9840];
  childrenCopy = children;
  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v5 addIndex:324];
  [v5 addIndex:323];
  [v5 addIndex:326];
  selfCopy = self;
  if (!self->_options.useCarPlayBrowseTopLevelContentOnly)
  {
    [v5 addIndex:327];
    [v5 addIndex:328];
  }

  [v5 addIndex:329];
  v6 = objc_alloc_init(MPMutableSectionedCollection);
  v7 = objc_alloc_init(MPMutableSectionedCollection);
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v8 = childrenCopy;
  v9 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v47 = 0;
    v12 = *v54;
    v38 = v8;
    v39 = v5;
    v37 = *v54;
    do
    {
      v13 = 0;
      v40 = v10;
      do
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v53 + 1) + 8 * v13);
        if (_NSIsNSDictionary())
        {
          v43 = v14;
          v15 = [v43 objectForKey:@"fcKind"];
          if (objc_opt_respondsToSelector())
          {
            v42 = v13;
            integerValue = [v15 integerValue];
            if ([v5 containsIndex:integerValue])
            {
              v48 = integerValue;
              v17 = v15;
              v18 = [v43 objectForKey:@"children"];
              v41 = v18;
              if (_NSIsNSArray())
              {
                v19 = v18;
              }

              else
              {
                v58 = v43;
                v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
              }

              v20 = v44;
              v21 = selfCopy;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              obj = v19;
              v22 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v50;
                do
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v50 != v24)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v26 = *(*(&v49 + 1) + 8 * i);
                    if (!(v47 & 1 | ((v21->_options.useCarPlayBrowseTopLevelRequestReorderingHeuristics & BYTE4(v47) & 1) == 0)))
                    {
                      v30 = [(MPModelStoreBrowseResponseParser *)v21 _parseFeaturedContentChild:*(*(&v49 + 1) + 8 * i) isMemberOfChartSet:v48 == 323 insertingResultsToSectionedCollection:v6 atSectionIndex:v11 additionalContentIdentifiers:v7 allAdditionalContentIdentifiersNeedingLookup:v20];
                      goto LABEL_24;
                    }

                    numberOfSections = [(MPSectionedCollection *)v6 numberOfSections];
                    v28 = v21;
                    v29 = v21->_options.useCarPlayBrowseTopLevelRequestReorderingHeuristics & (v48 != 324) & ~BYTE4(v47);
                    v20 = v44;
                    v30 = [(MPModelStoreBrowseResponseParser *)v28 _parseFeaturedContentChild:v26 isMemberOfChartSet:v48 == 323 insertingResultsToSectionedCollection:v6 atSectionIndex:numberOfSections additionalContentIdentifiers:v7 allAdditionalContentIdentifiersNeedingLookup:v44];
                    if (v29)
                    {
                      v21 = selfCopy;
LABEL_24:
                      v15 = v17;
                      v11 += v30;
                      continue;
                    }

                    v21 = selfCopy;
                    v15 = v17;
                  }

                  v23 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
                }

                while (v23);
              }

              if (v21->_options.useCarPlayBrowseTopLevelRequestReorderingHeuristics)
              {
                v8 = v38;
                v5 = v39;
                v12 = v37;
                v10 = v40;
                if (v48 == 323)
                {
                  LOBYTE(v47) = 1;
                }

                else if (v48 == 324)
                {
                  BYTE4(v47) = 1;
                }
              }

              else
              {
                v8 = v38;
                v5 = v39;
                v12 = v37;
                v10 = v40;
              }

              v13 = v42;
            }

            else
            {
              v13 = v42;
            }
          }
        }

        ++v13;
      }

      while (v13 != v10);
      v10 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v10);
  }

  if ([(MPSectionedCollection *)v6 numberOfSections]< 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = [(MPMutableSectionedCollection *)v6 copy];
  }

  results = selfCopy->_results;
  selfCopy->_results = v31;

  if ([(MPSectionedCollection *)v7 numberOfSections]< 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = [(MPMutableSectionedCollection *)v7 copy];
  }

  additionalContentIdentifiers = selfCopy->_additionalContentIdentifiers;
  selfCopy->_additionalContentIdentifiers = v33;

  v35 = [v44 count];
  if (v35)
  {
    v35 = [v44 copy];
  }

  allAdditionalContentIdentifiersNeedingLookup = selfCopy->_allAdditionalContentIdentifiersNeedingLookup;
  selfCopy->_allAdditionalContentIdentifiersNeedingLookup = v35;
}

- (void)_parse
{
  if (_NSIsNSDictionary())
  {
    v11 = self->_rawResponseOutput;
    [(MPModelStoreBrowseResponseParser *)self _populateStorePlatformDataResultsFromRawResponseOutputDictionary:?];
    if (self->_previousParser)
    {
      [(MPModelStoreBrowseResponseParser *)self _parseUsingAdditionalContentIdentifiersFromPreviousParser];
    }

    else
    {
      v3 = [v11 objectForKey:@"pageData"];
      if (_NSIsNSDictionary())
      {
        v4 = v3;
        [(MPModelStoreBrowseResponseParser *)self _populateUnavailableContentIdentifiersFromPageDataDictionary:v4];
        v5 = [v4 objectForKey:@"fcStructure"];
        if (_NSIsNSDictionary())
        {
          v6 = [v5 objectForKey:@"model"];
          if (_NSIsNSDictionary())
          {
            v7 = [v6 objectForKey:@"children"];
            if (_NSIsNSArray())
            {
              [(MPModelStoreBrowseResponseParser *)self _parseFeaturedContentStructureModelChildren:v7];
            }
          }
        }

        else
        {
          v6 = [v4 objectForKey:@"selectedChart"];
          if (_NSIsNSDictionary())
          {
            selfCopy2 = self;
            v9 = v6;
            v10 = 1;
          }

          else
          {
            selfCopy2 = self;
            v9 = v4;
            v10 = 0;
          }

          [(MPModelStoreBrowseResponseParser *)selfCopy2 _parseSingleContentListFromPageDataDictionary:v9 isMemberOfChartSet:v10];
        }
      }
    }
  }
}

- (NSArray)allAdditionalContentIdentifiersNeedingLookup
{
  parseOnceToken = self->_parseOnceToken;
  p_parseOnceToken = &self->_parseOnceToken;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MPModelStoreBrowseResponseParser_allAdditionalContentIdentifiersNeedingLookup__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  if (parseOnceToken != -1)
  {
    dispatch_once(p_parseOnceToken, block);
  }

  return self->_allAdditionalContentIdentifiersNeedingLookup;
}

- (MPSectionedCollection)additionalContentIdentifiers
{
  parseOnceToken = self->_parseOnceToken;
  p_parseOnceToken = &self->_parseOnceToken;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MPModelStoreBrowseResponseParser_additionalContentIdentifiers__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  if (parseOnceToken != -1)
  {
    dispatch_once(p_parseOnceToken, block);
  }

  return self->_additionalContentIdentifiers;
}

- (MPSectionedCollection)results
{
  parseOnceToken = self->_parseOnceToken;
  p_parseOnceToken = &self->_parseOnceToken;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MPModelStoreBrowseResponseParser_results__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  if (parseOnceToken != -1)
  {
    dispatch_once(p_parseOnceToken, block);
  }

  return self->_results;
}

- (MPModelStoreBrowseResponseParser)initWithPreviousParser:(id)parser additionalStoreItemMetadataResponse:(id)response options:(id)options sectionBuilder:(id)builder contentItemBuilder:(id)itemBuilder userIdentity:(id)identity
{
  parserCopy = parser;
  responseCopy = response;
  builderCopy = builder;
  itemBuilderCopy = itemBuilder;
  identityCopy = identity;
  v24.receiver = self;
  v24.super_class = MPModelStoreBrowseResponseParser;
  v18 = [(MPModelStoreBrowseResponseParser *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_additionalStoreItemMetadataResponse, response);
    objc_storeStrong(&v19->_contentItemBuilder, itemBuilder);
    v19->_options = options;
    objc_storeStrong(&v19->_previousParser, parser);
    previousParser = v19->_previousParser;
    if (previousParser)
    {
      objc_storeStrong(&v19->_rawResponseOutput, previousParser->_rawResponseOutput);
    }

    objc_storeStrong(&v19->_sectionBuilder, builder);
    objc_storeStrong(&v19->_userIdentity, identity);
  }

  return v19;
}

- (MPModelStoreBrowseResponseParser)initWithRawResponseOutput:(id)output options:(id)options sectionBuilder:(id)builder contentItemBuilder:(id)itemBuilder userIdentity:(id)identity
{
  outputCopy = output;
  builderCopy = builder;
  itemBuilderCopy = itemBuilder;
  identityCopy = identity;
  v20.receiver = self;
  v20.super_class = MPModelStoreBrowseResponseParser;
  v17 = [(MPModelStoreBrowseResponseParser *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contentItemBuilder, itemBuilder);
    v18->_options = options;
    objc_storeStrong(&v18->_rawResponseOutput, output);
    objc_storeStrong(&v18->_sectionBuilder, builder);
    objc_storeStrong(&v18->_userIdentity, identity);
  }

  return v18;
}

@end