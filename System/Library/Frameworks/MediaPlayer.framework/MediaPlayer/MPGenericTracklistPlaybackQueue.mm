@interface MPGenericTracklistPlaybackQueue
- (BOOL)verifyWithError:(id *)error;
- (MPGenericTracklistPlaybackQueue)initWithMediaRemotePlaybackQueue:(_MRSystemAppPlaybackQueue *)queue options:(id)options;
- (id)description;
@end

@implementation MPGenericTracklistPlaybackQueue

- (BOOL)verifyWithError:(id *)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  trackIdentifiers = [(MPGenericTracklistPlaybackQueue *)self trackIdentifiers];
  v5 = [trackIdentifiers count];

  if (!v5)
  {
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"Empty track IDs array provided";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPErrorDomain" code:100 userInfo:v6];
    if (error)
    {
      v7 = v7;
      *error = v7;
    }
  }

  return v5 != 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MPNSStringFromShuffleType(self->_shuffleType);
  v6 = [v3 stringWithFormat:@"<%@ %p, shuffleType = %@, trackIDs = %@>", v4, self, v5, self->_trackIdentifiers];

  return v6;
}

- (MPGenericTracklistPlaybackQueue)initWithMediaRemotePlaybackQueue:(_MRSystemAppPlaybackQueue *)queue options:(id)options
{
  v18.receiver = self;
  v18.super_class = MPGenericTracklistPlaybackQueue;
  v4 = [MPRemotePlaybackQueue initWithMediaRemotePlaybackQueue:sel_initWithMediaRemotePlaybackQueue_options_ options:?];
  if (v4)
  {
    v5 = MRSystemAppPlaybackQueueCopyGenericTrackIdentifiers();
    v6 = [v5 msv_map:&__block_literal_global_57420];
    trackIdentifiers = v4->_trackIdentifiers;
    v4->_trackIdentifiers = v6;

    v8 = MRSystemAppPlaybackQueueGetFirstItemGenericTrackIdentifier();
    firstTrackIdentifier = v4->_firstTrackIdentifier;
    v4->_firstTrackIdentifier = v8;

    TracklistShuffleMode = MRSystemAppPlaybackQueueGetTracklistShuffleMode();
    if (TracklistShuffleMode > 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_1A2741AB8[TracklistShuffleMode];
    }

    v4->_shuffleType = v11;
    TracklistRepeatMode = MRSystemAppPlaybackQueueGetTracklistRepeatMode();
    if (TracklistRepeatMode > 3)
    {
      v13 = 0;
    }

    else
    {
      v13 = qword_1A2741A98[TracklistRepeatMode];
    }

    v4->_repeatType = v13;
    v14 = MRSystemAppPlaybackQueueGetTracklistCollectionIdentifierSetData();
    if (v14)
    {
      objc_opt_class();
      v15 = MSVUnarchivedObjectOfClass();
      collectionIdentifierSet = v4->_collectionIdentifierSet;
      v4->_collectionIdentifierSet = v15;
    }
  }

  return v4;
}

id __76__MPGenericTracklistPlaybackQueue_initWithMediaRemotePlaybackQueue_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 stringValue];
  }

  v4 = v3;

  return v4;
}

@end