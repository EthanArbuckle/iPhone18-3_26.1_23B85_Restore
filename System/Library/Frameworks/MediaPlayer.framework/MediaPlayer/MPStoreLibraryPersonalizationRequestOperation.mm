@interface MPStoreLibraryPersonalizationRequestOperation
+ (__n128)_personalizedArtistResponseForStoreID:modelObject:groupingKey:personalizationStyle:personalizationProperties:libraryView:libraryRequest:matchingStoreIDAndName:;
+ (__n128)personalizedResponseForContentDescriptor:requestedProperties:matchAlbumArtistOnStoreIdAndName:;
+ (id)_personalizedArtistResponseForStoreID:(int64_t)d modelObject:(id)object groupingKey:(id)key personalizationStyle:(int64_t)style personalizationProperties:(id)properties libraryView:(id)view libraryRequest:(id)request matchingStoreIDAndName:(BOOL)self0;
+ (id)personalizedResponseForContentDescriptor:(id)descriptor requestedProperties:(id)properties;
+ (id)personalizedResponseForContentDescriptor:(id)descriptor requestedProperties:(id)properties matchAlbumArtistOnStoreIdAndName:(BOOL)name;
+ (uint64_t)_personalizedArtistResponseForStoreID:modelObject:groupingKey:personalizationStyle:personalizationProperties:libraryView:libraryRequest:matchingStoreIDAndName:;
+ (uint64_t)personalizedResponseForContentDescriptor:requestedProperties:matchAlbumArtistOnStoreIdAndName:;
+ (void)_personalizedArtistResponseForStoreID:modelObject:groupingKey:personalizationStyle:personalizationProperties:libraryView:libraryRequest:matchingStoreIDAndName:;
+ (void)personalizedResponseForContentDescriptor:requestedProperties:matchAlbumArtistOnStoreIdAndName:;
- (void)cancel;
- (void)execute;
@end

@implementation MPStoreLibraryPersonalizationRequestOperation

