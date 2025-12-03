@interface MPModelForYouRecommendationsRequestOperation
- (id)_missingContentIdentifiersInRecommendationsArray:(id)array storeItemMetadataResults:(id)results;
- (id)_personalizeRecommendationGroup:(id)group flatPersonalizedSectionedItems:(id)items;
- (id)_responseWithResults:(id)results personalizationResponse:(id)response;
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error;
- (void)_produceResponseWithRecommendationsArray:(id)array storeItemMetadataResults:(id)results completion:(id)completion;
- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion;
@end

@implementation MPModelForYouRecommendationsRequestOperation

- (id)_responseWithResults:(id)results personalizationResponse:(id)response
{
  responseCopy = response;
  resultsCopy = results;
  v8 = objc_alloc_init(MPMutableSectionedCollection);
  results = [responseCopy results];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__MPModelForYouRecommendationsRequestOperation__responseWithResults_personalizationResponse___block_invoke;
  v16[3] = &unk_1E767D000;
  v16[4] = self;
  v17 = results;
  v18 = v8;
  v10 = v8;
  v11 = results;
  [resultsCopy enumerateSectionsUsingBlock:v16];

  v12 = [MPModelForYouRecommendationsResponse alloc];
  request = [(MPStoreModelRequestOperation *)self request];
  v14 = [(MPModelResponse *)v12 initWithRequest:request];

  [(MPModelResponse *)v14 setResults:v10];

  return v14;
}

void __93__MPModelForYouRecommendationsRequestOperation__responseWithResults_personalizationResponse___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _personalizeRecommendationGroup:a2 flatPersonalizedSectionedItems:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 48) appendSection:v3];
    v3 = v4;
  }
}

- (id)_personalizeRecommendationGroup:(id)group flatPersonalizedSectionedItems:(id)items
{
  groupCopy = group;
  itemsCopy = items;
  identifiers = [groupCopy identifiers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __111__MPModelForYouRecommendationsRequestOperation__personalizeRecommendationGroup_flatPersonalizedSectionedItems___block_invoke;
  v13[3] = &unk_1E767CFD8;
  v14 = itemsCopy;
  v15 = groupCopy;
  selfCopy = self;
  v9 = groupCopy;
  v10 = itemsCopy;
  v11 = [v9 copyWithIdentifiers:identifiers block:v13];

  return v11;
}

void __111__MPModelForYouRecommendationsRequestOperation__personalizeRecommendationGroup_flatPersonalizedSectionedItems___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setSectionedItems:*(a1 + 32)];
  v4 = [*(a1 + 40) subgroups];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(a1 + 48) _personalizeRecommendationGroup:*(*(&v12 + 1) + 8 * v10) flatPersonalizedSectionedItems:{*(a1 + 32), v12}];
          if (v11)
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [v3 setSubgroups:v5];
  }
}

- (void)_produceResponseWithRecommendationsArray:(id)array storeItemMetadataResults:(id)results completion:(id)completion
{
  v60 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  resultsCopy = results;
  completionCopy = completion;
  v48 = objc_alloc_init(MPMutableSectionedCollection);
  v46 = objc_alloc_init(MPMutableSectionedCollection);
  request = [(MPStoreModelRequestOperation *)self request];
  sectionProperties = [request sectionProperties];
  filteringPolicy = [request filteringPolicy];
  v44 = request;
  itemProperties = [request itemProperties];
  v14 = [MPMutablePropertySet alloc];
  v15 = [(MPMutablePropertySet *)v14 initWithProperties:MEMORY[0x1E695E0F0] relationships:0];
  [(MPMutablePropertySet *)v15 addProperty:@"MPModelForYouRecommendationItemPropertyBackedByStoreItemMetadata"];
  relationships = [itemProperties relationships];
  v17 = [relationships objectForKey:@"MPModelForYouRecommendationItemRelationshipSubgroup"];

  if (v17)
  {
    [(MPMutablePropertySet *)v15 addProperty:@"MPModelForYouRecommendationItemPropertySubgroupIndex"];
    [(MPMutablePropertySet *)v15 addProperty:@"MPModelForYouRecommendationItemPropertyParentGroup"];
  }

  v42 = v15;
  v18 = [itemProperties propertySetByCombiningWithPropertySet:v15];

  v43 = sectionProperties;
  v40 = v18;
  v45 = resultsCopy;
  v19 = [[MPModelForYouRecommendationGroupBuilder alloc] initWithRequestedGroupPropertySet:sectionProperties requestedItemPropertySet:v18 storeItemMetadataResults:resultsCopy flatSectionedItems:v46];
  v20 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v20 addIndex:3];
  v47 = v20;
  [v20 addIndex:0];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = arrayCopy;
  v22 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v56;
    do
    {
      v25 = 0;
      do
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v55 + 1) + 8 * v25);
        if (_NSIsNSDictionary())
        {
          v27 = v26;
          userIdentity = [(MPAsyncOperation *)self userIdentity];
          v29 = [(MPModelForYouRecommendationGroupBuilder *)v19 modelObjectForRecommendationDictionary:v27 userIdentity:userIdentity];

          if (v29 && (filteringPolicy != 1 || ([v47 containsIndex:{objc_msgSend(v29, "groupType")}] & 1) == 0))
          {
            [(MPMutableSectionedCollection *)v48 appendSection:v29];
          }
        }

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v23);
  }

  v30 = objc_alloc_init(MPModelRequest);
  v31 = [MPModelKind kindWithModelClass:objc_opt_class()];
  [(MPModelRequest *)v30 setSectionKind:v31];

  v32 = +[MPPropertySet emptyPropertySet];
  [(MPModelRequest *)v30 setSectionProperties:v32];

  v33 = [MPModelKind kindWithModelClass:objc_opt_class()];
  [(MPModelRequest *)v30 setItemKind:v33];

  [(MPModelRequest *)v30 setItemProperties:v40];
  v34 = objc_alloc_init(MPMutableSectionedCollection);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __125__MPModelForYouRecommendationsRequestOperation__produceResponseWithRecommendationsArray_storeItemMetadataResults_completion___block_invoke;
  v52[3] = &unk_1E767CF88;
  v53 = v34;
  v54 = v46;
  v35 = v46;
  v36 = v34;
  [(MPSectionedCollection *)v35 enumerateSectionsUsingBlock:v52];
  v37 = [[MPStoreLibraryPersonalizationRequest alloc] initWithUnpersonalizedRequest:v30 unpersonalizedContentDescriptors:v36];
  [(MPStoreLibraryPersonalizationRequest *)v37 setRepresentedObjects:v35];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __125__MPModelForYouRecommendationsRequestOperation__produceResponseWithRecommendationsArray_storeItemMetadataResults_completion___block_invoke_3;
  v49[3] = &unk_1E767CFB0;
  v49[4] = self;
  v50 = v48;
  v51 = completionCopy;
  v38 = completionCopy;
  v39 = v48;
  [(MPModelRequest *)v37 performWithResponseHandler:v49];
}

