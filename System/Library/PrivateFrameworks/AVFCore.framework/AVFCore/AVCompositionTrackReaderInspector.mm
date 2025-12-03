@interface AVCompositionTrackReaderInspector
- (id)_initWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index;
- (id)segments;
- (void)dealloc;
@end

@implementation AVCompositionTrackReaderInspector

- (id)_initWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index
{
  v9.receiver = self;
  v9.super_class = AVCompositionTrackReaderInspector;
  v6 = [(AVTrackReaderInspector *)&v9 _initWithAsset:asset trackID:*&d trackIndex:index];
  if (v6)
  {
    _mutableComposition = [asset _mutableComposition];
    if (_mutableComposition)
    {
      _mutableComposition = CFRetain(_mutableComposition);
    }

    v6[12] = _mutableComposition;
  }

  return v6;
}

- (void)dealloc
{
  figMutableComposition = self->_figMutableComposition;
  if (figMutableComposition)
  {
    CFRelease(figMutableComposition);
  }

  v4.receiver = self;
  v4.super_class = AVCompositionTrackReaderInspector;
  [(AVTrackReaderInspector *)&v4 dealloc];
}

- (id)segments
{
  _mutableComposition = [(AVCompositionTrackReaderInspector *)self _mutableComposition];
  trackID = [(AVTrackReaderInspector *)self trackID];
  v23 = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v5 || v5(_mutableComposition, trackID, &v23, 0, 0) || v23 < 1)
  {
    v6 = 0;
LABEL_14:
    free(v6);
    return [MEMORY[0x1E695DEC8] array];
  }

  v6 = malloc_type_malloc(108 * v23, 0x1060040CB727B4DuLL);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v23;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v8)
  {
    goto LABEL_14;
  }

  if (v8(_mutableComposition, trackID, 0, v7, v6))
  {
    goto LABEL_14;
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v23];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  if (v23 >= 1)
  {
    v11 = 0;
    v12 = (v6 + 26);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = *(v12 - 13);
      v16 = *(v12 - 9);
      v22[1] = *(v12 - 11);
      v22[2] = v16;
      v22[0] = v15;
      v17 = *(v12 - 7);
      v18 = *(v12 - 3);
      v21[1] = *(v12 - 5);
      v21[2] = v18;
      v21[0] = v17;
      v19 = [AVCompositionTrackSegment compositionTrackSegmentWithURL:v13 trackID:v14 sourceTimeRange:v22 targetTimeRange:v21];
      if (!v19)
      {
        break;
      }

      [v10 addObject:v19];
      ++v11;
      v12 = (v12 + 108);
    }

    while (v11 < v23);
  }

  free(v6);
  return v10;
}

@end