- (void)execute
{
  selfCopy2 = self;
  v149 = *MEMORY[0x1E69E9840];
  if (![(MPAsyncOperation *)self isCancelled])
  {
    if (!selfCopy2->_operationQueue)
    {
      v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      operationQueue = selfCopy2->_operationQueue;
      selfCopy2->_operationQueue = v5;

      [(NSOperationQueue *)selfCopy2->_operationQueue setName:@"com.apple.MediaPlayer.MPStoreLibraryPersonalizationRequestOperation.operationQueue"];
      [(NSOperationQueue *)selfCopy2->_operationQueue setMaxConcurrentOperationCount:1];
      v7 = selfCopy2->_operationQueue;
      currentThread = [MEMORY[0x1E696AF00] currentThread];
      -[NSOperationQueue setQualityOfService:](v7, "setQualityOfService:", [currentThread qualityOfService]);

      selfCopy2 = self;
    }

    request = [(MPStoreLibraryPersonalizationRequestOperation *)selfCopy2 request];
    ignoreExplicitContentRestrictions = [request ignoreExplicitContentRestrictions];

    request2 = [(MPStoreLibraryPersonalizationRequestOperation *)self request];
    mediaLibraryOverrideForTestingOnly = [request2 mediaLibraryOverrideForTestingOnly];

    v73 = mediaLibraryOverrideForTestingOnly;
    if (mediaLibraryOverrideForTestingOnly)
    {
      v87 = [MPStoreLibraryPersonalizationRequest libraryViewWithMediaLibraryOverrideForTestingOnly:mediaLibraryOverrideForTestingOnly];
    }

    else
    {
      [(MPAsyncOperation *)self userIdentity];
      if (ignoreExplicitContentRestrictions)
        v13 = {;
        [MPStoreLibraryPersonalizationRequest libraryViewIgnoringContentRestrictionsWithUserIdentity:v13];
      }

      else
        v13 = {;
        [MPStoreLibraryPersonalizationRequest libraryViewWithUserIdentity:v13];
      }
      v87 = ;
    }

    v78 = objc_alloc_init(MPModelLibraryRequest);
    library = [v87 library];
    [(MPModelLibraryRequest *)v78 setMediaLibrary:library];

    -[MPModelLibraryRequest setFilteringOptions:](v78, "setFilteringOptions:", [v87 filteringOptions]);
    v77 = objc_alloc_init(MPStoreLibraryPersonalizationCollectionDataSource);
    itemProperties = [(MPModelRequest *)self->_request itemProperties];
    [(MPStoreLibraryPersonalizationCollectionDataSource *)v77 setItemProperties:itemProperties];

    itemIndexPathToOverridePropertySet = [(MPStoreLibraryPersonalizationRequest *)self->_request itemIndexPathToOverridePropertySet];
    [(MPStoreLibraryPersonalizationCollectionDataSource *)v77 setItemIndexPathToOverridePropertySet:itemIndexPathToOverridePropertySet];

    sectionProperties = [(MPModelRequest *)self->_request sectionProperties];
    [(MPStoreLibraryPersonalizationCollectionDataSource *)v77 setSectionProperties:sectionProperties];

    [(MPStoreLibraryPersonalizationCollectionDataSource *)v77 setLibraryView:v87];
    representedObjects = [(MPStoreLibraryPersonalizationRequest *)self->_request representedObjects];
    unpersonalizedContentDescriptors = [(MPStoreLibraryPersonalizationRequest *)self->_request unpersonalizedContentDescriptors];
    v74 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v143[0] = 0;
    v143[1] = v143;
    v143[2] = 0x3032000000;
    v143[3] = __Block_byref_object_copy__32682;
    v143[4] = __Block_byref_object_dispose__32683;
    v144 = 0;
    v18 = [MPAsyncBlockOperation alloc];
    v135[0] = MEMORY[0x1E69E9820];
    v135[1] = 3221225472;
    v135[2] = __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke;
    v135[3] = &unk_1E767BA58;
    v71 = v77;
    v136 = v71;
    v79 = v74;
    v137 = v79;
    v142 = v143;
    v72 = representedObjects;
    v138 = v72;
    v96 = unpersonalizedContentDescriptors;
    v139 = v96;
    v70 = v78;
    v140 = v70;
    selfCopy3 = self;
    val = [(MPAsyncBlockOperation *)v18 initWithStartHandler:v135];
    v94 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:514 valueOptions:0 capacity:1];
    numberOfSections = [v96 numberOfSections];
    if (numberOfSections < 1)
    {
      v86 = 0;
    }

    else
    {
      v101 = numberOfSections;
      v86 = 0;
      for (i = 0; i != v101; ++i)
      {
        v21 = [v96 numberOfItemsInSection:i];
        if (v21 < 1)
        {
          LOBYTE(v104) = 0;
        }

        else
        {
          v22 = 0;
          v104 = 1;
          do
          {
            v23 = [MEMORY[0x1E696AC88] indexPathForItem:v22 inSection:i];
            v24 = [v96 itemAtIndexPath:v23];
            v25 = objc_opt_class();
            if (v25 == objc_opt_class())
            {
              model = [v24 model];
              relativeModelObjectForStoreLibraryPersonalization = [model relativeModelObjectForStoreLibraryPersonalization];

              if (relativeModelObjectForStoreLibraryPersonalization)
              {
                model = [relativeModelObjectForStoreLibraryPersonalization identifiers];
                if (model)
                {
                  v27 = objc_opt_class();
                  if (([v27 isSubclassOfClass:objc_opt_class()] & 1) == 0)
                  {
                    v104 &= [v27 isSubclassOfClass:objc_opt_class()];
                  }

                  v28 = [v94 objectForKey:v27];
                  if (!v28)
                  {
                    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    [v94 setObject:v28 forKey:v27];
                  }

                  v29 = [MEMORY[0x1E695DF20] dictionaryWithObject:model forKey:relativeModelObjectForStoreLibraryPersonalization];
                  [v28 addObject:v29];
                }
              }
            }

            ++v22;
          }

          while (v21 != v22);
        }

        v30 = [v96 sectionAtIndex:i];
        v31 = objc_opt_class();
        if (v31 == objc_opt_class() && [v30 personalizationStyle])
        {
          model2 = [v30 model];
          relativeModelObjectForStoreLibraryPersonalization2 = [model2 relativeModelObjectForStoreLibraryPersonalization];

          if (relativeModelObjectForStoreLibraryPersonalization2)
          {
            identifiers = [relativeModelObjectForStoreLibraryPersonalization2 identifiers];
            if (identifiers)
            {
              v35 = objc_opt_class();
              if ((v104 & 1) != 0 && (([v35 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v35, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v35, "isSubclassOfClass:", objc_opt_class())))
              {
                v36 = v86;
                if (!v86)
                {
                  v36 = objc_alloc_init(MEMORY[0x1E696AD50]);
                }

                v86 = v36;
                [v36 addIndex:i];
              }

              v37 = [v94 objectForKey:v35];
              if (!v37)
              {
                v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v94 setObject:v37 forKey:v35];
              }

              model = [MEMORY[0x1E695DF20] dictionaryWithObject:identifiers forKey:relativeModelObjectForStoreLibraryPersonalization2];
              [v37 addObject:model];
            }
          }
        }
      }
    }

    v133[0] = 0;
    v133[1] = v133;
    v133[2] = 0x3812000000;
    v133[3] = __Block_byref_object_copy__29;
    v133[4] = __Block_byref_object_dispose__30;
    v133[5] = "";
    v134 = 0;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    obj = v94;
    v80 = [obj countByEnumeratingWithState:&v129 objects:v148 count:16];
    if (!v80)
    {
LABEL_116:

      [(NSOperationQueue *)self->_operationQueue addOperation:val];
      _Block_object_dispose(v133, 8);

      _Block_object_dispose(v143, 8);
      return;
    }

    v81 = 0;
    v82 = *v130;
    v98 = *MEMORY[0x1E69B1340];
LABEL_53:
    v89 = 0;
    while (1)
    {
      if (*v130 != v82)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v129 + 1) + 8 * v89);
      if ([MPStoreLibraryMappingRequestOperation supportsModelClass:v38])
      {
        break;
      }

