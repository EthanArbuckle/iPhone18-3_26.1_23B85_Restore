@interface AVPlayerItemAudioTrackInfoCache
- (AVPlayerItemAudioTrackInfoCache)init;
- (BOOL)contains:(id)a3;
- (int)channelCountForTrack:(id)a3;
- (void)dealloc;
- (void)store:(id)a3;
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

- (BOOL)contains:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  FigSimpleMutexLock();
  LOBYTE(v3) = [(NSMutableSet *)self->availableTracks containsObject:v3];
  FigSimpleMutexUnlock();
  return v3;
}

- (void)store:(id)a3
{
  FigSimpleMutexLock();
  [(NSMutableSet *)self->availableTracks addObject:a3];

  FigSimpleMutexUnlock();
}

- (int)channelCountForTrack:(id)a3
{
  v4 = [a3 trackID];
  if (v4)
  {
    FigSimpleMutexLock();
    v5 = [(NSMutableSet *)self->availableTracks objectEnumerator];
    while (1)
    {
      v6 = [v5 nextObject];
      if (!v6)
      {
        break;
      }

      if (*(v6 + 8) == v4)
      {
        v4 = *(v6 + 12);
        goto LABEL_7;
      }
    }

    v4 = 0;
LABEL_7:
    FigSimpleMutexUnlock();
  }

  return v4;
}

@end