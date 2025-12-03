@interface MPModelStoreBrowseRequestOperation
- (double)adjustTimeoutInterval:(double)interval;
- (id)_nestedRequestsOperationQueue;
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error;
- (void)_produceCarPlayResponseWithParser:(id)parser withNestedRequestsForEmptyBrickSectionsInOperationQueue:(id)queue completion:(id)completion;
- (void)_produceRegularResponseWithParser:(id)parser completion:(id)completion;
- (void)_produceResponseWithParser:(id)parser results:(id)results changeDetails:(id)details completion:(id)completion;
- (void)cancel;
- (void)execute;
- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion;
@end

@implementation MPModelStoreBrowseRequestOperation

- (void)_produceResponseWithParser:(id)parser results:(id)results changeDetails:(id)details completion:(id)completion
{
  parserCopy = parser;
  resultsCopy = results;
  detailsCopy = details;
  completionCopy = completion;
  if (!resultsCopy)
  {
    goto LABEL_6;
  }

  v14 = [MPModelStoreBrowseResponse alloc];
  request = [(MPStoreModelRequestOperation *)self request];
  v16 = [(MPModelResponse *)v14 initWithRequest:request];

  [(MPModelStoreBrowseResponse *)v16 setParser:parserCopy];
  if ([resultsCopy numberOfSections] >= 1)
  {
    [(MPModelResponse *)v16 setResults:resultsCopy];
  }

  [(MPModelStoreBrowseResponse *)v16 setChangeDetails:detailsCopy];
  if (v16)
  {
    v17 = 0;
  }

  else
  {
LABEL_6:
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__MPModelStoreBrowseRequestOperation__produceResponseWithParser_results_changeDetails_completion___block_invoke;
    v20[3] = &unk_1E76819F0;
    v20[4] = self;
    v20[5] = &v21;
    [(MPStoreModelRequestOperation *)self dispatchSync:v20];
    if (*(v22 + 24) == 1)
    {
      v18 = [MPModelStoreBrowseResponse alloc];
      request2 = [(MPStoreModelRequestOperation *)self request];
      v16 = [(MPModelResponse *)v18 initWithRequest:request2];

      v17 = 0;
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];
      v16 = 0;
    }

    _Block_object_dispose(&v21, 8);
  }

  completionCopy[2](completionCopy, v16, v17);
}

- (void)_produceRegularResponseWithParser:(id)parser completion:(id)completion
{
  completionCopy = completion;
  parserCopy = parser;
  results = [parserCopy results];
  changeDetails = [parserCopy changeDetails];
  [(MPModelStoreBrowseRequestOperation *)self _produceResponseWithParser:parserCopy results:results changeDetails:changeDetails completion:completionCopy];
}