LABEL_114:
      if (++v89 == v80)
      {
        v80 = [obj countByEnumeratingWithState:&v129 objects:v148 count:16];
        if (!v80)
        {
          goto LABEL_116;
        }

        goto LABEL_53;
      }
    }

    array = [MEMORY[0x1E695DF70] array];
    v85 = [obj objectForKey:v38];
    if ([v38 isSubclassOfClass:objc_opt_class()] && -[MPStoreLibraryPersonalizationRequest matchAlbumArtistsOnNameAndStoreID](self->_request, "matchAlbumArtistsOnNameAndStoreID"))
    {
      v39 = 0;
    }

    else
    {
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v40 = v85;
      v41 = [v40 countByEnumeratingWithState:&v125 objects:v147 count:16];
      if (v41)
      {
        v42 = *v126;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v126 != v42)
            {
              objc_enumerationMutation(v40);
            }

            allValues = [*(*(&v125 + 1) + 8 * j) allValues];
            [array addObjectsFromArray:allValues];
          }

          v41 = [v40 countByEnumeratingWithState:&v125 objects:v147 count:16];
        }

        while (v41);
      }

      v39 = 1;
    }

    v45 = objc_alloc_init(MPStoreLibraryMappingRequestOperation);
    [(MPStoreLibraryMappingRequestOperation *)v45 setLibraryView:v87];
    [(MPStoreLibraryMappingRequestOperation *)v45 setModelClass:v38];
    if (v39)
    {
      v46 = array;
    }

    else
    {
      v46 = 0;
    }

    [(MPStoreLibraryMappingRequestOperation *)v45 setIdentifierSets:v46];
    v88 = v45;
    if (v81)
    {
      v47 = 0;
    }

    else
    {
      if (![v86 count] || (objc_msgSend(v38, "isSubclassOfClass:", objc_opt_class()) & 1) == 0 && !objc_msgSend(v38, "isSubclassOfClass:", objc_opt_class()))
      {
        v47 = 0;
        v81 = 0;
        goto LABEL_79;
      }

      v47 = 1;
    }

    v81 = 1;
