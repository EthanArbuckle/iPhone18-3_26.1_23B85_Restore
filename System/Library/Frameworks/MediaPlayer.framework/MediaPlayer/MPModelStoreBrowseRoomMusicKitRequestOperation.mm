@interface MPModelStoreBrowseRoomMusicKitRequestOperation
- (id)_produceResponseWithParser:(id)a3 results:(id)a4 error:(id *)a5;
- (id)_roomURLWithRoomID:(id)a3 storeURLBag:(id)a4;
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)a3 error:(id *)a4;
- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4;
@end

@implementation MPModelStoreBrowseRoomMusicKitRequestOperation

- (id)_roomURLWithRoomID:(id)a3 storeURLBag:(id)a4
{
  v28[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 stringForBagKey:@"countryCode"];
  if (_NSIsNSString())
  {
    v9 = MusicURLComponentsWithURLBag(v7, 0);
    v10 = MEMORY[0x1E696AEC0];
    v28[0] = @"/v1/editorial";
    v28[1] = v8;
    v28[2] = @"rooms";
    v28[3] = v6;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    v12 = [v10 pathWithComponents:v11];
    [v9 setPath:v12];

    v13 = MEMORY[0x1E696AF60];
    v14 = [(MPStoreModelRequestOperation *)self request];
    v15 = [v14 clientPlatformIdentifier];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
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

    v21 = MusicURLQueryItemLanguageWithURLBag(v7);
    if (v21)
    {
      v22 = [v9 queryItems];
      v23 = [v22 arrayByAddingObject:v21];
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

- (id)_produceResponseWithParser:(id)a3 results:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v12 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = [MPModelStoreBrowseResponse alloc];
  v11 = [(MPStoreModelRequestOperation *)self request];
  v12 = [(MPModelResponse *)v10 initWithRequest:v11];

  [(MPModelStoreBrowseResponse *)v12 setParser:v8];
  if ([v9 numberOfSections] >= 1)
  {
    [(MPModelResponse *)v12 setResults:v9];
  }

  if (a5)
  {
LABEL_7:
    if (!v12)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];
    }
  }

LABEL_9:

  return v12;
}

- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(MPStoreModelRequestOperation *)self request];
  v9 = +[MPModelStoreBrowseSectionBuilder allSupportedInternalOnlyProperties];
  v10 = [v8 sectionProperties];
  v11 = [v9 propertySetByCombiningWithPropertySet:v10];

  v27 = v11;
  v12 = [[MPModelStoreBrowseSectionBuilder alloc] initWithRequestedPropertySet:v11];
  v29[0] = @"MPModelStoreBrowseContentItemPropertyItemType";
  v29[1] = @"MPModelStoreBrowseContentItemPropertyDetailedItemType";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v14 = [MPPropertySet propertySetWithProperties:v13];

  v15 = [MPModelStoreBrowseContentItemBuilder alloc];
  v16 = [v8 itemProperties];
  v17 = [v16 propertySetByCombiningWithPropertySet:v14];
  v18 = [(MPModelStoreBrowseContentItemBuilder *)v15 initWithRequestedPropertySet:v17];

  v19 = self->_allowedFCKinds;
  v20 = [MPModelStoreBrowseRoomMusicKitResponseParser alloc];
  v21 = [(MPAsyncOperation *)self userIdentity];
  v22 = [(MPModelStoreBrowseRoomMusicKitResponseParser *)v20 initWithRawResponseOutput:v7 sectionBuilder:v12 contentItemBuilder:v18 filteredFCKinds:v19 userIdentity:v21];

  v23 = [(MPModelStoreBrowseRoomMusicKitResponseParser *)v22 results];
  v28 = 0;
  v24 = [(MPModelStoreBrowseRoomMusicKitRequestOperation *)self _produceResponseWithParser:v22 results:v23 error:&v28];
  v25 = v28;

  if (!v24)
  {
    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];

    v25 = v26;
  }

  v6[2](v6, v24, v25);
}

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MPStoreModelRequestOperation *)self request];
  v8 = [v7 loadAdditionalContentURL];
  if (v8)
  {
    v9 = v8;
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

  v10 = [v7 roomID];
  v9 = [(MPModelStoreBrowseRoomMusicKitRequestOperation *)self _roomURLWithRoomID:v10 storeURLBag:v6];

  if (v9)
  {
    goto LABEL_4;
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7201 userInfo:0];
    v9 = 0;
    *a4 = v14 = 0;
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