@interface MPModelStoreBrowseRoomMusicKitResponseParser
- (MPModelStoreBrowseRoomMusicKitResponseParser)initWithRawResponseOutput:(id)a3 sectionBuilder:(id)a4 contentItemBuilder:(id)a5 filteredFCKinds:(id)a6 userIdentity:(id)a7;
- (MPSectionedCollection)results;
- (id)_parsedContentNode:(id)a3 additionalAttributesFromParent:(id)a4;
- (id)_parsedElements:(id)a3;
- (id)_parsedSectionedCollection;
@end

@implementation MPModelStoreBrowseRoomMusicKitResponseParser

- (id)_parsedContentNode:(id)a3 additionalAttributesFromParent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!_NSIsNSDictionary())
  {
    v16 = 0;
    goto LABEL_19;
  }

  v8 = v6;
  v9 = [v8 objectForKey:@"id"];
  v10 = v9;
  if (v9)
  {
    v11 = MPStoreItemMetadataStringNormalizeStoreIDValue(v9);
    if (v11)
    {
      v12 = [v8 objectForKey:@"type"];
      if (_NSIsNSString())
      {
        [(MPModelStoreBrowseContentItemBuilder *)self->_contentItemBuilder contentItemTypeForMusicAPIType:v12];
      }

      v13 = [v8 objectForKey:@"attributes"];
      if (_NSIsNSDictionary())
      {
        v21 = v12;
        v14 = [v7 mutableCopy];
        if (v14)
        {
          v15 = v14;
          [v14 addEntriesFromDictionary:v13];
        }

        else
        {
          v15 = [v13 mutableCopy];
        }

        [v15 setObject:v11 forKey:@"id"];
        v18 = [v8 objectForKey:@"relationships"];
        if (v18)
        {
          v19 = [v8 objectForKey:@"relationships"];
          [v15 setObject:v19 forKey:@"relationships"];
        }

        v17 = [[MPStoreItemMetadata alloc] initWithStoreMusicAPIDictionary:v15];

        v12 = v21;
      }

      else
      {
        v17 = 0;
      }

      v16 = [(MPStoreModelObjectBuilder *)self->_contentItemBuilder modelObjectWithStoreItemMetadata:v17 userIdentity:self->_userIdentity];

      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = 0;
LABEL_18:

LABEL_19:

  return v16;
}

- (id)_parsedElements:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E695DFB0] null];
  [v5 appendSection:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(MPModelStoreBrowseRoomMusicKitResponseParser *)self _parsedContentNode:*(*(&v15 + 1) + 8 * i) additionalAttributesFromParent:0, v15];
        if (v12)
        {
          [v5 appendItem:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([v5 numberOfSections])
  {
    v13 = [v5 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_parsedSectionedCollection
{
  v45[5] = *MEMORY[0x1E69E9840];
  v3 = [MPMediaAPIParserLayer layerWithKey:@"data" ofType:0];
  v45[0] = v3;
  v4 = [MPMediaAPIParserLayer layerWithFirstObjectOfType:1];
  v45[1] = v4;
  v5 = [MPMediaAPIParserLayer layerWithKey:@"relationships" ofType:1];
  v45[2] = v5;
  v6 = [MPMediaAPIParserLayer layerWithKey:@"contents" ofType:1];
  v45[3] = v6;
  v7 = [MPMediaAPIParserLayer layerWithKey:@"data" ofType:0];
  v45[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];

  if (_NSIsNSDictionary())
  {
    v9 = self->_rawResponseOutput;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
    v12 = v9;
    if (v11)
    {
      v13 = v11;
      v14 = *v37;
      v12 = v9;
      v35 = v8;
LABEL_4:
      v15 = 0;
      while (1)
      {
        v16 = v12;
        if (*v37 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v36 + 1) + 8 * v15);
        v18 = [v17 key];

        if (v18)
        {
          v19 = [v17 key];
          v12 = [v16 objectForKey:v19];

          if (!v12)
          {
            v12 = os_log_create("com.apple.amp.mediaplayer", "Default");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v25 = [v17 key];
              *buf = 138543618;
              v41 = v25;
              v42 = 2114;
              v43 = v16;
              _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "Can't parse because %{public}@ property doesn't exist: %{public}@", buf, 0x16u);
            }

LABEL_27:
            v8 = v35;
            goto LABEL_41;
          }
        }

        else
        {
          v20 = [v16 firstObject];
          if (!v20)
          {
            v12 = os_log_create("com.apple.amp.mediaplayer", "Default");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v41 = v16;
              _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "Can't parse because array doesn't contain anything: %{public}@", buf, 0xCu);
            }

            goto LABEL_27;
          }

          v12 = v20;
        }

        v21 = [v17 type];
        if (v21 == 1)
        {
          if ((_NSIsNSDictionary() & 1) == 0)
          {
            v26 = [v17 key];

            v31 = os_log_create("com.apple.amp.mediaplayer", "Default");
            v27 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
            if (!v26)
            {
              v8 = v35;
              if (!v27)
              {
                goto LABEL_40;
              }

              *buf = 138543362;
              v41 = v12;
              v33 = "Can't parse because array first object is not of expected (NSDictionary) type: %{public}@";
              goto LABEL_39;
            }

            v8 = v35;
            if (v27)
            {
              v28 = [v17 key];
              *buf = 138543618;
              v41 = v28;
              v42 = 2114;
              v43 = v12;
              v29 = "Can't parse because %{public}@ property is not of expected (NSDictionary) type: %{public}@";
              goto LABEL_34;
            }

LABEL_40:

LABEL_41:
            v22 = 0;
            goto LABEL_42;
          }
        }

        else if (!v21 && (_NSIsNSArray() & 1) == 0)
        {
          v30 = [v17 key];

          v31 = os_log_create("com.apple.amp.mediaplayer", "Default");
          v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
          if (v30)
          {
            v8 = v35;
            if (v32)
            {
              v28 = [v17 key];
              *buf = 138543618;
              v41 = v28;
              v42 = 2114;
              v43 = v12;
              v29 = "Can't parse because %{public}@ property is not of expected (NSArray) type: %{public}@";
LABEL_34:
              _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);
            }

            goto LABEL_40;
          }

          v8 = v35;
          if (!v32)
          {
            goto LABEL_40;
          }

          *buf = 138543362;
          v41 = v12;
          v33 = "Can't parse because array first object is not of expected (NSArray) type: %{public}@";
LABEL_39:
          _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_ERROR, v33, buf, 0xCu);
          goto LABEL_40;
        }

        if (v13 == ++v15)
        {
          v13 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
          v8 = v35;
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v22 = [(MPModelStoreBrowseRoomMusicKitResponseParser *)self _parsedElements:v12];
    v16 = v12;
LABEL_42:
  }

  else
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      rawResponseOutput = self->_rawResponseOutput;
      *buf = 138543362;
      v41 = rawResponseOutput;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "Can't parse because input has unexpected type: %{public}@", buf, 0xCu);
    }

    v22 = 0;
  }

  return v22;
}

- (MPSectionedCollection)results
{
  parseOnceToken = self->_parseOnceToken;
  p_parseOnceToken = &self->_parseOnceToken;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MPModelStoreBrowseRoomMusicKitResponseParser_results__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  if (parseOnceToken != -1)
  {
    dispatch_once(p_parseOnceToken, block);
  }

  return self->_results;
}

void __55__MPModelStoreBrowseRoomMusicKitResponseParser_results__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _parsedSectionedCollection];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (MPModelStoreBrowseRoomMusicKitResponseParser)initWithRawResponseOutput:(id)a3 sectionBuilder:(id)a4 contentItemBuilder:(id)a5 filteredFCKinds:(id)a6 userIdentity:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = MPModelStoreBrowseRoomMusicKitResponseParser;
  v17 = [(MPModelStoreBrowseRoomMusicKitResponseParser *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rawResponseOutput, a3);
    objc_storeStrong(&v18->_sectionBuilder, a4);
    objc_storeStrong(&v18->_contentItemBuilder, a5);
    objc_storeStrong(&v18->_filteredFCKinds, a6);
    objc_storeStrong(&v18->_userIdentity, a7);
  }

  return v18;
}

@end