LABEL_79:
    objc_initWeak(&location, val);
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v114[2] = __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_53;
    v114[3] = &unk_1E767BAF8;
    v120 = v133;
    v121 = v143;
    v122[1] = v38;
    v123 = v47;
    v115 = v86;
    v116 = v96;
    v117 = v79;
    v118 = v87;
    objc_copyWeak(v122, &location);
    selfCopy4 = self;
    [(MPStoreLibraryMappingRequestOperation *)v45 setResponseHandler:v114];
    if (v39)
    {
      [(MPAsyncBlockOperation *)val addDependency:v45];
      [(NSOperationQueue *)self->_operationQueue addOperation:v45];
LABEL_113:
      objc_destroyWeak(v122);

      objc_destroyWeak(&location);
      goto LABEL_114;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array2 = [MEMORY[0x1E695DF70] array];
    canAccessAccountStore = [MEMORY[0x1E69E4688] canAccessAccountStore];
    v49 = MEMORY[0x1E69B34E0];
    if (canAccessAccountStore)
    {
      activeAccount = [MEMORY[0x1E69E4680] activeAccount];
      autoupdatingSharedLibrary = [v49 musicLibraryForUserAccount:activeAccount];
    }

    else
    {
      autoupdatingSharedLibrary = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
    }

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v91 = v85;
    v93 = [v91 countByEnumeratingWithState:&v110 objects:v146 count:16];
    if (!v93)
    {
LABEL_112:

      [(MPStoreLibraryMappingRequestOperation *)v88 setAlbumArtistNamesToIdentifierSets:array2];
      [(MPAsyncBlockOperation *)val addDependency:v88];
      [(NSOperationQueue *)self->_operationQueue addOperation:v88];

      goto LABEL_113;
    }

    v92 = *v111;
LABEL_86:
    v95 = 0;
    while (1)
    {
      if (*v111 != v92)
      {
        objc_enumerationMutation(v91);
      }

      v51 = *(*(&v110 + 1) + 8 * v95);
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      allKeys = [v51 allKeys];
      v53 = [allKeys countByEnumeratingWithState:&v106 objects:v145 count:16];
      if (v53)
      {
        break;
      }

LABEL_110:

      if (++v95 == v93)
      {
        v93 = [v91 countByEnumeratingWithState:&v110 objects:v146 count:16];
        if (!v93)
        {
          goto LABEL_112;
        }

        goto LABEL_86;
      }
    }

    v54 = *v107;
    v99 = allKeys;
LABEL_91:
    v55 = 0;
    while (1)
    {
      if (*v107 != v54)
      {
        objc_enumerationMutation(v99);
      }

      v56 = *(*(&v106 + 1) + 8 * v55);
      v57 = [v51 objectForKey:v56];
      universalStore = [v57 universalStore];
      adamID = [universalStore adamID];

      name = [v56 name];
      v61 = name;
      if (name)
      {
        if ([name length])
        {
          v62 = 1;
        }

        else
        {
          v62 = adamID == 0;
        }

        if (!v62)
        {
LABEL_102:
          v63 = [MEMORY[0x1E696AD98] numberWithLongLong:adamID];
          v64 = [dictionary objectForKey:v63];
          v65 = v64 == 0;

          if (v65)
          {
            [MEMORY[0x1E69B13D8] snapshotWithDomain:v98 type:@"Bug" subType:@"Album Artist With No Name" context:@"Request to personalize album artist with missing name" triggerThresholdValues:0 events:&unk_1F1509DD8 completion:0];
          }
        }
      }

      else if (adamID)
      {
        goto LABEL_102;
      }

      v66 = [autoupdatingSharedLibrary groupingKeyForString:v61];
      v67 = MEMORY[0x1E695DF20];
      v68 = v66;
      if (!v66)
      {
        model = [MEMORY[0x1E695DFB0] null];
        v68 = model;
      }

      v69 = [v67 dictionaryWithObject:v68 forKey:v57];
      if (!v66)
      {
      }

      [array2 addObject:v69];

      if (v53 == ++v55)
      {
        allKeys = v99;
        v53 = [v99 countByEnumeratingWithState:&v106 objects:v145 count:16];
        if (!v53)
        {
          goto LABEL_110;
        }

        goto LABEL_91;
      }
    }
  }

  v103 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
  responseHandler = self->_responseHandler;
  if (responseHandler)
  {
    responseHandler[2](responseHandler, 0, v103);
  }

  [(MPAsyncOperation *)self finishWithError:v103];
}

void __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ([*(a1 + 40) count])
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  [v4 setSectionToLibraryAddedOverride:v5];
  [*(a1 + 32) setRelativeModelClassToMappingResponse:*(*(*(a1 + 80) + 8) + 40)];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_2;
  aBlock[3] = &unk_1E767B9E0;
  aBlock[4] = *(a1 + 80);
  v6 = _Block_copy(aBlock);
  if (*(a1 + 48))
  {
    v7 = objc_alloc_init(MPMutableSectionedCollection);
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc_init(MPMutableSectionedCollection);
  v9 = *(a1 + 56);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_3;
  v21 = &unk_1E767BA30;
  v10 = v6;
  v26 = v10;
  v11 = v8;
  v22 = v11;
  v12 = v7;
  v23 = v12;
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  [v9 enumerateSectionsUsingBlock:&v18];
  [*(a1 + 32) setUnpersonalizedContentDescriptors:{v11, v18, v19, v20, v21}];
  v13 = [[MPModelLibraryResponse alloc] initWithRequest:*(a1 + 64)];
  v14 = [(MPModelResponse *)[MPStoreLibraryPersonalizationResponse alloc] initWithRequest:*(*(a1 + 72) + 280)];
  [(MPStoreLibraryPersonalizationResponse *)v14 setLibraryResponse:v13];
  [(MPStoreLibraryPersonalizationResponse *)v14 setRepresentedObjectResults:v12];
  v15 = [[MPLazySectionedCollection alloc] initWithDataSource:*(a1 + 32)];
  [(MPModelResponse *)v14 setResults:v15];

  v16 = *(a1 + 72);
  v17 = v16[36];
  if (v17)
  {
    (*(v17 + 16))(v16[36], v14, 0);
    v16 = *(a1 + 72);
  }

  [v16 finishWithError:0];
  [v3 finish];
}

void __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((*(*(a1 + 72) + 8) + 48));
  if (v3)
  {
    v4 = *(*(*(a1 + 80) + 8) + 40);
    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:514 valueOptions:0 capacity:1];
      v6 = *(*(a1 + 80) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 80) + 8) + 40);
    }

    [v4 setObject:v3 forKey:*(a1 + 96)];
  }

  if (*(a1 + 104) == 1)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_2_54;
    v11[3] = &unk_1E767BAD0;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = v3;
    v14 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 72);
    v15 = v9;
    v17 = v10;
    objc_copyWeak(&v18, (a1 + 88));
    v16 = *(a1 + 64);
    [v8 enumerateIndexesUsingBlock:v11];
    objc_destroyWeak(&v18);
  }

  os_unfair_lock_unlock((*(*(a1 + 72) + 8) + 48));
}

