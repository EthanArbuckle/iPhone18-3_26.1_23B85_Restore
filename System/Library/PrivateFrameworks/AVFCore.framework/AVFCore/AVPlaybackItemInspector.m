@interface AVPlaybackItemInspector
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (AVPlaybackItemInspector)initWithPlaybackItem:(OpaqueFigPlaybackItem *)a3 trackIDs:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGSize)naturalSize;
- (int64_t)trackCount;
- (unint64_t)hash;
- (void)_setPlaybackItem:(OpaqueFigPlaybackItem *)a3;
- (void)_valueAsCFTypeForProperty:(__CFString *)a3;
- (void)dealloc;
@end

@implementation AVPlaybackItemInspector

- (AVPlaybackItemInspector)initWithPlaybackItem:(OpaqueFigPlaybackItem *)a3 trackIDs:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVPlaybackItemInspector;
  v6 = [(AVPlaybackItemInspector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      [(AVPlaybackItemInspector *)v6 _setPlaybackItem:a3];
      v7->_trackIDs = a4;
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  [(AVPlaybackItemInspector *)self _setPlaybackItem:0];
  v3.receiver = self;
  v3.super_class = AVPlaybackItemInspector;
  [(AVPlaybackItemInspector *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVPlaybackItemInspector *)self _playbackItem];
  v6 = [a3 _playbackItem];
  if (v5 == v6)
  {
    return 1;
  }

  v7 = v6;
  result = 0;
  if (v5)
  {
    if (v7)
    {
      return CFEqual(v5, v7) != 0;
    }
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [(AVPlaybackItemInspector *)self _playbackItem];
  if (v3)
  {

    return CFHash(v3);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AVPlaybackItemInspector;
    return [(AVPlaybackItemInspector *)&v5 hash];
  }
}

- (void)_setPlaybackItem:(OpaqueFigPlaybackItem *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  playbackItem = self->_playbackItem;
  if (playbackItem)
  {
    CFRelease(playbackItem);
  }

  self->_playbackItem = a3;
}

- (void)_valueAsCFTypeForProperty:(__CFString *)a3
{
  v7 = 0;
  result = [(AVPlaybackItemInspector *)self _playbackItem];
  if (result)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(FigBaseObject, a3, *MEMORY[0x1E695E480], &v7);
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  *retstr = **&MEMORY[0x1E6960CC0];
  result = [(AVPlaybackItemInspector *)self _playbackItem];
  if (result)
  {
    v5 = result;
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = (VTable + 16);
    v8 = *(v7 + 16);
    if (v8)
    {

      return v8(v5, retstr);
    }
  }

  return result;
}

- (CGSize)naturalSize
{
  v2 = [(AVPlaybackItemInspector *)self _playbackItem];
  v8 = 0;
  v3 = 0.0;
  if (v2 && (v4 = v2, (v5 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0))
  {
    v5(v4, &v8 + 4, &v8, 0.0);
    v6 = *(&v8 + 1);
    v3 = *&v8;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = v3;
  result.height = v7;
  result.width = v6;
  return result;
}

- (int64_t)trackCount
{
  if (self->_trackIDs)
  {
    trackIDs = self->_trackIDs;
  }

  else
  {
    trackIDs = [(AVFigObjectInspector *)self _arrayForProperty:*MEMORY[0x1E6972B80], v2];
  }

  return [(NSArray *)trackIDs count];
}

@end