- (void)_produceCarPlayResponseWithParser:(id)parser withNestedRequestsForEmptyBrickSectionsInOperationQueue:(id)queue completion:(id)completion
{
  v81 = *MEMORY[0x1E69E9840];
  parserCopy = parser;
  queueCopy = queue;
  v29 = parserCopy;
  completionCopy = completion;
  results = [parserCopy results];
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__37622;
  v77 = __Block_byref_object_dispose__37623;
  v78 = 0;
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke;
  v70[3] = &unk_1E767CA30;
  v71 = results;
  v72 = &v73;
  v28 = v71;
  [v71 enumerateSectionsUsingBlock:v70];
  if ([v74[5] count])
  {
    v35 = [MPModelStoreBrowseSectionBuilder allSupportedPropertiesIncludingInternalOnlyProperties:1];
    v34 = +[MPModelStoreBrowseContentItemBuilder allSupportedProperties];
    [(MPStoreModelRequestOperation *)self remainingTimeInterval];
    v10 = v9;
    v11 = dispatch_group_create();
    v33 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x3032000000;
    v68[3] = __Block_byref_object_copy__37622;
    v68[4] = __Block_byref_object_dispose__37623;
    v69 = 0;
    queue = dispatch_queue_create("com.apple.MediaPlayer.MPModelStoreBrowseRequestOperation.sectionsToNestedResponseAccessQueue", 0);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v74[5];
    v12 = [obj countByEnumeratingWithState:&v64 objects:v80 count:16];
    if (v12)
    {
      v13 = *v65;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v65 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v64 + 1) + 8 * i);
          dispatch_group_enter(v11);
          v16 = objc_alloc_init(MPModelStoreBrowseRequest);
          [(MPModelStoreBrowseRequest *)v16 setDomain:0];
          [(MPModelStoreBrowseRequest *)v16 setFilteringPolicy:1];
          loadAdditionalContentURL = [v15 loadAdditionalContentURL];
          [(MPModelStoreBrowseRequest *)v16 setLoadAdditionalContentURL:loadAdditionalContentURL];

          [(MPModelRequest *)v16 setSectionProperties:v35];
          [(MPModelRequest *)v16 setItemProperties:v34];
          [(MPStoreModelRequest *)v16 setTimeoutInterval:v10];
          v58 = 0;
          v59 = &v58;
          v60 = 0x3032000000;
          v61 = __Block_byref_object_copy__37622;
          v62 = __Block_byref_object_dispose__37623;
          v63 = 0;
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_2;
          v52[3] = &unk_1E767CA80;
          v52[4] = self;
          v52[5] = v15;
          v55 = &v58;
          queueCopy2 = queue;
          v56 = v68;
          v57 = 0;
          v54 = v11;
          v18 = [(MPModelStoreBrowseRequest *)v16 newOperationWithResponseHandler:v52];
          v19 = v59[5];
          v59[5] = v18;

          v20 = v59[5];
          if (v20)
          {
            *(v20 + 329) = 1;
            v21 = v59[5];
          }

          else
          {
            v21 = 0;
          }

          [v33 setObject:v21 forKey:v15];
          [v32 addObject:v59[5]];
          _Block_object_dispose(&v58, 8);
        }

        v12 = [obj countByEnumeratingWithState:&v64 objects:v80 count:16];
      }

      while (v12);
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_5;
    v49[3] = &unk_1E76800A0;
    v49[4] = self;
    v22 = v11;
    v50 = v22;
    v23 = v33;
    v51 = v23;
    [(MPStoreModelRequestOperation *)self dispatchSync:v49];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = v32;
    v25 = [v24 countByEnumeratingWithState:&v45 objects:v79 count:16];
    if (v25)
    {
      v26 = *v46;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v46 != v26)
          {
            objc_enumerationMutation(v24);
          }

          [queueCopy addOperation:*(*(&v45 + 1) + 8 * j)];
        }

        v25 = [v24 countByEnumeratingWithState:&v45 objects:v79 count:16];
      }

      while (v25);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_6;
    block[3] = &unk_1E767CAD0;
    block[4] = self;
    v40 = v28;
    v43 = &v73;
    v44 = v68;
    v41 = v29;
    v42 = completionCopy;
    dispatch_group_notify(v22, queue, block);

    _Block_object_dispose(v68, 8);
  }

  else
  {
    [(MPModelStoreBrowseRequestOperation *)self _produceRegularResponseWithParser:parserCopy completion:completionCopy];
  }

  _Block_object_dispose(&v73, 8);
}

void __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if ([v9 isBrick] && !objc_msgSend(*(a1 + 32), "numberOfItemsInSection:", a3))
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

void __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_3;
  v18[3] = &unk_1E767FE70;
  v19 = *(a1 + 32);
  v7 = *(a1 + 64);
  v20 = &v22;
  v21 = v7;
  [v19 dispatchSync:v18];
  if (*(v23 + 24) == 1)
  {
    v8 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_4;
    block[3] = &unk_1E767CA58;
    v9 = v5;
    v10 = *(a1 + 80);
    v16 = *(a1 + 72);
    v17 = v10;
    v11 = *(a1 + 40);
    v13 = v9;
    v14 = v11;
    v15 = *(a1 + 56);
    dispatch_async(v8, block);
  }

  _Block_object_dispose(&v22, 8);
}

void __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_5(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 344), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 368);

  objc_storeStrong(v3, v2);
}

