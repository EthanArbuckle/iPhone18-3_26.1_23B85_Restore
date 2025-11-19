@interface AVChapterMetadataItem
- (AVChapterMetadataItem)init;
- (BOOL)_valueForKeyDependsOnMetadataValue:(id)a3;
- (id)_initWithAsset:(id)a3 chapterGroupIndex:(int64_t)a4 chapterIndex:(int64_t)a5 chapterType:(id)a6 extendedLanguageTag:(id)a7 languageCode:(id)a8 chapterDataType:(id)a9 time:(id *)a10 duration:(id *)a11;
- (id)description;
- (id)extraAttributes;
- (id)locale;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)value;
- (int64_t)_valueStatus;
- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4;
- (void)_addFigAssetNotifications;
- (void)_ensureValueLoadedSync;
- (void)_removeFigAssetNotifications;
- (void)_setValueStatus:(int64_t)a3 figErrorCode:(int)a4;
- (void)_takeValueFrom:(id)a3;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4;
@end

@implementation AVChapterMetadataItem

- (AVChapterMetadataItem)init
{
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v3 = v5;
  v4 = v6;
  return [(AVChapterMetadataItem *)self _initWithAsset:0 chapterGroupIndex:0 chapterIndex:0 chapterType:0 extendedLanguageTag:0 languageCode:0 chapterDataType:0 time:&v5 duration:&v3];
}

- (id)_initWithAsset:(id)a3 chapterGroupIndex:(int64_t)a4 chapterIndex:(int64_t)a5 chapterType:(id)a6 extendedLanguageTag:(id)a7 languageCode:(id)a8 chapterDataType:(id)a9 time:(id *)a10 duration:(id *)a11
{
  v26.receiver = self;
  v26.super_class = AVChapterMetadataItem;
  v17 = [(AVMetadataItem *)&v26 init];
  if (v17)
  {
    v18 = objc_alloc_init(AVChapterMetadataItemInternal);
    v17->_privChapter = v18;
    if (!a6)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

    if (!v18)
    {
      goto LABEL_16;
    }

    CFRetain(v18);
    v17->_privChapter->readWriteQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avchaptermetadataitem");
    if (!v17->_privChapter->readWriteQueue)
    {
      goto LABEL_16;
    }

    v17->_privChapter->weakReference = [[AVWeakReference alloc] initWithReferencedObject:v17];
    v17->_privChapter->chapterGroupIndex = a4;
    v17->_privChapter->chapterIndex = a5;
    v17->_privChapter->chapterType = a6;
    if (a7 || !a8)
    {
      if (a7 && !a8)
      {
        a8 = AVLanguageCodeFromExtendedLanguageTag(a7);
      }
    }

    else
    {
      ISO639_1FromISO639_2T = FigMetadataGetISO639_1FromISO639_2T();
      a7 = ISO639_1FromISO639_2T ? ISO639_1FromISO639_2T : a8;
    }

    v17->_privChapter->extendedLanguageTag = [a7 copy];
    v17->_privChapter->languageCode = [a8 copy];
    v17->_privChapter->chapterDataType = [a9 copy];
    privChapter = v17->_privChapter;
    var3 = a10->var3;
    *&privChapter->time.value = *&a10->var0;
    privChapter->time.epoch = var3;
    v22 = v17->_privChapter;
    v23 = *&a11->var0;
    v22->duration.epoch = a11->var3;
    *&v22->duration.value = v23;
    v24 = [a3 _figAsset];
    if (v24)
    {
      v17->_privChapter->figAsset = CFRetain(v24);
      [(AVChapterMetadataItem *)v17 _addFigAssetNotifications];
      v17->_privChapter->completions = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    }

    else
    {
LABEL_16:

      return 0;
    }
  }

  return v17;
}

