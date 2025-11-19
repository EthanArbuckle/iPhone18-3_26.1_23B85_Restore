@interface MPStoreLibraryPersonalizationRequestOperation
+ (__n128)_personalizedArtistResponseForStoreID:modelObject:groupingKey:personalizationStyle:personalizationProperties:libraryView:libraryRequest:matchingStoreIDAndName:;
+ (__n128)personalizedResponseForContentDescriptor:requestedProperties:matchAlbumArtistOnStoreIdAndName:;
+ (id)_personalizedArtistResponseForStoreID:(int64_t)a3 modelObject:(id)a4 groupingKey:(id)a5 personalizationStyle:(int64_t)a6 personalizationProperties:(id)a7 libraryView:(id)a8 libraryRequest:(id)a9 matchingStoreIDAndName:(BOOL)a10;
+ (id)personalizedResponseForContentDescriptor:(id)a3 requestedProperties:(id)a4;
+ (id)personalizedResponseForContentDescriptor:(id)a3 requestedProperties:(id)a4 matchAlbumArtistOnStoreIdAndName:(BOOL)a5;
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
  v3 = self;
  v149 = *MEMORY[0x1E69E9840];
  if (![(MPAsyncOperation *)self isCancelled])
  {
    if (!v3->_operationQueue)
    {
      v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      operationQueue = v3->_operationQueue;
      v3->_operationQueue = v5;

      [(NSOperationQueue *)v3->_operationQueue setName:@"com.apple.MediaPlayer.MPStoreLibraryPersonalizationRequestOperation.operationQueue"];
      [(NSOperationQueue *)v3->_operationQueue setMaxConcurrentOperationCount:1];
      v7 = v3->_operationQueue;
      v8 = [MEMORY[0x1E696AF00] currentThread];
      -[NSOperationQueue setQualityOfService:](v7, "setQualityOfService:", [v8 qualityOfService]);

      v3 = self;
    }

    v9 = [(MPStoreLibraryPersonalizationRequestOperation *)v3 request];
    v10 = [v9 ignoreExplicitContentRestrictions];

    v11 = [(MPStoreLibraryPersonalizationRequestOperation *)self request];
    v12 = [v11 mediaLibraryOverrideForTestingOnly];

    v73 = v12;
    if (v12)
    {
      v87 = [MPStoreLibraryPersonalizationRequest libraryViewWithMediaLibraryOverrideForTestingOnly:v12];
    }

    else
    {
      [(MPAsyncOperation *)self userIdentity];
      if (v10)
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
    v14 = [v87 library];
    [(MPModelLibraryRequest *)v78 setMediaLibrary:v14];

    -[MPModelLibraryRequest setFilteringOptions:](v78, "setFilteringOptions:", [v87 filteringOptions]);
    v77 = objc_alloc_init(MPStoreLibraryPersonalizationCollectionDataSource);
    v15 = [(MPModelRequest *)self->_request itemProperties];
    [(MPStoreLibraryPersonalizationCollectionDataSource *)v77 setItemProperties:v15];

    v16 = [(MPStoreLibraryPersonalizationRequest *)self->_request itemIndexPathToOverridePropertySet];
    [(MPStoreLibraryPersonalizationCollectionDataSource *)v77 setItemIndexPathToOverridePropertySet:v16];

    v17 = [(MPModelRequest *)self->_request sectionProperties];
    [(MPStoreLibraryPersonalizationCollectionDataSource *)v77 setSectionProperties:v17];

    [(MPStoreLibraryPersonalizationCollectionDataSource *)v77 setLibraryView:v87];
    v76 = [(MPStoreLibraryPersonalizationRequest *)self->_request representedObjects];
    v75 = [(MPStoreLibraryPersonalizationRequest *)self->_request unpersonalizedContentDescriptors];
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
    v72 = v76;
    v138 = v72;
    v96 = v75;
    v139 = v96;
    v70 = v78;
    v140 = v70;
    v141 = self;
    val = [(MPAsyncBlockOperation *)v18 initWithStartHandler:v135];
    v94 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:514 valueOptions:0 capacity:1];
    v19 = [v96 numberOfSections];
    if (v19 < 1)
    {
      v86 = 0;
    }

    else
    {
      v101 = v19;
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
              v2 = [v24 model];
              v26 = [v2 relativeModelObjectForStoreLibraryPersonalization];

              if (v26)
              {
                v2 = [v26 identifiers];
                if (v2)
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

                  v29 = [MEMORY[0x1E695DF20] dictionaryWithObject:v2 forKey:v26];
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
          v32 = [v30 model];
          v33 = [v32 relativeModelObjectForStoreLibraryPersonalization];

          if (v33)
          {
            v34 = [v33 identifiers];
            if (v34)
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

              v2 = [MEMORY[0x1E695DF20] dictionaryWithObject:v34 forKey:v33];
              [v37 addObject:v2];
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

    v97 = [MEMORY[0x1E695DF70] array];
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

            v44 = [*(*(&v125 + 1) + 8 * j) allValues];
            [v97 addObjectsFromArray:v44];
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
      v46 = v97;
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
    v119 = self;
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

    v100 = [MEMORY[0x1E695DF90] dictionary];
    v105 = [MEMORY[0x1E695DF70] array];
    v48 = [MEMORY[0x1E69E4688] canAccessAccountStore];
    v49 = MEMORY[0x1E69B34E0];
    if (v48)
    {
      v50 = [MEMORY[0x1E69E4680] activeAccount];
      v102 = [v49 musicLibraryForUserAccount:v50];
    }

    else
    {
      v102 = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
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

      [(MPStoreLibraryMappingRequestOperation *)v88 setAlbumArtistNamesToIdentifierSets:v105];
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
      v52 = [v51 allKeys];
      v53 = [v52 countByEnumeratingWithState:&v106 objects:v145 count:16];
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
    v99 = v52;
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
      v58 = [v57 universalStore];
      v59 = [v58 adamID];

      v60 = [v56 name];
      v61 = v60;
      if (v60)
      {
        if ([v60 length])
        {
          v62 = 1;
        }

        else
        {
          v62 = v59 == 0;
        }

        if (!v62)
        {
LABEL_102:
          v63 = [MEMORY[0x1E696AD98] numberWithLongLong:v59];
          v64 = [v100 objectForKey:v63];
          v65 = v64 == 0;

          if (v65)
          {
            [MEMORY[0x1E69B13D8] snapshotWithDomain:v98 type:@"Bug" subType:@"Album Artist With No Name" context:@"Request to personalize album artist with missing name" triggerThresholdValues:0 events:&unk_1F1509DD8 completion:0];
          }
        }
      }

      else if (v59)
      {
        goto LABEL_102;
      }

      v66 = [v102 groupingKeyForString:v61];
      v67 = MEMORY[0x1E695DF20];
      v68 = v66;
      if (!v66)
      {
        v2 = [MEMORY[0x1E695DFB0] null];
        v68 = v2;
      }

      v69 = [v67 dictionaryWithObject:v68 forKey:v57];
      if (!v66)
      {
      }

      [v105 addObject:v69];

      if (v53 == ++v55)
      {
        v52 = v99;
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

+ (id)_personalizedArtistResponseForStoreID:(int64_t)a3 modelObject:(id)a4 groupingKey:(id)a5 personalizationStyle:(int64_t)a6 personalizationProperties:(id)a7 libraryView:(id)a8 libraryRequest:(id)a9 matchingStoreIDAndName:(BOOL)a10
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a7;
  v16 = a8;
  v15 = a10;
  [[MPModelLibraryResponse alloc] initWithRequest:a9];
  v14 = mlcore::ArtistPropertyStoreID(objc_alloc_init(MPMutableSectionedCollection));
  LODWORD(v21) = 0;
  std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
}

+ (uint64_t)_personalizedArtistResponseForStoreID:modelObject:groupingKey:personalizationStyle:personalizationProperties:libraryView:libraryRequest:matchingStoreIDAndName:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z208+[MPStoreLibraryPersonalizationRequestOperation _personalizedArtistResponseForStoreID:modelObject:groupingKey:personalizationStyle:personalizationProperties:libraryView:libraryRequest:matchingStoreIDAndName:]E3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

+ (void)_personalizedArtistResponseForStoreID:modelObject:groupingKey:personalizationStyle:personalizationProperties:libraryView:libraryRequest:matchingStoreIDAndName:
{
  v6 = mlcore::ArtistPropertyPersistentID(a1);
  v7 = MPMediaLibraryPropertyCacheValueForProperty(v6, a2);
  [v7 longLongValue];

  v9 = mlcore::ArtistPropertyGroupingKey(v8);
  v10 = MPMediaLibraryPropertyCacheValueForProperty(v9, a2);
  if (**(a1 + 8) != 1 || (v11 = **(a1 + 16), !(v11 | v10)) || [v11 isEqualToData:v10])
  {
    v12 = **(a1 + 24);
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
      [v14 MLCorePropertiesForPropertySet:**(a1 + 40)];
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
      v16 = **(a1 + 40);
      v17 = (*(*v37 + 48))(v37);
      v18 = mlcore::Entity::propertyCache(v37);
      v19 = [**(a1 + 56) personalizationTranslationContext];
      v20 = [v15 objectForPropertySet:v16 entityClass:v17 propertyCache:v18 context:v19];
      v21 = *(a1 + 48);
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
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

+ (id)personalizedResponseForContentDescriptor:(id)a3 requestedProperties:(id)a4 matchAlbumArtistOnStoreIdAndName:(BOOL)a5
{
  v5 = a5;
  v85[9] = *MEMORY[0x1E69E9840];
  v69 = a3;
  v70 = a4;
  v79 = [v69 model];
  v78 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class()];
  v7 = [v69 personalizationStyle];
  v8 = v7;
  v77 = 0;
  if ((v7 - 1) < 2)
  {
    v9 = [MPStoreLibraryPersonalizationContentDescriptor lightweightPersonalizationPropertiesForModelClass:objc_opt_class()];
    v10 = [v70 propertySetByIntersectingWithPropertySet:v9];
    v11 = [MPStoreLibraryPersonalizationContentDescriptor requiredLightweightPersonalizationPropertiesForModelClass:objc_opt_class() requestedProperties:v70];
    v12 = [v10 propertySetByCombiningWithPropertySet:v11];
    goto LABEL_5;
  }

  if ((v7 - 3) < 2)
  {
    v9 = [MPStoreLibraryPersonalizationContentDescriptor lightweightPersonalizationPropertiesForModelClass:objc_opt_class()];
    v10 = [v70 propertySetByCombiningWithPropertySet:v9];
    v11 = [MPStoreLibraryPersonalizationContentDescriptor requiredLightweightPersonalizationPropertiesForModelClass:objc_opt_class() requestedProperties:v70];
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
    [(MPMutableSectionedCollection *)v29 appendItem:v79];
    [(MPModelResponse *)v17 setResults:v29];

    goto LABEL_30;
  }

LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v14 = [MEMORY[0x1E69E4680] activeAccount];
    v15 = [MPStoreLibraryPersonalizationRequest libraryViewWithUserIdentity:v14];

    v76 = objc_alloc_init(MPModelLibraryRequest);
    v16 = [v15 library];
    [(MPModelLibraryRequest *)v76 setMediaLibrary:v16];

    -[MPModelLibraryRequest setFilteringOptions:](v76, "setFilteringOptions:", [v15 filteringOptions]);
    v17 = [[MPModelLibraryResponse alloc] initWithRequest:v76];
    v18 = objc_alloc_init(MPMutableSectionedCollection);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v19 = [v79 identifiers];
    v20 = [v19 universalStore];
    v21 = [v20 adamID];

    v72 = v21;
    if (v21)
    {
      std::vector<long long>::push_back[abi:ne200100](&v73, &v72);
    }

    v22 = [v19 universalStore];
    v23 = [v22 subscriptionAdamID];

    v71 = v23;
    if (v23)
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

      v40 = [MEMORY[0x1E69E4680] activeAccount];
      v41 = [MPStoreLibraryPersonalizationRequest libraryViewWithUserIdentity:v40];

      v66 = v41;
      v42 = objc_alloc_init(MPModelLibraryRequest);
      v43 = [v41 library];
      [(MPModelLibraryRequest *)v42 setMediaLibrary:v43];

      -[MPModelLibraryRequest setFilteringOptions:](v42, "setFilteringOptions:", [v41 filteringOptions]);
      v68 = v79;
      v64 = [(__CFString *)v68 identifiers];
      v44 = [v64 universalStore];
      v45 = [v44 adamID];

      v67 = [(__CFString *)v68 name];
      v46 = [MEMORY[0x1E69E4688] canAccessAccountStore];
      v47 = MEMORY[0x1E69B34E0];
      if (v46)
      {
        v48 = [MEMORY[0x1E69E4680] activeAccount];
        v65 = [v47 musicLibraryForUserAccount:v48];
      }

      else
      {
        v65 = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
      }

      v52 = [[MPModelLibraryResponse alloc] initWithRequest:v42];
      v53 = objc_alloc_init(MPMutableSectionedCollection);
      [(MPModelResponse *)v52 setResults:v53];
      if (v45)
      {
        if (!v5)
        {
          goto LABEL_51;
        }

        if (v67 && [v67 length])
        {
          v54 = [v65 groupingKeyForString:v67];
LABEL_52:
          LOBYTE(v62) = v5;
          v17 = [MPStoreLibraryPersonalizationRequestOperation _personalizedArtistResponseForStoreID:v45 modelObject:v79 groupingKey:v54 personalizationStyle:v8 personalizationProperties:v77 libraryView:v66 libraryRequest:v42 matchingStoreIDAndName:v62];

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

  v30 = [MEMORY[0x1E69E4680] activeAccount];
  v80 = [MPStoreLibraryPersonalizationRequest libraryViewWithUserIdentity:v30];

  v76 = objc_alloc_init(MPModelLibraryRequest);
  v31 = [v80 library];
  [(MPModelLibraryRequest *)v76 setMediaLibrary:v31];

  -[MPModelLibraryRequest setFilteringOptions:](v76, "setFilteringOptions:", [v80 filteringOptions]);
  v17 = [[MPModelLibraryResponse alloc] initWithRequest:v76];
  v32 = objc_alloc_init(MPMutableSectionedCollection);
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v33 = [v79 identifiers];
  v34 = [v33 universalStore];
  v35 = [v34 adamID];

  v72 = v35;
  if (v35)
  {
    std::vector<long long>::push_back[abi:ne200100](&v73, &v72);
  }

  v36 = [v33 universalStore];
  v37 = [v36 subscriptionAdamID];

  v71 = v37;
  if (v37)
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
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

+ (void)personalizedResponseForContentDescriptor:requestedProperties:matchAlbumArtistOnStoreIdAndName:
{
  v6 = mlcore::ItemPropertyStoreID(a1);
  v7 = MPMediaLibraryPropertyCacheValueForProperty(v6, a2);
  v8 = [v7 longLongValue];

  if (**(a1 + 8) == v8 || **(a1 + 16) == v8 || (v10 = mlcore::ItemPropertySubscriptionStoreItemID(v9), MPMediaLibraryPropertyCacheValueForProperty(v10, a2), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 longLongValue], v11, **(a1 + 8) == v12) || **(a1 + 16) == v12)
  {
    v13 = [**(a1 + 24) entityClass];
    v14 = **(a1 + 24);
    v15 = **(a1 + 40);
    v16 = [**(a1 + 48) personalizationTranslationContext];
    v17 = [v14 objectForPropertySet:v15 entityClass:v13 propertyCache:a2 context:v16];
    v18 = *(a1 + 32);
    v19 = *v18;
    *v18 = v17;

    *a3 = 1;
  }
}

+ (__n128)personalizedResponseForContentDescriptor:requestedProperties:matchAlbumArtistOnStoreIdAndName:
{
  *a2 = &unk_1F14976B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

+ (id)personalizedResponseForContentDescriptor:(id)a3 requestedProperties:(id)a4
{
  v4 = [MPStoreLibraryPersonalizationRequestOperation personalizedResponseForContentDescriptor:a3 requestedProperties:a4 matchAlbumArtistOnStoreIdAndName:1];

  return v4;
}

@end