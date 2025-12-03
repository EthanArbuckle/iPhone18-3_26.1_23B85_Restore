@interface MPModelStoreGroupingsMusicKitRequestOperation
- (id)_produceResponseWithParser:(id)parser results:(id)results error:(id *)error;
- (id)catalogURLWithStoreURLBag:(id)bag;
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error;
- (id)groupingNameWithMusicSubscriptionDictionary:(id)dictionary;
- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion;
@end

@implementation MPModelStoreGroupingsMusicKitRequestOperation

- (id)catalogURLWithStoreURLBag:(id)bag
{
  v34 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  v5 = [bagCopy stringForBagKey:*MEMORY[0x1E69E42E0]];
  if (_NSIsNSString())
  {
    v6 = [bagCopy dictionaryForBagKey:*MEMORY[0x1E69E4320]];
    if (_NSIsNSDictionary())
    {
      v7 = [(MPModelStoreGroupingsMusicKitRequestOperation *)self groupingNameWithMusicSubscriptionDictionary:v6];
      if (_NSIsNSString())
      {
        v27 = MusicURLComponentsWithURLBag(bagCopy, 0);
        v8 = MEMORY[0x1E696AEC0];
        v31[0] = @"/v1/editorial";
        v31[1] = v5;
        v31[2] = @"groupings";
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
        v10 = [v8 pathWithComponents:v9];
        [v27 setPath:v10];

        v29 = [MEMORY[0x1E696AF60] queryItemWithName:@"name" value:v7];
        v30[0] = v29;
        v11 = MEMORY[0x1E696AF60];
        request = [(MPStoreModelRequestOperation *)self request];
        clientPlatformIdentifier = [request clientPlatformIdentifier];
        v26 = clientPlatformIdentifier;
        if (clientPlatformIdentifier)
        {
          v13 = clientPlatformIdentifier;
        }

        else
        {
          v13 = @"iphone";
        }

        v25 = [v11 queryItemWithName:@"platform" value:v13];
        v30[1] = v25;
        v14 = [MEMORY[0x1E696AF60] queryItemWithName:@"with" value:@"personalization"];
        v30[2] = v14;
        v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"art[url]" value:@"f"];
        v30[3] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
        additionalCatalogURLQueryItems = [(MPModelStoreGroupingsMusicKitRequestOperation *)self additionalCatalogURLQueryItems];
        v18 = [v16 arrayByAddingObjectsFromArray:additionalCatalogURLQueryItems];
        v19 = v27;
        [v27 setQueryItems:v18];

        v20 = MusicURLQueryItemLanguageWithURLBag(bagCopy);
        if (v20)
        {
          queryItems = [v27 queryItems];
          v22 = [queryItems arrayByAddingObject:v20];
          [v27 setQueryItems:v22];
        }

        v23 = [v27 URL];
      }

      else
      {
        v19 = os_log_create("com.apple.amp.mediaplayer", "Default");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v33 = v6;
          _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_ERROR, "No grouping name in music subscription dictionary of bag, can't generate URL pointing to right grouping: %{public}@", buf, 0xCu);
        }

        v23 = 0;
      }
    }

    else
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "No music subscription dictionary in bag, can't get subscription properties to generate URL", buf, 2u);
      }

      v23 = 0;
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "No country code found in bag, can't create storefront endpoint URL", buf, 2u);
    }

    v23 = 0;
  }

  return v23;
}

- (id)groupingNameWithMusicSubscriptionDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  groupingNameBagKey = [(MPModelStoreGroupingsMusicKitRequestOperation *)self groupingNameBagKey];
  v6 = [dictionaryCopy objectForKey:groupingNameBagKey];

  return v6;
}

- (id)_produceResponseWithParser:(id)parser results:(id)results error:(id *)error
{
  parserCopy = parser;
  resultsCopy = results;
  if (!resultsCopy)
  {
    v12 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = [MPModelStoreBrowseResponse alloc];
  request = [(MPStoreModelRequestOperation *)self request];
  v12 = [(MPModelResponse *)v10 initWithRequest:request];

  [(MPModelStoreBrowseResponse *)v12 setParser:parserCopy];
  if ([resultsCopy numberOfSections] >= 1)
  {
    [(MPModelResponse *)v12 setResults:resultsCopy];
  }

  if (error)
  {
LABEL_7:
    if (!v12)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];
    }
  }

LABEL_9:

  return v12;
}

- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion
{
  v38[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  outputCopy = output;
  request = [(MPStoreModelRequestOperation *)self request];
  domain = [request domain];
  filteringPolicy = [request filteringPolicy];
  v10 = +[MPModelStoreBrowseSectionBuilder allSupportedInternalOnlyProperties];
  sectionProperties = [request sectionProperties];
  v12 = [v10 propertySetByCombiningWithPropertySet:sectionProperties];

  v32 = v12;
  v13 = [[MPModelStoreBrowseSectionBuilder alloc] initWithRequestedPropertySet:v12];
  v38[0] = @"MPModelStoreBrowseContentItemPropertyItemType";
  v38[1] = @"MPModelStoreBrowseContentItemPropertyDetailedItemType";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v15 = [MPPropertySet propertySetWithProperties:v14];

  v16 = [MPModelStoreBrowseContentItemBuilder alloc];
  itemProperties = [request itemProperties];
  v18 = [itemProperties propertySetByCombiningWithPropertySet:v15];
  v19 = [(MPModelStoreBrowseContentItemBuilder *)v16 initWithRequestedPropertySet:v18];

  v20 = domain == 1 || filteringPolicy != 1;
  [(MPModelStoreBrowseContentItemBuilder *)v19 setAllowsRadioStations:v20];
  [(MPModelStoreBrowseContentItemBuilder *)v19 setAllowsVideoContent:filteringPolicy != 1];
  v21 = self->_allowedFCKinds;
  v22 = -[MPModelStoreGroupingsMusicKitRequestOperation rootObjectIdentifierWithSubscriptionStatus:](self, "rootObjectIdentifierWithSubscriptionStatus:", [request subscriptionStatus]);
  v23 = [MPModelStoreGroupingsMusicKitResponseParser alloc];
  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v25 = -[MPModelStoreGroupingsMusicKitResponseParser initWithRawResponseOutput:sectionBuilder:contentItemBuilder:filteredFCKinds:userIdentity:rootObjectIdentifier:options:storeURLBag:](v23, "initWithRawResponseOutput:sectionBuilder:contentItemBuilder:filteredFCKinds:userIdentity:rootObjectIdentifier:options:storeURLBag:", outputCopy, v13, v19, v21, userIdentity, v22, [request options], self->_storeURLBag);

  v26 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v36 = 2114;
    v37 = v25;
    _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ instantiated parser: %{public}@.", buf, 0x16u);
  }

  results = [(MPModelStoreGroupingsMusicKitResponseParser *)v25 results];
  v33 = 0;
  v28 = [(MPModelStoreGroupingsMusicKitRequestOperation *)self _produceResponseWithParser:v25 results:results error:&v33];
  v29 = v33;

  if (!v28)
  {
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];

    v29 = v30;
  }

  completionCopy[2](completionCopy, v28, v29);
}

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  objc_storeStrong(&self->_storeURLBag, bag);
  request = [(MPStoreModelRequestOperation *)self request];
  if ([request filteringPolicy] == 1)
  {
    v9 = [bagCopy dictionaryForBagKey:*MEMORY[0x1E69E4320]];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"carPlayFCKindAllowList"];
      if (_NSIsNSString())
      {
        v44 = v10;
        errorCopy = error;
        selfCopy = self;
        v47 = request;
        v48 = bagCopy;
        v12 = [v11 copy];
        v13 = objc_msgSend(v12, "stringByReplacingOccurrencesOfString:withString:", @"("), &stru_1F149ECA8;

        v14 = [v13 stringByReplacingOccurrencesOfString:@"" withString:?], &stru_1F149ECA8);

        v15 = [v14 stringByReplacingOccurrencesOfString:@"" withString:&stru_1F149ECA8];

        v16 = [v15 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F149ECA8];

        v43 = v16;
        v17 = [v16 componentsSeparatedByString:@", "];
        v18 = objc_opt_new();
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v53 objects:v60 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v54;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v54 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v53 + 1) + 8 * i);
              integerValue = [v24 integerValue];
              if (integerValue < 0)
              {
                v26 = os_log_create("com.apple.amp.mediaplayer", "Default");
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543362;
                  v59 = v24;
                  _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_INFO, "Encountered negative FCKind in CarPlay FCKinds allow list in bag, dropping it: %{public}@", buf, 0xCu);
                }
              }

              else
              {
                [v18 addIndex:integerValue];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v53 objects:v60 count:16];
          }

          while (v21);
        }

        v27 = [v18 copy];
        request = v47;
        bagCopy = v48;
        error = errorCopy;
        self = selfCopy;
        v10 = v44;
        v28 = v43;
      }

      else
      {
        v28 = os_log_create("com.apple.amp.mediaplayer", "Default");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *v60 = 138543362;
          v61 = v10;
          _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_INFO, "CarPlay FCKinds allow list not found in musicSubscription dictionary, wrongly typed or empty: %{public}@", v60, 0xCu);
        }

        v27 = 0;
      }
    }

    else
    {
      v11 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v60 = 0;
        _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_INFO, "No music subscription dictionary in bag, can't get allowed FCKinds for CarPlay", v60, 2u);
      }

      v27 = 0;
    }

    allowedFCKinds = self->_allowedFCKinds;
    self->_allowedFCKinds = v27;
  }

  loadAdditionalContentURL = [request loadAdditionalContentURL];
  if (loadAdditionalContentURL || ([(MPModelStoreGroupingsMusicKitRequestOperation *)self catalogURLWithStoreURLBag:bagCopy], (loadAdditionalContentURL = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v31 = loadAdditionalContentURL;
    v32 = objc_opt_new();
    v33 = [MEMORY[0x1E696AD68] requestWithURL:v31];
    [v33 setHTTPMethod:@"GET"];
    [(MPStoreModelRequestOperation *)self remainingTimeInterval];
    [v33 setTimeoutInterval:?];
    v34 = [v33 copy];
    [v32 addObject:v34];

    v35 = [(MPModelStoreGroupingsMusicKitRequestOperation *)self additionalURLRequestsWithStoreURLBag:bagCopy];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v36 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v50;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v50 != v38)
          {
            objc_enumerationMutation(v35);
          }

          [v32 addObject:*(*(&v49 + 1) + 8 * j)];
        }

        v37 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v37);
    }

    v40 = [[MPStoreModelRequestConfiguration alloc] initWithURLRequests:v32];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7201 userInfo:0];
    v31 = 0;
    *error = v40 = 0;
  }

  else
  {
    v31 = 0;
    v40 = 0;
  }

  v41 = v40;

  return v40;
}

@end