void __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_2_54(uint64_t a1, uint64_t a2)
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x4812000000;
  v37 = __Block_byref_object_copy__55;
  v38 = __Block_byref_object_dispose__56;
  v39 = "";
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__32682;
  v32 = __Block_byref_object_dispose__32683;
  v33 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_58;
  v24[3] = &unk_1E767BA80;
  v4 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = &v28;
  v27 = &v34;
  [v4 enumerateItemsInSectionAtIndex:a2 usingBlock:v24];
  v5 = v29;
  if (!v29[5])
  {
    v7 = v35[6];
    v6 = v35[7];
    v8 = [*(a1 + 32) numberOfItemsInSection:a2];
    v5 = v29;
    if (v8 > (v6 - v7) >> 3)
    {
      v9 = v29[5];
      v29[5] = MEMORY[0x1E695E110];

      v5 = v29;
    }
  }

  v10 = v5[5];
  if (v10)
  {
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v11 setObject:v10 forKey:v12];
  }

  else
  {
    v12 = objc_alloc_init(_MPStoreLibraryPersonalizationAggregateLibraryAddedOperation);
    v22 = 0;
    v23 = 0;
    __p = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v35[6], v35[7], (v35[7] - v35[6]) >> 3);
    [(_MPStoreLibraryPersonalizationAggregateLibraryAddedOperation *)v12 setPersistentIDs:&__p];
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    [(_MPStoreLibraryPersonalizationAggregateLibraryAddedOperation *)v12 setLibraryView:*(a1 + 56)];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_2_61;
    v17 = &unk_1E767BAA8;
    v19 = *(a1 + 72);
    v18 = *(a1 + 48);
    v20 = a2;
    [(_MPStoreLibraryPersonalizationAggregateLibraryAddedOperation *)v12 setResponseHandler:&v14];
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    [WeakRetained addDependency:{v12, v14, v15, v16, v17}];

    [*(*(a1 + 64) + 272) addOperation:v12];
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_58(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v7 = v16;
    v8 = [v7 model];
    v9 = [v8 relativeModelObjectForStoreLibraryPersonalization];

    if (v9)
    {
      v10 = [v9 identifiers];
      v11 = [*(a1 + 32) libraryIdentifierSetForIdentifierSet:v10];
      v12 = [v11 library];
      v13 = [v12 persistentID];

      v17 = v13;
      if (v13)
      {
        std::vector<long long>::push_back[abi:ne200100](*(*(a1 + 48) + 8) + 48, &v17);
      }

      else
      {
        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = MEMORY[0x1E695E110];
      }
    }

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a4 = 1;
    }
  }
}

void __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_2_61(void *a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1[5] + 8) + 48));
  v4 = a1[4];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  [v4 setObject:v5 forKey:v6];

  v7 = (*(a1[5] + 8) + 48);

  os_unfair_lock_unlock(v7);
}

BOOL __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v6 = v3;
    if ([v6 personalizationStyle] == 4)
    {
      v7 = [v6 model];
      v8 = [v7 relativeModelObjectForStoreLibraryPersonalization];

      if (v8)
      {
        v9 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:objc_opt_class()];
        v10 = [v8 identifiers];
        v11 = [v9 libraryIdentifierSetForIdentifierSet:v10];
        v5 = v11 != 0;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(*(a1 + 64) + 16))())
  {
    [*(a1 + 32) appendSection:v5];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) sectionAtIndex:a3];
    [v6 appendSection:v7];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_4;
    v9[3] = &unk_1E767BA08;
    v8 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = a3;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    [v8 enumerateItemsInSectionAtIndex:a3 usingBlock:v9];
  }
}

void __56__MPStoreLibraryPersonalizationRequestOperation_execute__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if ((*(*(a1 + 56) + 16))())
  {
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:*(a1 + 64)];
    [*(a1 + 32) appendItem:v8];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) itemAtIndexPath:v5];
    [v6 appendItem:v7];
  }
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = MPStoreLibraryPersonalizationRequestOperation;
  [(MPAsyncOperation *)&v3 cancel];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
}

+ (id)_personalizedArtistResponseForStoreID:(int64_t)d modelObject:(id)object groupingKey:(id)key personalizationStyle:(int64_t)style personalizationProperties:(id)properties libraryView:(id)view libraryRequest:(id)request matchingStoreIDAndName:(BOOL)self0
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  objectCopy = object;
  keyCopy = key;
  propertiesCopy = properties;
  viewCopy = view;
  nameCopy = name;
  [[MPModelLibraryResponse alloc] initWithRequest:request];
  v14 = mlcore::ArtistPropertyStoreID(objc_alloc_init(MPMutableSectionedCollection));
  LODWORD(v21) = 0;
  std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
}