- (void)_addFigAssetNotifications
{
  if (self->_privChapter->figAsset)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    CFRetain(self->_privChapter->weakReference);
    [v3 addListenerWithWeakReference:self->_privChapter->weakReference callback:chapterItem_handleFigChapterLoadingNotification name:*MEMORY[0x1E6970E98] object:self->_privChapter->figAsset flags:0];
    [v3 addListenerWithWeakReference:self->_privChapter->weakReference callback:chapterItem_handleFigChapterLoadingNotification name:*MEMORY[0x1E6970E90] object:self->_privChapter->figAsset flags:0];
    privChapter = self->_privChapter;
    v5 = *MEMORY[0x1E6970EC8];
    weakReference = privChapter->weakReference;
    figAsset = privChapter->figAsset;

    [v3 addListenerWithWeakReference:weakReference callback:chapterItem_handleFigChapterLoadingNotification name:v5 object:figAsset flags:0];
  }
}

- (void)_removeFigAssetNotifications
{
  if (self->_privChapter->figAsset)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v3 removeListenerWithWeakReference:self->_privChapter->weakReference callback:chapterItem_handleFigChapterLoadingNotification name:*MEMORY[0x1E6970E98] object:self->_privChapter->figAsset];
    [v3 removeListenerWithWeakReference:self->_privChapter->weakReference callback:chapterItem_handleFigChapterLoadingNotification name:*MEMORY[0x1E6970E90] object:self->_privChapter->figAsset];
    [v3 removeListenerWithWeakReference:self->_privChapter->weakReference callback:chapterItem_handleFigChapterLoadingNotification name:*MEMORY[0x1E6970EC8] object:self->_privChapter->figAsset];
    weakReference = self->_privChapter->weakReference;

    CFRelease(weakReference);
  }
}