void __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_6(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = objc_alloc_init(MPMutableSectionedCollection);
    v3 = *(a1 + 40);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_7;
    v10 = &unk_1E767CAA8;
    v13 = *(a1 + 64);
    v11 = v2;
    v4 = v3;
    v5 = *(a1 + 72);
    v12 = v4;
    v14 = v5;
    v6 = v2;
    [v4 enumerateSectionsUsingBlock:&v7];
    [*(a1 + 32) _produceResponseWithParser:*(a1 + 48) results:v6 changeDetails:0 completion:{*(a1 + 56), v7, v8, v9, v10}];
  }
}

void __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(*(*(a1 + 48) + 8) + 40) containsObject:v5])
  {
    v6 = [*(*(*(a1 + 56) + 8) + 40) objectForKey:v5];
    v7 = [v6 parser];
    v8 = [v7 results];
    if ([v8 numberOfSections] == 1)
    {
      v9 = [v8 firstSection];
      v10 = [v9 uniformContentItemType];
      if ((v10 - 3) <= 1)
      {
        v11 = v10;
        v12 = [v7 sectionBuilder];
        v13 = [v5 title];
        v14 = [v5 loadAdditionalContentURL];
        v20 = v9;
        v15 = [v9 isMemberOfChartSet];
        v16 = [v5 isBrick];
        v17 = v15;
        v9 = v20;
        v18 = [v12 modelObjectWithTitle:v13 loadAdditionalContentURL:v14 uniformContentItemType:v11 isMemberOfChartSet:v17 isBrick:v16 previouslyRetrievedNestedResponse:v6];

        [*(a1 + 32) appendSection:v18];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_9;
        v21[3] = &unk_1E767CB20;
        v22 = *(a1 + 32);
        [v8 enumerateItemsInSectionAtIndex:0 usingBlock:v21];
      }
    }
  }

  else
  {
    [*(a1 + 32) appendSection:v5];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_8;
    v23[3] = &unk_1E767CB20;
    v19 = *(a1 + 40);
    v24 = *(a1 + 32);
    [v19 enumerateItemsInSectionAtIndex:a3 usingBlock:v23];
    v6 = v24;
  }
}

void __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_3(void *a1)
{
  v2 = [*(a1[4] + 368) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 == *(*(a1[7] + 8) + 40);

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    [*(a1[4] + 368) removeObjectForKey:a1[5]];
    if (![*(a1[4] + 368) count])
    {
      v3 = a1[4];
      v4 = *(v3 + 368);
      *(v3 + 368) = 0;

      v5 = a1[4];
      v6 = *(v5 + 344);
      *(v5 + 344) = 0;
    }
  }
}

void __139__MPModelStoreBrowseRequestOperation__produceCarPlayResponseWithParser_withNestedRequestsForEmptyBrickSectionsInOperationQueue_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(*(a1[7] + 8) + 40);
    if (!v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:a1[8] valueOptions:a1[8] capacity:0];
      v5 = *(a1[7] + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(a1[7] + 8) + 40);
      v2 = a1[4];
    }

    [v3 setObject:v2 forKey:a1[5]];
  }

  v7 = a1[6];

  dispatch_group_leave(v7);
}

- (id)_nestedRequestsOperationQueue
{
  nestedRequestsOperationQueue = self->_nestedRequestsOperationQueue;
  if (!nestedRequestsOperationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v5 = self->_nestedRequestsOperationQueue;
    self->_nestedRequestsOperationQueue = v4;

    [(NSOperationQueue *)self->_nestedRequestsOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)self->_nestedRequestsOperationQueue setName:@"com.apple.MediaPlayer.MPModelStoreBrowseRequestOperation.nestedRequestsOperationQueue"];
    [(NSOperationQueue *)self->_nestedRequestsOperationQueue setQualityOfService:25];
    nestedRequestsOperationQueue = self->_nestedRequestsOperationQueue;
  }

  return nestedRequestsOperationQueue;
}

