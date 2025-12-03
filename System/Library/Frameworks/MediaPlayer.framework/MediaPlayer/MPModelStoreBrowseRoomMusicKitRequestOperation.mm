@interface MPModelStoreBrowseRoomMusicKitRequestOperation
- (id)_produceResponseWithParser:(id)parser results:(id)results error:(id *)error;
- (id)_roomURLWithRoomID:(id)d storeURLBag:(id)bag;
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error;
- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion;
@end

@implementation MPModelStoreBrowseRoomMusicKitRequestOperation

- (id)_roomURLWithRoomID:(id)d storeURLBag:(id)bag
{
  v28[4] = *MEMORY[0x1E69E9840];
  dCopy = d;
  bagCopy = bag;
  v8 = [bagCopy stringForBagKey:@"countryCode"];
  if (_NSIsNSString())
  {
    v9 = MusicURLComponentsWithURLBag(bagCopy, 0);
    v10 = MEMORY[0x1E696AEC0];
    v28[0] = @"/v1/editorial";
    v28[1] = v8;
    v28[2] = @"rooms";
    v28[3] = dCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    v12 = [v10 pathWithComponents:v11];
    [v9 setPath:v12];

    v13 = MEMORY[0x1E696AF60];
    request = [(MPStoreModelRequestOperation *)self request];
    clientPlatformIdentifier = [request clientPlatformIdentifier];
    v16 = clientPlatformIdentifier;
    if (clientPlatformIdentifier)
    {
      v17 = clientPlatformIdentifier;
    }

    else
    {
      v17 = @"iphone";
    }

    v18 = [v13 queryItemWithName:@"platform" value:v17];
    v27[0] = v18;
    v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"art[url]" value:@"f"];
    v27[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    [v9 setQueryItems:v20];

    v21 = MusicURLQueryItemLanguageWithURLBag(bagCopy);
    if (v21)
    {
      queryItems = [v9 queryItems];
      v23 = [queryItems arrayByAddingObject:v21];
      [v9 setQueryItems:v23];
    }

    v24 = [v9 URL];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "No country code found in bag, can't create storefront endpoint URL", v26, 2u);
    }

    v24 = 0;
  }

  return v24;
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
  v29[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  outputCopy = output;
  request = [(MPStoreModelRequestOperation *)self request];
  v9 = +[MPModelStoreBrowseSectionBuilder allSupportedInternalOnlyProperties];
  sectionProperties = [request sectionProperties];
  v11 = [v9 propertySetByCombiningWithPropertySet:sectionProperties];

  v27 = v11;
  v12 = [[MPModelStoreBrowseSectionBuilder alloc] initWithRequestedPropertySet:v11];
  v29[0] = @"MPModelStoreBrowseContentItemPropertyItemType";
  v29[1] = @"MPModelStoreBrowseContentItemPropertyDetailedItemType";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v14 = [MPPropertySet propertySetWithProperties:v13];

  v15 = [MPModelStoreBrowseContentItemBuilder alloc];
  itemProperties = [request itemProperties];
  v17 = [itemProperties propertySetByCombiningWithPropertySet:v14];
  v18 = [(MPModelStoreBrowseContentItemBuilder *)v15 initWithRequestedPropertySet:v17];

  v19 = self->_allowedFCKinds;
  v20 = [MPModelStoreBrowseRoomMusicKitResponseParser alloc];
  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v22 = [(MPModelStoreBrowseRoomMusicKitResponseParser *)v20 initWithRawResponseOutput:outputCopy sectionBuilder:v12 contentItemBuilder:v18 filteredFCKinds:v19 userIdentity:userIdentity];

  results = [(MPModelStoreBrowseRoomMusicKitResponseParser *)v22 results];
  v28 = 0;
  v24 = [(MPModelStoreBrowseRoomMusicKitRequestOperation *)self _produceResponseWithParser:v22 results:results error:&v28];
  v25 = v28;

  if (!v24)
  {
    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];

    v25 = v26;
  }

  completionCopy[2](completionCopy, v24, v25);
}

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error
{
  bagCopy = bag;
  request = [(MPStoreModelRequestOperation *)self request];
  loadAdditionalContentURL = [request loadAdditionalContentURL];
  if (loadAdditionalContentURL)
  {
    v9 = loadAdditionalContentURL;
LABEL_4:
    v11 = [MEMORY[0x1E696AD68] requestWithURL:v9];
    [v11 setHTTPMethod:@"GET"];
    [(MPStoreModelRequestOperation *)self remainingTimeInterval];
    [v11 setTimeoutInterval:?];
    v12 = [MPStoreModelRequestConfiguration alloc];
    v13 = [v11 copy];
    v14 = [(MPStoreModelRequestConfiguration *)v12 initWithURLRequest:v13];

    goto LABEL_5;
  }

  roomID = [request roomID];
  v9 = [(MPModelStoreBrowseRoomMusicKitRequestOperation *)self _roomURLWithRoomID:roomID storeURLBag:bagCopy];

  if (v9)
  {
    goto LABEL_4;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7201 userInfo:0];
    v9 = 0;
    *error = v14 = 0;
  }

  else
  {
    v9 = 0;
    v14 = 0;
  }

LABEL_5:
  v15 = v14;

  return v14;
}

@end