+ (uint64_t)_personalizedArtistResponseForStoreID:modelObject:groupingKey:personalizationStyle:personalizationProperties:libraryView:libraryRequest:matchingStoreIDAndName:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z208+[MPStoreLibraryPersonalizationRequestOperation _personalizedArtistResponseForStoreID:modelObject:groupingKey:personalizationStyle:personalizationProperties:libraryView:libraryRequest:matchingStoreIDAndName:]E3$_2"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

+ (void)_personalizedArtistResponseForStoreID:modelObject:groupingKey:personalizationStyle:personalizationProperties:libraryView:libraryRequest:matchingStoreIDAndName:
{
  v6 = mlcore::ArtistPropertyPersistentID(self);
  v7 = MPMediaLibraryPropertyCacheValueForProperty(v6, a2);
  [v7 longLongValue];

  v9 = mlcore::ArtistPropertyGroupingKey(v8);
  v10 = MPMediaLibraryPropertyCacheValueForProperty(v9, a2);
  if (**(self + 8) != 1 || (v11 = **(self + 16), !(v11 | v10)) || [v11 isEqualToData:v10])
  {
    v12 = **(self + 24);
    if (v12)
    {
      [v12 mlCoreView];
      v13 = *v23;
    }

    else
    {
      v13 = 0uLL;
    }

    v42 = v13;
    *v23 = 0uLL;
    mlcore::EntityCache::EntityCache();
    if (*(&v42 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v42 + 1));
    }

    if (*&v23[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v23[8]);
    }

    v14 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];
    v15 = v14;
    if (v14)
    {
      [v14 MLCorePropertiesForPropertySet:**(self + 40)];
    }

    else
    {
      __p = 0;
      v40 = 0;
      v41 = 0;
    }

    [v15 entityClass];
    mlcore::EntityCache::setPropertiesToFetchForEntityClass();
    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    [v15 entityClass];
    *&v32[8] = 0u;
    memset(&v23[8], 0, 32);
    v24 = 1065353216;
    v25 = 0u;
    v26 = 0u;
    v27 = 1065353216;
    v28 = 0u;
    v29 = 0u;
    v30 = 1065353216;
    v31 = 0u;
    *v32 = 0u;
    *&v32[16] = 1065353216;
    v34 = 0u;
    v33 = 0u;
    v35 = 1065353216;
    *v23 = MEMORY[0x1E69B0818] + 16;
    v36 = MEMORY[0x1E69B0818] + 56;
    mlcore::EntityCache::entityForClassAndPersistentID();
    mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v23);
    if (v37)
    {
      v16 = **(self + 40);
      v17 = (*(*v37 + 48))(v37);
      v18 = mlcore::Entity::propertyCache(v37);
      personalizationTranslationContext = [**(self + 56) personalizationTranslationContext];
      v20 = [v15 objectForPropertySet:v16 entityClass:v17 propertyCache:v18 context:personalizationTranslationContext];
      v21 = *(self + 48);
      v22 = *v21;
      *v21 = v20;
    }

    *a3 = 1;
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    MEMORY[0x1A58DF7C0](v43);
  }
}