- (void)dealloc
{
  if (self->_privChapter)
  {
    [(AVChapterMetadataItem *)self _removeFigAssetNotifications];
    privChapter = self->_privChapter;
    figAsset = privChapter->figAsset;
    if (figAsset)
    {
      CFRelease(figAsset);
      privChapter = self->_privChapter;
    }

    readWriteQueue = privChapter->readWriteQueue;
    if (readWriteQueue)
    {
      dispatch_release(readWriteQueue);
      privChapter = self->_privChapter;
    }

    CFRelease(self->_privChapter);
  }

  v6.receiver = self;
  v6.super_class = AVChapterMetadataItem;
  [(AVMetadataItem *)&v6 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [AVMutableMetadataItem allocWithZone:a3];
  v5 = [(AVMetadataItem *)self _figMetadataDictionaryWithValue:1 diviningValueDataType:0];

  return [(AVMetadataItem *)v4 _initWithFigMetadataDictionary:v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  privChapter = self->_privChapter;
  v11 = *&privChapter->chapterType;
  value = privChapter->value;
  v8 = *MEMORY[0x1E695E480];
  time = privChapter->time;
  v9 = CMTimeCopyDescription(v8, &time);
  time = self->_privChapter->duration;
  return [v3 stringWithFormat:@"<%@: %p, chapterType=%@, locale identifier=%@, value=%@, time=%@, duration=%@, extras=%@>", v5, self, v11, value, v9, CMTimeCopyDescription(v8, &time), self->super._priv->extras];
}

- (id)locale
{
  if (self->_privChapter->extendedLanguageTag)
  {
    return [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
  }

  else
  {
    return 0;
  }
}

- (id)value
{
  [(AVChapterMetadataItem *)self _ensureValueLoadedSync];
  v3 = self->_privChapter->value;

  return v3;
}

- (void)_takeValueFrom:(id)a3
{
  v5 = [(AVChapterMetadataItem *)self commonKey];
  v6 = [v5 isEqualToString:*MEMORY[0x1E6971EB0]];
  v7 = CFGetTypeID(a3);
  TypeID = CFDictionaryGetTypeID();
  if (v6)
  {
    if (v7 == TypeID)
    {
      v9 = [a3 objectForKey:*MEMORY[0x1E6971878]];
      v10 = v9;
      if (!v9)
      {
        goto LABEL_11;
      }

      v11 = CFGetTypeID(v9);
      if (v11 == CFDataGetTypeID())
      {
        v10 = CFRetain(v10);
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

  if (v7 != TypeID)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v12 = [a3 objectForKey:*MEMORY[0x1E69718C8]];
  v10 = v12;
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    if (v13 == CFStringGetTypeID())
    {
      v10 = CFRetain(v10);
    }

    else
    {
      v10 = 0;
    }
  }

  v14 = [a3 objectForKey:*MEMORY[0x1E69718C0]];
  if (v14)
  {
    v15 = v14;
    v16 = CFGetTypeID(v14);
    if (v16 == CFStringGetTypeID())
    {
      v17 = CFRetain(v15);

      v18 = objc_alloc(MEMORY[0x1E695DF20]);
      self->super._priv->extras = [v18 initWithObjectsAndKeys:{v17, *MEMORY[0x1E6971F38], 0}];
    }
  }

LABEL_11:

  self->_privChapter->value = v10;

  [(AVChapterMetadataItem *)self _setValueStatus:2 figErrorCode:0];
}

- (id)extraAttributes
{
  v3 = [(AVChapterMetadataItem *)self commonKey];
  if (([v3 isEqualToString:*MEMORY[0x1E6971EB0]] & 1) == 0)
  {
    [(AVChapterMetadataItem *)self _ensureValueLoadedSync];
  }

  v5.receiver = self;
  v5.super_class = AVChapterMetadataItem;
  return [(AVMetadataItem *)&v5 extraAttributes];
}

- (BOOL)_valueForKeyDependsOnMetadataValue:(id)a3
{
  if (!a3)
  {
    goto LABEL_6;
  }

  if ([a3 isEqualToString:@"value"])
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  v7 = [a3 rangeOfString:@"Value" options:14];
  LOBYTE(v5) = 1;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL && !v6)
  {
LABEL_6:
    v5 = [a3 isEqualToString:@"extraAttributes"];
    if (v5)
    {
      v8 = [(AVChapterMetadataItem *)self commonKey];
      LOBYTE(v5) = [v8 isEqualToString:*MEMORY[0x1E6971EB0]] ^ 1;
    }
  }

  return v5;
}

- (int64_t)_valueStatus
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  privChapter = self->_privChapter;
  v10 = 0;
  readWriteQueue = privChapter->readWriteQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__AVChapterMetadataItem__valueStatus__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(readWriteQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_setValueStatus:(int64_t)a3 figErrorCode:(int)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  if (a3)
  {
    readWriteQueue = self->_privChapter->readWriteQueue;
    if (a3 == 1)
    {
      v5 = v16;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __54__AVChapterMetadataItem__setValueStatus_figErrorCode___block_invoke;
      v16[3] = &unk_1E7460EE0;
      v16[4] = self;
    }

    else
    {
      v5 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __54__AVChapterMetadataItem__setValueStatus_figErrorCode___block_invoke_2;
      v14[3] = &unk_1E7461C78;
      v14[4] = self;
      v14[6] = a3;
      v15 = a4;
    }

    v5[5] = &v17;
    av_readwrite_dispatch_queue_write(readWriteQueue, v5);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = v18[5];
    v7 = [v6 countByEnumeratingWithState:&v10 objects:v23 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v10 + 1) + 8 * i) + 16))();
        }

        v7 = [v6 countByEnumeratingWithState:&v10 objects:v23 count:16];
      }

      while (v7);
    }
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __54__AVChapterMetadataItem__setValueStatus_figErrorCode___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 16);
  v2 = *(v1 + 128);
  if (v2)
  {
    if (v2 >= 2)
    {
      v3 = result;
      *(*(*(result + 40) + 8) + 40) = [*(v1 + 144) copy];
      v4 = *(*(*(v3 + 32) + 16) + 144);

      return [v4 removeAllObjects];
    }
  }

  else
  {
    *(v1 + 128) = 1;
  }

  return result;
}

