@interface AVStreamDataAsset
- (AVStreamDataAsset)initWithParser:(id)parser tracks:(id)tracks;
- (id)copyAssetRemovingTrackID:(int)d;
- (id)copyAssetWithAdditionalTrackID:(int)d mediaType:(id)type;
- (id)formatDescriptionsForTrackID:(int)d;
- (id)mediaTypeForTrackID:(int)d;
- (id)tracks;
- (void)dealloc;
@end

@implementation AVStreamDataAsset

- (AVStreamDataAsset)initWithParser:(id)parser tracks:(id)tracks
{
  v9.receiver = self;
  v9.super_class = AVStreamDataAsset;
  v6 = [(AVAsset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_weakReferenceToParser, parser);
    v7->_inspector = -[AVStreamDataAssetInspector initWithTrackIDs:]([AVStreamDataAssetInspector alloc], "initWithTrackIDs:", [tracks allKeys]);
    v7->_inspectorLoader = [[AVAssetSynchronousInspectorLoader alloc] initWithAssetInspector:v7->_inspector];
    v7->_trackDictsByTrackID = [tracks copy];
    v7->_tracksOnce = objc_alloc_init(AVDispatchOnce);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVStreamDataAsset;
  [(AVAsset *)&v3 dealloc];
}

- (id)copyAssetWithAdditionalTrackID:(int)d mediaType:(id)type
{
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*&d];
  [(NSDictionary *)self->_trackDictsByTrackID objectForKey:v6];
  v7 = [(NSDictionary *)self->_trackDictsByTrackID mutableCopy];
  [v7 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjectsAndKeys:", type, @"mediaType", 0), v6}];
  v8 = [AVStreamDataAsset alloc];
  parser = [(AVStreamDataAsset *)self parser];

  return [(AVStreamDataAsset *)v8 initWithParser:parser tracks:v7];
}

- (id)copyAssetRemovingTrackID:(int)d
{
  v3 = *&d;
  v5 = [(NSDictionary *)self->_trackDictsByTrackID mutableCopy];
  [v5 removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v3)}];
  v6 = [AVStreamDataAsset alloc];
  parser = [(AVStreamDataAsset *)self parser];

  return [(AVStreamDataAsset *)v6 initWithParser:parser tracks:v5];
}

- (id)mediaTypeForTrackID:(int)d
{
  result = -[NSDictionary objectForKey:](self->_trackDictsByTrackID, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInteger:d]);
  if (result)
  {

    return [result objectForKey:@"mediaType"];
  }

  return result;
}

- (id)formatDescriptionsForTrackID:(int)d
{
  v4[1] = *MEMORY[0x1E69E9840];
  result = [-[NSDictionary objectForKey:](self->_trackDictsByTrackID objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *&d)), "objectForKey:", @"formatDescription"}];
  if (result)
  {
    v4[0] = result;
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  return result;
}

- (id)tracks
{
  tracksOnce = self->_tracksOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AVStreamDataAsset_tracks__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)tracksOnce runBlockOnce:v5];
  return self->_tracks;
}

id __27__AVStreamDataAsset_tracks__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(*(a1 + 32) + 56) allKeys];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:{-[AVAssetTrack _initWithAsset:trackID:]([AVAssetTrack alloc], "_initWithAsset:trackID:", *(a1 + 32), objc_msgSend(*(*(&v9 + 1) + 8 * v7++), "integerValue"))}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  result = v2;
  *(*(a1 + 32) + 48) = result;
  return result;
}

@end