+ (__n128)_personalizedArtistResponseForStoreID:modelObject:groupingKey:personalizationStyle:personalizationProperties:libraryView:libraryRequest:matchingStoreIDAndName:
{
  *a2 = &unk_1F14977C8;
  result = *(self + 8);
  v3 = *(self + 24);
  v4 = *(self + 40);
  *(a2 + 56) = *(self + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

+ (id)personalizedResponseForContentDescriptor:(id)descriptor requestedProperties:(id)properties matchAlbumArtistOnStoreIdAndName:(BOOL)name
{
  nameCopy = name;
  v85[9] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  propertiesCopy = properties;
  model = [descriptorCopy model];
  v78 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];
  personalizationStyle = [descriptorCopy personalizationStyle];
  v8 = personalizationStyle;
  v77 = 0;
  if ((personalizationStyle - 1) < 2)
  {
    v9 = [MPStoreLibraryPersonalizationContentDescriptor lightweightPersonalizationPropertiesForModelClass:objc_opt_class()];
    v10 = [propertiesCopy propertySetByIntersectingWithPropertySet:v9];
    v11 = [MPStoreLibraryPersonalizationContentDescriptor requiredLightweightPersonalizationPropertiesForModelClass:objc_opt_class() requestedProperties:propertiesCopy];
    v12 = [v10 propertySetByCombiningWithPropertySet:v11];
    goto LABEL_5;
  }

  if ((personalizationStyle - 3) < 2)
  {
    v9 = [MPStoreLibraryPersonalizationContentDescriptor lightweightPersonalizationPropertiesForModelClass:objc_opt_class()];
    v10 = [propertiesCopy propertySetByCombiningWithPropertySet:v9];
    v11 = [MPStoreLibraryPersonalizationContentDescriptor requiredLightweightPersonalizationPropertiesForModelClass:objc_opt_class() requestedProperties:propertiesCopy];
    v12 = [v10 propertySetByCombiningWithPropertySet:v11];
LABEL_5:
    v13 = v77;
    v77 = v12;

    goto LABEL_6;
  }

  v26 = +[MPPropertySet emptyPropertySet];
  v27 = v77;
  v77 = v26;

  if (!v8)
  {
    v28 = objc_alloc_init(MPModelRequest);
    v17 = [[MPModelResponse alloc] initWithRequest:v28];
    v29 = objc_alloc_init(MPMutableSectionedCollection);
    [(MPMutableSectionedCollection *)v29 appendSection:&stru_1F149ECA8];
    [(MPMutableSectionedCollection *)v29 appendItem:model];
    [(MPModelResponse *)v17 setResults:v29];

    goto LABEL_30;
  }

LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
    v15 = [MPStoreLibraryPersonalizationRequest libraryViewWithUserIdentity:activeAccount];

    v76 = objc_alloc_init(MPModelLibraryRequest);
    library = [v15 library];
    [(MPModelLibraryRequest *)v76 setMediaLibrary:library];

    -[MPModelLibraryRequest setFilteringOptions:](v76, "setFilteringOptions:", [v15 filteringOptions]);
    v17 = [[MPModelLibraryResponse alloc] initWithRequest:v76];
    v18 = objc_alloc_init(MPMutableSectionedCollection);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    identifiers = [model identifiers];
    universalStore = [identifiers universalStore];
    adamID = [universalStore adamID];

    v72 = adamID;
    if (adamID)
    {
      std::vector<long long>::push_back[abi:ne200100](&v73, &v72);
    }

    universalStore2 = [identifiers universalStore];
    subscriptionAdamID = [universalStore2 subscriptionAdamID];

    v71 = subscriptionAdamID;
    if (subscriptionAdamID)
    {
      std::vector<long long>::push_back[abi:ne200100](&v73, &v71);
    }

    if (v74 != v73)
    {
      if ((v74 - v73) >= 9)
      {
        v85[1] = mlcore::ItemPropertyStoreID(v24);
        std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
      }

      v25 = mlcore::ItemPropertyStoreID(v24);
      mlcore::ItemPropertySubscriptionStoreItemID(v25);
      v81 = 0uLL;
      *&v82 = 0;
      operator new();
    }

    [(MPModelResponse *)v17 setResults:v18];

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }

    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v49 = [MPModelResponse alloc];
        v50 = objc_alloc_init(MPModelRequest);
        v17 = [(MPModelResponse *)v49 initWithRequest:v50];

        v51 = objc_alloc_init(MPMutableSectionedCollection);
        [(MPModelResponse *)v17 setResults:v51];

        goto LABEL_30;
      }

      activeAccount2 = [MEMORY[0x1E69E4680] activeAccount];
      v41 = [MPStoreLibraryPersonalizationRequest libraryViewWithUserIdentity:activeAccount2];

      v66 = v41;
      v42 = objc_alloc_init(MPModelLibraryRequest);
      library2 = [v41 library];
      [(MPModelLibraryRequest *)v42 setMediaLibrary:library2];

      -[MPModelLibraryRequest setFilteringOptions:](v42, "setFilteringOptions:", [v41 filteringOptions]);
      v68 = model;
      identifiers2 = [(__CFString *)v68 identifiers];
      universalStore3 = [identifiers2 universalStore];
      adamID2 = [universalStore3 adamID];

      name = [(__CFString *)v68 name];
      canAccessAccountStore = [MEMORY[0x1E69E4688] canAccessAccountStore];
      v47 = MEMORY[0x1E69B34E0];
      if (canAccessAccountStore)
      {
        activeAccount3 = [MEMORY[0x1E69E4680] activeAccount];
        autoupdatingSharedLibrary = [v47 musicLibraryForUserAccount:activeAccount3];
      }

      else
      {
        autoupdatingSharedLibrary = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
      }

      v52 = [[MPModelLibraryResponse alloc] initWithRequest:v42];
      v53 = objc_alloc_init(MPMutableSectionedCollection);
      [(MPModelResponse *)v52 setResults:v53];
      if (adamID2)
      {
        if (!nameCopy)
        {
          goto LABEL_51;
        }

        if (name && [name length])
        {
          v54 = [autoupdatingSharedLibrary groupingKeyForString:name];
LABEL_52:
          LOBYTE(v62) = nameCopy;
          v17 = [MPStoreLibraryPersonalizationRequestOperation _personalizedArtistResponseForStoreID:adamID2 modelObject:model groupingKey:v54 personalizationStyle:v8 personalizationProperties:v77 libraryView:v66 libraryRequest:v42 matchingStoreIDAndName:v62];

          v55 = 0;
          goto LABEL_53;
        }

        v63 = MEMORY[0x1E69B13D8];
        v56 = v68;
        if (!v68)
        {
          v56 = @"<nil>";
        }

        v83 = @"modelObject";
        v84 = v56;
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v85[0] = v57;
        v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
        [v63 snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"Album Artist With No Name" context:@"Request to personalize album artist with missing name" triggerThresholdValues:0 events:v58 completion:0];

        v55 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPStoreLibraryPersonalizationRequestOperationErrorDomain" code:1 debugDescription:@"No album artist name to favorite."];
        if (!v55)
        {
LABEL_51:
          v54 = 0;
          goto LABEL_52;
        }

        v59 = [MPModelResponse alloc];
        v60 = objc_alloc_init(MPModelRequest);
        v17 = [(MPModelResponse *)v59 initWithRequest:v60];

        v61 = objc_alloc_init(MPMutableSectionedCollection);
        v54 = 0;
        v53 = v61;
        [(MPModelResponse *)v17 setResults:v61];
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v17 = v52;
      }

