@interface _SFWebClipMetadataFetcher
+ (id)_webClipLinkTagWithDictionary:(id)a3;
+ (id)metadataFetcherScriptSource;
+ (void)parseRawMetadataDictionary:(id)a3 consumer:(id)a4;
- (_SFWebClipMetadataFetcher)initWithInjectedJavascriptController:(id)a3;
- (void)_startFetchingMetadata;
- (void)fetchMetadataWithConsumer:(id)a3;
@end

@implementation _SFWebClipMetadataFetcher

+ (id)metadataFetcherScriptSource
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [v2 initWithBytesNoCopy:webClipMetadataFetcherSource length:2329 encoding:4 freeWhenDone:0];

  return v3;
}

- (_SFWebClipMetadataFetcher)initWithInjectedJavascriptController:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFWebClipMetadataFetcher;
  v5 = [(_SFWebClipMetadataFetcher *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_jsController, v4);
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    metadataConsumers = v6->_metadataConsumers;
    v6->_metadataConsumers = v7;

    [(_SFWebClipMetadataFetcher *)v6 _startFetchingMetadata];
    v9 = v6;
  }

  return v6;
}

- (void)_startFetchingMetadata
{
  WeakRetained = objc_loadWeakRetained(&self->_jsController);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51___SFWebClipMetadataFetcher__startFetchingMetadata__block_invoke;
  v4[3] = &unk_1E84952F8;
  v4[4] = self;
  [WeakRetained runJavaScriptForActivity:@"WebClipMetadataJS" withScript:0 object:@"WebClipMetadataFinderJS" invokeMethod:@"webClipMetadata" completionHandler:v4];
}

+ (id)_webClipLinkTagWithDictionary:(id)a3
{
  v3 = MEMORY[0x1E69DD2C8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 safari_stringForKey:@"href"];
  [v5 setHref:v6];

  v7 = [v4 safari_stringForKey:@"rel"];
  [v5 setRel:v7];

  v8 = [v4 safari_stringForKey:@"sizes"];
  [v5 setSizes:v8];

  [v5 setMediaMatchesPortraitOrientation:{objc_msgSend(v4, "safari_BOOLForKey:", @"mediaMatchesPortraitOrientation"}];
  v9 = [v4 safari_BOOLForKey:@"mediaMatchesLandscapeOrientation"];

  [v5 setMediaMatchesLandscapeOrientation:v9];

  return v5;
}

+ (void)parseRawMetadataDictionary:(id)a3 consumer:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v5 safari_arrayForKey:{@"linkTags", 0}];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
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

          v13 = [objc_opt_class() _webClipLinkTagWithDictionary:*(*(&v16 + 1) + 8 * v12)];
          [v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = [v5 safari_dictionaryForKey:@"metaTags"];
    v15 = [v7 copy];
    v6[2](v6, v14, v15);
  }

  else
  {
    v6[2](v6, MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F0]);
  }
}

- (void)fetchMetadataWithConsumer:(id)a3
{
  if (self->_fetchingCompleted)
  {
    metaTags = self->_metaTags;
    linkTags = self->_linkTags;
    v7 = *(a3 + 2);

    v7(a3, metaTags, linkTags);
  }

  else
  {
    metadataConsumers = self->_metadataConsumers;
    v9 = _Block_copy(a3);
    [(NSMutableArray *)metadataConsumers addObject:v9];
  }
}

@end