void __125__MPModelForYouRecommendationsRequestOperation__produceResponseWithRecommendationsArray_storeItemMetadataResults_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) appendSection:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __125__MPModelForYouRecommendationsRequestOperation__produceResponseWithRecommendationsArray_storeItemMetadataResults_completion___block_invoke_2;
  v6[3] = &unk_1E767CF60;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v5 enumerateItemsInSectionAtIndex:a3 usingBlock:v6];
}

void __125__MPModelForYouRecommendationsRequestOperation__produceResponseWithRecommendationsArray_storeItemMetadataResults_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) _responseWithResults:*(a1 + 40) personalizationResponse:a2];
  }

  (*(*(a1 + 48) + 16))();
}

void __125__MPModelForYouRecommendationsRequestOperation__produceResponseWithRecommendationsArray_storeItemMetadataResults_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MPStoreLibraryPersonalizationContentDescriptor alloc] initWithModel:v3 personalizationStyle:4];

  [*(a1 + 32) appendItem:v4];
}

- (id)_missingContentIdentifiersInRecommendationsArray:(id)array storeItemMetadataResults:(id)results
{
  arrayCopy = array;
  resultsCopy = results;
  v15 = arrayCopy;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [arrayCopy mutableCopy];
  while ([v6 count])
  {
    v7 = [v6 objectAtIndex:0];
    [v6 removeObjectAtIndex:0];
    if (_NSIsNSDictionary())
    {
      v8 = v7;
      v9 = [v8 objectForKey:@"children"];
      if (_NSIsNSArray())
      {
        [v6 addObjectsFromArray:v9];
      }

      else
      {
        v10 = [v8 objectForKey:@"contentId"];
        if (_NSIsNSString())
        {
          v11 = v10;
          v12 = [v8 objectForKey:@"isUnavailableInAppleMusic"];
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v12 BOOLValue] & 1) == 0)
          {
            v13 = [resultsCopy objectForKey:v11];

            if (!v13)
            {
              [v16 addObject:v11];
            }
          }
        }
      }
    }
  }

  return v16;
}

- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion
{
  outputCopy = output;
  completionCopy = completion;
  if (!_NSIsNSDictionary())
  {
    goto LABEL_12;
  }

  v8 = [outputCopy objectForKey:@"recommendations"];
  if (!_NSIsNSArray())
  {
LABEL_11:

LABEL_12:
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];
    completionCopy[2](completionCopy, 0, v8);
    goto LABEL_13;
  }

  v9 = [outputCopy objectForKey:@"storePlatformData"];
  if (!_NSIsNSDictionary())
  {
LABEL_10:

    goto LABEL_11;
  }

  allValues = [v9 allValues];
  firstObject = [allValues firstObject];

  if (!_NSIsNSDictionary())
  {
LABEL_9:

    goto LABEL_10;
  }

  v12 = [firstObject objectForKey:@"results"];
  if (!_NSIsNSDictionary())
  {

    goto LABEL_9;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __91__MPModelForYouRecommendationsRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke;
  v23[3] = &unk_1E767CF08;
  v14 = v13;
  v24 = v14;
  [v12 enumerateKeysAndObjectsUsingBlock:v23];
  v15 = [(MPModelForYouRecommendationsRequestOperation *)self _missingContentIdentifiersInRecommendationsArray:v8 storeItemMetadataResults:v14];
  if ([v15 count])
  {
    v16 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __91__MPModelForYouRecommendationsRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke_2;
    v17[3] = &unk_1E767CF30;
    v18 = v15;
    v19 = v14;
    selfCopy = self;
    v21 = v8;
    v22 = completionCopy;
    [v16 requestStoreItemMetadataForReason:1 withItemIdentifiers:v18 responseHandler:v17];
  }

  else
  {
    [(MPModelForYouRecommendationsRequestOperation *)self _produceResponseWithRecommendationsArray:v8 storeItemMetadataResults:v14 completion:completionCopy];
  }

LABEL_13:
}

void __91__MPModelForYouRecommendationsRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (_NSIsNSString() && _NSIsNSDictionary())
  {
    v6 = v9;
    v7 = v5;
    v8 = [[MPStoreItemMetadata alloc] initWithStorePlatformDictionary:v7];
    if (v8)
    {
      [*(a1 + 32) setObject:v8 forKey:v6];
    }
  }
}

void __91__MPModelForYouRecommendationsRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isFinalResponse])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = [v3 storeItemMetadataForItemIdentifier:{v9, v11}];
          if (v10)
          {
            [*(a1 + 40) setObject:v10 forKey:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [*(a1 + 48) _produceResponseWithRecommendationsArray:*(a1 + 56) storeItemMetadataResults:*(a1 + 40) completion:*(a1 + 64)];
  }
}

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error
{
  bagCopy = bag;
  request = [(MPStoreModelRequestOperation *)self request];
  customForYouURL = [request customForYouURL];

  if (customForYouURL)
  {
    goto LABEL_2;
  }

  v23 = [bagCopy dictionaryForBagKey:*MEMORY[0x1E69E4320]];
  if (!v23)
  {
    goto LABEL_19;
  }

  v24 = v23;
  v25 = [v23 objectForKey:*MEMORY[0x1E69E42F0]];
  if ((_NSIsNSString() & 1) == 0)
  {

    goto LABEL_19;
  }

  customForYouURL = [MEMORY[0x1E695DFF8] URLWithString:v25];

  if (!customForYouURL)
  {
LABEL_19:
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7201 userInfo:0];
      v20 = 0;
      *error = v22 = 0;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    goto LABEL_22;
  }

LABEL_2:
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 setObject:@"1" forKey:@"v"];
  if (MGGetBoolAnswer())
  {
    [v9 setObject:@"true" forKey:@"isInternalInstall"];
  }

  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v11 = [MPCloudController controllerWithUserIdentity:userIdentity];
  isCloudLibraryEnabled = [v11 isCloudLibraryEnabled];

  if (isCloudLibraryEnabled)
  {
    [v9 setObject:@"true" forKey:@"isIcloudLibraryEnabled"];
  }

  v13 = [bagCopy dictionaryForBagKey:*MEMORY[0x1E69E4318]];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKey:@"isEnabled"];
    if (_NSIsNSNumber() && [v15 BOOLValue])
    {
      [v9 setObject:@"true" forKey:@"isSocialEnabled"];
    }
  }

  [v9 setObject:@"trackBadging" forKey:@"include"];
  v16 = [MEMORY[0x1E696AF20] componentsWithURL:customForYouURL resolvingAgainstBaseURL:0];
  queryItems = [v16 queryItems];
  v18 = [queryItems mutableCopy];

  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __102__MPModelForYouRecommendationsRequestOperation_configurationForLoadingModelDataWithStoreURLBag_error___block_invoke;
  v27[3] = &unk_1E7681A30;
  v28 = v18;
  v19 = v18;
  [v9 enumerateKeysAndObjectsUsingBlock:v27];
  [v16 setQueryItems:v19];
  v20 = [v16 URL];

  v21 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v20];
  [v21 setHTTPMethod:@"GET"];
  [(MPStoreModelRequestOperation *)self remainingTimeInterval];
  [v21 setTimeoutInterval:?];
  v22 = [[MPStoreModelRequestConfiguration alloc] initWithURLRequest:v21];

LABEL_22:

  return v22;
}

void __102__MPModelForYouRecommendationsRequestOperation_configurationForLoadingModelDataWithStoreURLBag_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E696AF60];
  v7 = a3;
  v8 = [[v6 alloc] initWithName:v5 value:v7];

  if (v8)
  {
    v9 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __102__MPModelForYouRecommendationsRequestOperation_configurationForLoadingModelDataWithStoreURLBag_error___block_invoke_2;
    v12[3] = &unk_1E767D028;
    v13 = v5;
    v10 = [v9 indexOfObjectPassingTest:v12];
    v11 = *(a1 + 32);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 addObject:v8];
    }

    else
    {
      [v11 replaceObjectAtIndex:v10 withObject:v8];
    }
  }
}

uint64_t __102__MPModelForYouRecommendationsRequestOperation_configurationForLoadingModelDataWithStoreURLBag_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

@end