- (double)adjustTimeoutInterval:(double)interval
{
  [(MPStoreModelRequestOperation *)self assertRunningInAccessQueue];
  if (!self->_didInitializeTimeoutIntervalAdditions)
  {
    request = [(MPStoreModelRequestOperation *)self request];
    v6 = 0.0;
    if (![request domain] && objc_msgSend(request, "filteringPolicy") == 1)
    {
      loadAdditionalContentURL = [request loadAdditionalContentURL];

      if (loadAdditionalContentURL)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = interval + interval;
      }
    }

    self->_timeoutIntervalAdditions = v6;
    self->_didInitializeTimeoutIntervalAdditions = 1;
  }

  return self->_timeoutIntervalAdditions + interval;
}

- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion
{
  v58[2] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  completionCopy = completion;
  request = [(MPStoreModelRequestOperation *)self request];
  previousResponse = [request previousResponse];
  domain = [request domain];
  filteringPolicy = [request filteringPolicy];
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__37622;
  v48 = __Block_byref_object_dispose__37623;
  v49 = 0;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __81__MPModelStoreBrowseRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke;
  v43[3] = &unk_1E767CA08;
  v43[4] = self;
  v43[5] = &v54;
  v43[8] = domain;
  v43[9] = filteringPolicy;
  v43[6] = &v50;
  v43[7] = &v44;
  [(MPStoreModelRequestOperation *)self dispatchSync:v43];
  v9 = 0;
  v10 = 0;
  if (filteringPolicy == 1 && !domain)
  {
    v9 = v55[3] == 0;
    v10 = v9 << 8;
  }

  previousResponse2 = [request previousResponse];
  request2 = [previousResponse2 request];
  sectionProperties = [request2 sectionProperties];
  v14 = sectionProperties;
  if (sectionProperties)
  {
    sectionProperties2 = sectionProperties;
  }

  else
  {
    sectionProperties2 = [request sectionProperties];
  }

  v15 = +[MPModelStoreBrowseSectionBuilder allSupportedInternalOnlyProperties];
  v39 = [v15 propertySetByCombiningWithPropertySet:sectionProperties2];

  v37 = [[MPModelStoreBrowseSectionBuilder alloc] initWithRequestedPropertySet:v39];
  request3 = [previousResponse request];
  itemProperties = [request3 itemProperties];
  v18 = itemProperties;
  if (itemProperties)
  {
    itemProperties2 = itemProperties;
  }

  else
  {
    itemProperties2 = [request itemProperties];
  }

  v20 = itemProperties2;

  v58[0] = @"MPModelStoreBrowseContentItemPropertyItemType";
  v58[1] = @"MPModelStoreBrowseContentItemPropertyDetailedItemType";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  v22 = [MPPropertySet propertySetWithProperties:v21];

  v23 = [MPModelStoreBrowseContentItemBuilder alloc];
  v24 = [v20 propertySetByCombiningWithPropertySet:v22];
  v25 = [(MPModelStoreBrowseContentItemBuilder *)v23 initWithRequestedPropertySet:v24];

  v27 = filteringPolicy != 1 || domain == 1;
  [(MPModelStoreBrowseContentItemBuilder *)v25 setAllowsRadioStations:v27];
  [(MPModelStoreBrowseContentItemBuilder *)v25 setAllowsVideoContent:filteringPolicy != 1];
  if (v55[3] != 2)
  {
    v33 = v10;
    v34 = [MPModelStoreBrowseResponseParser alloc];
    userIdentity = [(MPAsyncOperation *)self userIdentity];
    v28 = [(MPModelStoreBrowseResponseParser *)v34 initWithRawResponseOutput:outputCopy options:v33 | v9 sectionBuilder:v37 contentItemBuilder:v25 userIdentity:userIdentity];

    if (*(v51 + 24) == 1)
    {
      [(MPModelStoreBrowseRequestOperation *)self _produceCarPlayResponseWithParser:v28 withNestedRequestsForEmptyBrickSectionsInOperationQueue:v45[5] completion:completionCopy];
    }

    else
    {
      [(MPModelStoreBrowseRequestOperation *)self _produceRegularResponseWithParser:v28 completion:completionCopy];
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v10;
    v28 = outputCopy;
    v29 = [MPModelStoreBrowseResponseParser alloc];
    parser = [previousResponse parser];
    userIdentity2 = [(MPAsyncOperation *)self userIdentity];
    v32 = [(MPModelStoreBrowseResponseParser *)v29 initWithPreviousParser:parser additionalStoreItemMetadataResponse:v28 options:v36 | v9 sectionBuilder:v37 contentItemBuilder:v25 userIdentity:userIdentity2];

    [(MPModelStoreBrowseRequestOperation *)self _produceRegularResponseWithParser:v32 completion:completionCopy];
LABEL_22:
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
}

void __81__MPModelStoreBrowseRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 360);
  if (!*(*(*(a1 + 40) + 8) + 24) && !*(a1 + 64) && *(a1 + 72) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v2 = [*(a1 + 32) _nestedRequestsOperationQueue];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error
{
  bagCopy = bag;
  request = [(MPStoreModelRequestOperation *)self request];
  loadAdditionalContentURL = [request loadAdditionalContentURL];
  if (loadAdditionalContentURL)
  {
    v9 = loadAdditionalContentURL;
    v10 = 1;
LABEL_3:
    v11 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v9];
    [v11 setHTTPMethod:@"GET"];
    [(MPStoreModelRequestOperation *)self remainingTimeInterval];
    [v11 setTimeoutInterval:?];
    v12 = [[MPStoreModelRequestConfiguration alloc] initWithURLRequest:v11];

    goto LABEL_4;
  }

  previousResponse = [request previousResponse];
  parser = [previousResponse parser];
  allAdditionalContentIdentifiersNeedingLookup = [parser allAdditionalContentIdentifiersNeedingLookup];

  v18 = [allAdditionalContentIdentifiersNeedingLookup count];
  if (v18)
  {
    v19 = v18;
    v20 = allAdditionalContentIdentifiersNeedingLookup;
    v21 = +[MPStoreItemMetadataRequestController optimalBatchSize];
    v22 = v20;
    if (v19 > v21)
    {
      v22 = [v20 subarrayWithRange:{0, v21}];
    }

    v12 = [[MPStoreModelRequestConfiguration alloc] initWithRequestedItemIdentifiers:v22 reason:1];

    if (v12)
    {
      v9 = 0;
      v10 = 2;
      goto LABEL_4;
    }
  }

  else
  {
  }

  domain = [request domain];
  if (domain == 1)
  {
    v24 = [bagCopy dictionaryForBagKey:*MEMORY[0x1E69E4340]];
    if (!_NSIsNSDictionary())
    {
LABEL_21:

      goto LABEL_22;
    }

    v25 = MEMORY[0x1E69E4338];
  }

  else
  {
    if (domain)
    {
      goto LABEL_22;
    }

    v24 = [bagCopy dictionaryForBagKey:*MEMORY[0x1E69E4320]];
    if (!_NSIsNSDictionary())
    {
      goto LABEL_21;
    }

    v25 = MEMORY[0x1E69E42D8];
  }

  v26 = [v24 objectForKey:*v25];
  if ((_NSIsNSString() & 1) == 0)
  {

    goto LABEL_21;
  }

  v9 = [MEMORY[0x1E695DFF8] URLWithString:v26];

  if (v9)
  {
    v10 = 0;
    goto LABEL_3;
  }

LABEL_22:
  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7201 userInfo:0];
    v9 = 0;
    v10 = 0;
    *error = v12 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v12 = 0;
  }