LABEL_53:

      goto LABEL_30;
    }
  }

  activeAccount4 = [MEMORY[0x1E69E4680] activeAccount];
  v80 = [MPStoreLibraryPersonalizationRequest libraryViewWithUserIdentity:activeAccount4];

  v76 = objc_alloc_init(MPModelLibraryRequest);
  library3 = [v80 library];
  [(MPModelLibraryRequest *)v76 setMediaLibrary:library3];

  -[MPModelLibraryRequest setFilteringOptions:](v76, "setFilteringOptions:", [v80 filteringOptions]);
  v17 = [[MPModelLibraryResponse alloc] initWithRequest:v76];
  v32 = objc_alloc_init(MPMutableSectionedCollection);
  v73 = 0;
  v74 = 0;
  v75 = 0;
  identifiers3 = [model identifiers];
  universalStore4 = [identifiers3 universalStore];
  adamID3 = [universalStore4 adamID];

  v72 = adamID3;
  if (adamID3)
  {
    std::vector<long long>::push_back[abi:ne200100](&v73, &v72);
  }

  universalStore5 = [identifiers3 universalStore];
  subscriptionAdamID2 = [universalStore5 subscriptionAdamID];

  v71 = subscriptionAdamID2;
  if (subscriptionAdamID2)
  {
    std::vector<long long>::push_back[abi:ne200100](&v73, &v71);
  }

  if (v74 != v73)
  {
    mlcore::ItemPropertyStorePlaylistID(v38);
    std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
  }

  [(MPModelResponse *)v17 setResults:v32];

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

LABEL_30:

  return v17;
}

+ (uint64_t)personalizedResponseForContentDescriptor:requestedProperties:matchAlbumArtistOnStoreIdAndName:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z143+[MPStoreLibraryPersonalizationRequestOperation personalizedResponseForContentDescriptor:requestedProperties:matchAlbumArtistOnStoreIdAndName:]E3$_0"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

+ (void)personalizedResponseForContentDescriptor:requestedProperties:matchAlbumArtistOnStoreIdAndName:
{
  v6 = mlcore::ItemPropertyStoreID(self);
  v7 = MPMediaLibraryPropertyCacheValueForProperty(v6, a2);
  longLongValue = [v7 longLongValue];

  if (**(self + 8) == longLongValue || **(self + 16) == longLongValue || (v10 = mlcore::ItemPropertySubscriptionStoreItemID(v9), MPMediaLibraryPropertyCacheValueForProperty(v10, a2), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 longLongValue], v11, **(self + 8) == v12) || **(self + 16) == v12)
  {
    entityClass = [**(self + 24) entityClass];
    v14 = **(self + 24);
    v15 = **(self + 40);
    personalizationTranslationContext = [**(self + 48) personalizationTranslationContext];
    v17 = [v14 objectForPropertySet:v15 entityClass:entityClass propertyCache:a2 context:personalizationTranslationContext];
    v18 = *(self + 32);
    v19 = *v18;
    *v18 = v17;

    *a3 = 1;
  }
}

+ (__n128)personalizedResponseForContentDescriptor:requestedProperties:matchAlbumArtistOnStoreIdAndName:
{
  *a2 = &unk_1F14976B8;
  result = *(self + 8);
  v3 = *(self + 24);
  *(a2 + 40) = *(self + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

+ (id)personalizedResponseForContentDescriptor:(id)descriptor requestedProperties:(id)properties
{
  v4 = [MPStoreLibraryPersonalizationRequestOperation personalizedResponseForContentDescriptor:descriptor requestedProperties:properties matchAlbumArtistOnStoreIdAndName:1];

  return v4;
}

@end