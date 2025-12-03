@interface AVPlayerItemAudioTrackInfoCache
- (AVPlayerItemAudioTrackInfoCache)init;
- (BOOL)contains:(id)contains;
- (int)channelCountForTrack:(id)track;
- (void)dealloc;
- (void)store:(id)store;
@end

@implementation AVPlayerItemAudioTrackInfoCache

- (AVPlayerItemAudioTrackInfoCache)init
{
  v4.receiver = self;
  v4.super_class = AVPlayerItemAudioTrackInfoCache;
  v2 = [(AVPlayerItemAudioTrackInfoCache *)&v4 init];
  if (v2)
  {
    v2->availableTracks = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->mutex = FigSimpleMutexCreate();
  }

  return v2;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = AVPlayerItemAudioTrackInfoCache;
  [(AVPlayerItemAudioTrackInfoCache *)&v3 dealloc];
}

- (BOOL)contains:(id)contains
{
  if (!contains)
  {
    return 0;
  }

  containsCopy = contains;
  FigSimpleMutexLock();
  LOBYTE(containsCopy) = [(NSMutableSet *)self->availableTracks containsObject:containsCopy];
  FigSimpleMutexUnlock();
  return containsCopy;
}

- (void)store:(id)store
{
  FigSimpleMutexLock();
  [(NSMutableSet *)self->availableTracks addObject:store];

  FigSimpleMutexUnlock();
}

- (int)channelCountForTrack:(id)track
{
  trackID = [track trackID];
  if (trackID)
  {
    FigSimpleMutexLock();
    objectEnumerator = [(NSMutableSet *)self->availableTracks objectEnumerator];
    while (1)
    {
      nextObject = [objectEnumerator nextObject];
      if (!nextObject)
      {
        break;
      }

      if (*(nextObject + 8) == trackID)
      {
        trackID = *(nextObject + 12);
        goto LABEL_7;
      }
    }

    trackID = 0;
LABEL_7:
    FigSimpleMutexUnlock();
  }

  return trackID;
}

@end