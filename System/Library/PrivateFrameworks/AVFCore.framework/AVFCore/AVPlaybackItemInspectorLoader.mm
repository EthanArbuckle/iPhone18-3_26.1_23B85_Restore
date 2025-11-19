@interface AVPlaybackItemInspectorLoader
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (AVPlaybackItemInspectorLoader)initWithURL:(id)a3 playbackItem:(OpaqueFigPlaybackItem *)a4 trackIDs:(id)a5 dynamicBehavior:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (OpaqueFigFormatReader)_copyFormatReaderFromFigObjectWithFigErrorCode:(int *)a3;
- (id)_dictionaryOfSpecialGettersForKeyValueStatus;
- (id)_loadValuesUsingDefaultLoadingMethodWhileMutexLockedForKeys:(id)a3;
- (id)_playbackItemPropertiesForKeys:(id)a3;
- (id)assetInspector;
- (unint64_t)hash;
- (void)_addFigObjectNotifications;
- (void)_removeFigObjectNotifications;
- (void)cancelLoading;
- (void)dealloc;
@end

@implementation AVPlaybackItemInspectorLoader

- (AVPlaybackItemInspectorLoader)initWithURL:(id)a3 playbackItem:(OpaqueFigPlaybackItem *)a4 trackIDs:(id)a5 dynamicBehavior:(BOOL)a6
{
  v13.receiver = self;
  v13.super_class = AVPlaybackItemInspectorLoader;
  v9 = [(AVAssetMakeReadyForInspectionLoader *)&v13 initWithURL:a3];
  v10 = v9;
  if (v9)
  {
    if (a4)
    {
      v9->_playbackItem = CFRetain(a4);
      v10->_trackIDs = a5;
      v10->_shouldCacheDuration = !a6;
      v11 = MEMORY[0x1E6960C70];
      *&v10->_cachedDuration.flags = *(MEMORY[0x1E6960C70] + 16);
      *(&v10->_shouldCacheDuration + 4) = *v11;
      [(AVPlaybackItemInspectorLoader *)v10 _addFigObjectNotifications];
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

- (void)_addFigObjectNotifications
{
  v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v4 = [(AVAssetInspectorLoader *)self _weakReference];
  CFRetain(v4);
  [v3 addListenerWithWeakReference:v4 callback:handlePlaybackItemNotification name:*MEMORY[0x1E6972570] object:self->_playbackItem flags:0];
  v5 = *MEMORY[0x1E69724C0];
  playbackItem = self->_playbackItem;

  [v3 addListenerWithWeakReference:v4 callback:handlePlaybackItemNotification name:v5 object:playbackItem flags:0];
}

- (void)_removeFigObjectNotifications
{
  if (self->_playbackItem)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v4 = [(AVAssetInspectorLoader *)self _weakReference];
    [v3 removeListenerWithWeakReference:v4 callback:handlePlaybackItemNotification name:*MEMORY[0x1E6972570] object:self->_playbackItem];
    [v3 removeListenerWithWeakReference:v4 callback:handlePlaybackItemNotification name:*MEMORY[0x1E69724C0] object:self->_playbackItem];

    CFRelease(v4);
  }
}

- (void)dealloc
{
  [(AVPlaybackItemInspectorLoader *)self _removeFigObjectNotifications];

  playbackItem = self->_playbackItem;
  if (playbackItem)
  {
    CFRelease(playbackItem);
  }

  v4.receiver = self;
  v4.super_class = AVPlaybackItemInspectorLoader;
  [(AVAssetMakeReadyForInspectionLoader *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVPlaybackItemInspectorLoader *)self _playbackItem];
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
  v3 = [(AVPlaybackItemInspectorLoader *)self _playbackItem];
  if (v3)
  {

    return CFHash(v3);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AVPlaybackItemInspectorLoader;
    return [(AVPlaybackItemInspectorLoader *)&v5 hash];
  }
}

- (id)assetInspector
{
  result = self->super._assetInspector;
  if (!result)
  {
    result = [[AVPlaybackItemInspector alloc] initWithPlaybackItem:self->_playbackItem trackIDs:self->_trackIDs];
    self->super._assetInspector = result;
  }

  return result;
}

- (void)cancelLoading
{
  [(AVPlaybackItemInspectorLoader *)self _removeFigObjectNotifications];
  playbackItem = self->_playbackItem;
  if (playbackItem)
  {
    CFRelease(playbackItem);
    self->_playbackItem = 0;
  }

  v4.receiver = self;
  v4.super_class = AVPlaybackItemInspectorLoader;
  [(AVAssetMakeReadyForInspectionLoader *)&v4 cancelLoading];
}

- (OpaqueFigFormatReader)_copyFormatReaderFromFigObjectWithFigErrorCode:(int *)a3
{
  v8 = 0;
  playbackItem = self->_playbackItem;
  if (!playbackItem)
  {
    v6 = 0;
    if (!a3)
    {
      return v8;
    }

    goto LABEL_6;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v5)
  {
    v6 = v5(playbackItem, &v8);
    if (!a3)
    {
      return v8;
    }

    goto LABEL_6;
  }

  v6 = -12782;
  if (a3)
  {
LABEL_6:
    *a3 = v6;
  }

  return v8;
}

- (id)_dictionaryOfSpecialGettersForKeyValueStatus
{
  if (getDictionaryOfSpecialPlaybackItemGettersForKeyValueStatus_onceToken != -1)
  {
    [AVPlaybackItemInspectorLoader _dictionaryOfSpecialGettersForKeyValueStatus];
  }

  return getDictionaryOfSpecialPlaybackItemGettersForKeyValueStatus_sSpecialPlaybackItemGettersForKeyValueStatus;
}

- (id)_playbackItemPropertiesForKeys:(id)a3
{
  v3 = [0 objectsForKeys:a3 notFoundMarker:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  v4 = [MEMORY[0x1E695DFA8] setWithArray:v3];
  [v4 removeObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  result = [v4 count];
  if (result)
  {

    return [v4 allObjects];
  }

  return result;
}

- (id)_loadValuesUsingDefaultLoadingMethodWhileMutexLockedForKeys:(id)a3
{
  v5 = [(AVPlaybackItemInspectorLoader *)self _playbackItemPropertiesForKeys:?];
  v12 = 0;
  playbackItem = self->_playbackItem;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v7)
  {
    v8 = v7(playbackItem, v5, &v12);
    v9 = 3;
    if (!v8)
    {
      v9 = 1;
    }

    if (v12)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v8 = 4294954514;
    v10 = 3;
  }

  [(AVAssetMakeReadyForInspectionLoader *)self _updateStatusWhileMutexLocked:v10 figErrorCode:v8];
  if (v12)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  v3 = self;
  if (LOBYTE(self[3].var3) == 1 && (self[4].var1 & 1) != 0)
  {
    *&retstr->var0 = *(&self[3].var3 + 4);
    retstr->var3 = *&self[4].var2;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
    self = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self assetInspector];
    if (self)
    {
      self = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self duration];
    }

    else
    {
      retstr->var0 = 0;
      *&retstr->var1 = 0;
      retstr->var3 = 0;
    }

    if (LOBYTE(v3[3].var3) == 1)
    {
      *(&v3[3].var3 + 4) = *&retstr->var0;
      *&v3[4].var2 = retstr->var3;
    }
  }

  return self;
}

@end