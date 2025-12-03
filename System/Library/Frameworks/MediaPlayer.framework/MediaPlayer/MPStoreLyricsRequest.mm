@interface MPStoreLyricsRequest
+ (BOOL)supportsLyricsForURLBag:(id)bag;
+ (BOOL)supportsLyricsForURLBagDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation MPStoreLyricsRequest

+ (BOOL)supportsLyricsForURLBagDictionary:(id)dictionary
{
  v3 = MEMORY[0x1E69E4650];
  dictionaryCopy = dictionary;
  v5 = [[v3 alloc] _initWithDictionary:dictionaryCopy];

  v6 = _os_feature_enabled_impl();
  v7 = off_1E7672BA8;
  if (!v6)
  {
    v7 = off_1E7672BB0;
  }

  v8 = [(__objc2_class *)*v7 supportsLyricsForURLBag:v5];

  return v8;
}

+ (BOOL)supportsLyricsForURLBag:(id)bag
{
  bagCopy = bag;
  v4 = _os_feature_enabled_impl();
  v5 = off_1E7672BA8;
  if (!v4)
  {
    v5 = off_1E7672BB0;
  }

  v6 = [(__objc2_class *)*v5 supportsLyricsForURLBag:bagCopy];

  return v6;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  _os_feature_enabled_impl();
  v5 = objc_opt_new();
  song = [(MPStoreLyricsRequest *)self song];
  identifiers = [song identifiers];
  universalStore = [identifiers universalStore];
  lyricsAdamID = [universalStore lyricsAdamID];
  if (lyricsAdamID)
  {
    [v5 setSongAdamID:lyricsAdamID];
  }

  else
  {
    song2 = [(MPStoreLyricsRequest *)self song];
    identifiers2 = [song2 identifiers];
    universalStore2 = [identifiers2 universalStore];
    subscriptionAdamID = [universalStore2 subscriptionAdamID];
    if (subscriptionAdamID)
    {
      [v5 setSongAdamID:subscriptionAdamID];
    }

    else
    {
      song3 = [(MPStoreLyricsRequest *)self song];
      identifiers3 = [song3 identifiers];
      universalStore3 = [identifiers3 universalStore];
      [v5 setSongAdamID:{objc_msgSend(universalStore3, "adamID")}];
    }
  }

  song4 = [(MPStoreLyricsRequest *)self song];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__MPStoreLyricsRequest_newOperationWithResponseHandler___block_invoke;
  v21[3] = &unk_1E767D118;
  v22 = song4;
  v23 = handlerCopy;
  v16 = song4;
  v17 = handlerCopy;
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

- (id)copyWithZone:(_NSZone *)zone
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