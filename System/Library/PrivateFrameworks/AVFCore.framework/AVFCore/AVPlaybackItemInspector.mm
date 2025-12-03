@interface AVPlaybackItemInspector
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (AVPlaybackItemInspector)initWithPlaybackItem:(OpaqueFigPlaybackItem *)item trackIDs:(id)ds;
- (BOOL)isEqual:(id)equal;
- (CGSize)naturalSize;
- (int64_t)trackCount;
- (unint64_t)hash;
- (void)_setPlaybackItem:(OpaqueFigPlaybackItem *)item;
- (void)_valueAsCFTypeForProperty:(__CFString *)property;
- (void)dealloc;
@end

@implementation AVPlaybackItemInspector

- (AVPlaybackItemInspector)initWithPlaybackItem:(OpaqueFigPlaybackItem *)item trackIDs:(id)ds
{
  v9.receiver = self;
  v9.super_class = AVPlaybackItemInspector;
  v6 = [(AVPlaybackItemInspector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (item)
    {
      [(AVPlaybackItemInspector *)v6 _setPlaybackItem:item];
      v7->_trackIDs = ds;
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  _playbackItem = [(AVPlaybackItemInspector *)self _playbackItem];
  _playbackItem2 = [equal _playbackItem];
  if (_playbackItem == _playbackItem2)
  {
    return 1;
  }

  v7 = _playbackItem2;
  result = 0;
  if (_playbackItem)
  {
    if (v7)
    {
      return CFEqual(_playbackItem, v7) != 0;
    }
  }

  return result;
}

- (unint64_t)hash
{
  _playbackItem = [(AVPlaybackItemInspector *)self _playbackItem];
  if (_playbackItem)
  {

    return CFHash(_playbackItem);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AVPlaybackItemInspector;
    return [(AVPlaybackItemInspector *)&v5 hash];
  }
}

- (void)_setPlaybackItem:(OpaqueFigPlaybackItem *)item
{
  if (item)
  {
    CFRetain(item);
  }

  playbackItem = self->_playbackItem;
  if (playbackItem)
  {
    CFRelease(playbackItem);
  }

  self->_playbackItem = item;
}

- (void)_valueAsCFTypeForProperty:(__CFString *)property
{
  v7 = 0;
  result = [(AVPlaybackItemInspector *)self _playbackItem];
  if (result)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(FigBaseObject, property, *MEMORY[0x1E695E480], &v7);
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
  _playbackItem = [(AVPlaybackItemInspector *)self _playbackItem];
  v8 = 0;
  v3 = 0.0;
  if (_playbackItem && (v4 = _playbackItem, (v5 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0))
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