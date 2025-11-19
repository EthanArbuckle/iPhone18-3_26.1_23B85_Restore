@interface MPStoreLyricsRequest
+ (BOOL)supportsLyricsForURLBag:(id)a3;
+ (BOOL)supportsLyricsForURLBagDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPStoreLyricsRequest

+ (BOOL)supportsLyricsForURLBagDictionary:(id)a3
{
  v3 = MEMORY[0x1E69E4650];
  v4 = a3;
  v5 = [[v3 alloc] _initWithDictionary:v4];

  v6 = _os_feature_enabled_impl();
  v7 = off_1E7672BA8;
  if (!v6)
  {
    v7 = off_1E7672BB0;
  }

  v8 = [(__objc2_class *)*v7 supportsLyricsForURLBag:v5];

  return v8;
}

+ (BOOL)supportsLyricsForURLBag:(id)a3
{
  v3 = a3;
  v4 = _os_feature_enabled_impl();
  v5 = off_1E7672BA8;
  if (!v4)
  {
    v5 = off_1E7672BB0;
  }

  v6 = [(__objc2_class *)*v5 supportsLyricsForURLBag:v3];

  return v6;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  _os_feature_enabled_impl();
  v5 = objc_opt_new();
  v6 = [(MPStoreLyricsRequest *)self song];
  v7 = [v6 identifiers];
  v8 = [v7 universalStore];
  v9 = [v8 lyricsAdamID];
  if (v9)
  {
    [v5 setSongAdamID:v9];
  }

  else
  {
    v10 = [(MPStoreLyricsRequest *)self song];
    v11 = [v10 identifiers];
    v12 = [v11 universalStore];
    v13 = [v12 subscriptionAdamID];
    if (v13)
    {
      [v5 setSongAdamID:v13];
    }

    else
    {
      v20 = [(MPStoreLyricsRequest *)self song];
      v19 = [v20 identifiers];
      v14 = [v19 universalStore];
      [v5 setSongAdamID:{objc_msgSend(v14, "adamID")}];
    }
  }

  v15 = [(MPStoreLyricsRequest *)self song];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__MPStoreLyricsRequest_newOperationWithResponseHandler___block_invoke;
  v21[3] = &unk_1E767D118;
  v22 = v15;
  v23 = v4;
  v16 = v15;
  v17 = v4;
  [v5 setResponseHandler:v21];

  return v5;
}

void __56__MPStoreLyricsRequest_newOperationWithResponseHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [v6 identifiers];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__MPStoreLyricsRequest_newOperationWithResponseHandler___block_invoke_2;
    v9[3] = &unk_1E767D0F0;
    v10 = v5;
    v8 = [v6 copyWithIdentifiers:v7 block:v9];

    (*(*(a1 + 40) + 16))();
  }
}

void __56__MPStoreLyricsRequest_newOperationWithResponseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasLoadedValueForKey:@"MPModelRelationshipSongLyrics"])
  {
    v4 = [v3 lyrics];
  }

  else
  {
    v4 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__MPStoreLyricsRequest_newOperationWithResponseHandler___block_invoke_3;
  aBlock[3] = &unk_1E7680B28;
  v19 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __56__MPStoreLyricsRequest_newOperationWithResponseHandler___block_invoke_4;
  v16 = &unk_1E767D0C8;
  v17 = *(a1 + 32);
  v6 = _Block_copy(&v13);
  if (v4)
  {
    v7 = [v4 identifiers];
    v8 = [v7 copyWithSource:@"StoreLyrics" block:v5];
    v9 = [v4 copyWithIdentifiers:v8 block:v6];
  }

  else
  {
    v10 = [MPModelLyrics alloc];
    v11 = [MPIdentifierSet alloc];
    v7 = [MPModelLyricsKind identityKind:v13];
    v8 = [(MPIdentifierSet *)v11 initWithSource:@"StoreLyrics" modelKind:v7 block:v5];
    v9 = [(MPModelObject *)v10 initWithIdentifiers:v8 block:v6];
  }

  v12 = v9;

  [v3 setLyrics:v12];
}

void __56__MPStoreLyricsRequest_newOperationWithResponseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 lyricsID];
  [v3 setLyricsID:v4];
}

void __56__MPStoreLyricsRequest_newOperationWithResponseHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 lyricsContent];
  [v3 setTTML:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_song);
  }

  return v5;
}

@end