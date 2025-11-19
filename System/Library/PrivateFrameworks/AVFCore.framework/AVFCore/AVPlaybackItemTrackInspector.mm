@interface AVPlaybackItemTrackInspector
- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)preferredTransform;
- (CGSize)dimensions;
- (CGSize)naturalSize;
- (id)_initWithAsset:(id)a3 trackID:(int)a4 trackIndex:(int64_t)a5;
- (unint64_t)hash;
- (void)_valueAsCFTypeForProperty:(__CFString *)a3;
- (void)dealloc;
@end

@implementation AVPlaybackItemTrackInspector

- (id)_initWithAsset:(id)a3 trackID:(int)a4 trackIndex:(int64_t)a5
{
  v6 = a4;
  valuePtr = a4;
  v18.receiver = self;
  v18.super_class = AVPlaybackItemTrackInspector;
  v8 = [AVAssetTrackInspector _initWithAsset:sel__initWithAsset_trackID_trackIndex_ trackID:? trackIndex:?];
  if (v8)
  {
    v9 = [a3 _playbackItem];
    if (v9)
    {
      v10 = v9;
      if ((a5 & 0x8000000000000000) == 0 && !v6)
      {
        cf = 0;
        FigBaseObject = FigPlaybackItemGetFigBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(FigBaseObject, *MEMORY[0x1E6972B80], *MEMORY[0x1E695E480], &cf);
          v13 = cf;
        }

        else
        {
          v13 = 0;
        }

        if ([v13 count] > a5)
        {
          v14 = [cf objectAtIndex:a5];
          if (v14)
          {
            CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      CFRetain(v10);
      v8[4] = v10;
      *(v8 + 10) = valuePtr;
      v8[6] = [a3 _weakReference];
      *(v8 + 11) = [v8 _SInt32ForProperty:*MEMORY[0x1E6972D58]];
      v6 = valuePtr;
    }

    if (v8[4])
    {
      v15 = v6 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15 || !*(v8 + 11))
    {

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  playbackItem = self->_playbackItem;
  if (playbackItem)
  {
    CFRelease(playbackItem);
  }

  v4.receiver = self;
  v4.super_class = AVPlaybackItemTrackInspector;
  [(AVAssetTrackInspector *)&v4 dealloc];
}

- (void)_valueAsCFTypeForProperty:(__CFString *)a3
{
  v8 = 0;
  playbackItem = self->_playbackItem;
  trackID = self->_trackID;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    return 0;
  }

  v6(playbackItem, trackID, a3, *MEMORY[0x1E695E480], &v8);
  return v8;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange
{
  start = **&MEMORY[0x1E6960C68];
  v4 = start;
  return CMTimeRangeMake(retstr, &start, &v4);
}

- (CGSize)naturalSize
{
  [(AVFigObjectInspector *)self _sizeForProperty:*MEMORY[0x1E6972D08]];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)dimensions
{
  [(AVFigObjectInspector *)self _sizeForProperty:*MEMORY[0x1E6972D08]];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGAffineTransform)preferredTransform
{
  if (self)
  {
    return [(CGAffineTransform *)self _affineTransformForProperty:*MEMORY[0x1E6972D50]];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AVPlaybackItemTrackInspector *)self _playbackItem];
    v6 = [a3 _playbackItem];
    LOBYTE(v7) = 0;
    if (v5)
    {
      if (v6)
      {
        if (v5 == v6 || (v7 = CFEqual(v5, v6)) != 0)
        {
          v8 = [(AVPlaybackItemTrackInspector *)self trackID];
          LOBYTE(v7) = v8 == [a3 trackID];
        }
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(AVPlaybackItemTrackInspector *)self _playbackItem];
  if (v3)
  {

    return CFHash(v3);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AVPlaybackItemTrackInspector;
    return [(AVPlaybackItemTrackInspector *)&v5 hash];
  }
}

@end