uint64_t __54__AVChapterMetadataItem__setValueStatus_figErrorCode___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (*(v3 + 128) <= 1)
  {
    v4 = *(a1 + 48);
    *(v3 + 128) = v4;
    v2 = *(a1 + 32);
    if (v4 == 3)
    {
      *(*(v2 + 16) + 136) = *(a1 + 56);
      v2 = *(a1 + 32);
    }
  }

  *(*(*(a1 + 40) + 8) + 40) = [*(*(v2 + 16) + 144) copy];
  v5 = *(*(*(a1 + 32) + 16) + 144);

  return [v5 removeAllObjects];
}

- (void)_ensureValueLoadedSync
{
  if ([(AVChapterMetadataItem *)self _valueStatus]<= 1)
  {
    cf = 0;
    privChapter = self->_privChapter;
    figAsset = privChapter->figAsset;
    if (figAsset)
    {
      chapterGroupIndex = privChapter->chapterGroupIndex;
      chapterIndex = privChapter->chapterIndex;
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v7)
      {
        v8 = v7(figAsset, chapterGroupIndex, chapterIndex, 1, &cf);
        if (!v8)
        {
          -[AVChapterMetadataItem _takeValueFrom:](self, "_takeValueFrom:", [cf objectAtIndex:{0, v8}]);
          goto LABEL_9;
        }
      }

      else
      {
        v8 = 4294954514;
      }
    }

    else
    {
      v8 = 4294955126;
    }

    [(AVChapterMetadataItem *)self _setValueStatus:3 figErrorCode:v8];
LABEL_9:
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4
{
  if (![(AVChapterMetadataItem *)self _valueForKeyDependsOnMetadataValue:a3])
  {
    return 2;
  }

  result = [(AVChapterMetadataItem *)self _valueStatus];
  if (a4)
  {
    if (result == 3)
    {
      *a4 = AVLocalizedErrorWithUnderlyingOSStatus(self->_privChapter->valueErrorCode, 0);
      return 3;
    }
  }

  return result;
}

- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4
{
  if ([(AVChapterMetadataItem *)self _valueStatus]>= 2)
  {
    if (a4)
    {
      v7 = *(a4 + 2);

      v7(a4);
    }

    return;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__AVChapterMetadataItem_loadValuesAsynchronouslyForKeys_completionHandler___block_invoke;
  v19[3] = &unk_1E7461BB8;
  v19[4] = self;
  v19[5] = a3;
  if ([objc_msgSend(a3 indexesOfObjectsPassingTest:{v19), "count"}])
  {
    if (a4)
    {
      v8 = [a4 copy];
      readWriteQueue = self->_privChapter->readWriteQueue;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __75__AVChapterMetadataItem_loadValuesAsynchronouslyForKeys_completionHandler___block_invoke_2;
      v18[3] = &unk_1E7460DF0;
      v18[4] = self;
      v18[5] = v8;
      av_readwrite_dispatch_queue_write(readWriteQueue, v18);
    }

    privChapter = self->_privChapter;
    figAsset = privChapter->figAsset;
    if (figAsset)
    {
      chapterGroupIndex = privChapter->chapterGroupIndex;
      chapterIndex = privChapter->chapterIndex;
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v14)
      {
        v15 = v14(figAsset, chapterGroupIndex, chapterIndex, 1);
        if (!v15)
        {
          v16 = self;
          v17 = 1;
LABEL_18:
          [(AVChapterMetadataItem *)v16 _setValueStatus:v17 figErrorCode:v15];
          return;
        }
      }

      else
      {
        v15 = 4294954514;
      }
    }

    else
    {
      v15 = 4294955126;
    }

    v16 = self;
    v17 = 3;
    goto LABEL_18;
  }

  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

uint64_t __75__AVChapterMetadataItem_loadValuesAsynchronouslyForKeys_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectAtIndex:?];

  return [v1 _valueForKeyDependsOnMetadataValue:v2];
}

@end