LABEL_4:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __92__MPModelStoreBrowseRequestOperation_configurationForLoadingModelDataWithStoreURLBag_error___block_invoke;
  v27[3] = &unk_1E7682398;
  v27[4] = self;
  v27[5] = v10;
  [(MPStoreModelRequestOperation *)self dispatchSync:v27];
  v13 = v12;

  return v12;
}

- (void)execute
{
  request = [(MPStoreModelRequestOperation *)self request];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__37622;
  v21 = __Block_byref_object_dispose__37623;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__37622;
  v15 = __Block_byref_object_dispose__37623;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__MPModelStoreBrowseRequestOperation_execute__block_invoke;
  v6[3] = &unk_1E767FE70;
  v4 = request;
  v7 = v4;
  selfCopy = self;
  v9 = &v17;
  v10 = &v11;
  [(MPStoreModelRequestOperation *)self dispatchSync:v6];
  if (v18[5])
  {
    [v12[5] addOperation:?];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MPModelStoreBrowseRequestOperation;
    [(MPStoreModelRequestOperation *)&v5 execute];
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
}

void __45__MPModelStoreBrowseRequestOperation_execute__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previousRetrievedNestedResponse];
  if (v2)
  {
    v3 = [*(a1 + 32) copy];
    [v3 configureWithParentSection:0];
    [v3 setPreviousResponse:v2];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__MPModelStoreBrowseRequestOperation_execute__block_invoke_2;
    v12[3] = &unk_1E767C9E0;
    v14 = *(a1 + 48);
    v11 = *(a1 + 32);
    v4 = v11.i64[0];
    v13 = vextq_s8(v11, v11, 8uLL);
    v5 = [v3 newOperationWithResponseHandler:v12];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    objc_storeStrong((*(a1 + 40) + 336), *(*(*(a1 + 48) + 8) + 40));
    v8 = [*(a1 + 40) _nestedRequestsOperationQueue];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void __45__MPModelStoreBrowseRequestOperation_execute__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__MPModelStoreBrowseRequestOperation_execute__block_invoke_3;
  v13[3] = &unk_1E76819F0;
  v8 = *(a1 + 48);
  v13[4] = v7;
  v13[5] = v8;
  [v7 dispatchSync:v13];
  v9 = [*(a1 + 32) isCancelled];
  v10 = 0;
  if (v5 && (v9 & 1) == 0)
  {
    v10 = [(MPModelResponse *)[MPModelStoreBrowseResponse alloc] initWithRequest:*(a1 + 40)];
    v11 = [v5 parser];
    [(MPModelStoreBrowseResponse *)v10 setParser:v11];

    v12 = [v5 results];
    [(MPModelResponse *)v10 setResults:v12];
  }

  [*(a1 + 32) _finishWithResponse:v10 error:v6];
}

void __45__MPModelStoreBrowseRequestOperation_execute__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 336);
  if (v3 == *(*(v2 + 8) + 40))
  {
    *(v1 + 336) = 0;
  }
}

- (void)cancel
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__37622;
  v30 = __Block_byref_object_dispose__37623;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__37622;
  v24 = __Block_byref_object_dispose__37623;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__37622;
  v18 = __Block_byref_object_dispose__37623;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__MPModelStoreBrowseRequestOperation_cancel__block_invoke;
  v13[3] = &unk_1E767C9B8;
  v13[4] = self;
  v13[5] = &v26;
  v13[6] = &v20;
  v13[7] = &v14;
  [(MPStoreModelRequestOperation *)self dispatchSync:v13];
  [v27[5] cancel];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v21[5];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v32 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v6) cancel];
        v7 = v15[5];
        if (v7)
        {
          dispatch_group_leave(v7);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v32 count:16];
    }

    while (v4);
  }

  v8.receiver = self;
  v8.super_class = MPModelStoreBrowseRequestOperation;
  [(MPStoreModelRequestOperation *)&v8 cancel];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
}

void __44__MPModelStoreBrowseRequestOperation_cancel__block_invoke(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 336));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1[4] + 368);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1[4] + 368) objectForKey:{*(*(&v18 + 1) + 8 * v6), v18}];
        v8 = *(*(a1[6] + 8) + 40);
        if (!v8)
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v10 = *(a1[6] + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = v9;

          v8 = *(*(a1[6] + 8) + 40);
        }

        [v8 addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 344));
  v12 = a1[4];
  v13 = *(v12 + 336);
  *(v12 + 336) = 0;

  v14 = a1[4];
  v15 = *(v14 + 368);
  *(v14 + 368) = 0;

  v16 = a1[4];
  v17 = *(v16 + 344);
  *(v16 + 344) = 0;
}

@end