@interface AVMutableMovie
+ (AVMutableMovie)movieWithData:(NSData *)data options:(NSDictionary *)options error:(NSError *)outError;
+ (AVMutableMovie)movieWithSettingsFromMovie:(AVMovie *)movie options:(NSDictionary *)options error:(NSError *)outError;
+ (AVMutableMovie)movieWithURL:(NSURL *)URL options:(NSDictionary *)options error:(NSError *)outError;
- (AVMediaDataStorage)defaultMediaDataStorage;
- (AVMutableMovie)initWithData:(NSData *)data options:(NSDictionary *)options error:(NSError *)outError;
- (AVMutableMovie)initWithSettingsFromMovie:(AVMovie *)movie options:(NSDictionary *)options error:(NSError *)outError;
- (AVMutableMovie)initWithURL:(NSURL *)URL options:(NSDictionary *)options error:(NSError *)outError;
- (AVMutableMovieTrack)addMutableTrackWithMediaType:(AVMediaType)mediaType copySettingsFromTrack:(AVAssetTrack *)track options:(NSDictionary *)options;
- (AVMutableMovieTrack)mutableTrackCompatibleWithTrack:(AVAssetTrack *)track;
- (AVMutableMovieTrack)trackWithTrackID:(CMPersistentTrackID)trackID;
- (BOOL)insertTimeRange:(CMTimeRange *)timeRange ofAsset:(AVAsset *)asset atTime:(CMTime *)startTime copySampleData:(BOOL)copySampleData error:(NSError *)outError;
- (BOOL)isDefunct;
- (NSArray)addMutableTracksCopyingSettingsFromTracks:(NSArray *)existingTracks options:(NSDictionary *)options;
- (NSArray)metadata;
- (NSArray)metadataForFormat:(AVMetadataFormat)format;
- (NSArray)tracks;
- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (NSArray)tracksWithMediaType:(AVMediaType)mediaType;
- (OpaqueFigFormatReader)_copyFormatReader;
- (id)_addMutableTrackWithMediaType:(id)type copySettingsFromTrack:(id)track options:(id)options;
- (id)_initWithFigAsset:(OpaqueFigAsset *)asset;
- (id)_initWithFigError:(int)error userInfo:(id)info;
- (id)_initWithFormatReader:(OpaqueFigFormatReader *)reader URL:(id)l data:(id)data options:(id)options;
- (id)_mutableTracks;
- (id)availableMetadataFormats;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)trackReferences;
- (int64_t)statusOfValueForKey:(id)key error:(id *)error;
- (void)_addFigAssetNotifications;
- (void)_removeFigAssetNotifications;
- (void)dealloc;
- (void)insertEmptyTimeRange:(CMTimeRange *)timeRange;
- (void)loadValuesAsynchronouslyForKeys:(id)keys completionHandler:(id)handler;
- (void)removeTimeRange:(CMTimeRange *)timeRange;
- (void)removeTrack:(AVMovieTrack *)track;
- (void)scaleTimeRange:(CMTimeRange *)timeRange toDuration:(CMTime *)duration;
- (void)setDefaultMediaDataStorage:(AVMediaDataStorage *)defaultMediaDataStorage;
- (void)setInterleavingPeriod:(CMTime *)interleavingPeriod;
- (void)setMetadata:(NSArray *)metadata;
- (void)setModified:(BOOL)modified;
- (void)setPreferredRate:(float)preferredRate;
- (void)setPreferredVolume:(float)preferredVolume;
- (void)setTimescale:(CMTimeScale)timescale;
@end

@implementation AVMutableMovie

+ (AVMutableMovie)movieWithURL:(NSURL *)URL options:(NSDictionary *)options error:(NSError *)outError
{
  v8 = URL;
  v9 = options;
  v10 = [[self alloc] initWithURL:v8 options:v9 error:outError];

  return v10;
}

- (AVMutableMovie)initWithURL:(NSURL *)URL options:(NSDictionary *)options error:(NSError *)outError
{
  v10 = URL;
  v11 = options;
  v17 = v11;
  cf = 0;
  v37 = 0;
  v38 = 0;
  if (!v10)
  {
    v31 = MEMORY[0x1E695DF30];
    v32 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v12, v13, v14, v15, v16, "URL != nil");
    v33 = [v31 exceptionWithName:*MEMORY[0x1E695D940] reason:v32 userInfo:0];
    v34 = v33;

    objc_exception_throw(v33);
  }

  v18 = _figOptionsFromAVMovieOptions(v11);
  v19 = FigMutableMovieRemoteCreateWithURL();
  if (v19 || (v19 = _configureFigObjects(&cf, v17)) != 0)
  {
    initializationOptions = [MEMORY[0x1E695DF20] dictionaryWithObject:v10 forKey:*MEMORY[0x1E696A998]];
    v21 = AVLocalizedErrorWithUnderlyingOSStatus(v19, initializationOptions);
    v22 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v35.receiver = self;
  v35.super_class = AVMutableMovie;
  v23 = [(AVMovie *)&v35 _initWithFigAsset:v38];
  if (v23)
  {
    v24 = _createMutableMovieStorageWithFigObjects(&cf);
    mutableMovieInternal = v23->_mutableMovieInternal;
    v23->_mutableMovieInternal = v24;

    if (v23->_mutableMovieInternal)
    {
      [(AVMutableMovie *)v23 _addFigAssetNotifications];
      objc_storeStrong(&v23->_mutableMovieInternal->URL, URL);
      v26 = [(NSDictionary *)v17 copy];
      v21 = 0;
      v27 = v23->_mutableMovieInternal;
      initializationOptions = v27->initializationOptions;
      v27->initializationOptions = v26;
      v22 = 1;
      self = v23;
      goto LABEL_8;
    }

    v21 = 0;
    v22 = 0;
    self = v23;
  }

  else
  {
    self = 0;
    v21 = 0;
    v22 = 0;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v22)
  {
    selfCopy = self;
  }

  else if (outError)
  {
    v29 = v21;
    selfCopy = 0;
    *outError = v21;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (AVMutableMovie)movieWithData:(NSData *)data options:(NSDictionary *)options error:(NSError *)outError
{
  v8 = data;
  v9 = options;
  v10 = [[self alloc] initWithData:v8 options:v9 error:outError];

  return v10;
}

- (AVMutableMovie)initWithData:(NSData *)data options:(NSDictionary *)options error:(NSError *)outError
{
  v9 = data;
  dictionary = options;
  cf = 0;
  v39 = 0;
  v40 = 0;
  if (![(NSData *)v9 length])
  {
    v33 = MEMORY[0x1E695DF30];
    v34 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v11, v12, v13, v14, v15, "[data length] > 0");
    v35 = [v33 exceptionWithName:*MEMORY[0x1E695D940] reason:v34 userInfo:0];
    v36 = v35;

    objc_exception_throw(v35);
  }

  v16 = [(NSData *)v9 copy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  v17 = *MEMORY[0x1E6972000];
  v18 = [(NSDictionary *)dictionary objectForKeyedSubscript:*MEMORY[0x1E6972000]];

  if (!v18)
  {
    v19 = [(NSDictionary *)dictionary mutableCopy];
    [(NSDictionary *)v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v17];

    dictionary = v19;
  }

  v20 = _figOptionsFromAVMovieOptions(dictionary);
  v21 = FigMutableMovieRemoteCreateFromData();
  if (v21 || (v21 = _configureFigObjects(&cf, dictionary)) != 0)
  {
    AVLocalizedErrorWithUnderlyingOSStatus(v21, 0);
    v23 = v22 = 0;
  }

  else
  {
    v37.receiver = self;
    v37.super_class = AVMutableMovie;
    v24 = [(AVMovie *)&v37 _initWithFigAsset:v40];
    if (v24)
    {
      v25 = _createMutableMovieStorageWithFigObjects(&cf);
      mutableMovieInternal = v24->_mutableMovieInternal;
      v24->_mutableMovieInternal = v25;

      if (v24->_mutableMovieInternal)
      {
        [(AVMutableMovie *)v24 _addFigAssetNotifications];
        objc_storeStrong(&v24->_mutableMovieInternal->data, v16);
        v27 = [(NSDictionary *)dictionary copy];
        v28 = v24->_mutableMovieInternal;
        initializationOptions = v28->initializationOptions;
        v28->initializationOptions = v27;

        v23 = 0;
        v22 = 1;
      }

      else
      {
        v23 = 0;
        v22 = 0;
      }

      self = v24;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      self = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v22)
  {
    selfCopy = self;
  }

  else if (outError)
  {
    v31 = v23;
    selfCopy = 0;
    *outError = v23;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (AVMutableMovie)movieWithSettingsFromMovie:(AVMovie *)movie options:(NSDictionary *)options error:(NSError *)outError
{
  v7 = movie;
  v8 = options;
  v9 = [objc_alloc(objc_opt_class()) initWithSettingsFromMovie:v7 options:v8 error:outError];

  return v9;
}

- (AVMutableMovie)initWithSettingsFromMovie:(AVMovie *)movie options:(NSDictionary *)options error:(NSError *)outError
{
  v8 = movie;
  v9 = options;
  cf = 0;
  v26 = 0;
  v27 = 0;
  _copyFormatReader = [(AVMovie *)v8 _copyFormatReader];
  v11 = _figOptionsFromAVMovieOptions(v9);
  Empty = FigMutableMovieRemoteCreateEmpty();
  if (Empty || (Empty = _configureFigObjects(&cf, v9)) != 0)
  {
    AVLocalizedErrorWithUnderlyingOSStatus(Empty, 0);
    v14 = v13 = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = AVMutableMovie;
    v15 = [(AVMovie *)&v24 _initWithFigAsset:v27];
    if (v15)
    {
      v16 = _createMutableMovieStorageWithFigObjects(&cf);
      mutableMovieInternal = v15->_mutableMovieInternal;
      v15->_mutableMovieInternal = v16;

      if (v15->_mutableMovieInternal)
      {
        [(AVMutableMovie *)v15 _addFigAssetNotifications];
        v18 = [(NSDictionary *)v9 copy];
        v19 = v15->_mutableMovieInternal;
        initializationOptions = v19->initializationOptions;
        v19->initializationOptions = v18;

        v14 = 0;
        v13 = 1;
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      self = v15;
    }

    else
    {
      v14 = 0;
      v13 = 0;
      self = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (_copyFormatReader)
  {
    CFRelease(_copyFormatReader);
  }

  if (v13)
  {
    selfCopy = self;
  }

  else if (outError)
  {
    v22 = v14;
    selfCopy = 0;
    *outError = v14;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initWithFormatReader:(OpaqueFigFormatReader *)reader URL:(id)l data:(id)data options:(id)options
{
  lCopy = l;
  dataCopy = data;
  optionsCopy = options;
  cf = 0;
  v31 = 0;
  v32 = 0;
  v13 = _figOptionsFromAVMovieOptions(optionsCopy);
  v14 = FigMutableMovieRemoteCreateFromFormatReader();
  if (v14 || (v14 = _configureFigObjects(&cf, optionsCopy)) != 0)
  {
    if (lCopy)
    {
      initializationOptions = [MEMORY[0x1E695DF20] dictionaryWithObject:lCopy forKey:*MEMORY[0x1E696A998]];
    }

    else
    {
      initializationOptions = 0;
    }

    v23 = AVLocalizedErrorWithUnderlyingOSStatus(v14, initializationOptions);
    v25 = 0;
    v26 = 0;
    if (lCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v29.receiver = self;
    v29.super_class = AVMutableMovie;
    v16 = [(AVMovie *)&v29 _initWithFigAsset:v32];
    if (v16)
    {
      v17 = _createMutableMovieStorageWithFigObjects(&cf);
      mutableMovieInternal = v16->_mutableMovieInternal;
      v16->_mutableMovieInternal = v17;

      if (v16->_mutableMovieInternal)
      {
        [(AVMutableMovie *)v16 _addFigAssetNotifications];
        objc_storeStrong(&v16->_mutableMovieInternal->URL, l);
        v19 = [dataCopy copy];
        v20 = v16->_mutableMovieInternal;
        data = v20->data;
        v20->data = v19;

        v22 = [optionsCopy copy];
        v23 = 0;
        v24 = v16->_mutableMovieInternal;
        initializationOptions = v24->initializationOptions;
        v24->initializationOptions = v22;
        v25 = 1;
        self = v16;
LABEL_10:

        v26 = v25;
        goto LABEL_11;
      }

      v23 = 0;
      v26 = 0;
      self = v16;
    }

    else
    {
      self = 0;
      v23 = 0;
      v26 = 0;
    }
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v26)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initWithFigAsset:(OpaqueFigAsset *)asset
{
  if ([(AVMutableMovie *)self isMemberOfClass:objc_opt_class()])
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v5, v6, v7, v8, v9, "![self isMemberOfClass:[AVMutableMovie class]]");
    v13 = [v11 exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  return 0;
}

- (id)_initWithFigError:(int)error userInfo:(id)info
{
  infoCopy = info;
  if ([(AVMutableMovie *)self isMemberOfClass:objc_opt_class()])
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v7, v8, v9, v10, v11, "![self isMemberOfClass:[AVMutableMovie class]]");
    v15 = [v13 exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  cf = 0;
  _figMutableMovie = [(AVMutableMovie *)self _figMutableMovie];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5 || v5(_figMutableMovie, 1, 0, &cf))
  {
    v11 = 0;
  }

  else
  {
    v6 = [AVMovie alloc];
    v7 = cf;
    v8 = [(AVMutableMovie *)self URL];
    data = [(AVMutableMovie *)self data];
    _initializationOptions = [(AVMutableMovie *)self _initializationOptions];
    v11 = [(AVMovie *)v6 _initWithFormatReader:v7 URL:v8 data:data options:_initializationOptions];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

- (void)_addFigAssetNotifications
{
  figAsset = self->_mutableMovieInternal->figAsset;
  if (figAsset)
  {
    v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVAsset *)self _weakReference];
    [v5 addListenerWithWeakReference:_weakReference callback:mutableMovieNotificationHandler name:*MEMORY[0x1E6970EC0] object:figAsset flags:0];
  }
}

- (void)_removeFigAssetNotifications
{
  figAsset = self->_mutableMovieInternal->figAsset;
  if (figAsset)
  {
    v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVAsset *)self _weakReference];
    [v5 removeListenerWithWeakReference:_weakReference callback:mutableMovieNotificationHandler name:*MEMORY[0x1E6970EC0] object:figAsset];
  }
}

- (void)dealloc
{
  if (self->_mutableMovieInternal)
  {
    [(AVMutableMovie *)self _removeFigAssetNotifications];
    mutableMovieInternal = self->_mutableMovieInternal;
    figMutableMovie = mutableMovieInternal->figMutableMovie;
    if (figMutableMovie)
    {
      CFRelease(figMutableMovie);
      mutableMovieInternal = self->_mutableMovieInternal;
    }

    formatReader = mutableMovieInternal->formatReader;
    if (formatReader)
    {
      CFRelease(formatReader);
      mutableMovieInternal = self->_mutableMovieInternal;
    }

    figAsset = mutableMovieInternal->figAsset;
    if (figAsset)
    {
      CFRelease(figAsset);
    }
  }

  v7.receiver = self;
  v7.super_class = AVMutableMovie;
  [(AVMovie *)&v7 dealloc];
}

- (int64_t)statusOfValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  if ([(AVMutableMovie *)self _figMutableMovie])
  {
    v7 = 2;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVMutableMovie;
    v7 = [(AVAsset *)&v9 statusOfValueForKey:keyCopy error:error];
  }

  return v7;
}

- (void)loadValuesAsynchronouslyForKeys:(id)keys completionHandler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  if ([(AVMutableMovie *)self _figMutableMovie])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVMutableMovie;
    [(AVAsset *)&v8 loadValuesAsynchronouslyForKeys:keysCopy completionHandler:handlerCopy];
  }
}

- (AVMediaDataStorage)defaultMediaDataStorage
{
  cf = 0;
  [(AVMutableMovie *)self _figMutableMovie];
  FigBaseObject = FigMutableMovieGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(FigBaseObject, *MEMORY[0x1E6972018], *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_6;
  }

  if (!cf)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFURLGetTypeID())
  {
    v5 = [AVMediaDataStorage alloc];
    v6 = [(AVMediaDataStorage *)v5 initWithURL:cf options:0];
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_9:

  return v6;
}

- (id)_mutableTracks
{
  makeTracksArrayOnce = self->_mutableMovieInternal->makeTracksArrayOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__AVMutableMovie__mutableTracks__block_invoke;
  v5[3] = &unk_1E7465EB0;
  v5[4] = self;
  [(AVDispatchOnce *)makeTracksArrayOnce runBlockOnce:v5];
  return self->_mutableMovieInternal->tracks;
}

void __32__AVMutableMovie__mutableTracks__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  cf = 0;
  objc_storeStrong((*(*(a1 + 32) + 24) + 72), v2);
  [*(a1 + 32) _figMutableMovie];
  FigBaseObject = FigMutableMovieGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4 && !v4(FigBaseObject, *MEMORY[0x1E6972068], *MEMORY[0x1E695E480], &cf))
  {
    if (!cf)
    {
      goto LABEL_20;
    }

    v5 = CFGetTypeID(cf);
    if (v5 == CFArrayGetTypeID())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = cf;
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v7)
      {
        v8 = *v13;
LABEL_7:
        v9 = 0;
        while (1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if ([v10 integerValue])
          {
            v11 = [AVMutableMovieTrack trackWithTrackID:"trackWithTrackID:forMovie:" forMovie:?];
            if (v11)
            {
              [v2 addObject:v11];
            }
          }

          if (v7 == ++v9)
          {
            v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
            if (v7)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_20:
}

- (NSArray)tracks
{
  _mutableTracks = [(AVMutableMovie *)self _mutableTracks];
  v3 = [_mutableTracks copy];

  return v3;
}

- (AVMutableMovieTrack)trackWithTrackID:(CMPersistentTrackID)trackID
{
  v5.receiver = self;
  v5.super_class = AVMutableMovie;
  v3 = [(AVMovie *)&v5 trackWithTrackID:*&trackID];

  return v3;
}

- (NSArray)tracksWithMediaType:(AVMediaType)mediaType
{
  v5.receiver = self;
  v5.super_class = AVMutableMovie;
  v3 = [(AVMovie *)&v5 tracksWithMediaType:mediaType];

  return v3;
}

- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v5.receiver = self;
  v5.super_class = AVMutableMovie;
  v3 = [(AVMovie *)&v5 tracksWithMediaCharacteristic:mediaCharacteristic];

  return v3;
}

- (id)trackReferences
{
  cf = 0;
  [(AVMutableMovie *)self _figMutableMovie];
  FigBaseObject = FigMutableMovieGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = v3(FigBaseObject, *MEMORY[0x1E6972060], *MEMORY[0x1E695E480], &cf);
    dictionary = cf;
    if (v4)
    {
LABEL_7:
      if (dictionary)
      {
        CFRelease(dictionary);
      }

      goto LABEL_9;
    }

    if (cf)
    {
      v6 = CFGetTypeID(cf);
      TypeID = CFDictionaryGetTypeID();
      dictionary = cf;
      if (v6 == TypeID)
      {
        if (cf)
        {
          goto LABEL_10;
        }

        dictionary = 0;
      }

      goto LABEL_7;
    }
  }

LABEL_9:
  dictionary = [MEMORY[0x1E695DF20] dictionary];
LABEL_10:

  return dictionary;
}

- (void)setModified:(BOOL)modified
{
  v3 = modified;
  v17 = *MEMORY[0x1E69E9840];
  [(AVMutableMovie *)self _figMutableMovie];
  if (v3)
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigMutableMovieGetFigBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v7(FigBaseObject, *MEMORY[0x1E6972030], *v5);
  }

  if (!v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    tracks = [(AVMutableMovie *)self tracks];
    v9 = [tracks countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v9)
    {
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(tracks);
          }

          [*(*(&v12 + 1) + 8 * i) setModified:0];
        }

        v9 = [tracks countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (OpaqueFigFormatReader)_copyFormatReader
{
  result = self->_mutableMovieInternal->formatReader;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

- (void)setPreferredRate:(float)preferredRate
{
  [(AVMutableMovie *)self _figMutableMovie];
  *&v4 = preferredRate;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  FigBaseObject = FigMutableMovieGetFigBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v8 = *MEMORY[0x1E6972050];

    v7(FigBaseObject, v8, v5);
  }
}

- (void)setPreferredVolume:(float)preferredVolume
{
  [(AVMutableMovie *)self _figMutableMovie];
  *&v4 = preferredVolume;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  FigBaseObject = FigMutableMovieGetFigBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v8 = *MEMORY[0x1E6972058];

    v7(FigBaseObject, v8, v5);
  }
}

- (void)setTimescale:(CMTimeScale)timescale
{
  v3 = *&timescale;
  [(AVMutableMovie *)self _figMutableMovie];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  FigBaseObject = FigMutableMovieGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972048];

    v6(FigBaseObject, v7, v4);
  }
}

- (void)setInterleavingPeriod:(CMTime *)interleavingPeriod
{
  v4 = *MEMORY[0x1E695E480];
  v8 = *interleavingPeriod;
  v5 = CMTimeCopyAsDictionary(&v8, v4);
  [(AVMutableMovie *)self _figMutableMovie];
  FigBaseObject = FigMutableMovieGetFigBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v7(FigBaseObject, *MEMORY[0x1E6972020], v5);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)setDefaultMediaDataStorage:(AVMediaDataStorage *)defaultMediaDataStorage
{
  v7 = defaultMediaDataStorage;
  v4 = [(AVMediaDataStorage *)v7 URL];
  [(AVMutableMovie *)self _figMutableMovie];
  FigBaseObject = FigMutableMovieGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v6(FigBaseObject, *MEMORY[0x1E6972018], v4);
  }
}

- (id)description
{
  defaultMediaDataStorage = [(AVMutableMovie *)self defaultMediaDataStorage];
  v4 = [defaultMediaDataStorage URL];

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  tracks = [(AVMutableMovie *)self tracks];
  if (v4)
  {
    [v5 stringWithFormat:@"<%@: %p defaultMediaDataStorage = %@, tracks = %@ >", v7, self, v4, tracks];
  }

  else
  {
    [v5 stringWithFormat:@"<%@: %p tracks = %@ >", v7, self, tracks];
  }
  v9 = ;

  return v9;
}

- (BOOL)isDefunct
{
  v8 = 0;
  _figMutableMovie = [(AVMutableMovie *)self _figMutableMovie];
  v3 = *(CMBaseObjectGetVTable() + 8);
  if (*v3 < 5uLL)
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = v3[11];
    if (v4)
    {
      LOBYTE(v4) = v4(_figMutableMovie, &v8) == 0;
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v5)
  {
    v5 = v6;
  }

  return v5 == 1;
}

- (BOOL)insertTimeRange:(CMTimeRange *)timeRange ofAsset:(AVAsset *)asset atTime:(CMTime *)startTime copySampleData:(BOOL)copySampleData error:(NSError *)outError
{
  v7 = copySampleData;
  v83[1] = *MEMORY[0x1E69E9840];
  v47 = asset;
  _mutableTracks = [(AVMutableMovie *)self _mutableTracks];
  v72 = 0;
  cf = 0;
  if ([(AVAsset *)v47 providesPreciseDurationAndTiming])
  {
    _copyFormatReader = [(AVMutableMovie *)self _copyFormatReader];
    [(AVMutableMovie *)self willChangeValueForKey:@"duration"];
    [(AVMutableMovie *)self willChangeValueForKey:@"tracks"];
    v10 = [_mutableTracks count];
    if (self != v47 || v7)
    {
      _copyFormatReader2 = [(AVMutableMovie *)v47 _copyFormatReader];
      if (!_copyFormatReader2)
      {
        v22 = AVLocalizedError(@"AVFoundationErrorDomain", -11838, 0);
        _copyFormatReader2 = 0;
        v15 = 0;
        v28 = 0;
LABEL_56:
        if (cf)
        {
          CFRelease(cf);
        }

        if (_copyFormatReader2)
        {
          CFRelease(_copyFormatReader2);
        }

        if (_copyFormatReader)
        {
          CFRelease(_copyFormatReader);
        }

        if (outError)
        {
          v40 = v15;
        }

        else
        {
          v40 = 1;
        }

        if (v40)
        {
          goto LABEL_71;
        }

        if (v22)
        {
          v41 = v22;
          v42 = v22;
        }

        else
        {
          if (!v28)
          {
LABEL_71:
            [(AVMutableMovie *)self didChangeValueForKey:@"tracks"];
            [(AVMutableMovie *)self didChangeValueForKey:@"duration"];
            goto LABEL_72;
          }

          v42 = AVLocalizedErrorWithUnderlyingOSStatus(v28, 0);
        }

        *outError = v42;
        goto LABEL_71;
      }

      if ([(AVAsset *)v47 _prefersNominalDurations])
      {
        v23 = v7 | 0x100u;
      }

      else
      {
        v23 = v7;
      }

      _figMutableMovie = [(AVMutableMovie *)self _figMutableMovie];
      v25 = *&timeRange->start.epoch;
      v64 = *&timeRange->start.value;
      v65 = v25;
      v66 = *&timeRange->duration.timescale;
      v62 = *&startTime->value;
      epoch = startTime->epoch;
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 176);
      if (v26)
      {
        v76 = v64;
        v77 = v65;
        v78 = v66;
        v74 = v62;
        v75 = epoch;
        v15 = v26(_figMutableMovie, _copyFormatReader2, &v76, &v74, v23) == 0;
      }

      else
      {
        v15 = 0;
      }

      v13 = 0;
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      tracks = [(AVMutableMovie *)v47 tracks];
      v12 = [tracks countByEnumeratingWithState:&v68 objects:v81 count:16];
      v51 = v10;
      v13 = 0;
      if (v12)
      {
        v14 = *v69;
        v15 = 1;
        do
        {
          v16 = 0;
          v17 = v13;
          do
          {
            if (*v69 != v14)
            {
              objc_enumerationMutation(tracks);
            }

            v18 = *(*(&v68 + 1) + 8 * v16);
            v67 = v17;
            v19 = *&timeRange->start.epoch;
            v76 = *&timeRange->start.value;
            v77 = v19;
            v78 = *&timeRange->duration.timescale;
            v64 = *&startTime->value;
            *&v65 = startTime->epoch;
            v20 = [v18 insertTimeRange:&v76 ofTrack:v18 atTime:&v64 copySampleData:0 error:&v67];
            v13 = v67;

            v15 &= v20;
            ++v16;
            v17 = v13;
          }

          while (v12 != v16);
          v12 = [tracks countByEnumeratingWithState:&v68 objects:v81 count:16];
        }

        while (v12);
      }

      else
      {
        v15 = 1;
      }

      _copyFormatReader2 = 0;
      v10 = v51;
    }

    v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v27)
    {
      v28 = v27(_copyFormatReader, &v72);
      if (v28)
      {
        goto LABEL_55;
      }

      if (v10 == v72)
      {
LABEL_53:
        v28 = 0;
        goto LABEL_55;
      }

      [(AVMutableMovie *)self _figMutableMovie];
      FigBaseObject = FigMutableMovieGetFigBaseObject();
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v30)
      {
        v28 = v30(FigBaseObject, *MEMORY[0x1E6972068], *MEMORY[0x1E695E480], &cf);
        if (!v28)
        {
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          obj = cf;
          v31 = [obj countByEnumeratingWithState:&v58 objects:v80 count:16];
          if (v31)
          {
            v50 = *v59;
            do
            {
              v52 = v31;
              for (i = 0; i != v52; ++i)
              {
                if (*v59 != v50)
                {
                  objc_enumerationMutation(obj);
                }

                integerValue = [*(*(&v58 + 1) + 8 * i) integerValue];
                if (integerValue)
                {
                  v56 = 0u;
                  v57 = 0u;
                  v54 = 0u;
                  v55 = 0u;
                  v34 = _mutableTracks;
                  v35 = [v34 countByEnumeratingWithState:&v54 objects:v79 count:16];
                  if (v35)
                  {
                    j = 0;
                    v37 = *v55;
                    while (2)
                    {
                      v38 = 0;
                      v39 = j;
                      do
                      {
                        if (*v55 != v37)
                        {
                          objc_enumerationMutation(v34);
                        }

                        j = *(*(&v54 + 1) + 8 * v38);

                        if ([j trackID] == integerValue)
                        {

                          goto LABEL_50;
                        }

                        ++v38;
                        v39 = j;
                      }

                      while (v35 != v38);
                      v35 = [v34 countByEnumeratingWithState:&v54 objects:v79 count:16];
                      if (v35)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  for (j = [AVMutableMovieTrack trackWithTrackID:integerValue forMovie:self];
                  {
                    dispatch_semaphore_wait(self->_mutableMovieInternal->trackWaitingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
                    [AVMutableMovieTrack trackWithTrackID:integerValue forMovie:self];
                  }

                  [v34 addObject:j];
                }

                else
                {
                  j = 0;
                }

LABEL_50:
              }

              v31 = [obj countByEnumeratingWithState:&v58 objects:v80 count:16];
            }

            while (v31);
          }

          goto LABEL_53;
        }

LABEL_55:
        v22 = v13;
        goto LABEL_56;
      }
    }

    v28 = -12782;
    goto LABEL_55;
  }

  if (outError)
  {
    v82 = *MEMORY[0x1E695E618];
    v83[0] = @"Source asset must have a value of YES for providesPreciseDurationAndTiming";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
    *outError = AVLocalizedError(@"AVFoundationErrorDomain", -11838, v21);
  }

  v22 = 0;
  v15 = 0;
LABEL_72:

  return v15;
}

- (void)insertEmptyTimeRange:(CMTimeRange *)timeRange
{
  [(AVMutableMovie *)self willChangeValueForKey:@"duration"];
  _figMutableMovie = [(AVMutableMovie *)self _figMutableMovie];
  v7 = *timeRange;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v6)
  {
    v8 = v7;
    v6(_figMutableMovie, &v8);
  }

  [(AVMutableMovie *)self didChangeValueForKey:@"duration", *&v7.start.value, *&v7.start.epoch, *&v7.duration.timescale];
}

- (void)removeTimeRange:(CMTimeRange *)timeRange
{
  [(AVMutableMovie *)self willChangeValueForKey:@"duration"];
  _figMutableMovie = [(AVMutableMovie *)self _figMutableMovie];
  v7 = *timeRange;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (v6)
  {
    v8 = v7;
    v6(_figMutableMovie, &v8);
  }

  [(AVMutableMovie *)self didChangeValueForKey:@"duration", *&v7.start.value, *&v7.start.epoch, *&v7.duration.timescale];
}

- (void)scaleTimeRange:(CMTimeRange *)timeRange toDuration:(CMTime *)duration
{
  [(AVMutableMovie *)self willChangeValueForKey:@"duration"];
  _figMutableMovie = [(AVMutableMovie *)self _figMutableMovie];
  v10 = *timeRange;
  v9 = *duration;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v8)
  {
    v12 = v10;
    v11 = v9;
    v8(_figMutableMovie, &v12, &v11);
  }

  [(AVMutableMovie *)self didChangeValueForKey:@"duration", *&v9.value, v9.epoch];
}

- (AVMutableMovieTrack)mutableTrackCompatibleWithTrack:(AVAssetTrack *)track
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = track;
  tracks = [(AVMutableMovie *)self tracks];
  v6 = tracks;
  v21 = 0;
  if (!tracks || ![tracks count])
  {
    goto LABEL_18;
  }

  if ([v6 containsObject:v4])
  {
    _figTrackReader = v4;
    goto LABEL_19;
  }

  _figTrackReader = [(AVAssetTrack *)v4 _figTrackReader];
  if (_figTrackReader)
  {
    _figMutableMovie = [(AVMutableMovie *)self _figMutableMovie];
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v9)
    {
      v10 = v9(_figMutableMovie, _figTrackReader, &v21);
      _figTrackReader = 0;
      if (!v10 && v21)
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = v6;
        _figTrackReader = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (_figTrackReader)
        {
          v12 = *v18;
          while (2)
          {
            for (i = 0; i != _figTrackReader; i = (i + 1))
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v11);
              }

              v14 = *(*(&v17 + 1) + 8 * i);
              trackID = [v14 trackID];
              if (trackID == v21)
              {
                _figTrackReader = v14;
                goto LABEL_23;
              }
            }

            _figTrackReader = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
            if (_figTrackReader)
            {
              continue;
            }

            break;
          }
        }

LABEL_23:
      }

      goto LABEL_19;
    }

LABEL_18:
    _figTrackReader = 0;
  }

LABEL_19:

  return _figTrackReader;
}

- (id)_addMutableTrackWithMediaType:(id)type copySettingsFromTrack:(id)track options:(id)options
{
  typeCopy = type;
  trackCopy = track;
  optionsCopy = options;
  v19 = 0;
  _mutableTracks = [(AVMutableMovie *)self _mutableTracks];
  v12 = AVOSTypeForString(typeCopy);
  _figMutableMovie = [(AVMutableMovie *)self _figMutableMovie];
  _figTrackReader = [trackCopy _figTrackReader];
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v15)
  {
    v16 = v15(_figMutableMovie, v12, optionsCopy, _figTrackReader, &v19);
  }

  else
  {
    v16 = -12782;
  }

  dispatch_semaphore_wait(self->_mutableMovieInternal->trackWaitingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v17 = 0;
  if (!v16)
  {
    if (v19)
    {
      v17 = [AVMutableMovieTrack trackWithTrackID:"trackWithTrackID:forMovie:" forMovie:?];
      if (v17)
      {
        [_mutableTracks addObject:v17];
      }
    }
  }

  return v17;
}

- (AVMutableMovieTrack)addMutableTrackWithMediaType:(AVMediaType)mediaType copySettingsFromTrack:(AVAssetTrack *)track options:(NSDictionary *)options
{
  v9 = mediaType;
  v10 = track;
  v16 = options;
  if (!v9)
  {
    v31 = MEMORY[0x1E695DF30];
    v32 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v11, v12, v13, v14, v15, "mediaType != nil");
    v33 = [v31 exceptionWithName:*MEMORY[0x1E695D940] reason:v32 userInfo:0];
    goto LABEL_11;
  }

  if (v10)
  {
    mediaType = [(AVAssetTrack *)v10 mediaType];
    v18 = [(NSString *)v9 isEqualToString:mediaType];

    if (!v18)
    {
      v35 = MEMORY[0x1E695DF30];
      v32 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Can't copy settings from an AVAssetTrack with a non-matching media type", v19, v20, v21, v22, v23, v38);
      v33 = [v35 exceptionWithName:*MEMORY[0x1E695D940] reason:v32 userInfo:0];
LABEL_11:
      v36 = v33;
      v37 = v33;

      objc_exception_throw(v36);
    }
  }

  if ([(NSDictionary *)v16 count])
  {
    v34 = MEMORY[0x1E695DF30];
    v32 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Invalid options", v24, v25, v26, v27, v28, v38);
    v33 = [v34 exceptionWithName:*MEMORY[0x1E695D940] reason:v32 userInfo:0];
    goto LABEL_11;
  }

  [(AVMutableMovie *)self willChangeValueForKey:@"tracks"];
  v29 = [(AVMutableMovie *)self _addMutableTrackWithMediaType:v9 copySettingsFromTrack:v10 options:v16];
  [(AVMutableMovie *)self didChangeValueForKey:@"tracks"];

  return v29;
}

- (NSArray)addMutableTracksCopyingSettingsFromTracks:(NSArray *)existingTracks options:(NSDictionary *)options
{
  v105 = *MEMORY[0x1E69E9840];
  v6 = existingTracks;
  v74 = options;
  if (!v6)
  {
    v56 = MEMORY[0x1E695DF30];
    v57 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v7, v8, v9, v10, v11, "existingTracks != nil");
    v58 = [v56 exceptionWithName:*MEMORY[0x1E695D940] reason:v57 userInfo:0];
    v59 = v58;

    goto LABEL_63;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v6;
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v95 objects:v104 count:16];
  if (v12)
  {
    v13 = *v96;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v96 != v13)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v52 = MEMORY[0x1E695DF30];
          v53 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v15, v16, v17, v18, v19, "[track isKindOfClass:[AVAssetTrack class]]");
          v54 = [v52 exceptionWithName:*MEMORY[0x1E695D940] reason:v53 userInfo:0];
          v55 = v54;

          objc_exception_throw(v54);
        }
      }

      v12 = [(NSArray *)obj countByEnumeratingWithState:&v95 objects:v104 count:16];
    }

    while (v12);
  }

  if ([(NSDictionary *)v74 count])
  {
    v60 = MEMORY[0x1E695DF30];
    v61 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Invalid options", v20, v21, v22, v23, v24, v63);
    v58 = [v60 exceptionWithName:*MEMORY[0x1E695D940] reason:v61 userInfo:0];
    v62 = v58;

LABEL_63:
    objc_exception_throw(v58);
  }

  v25 = [(NSArray *)obj count];
  v69 = [MEMORY[0x1E695DF70] arrayWithCapacity:v25];
  v26 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v25, 0, MEMORY[0x1E695E9E8]);
  if (v25)
  {
    [(AVMutableMovie *)self willChangeValueForKey:@"tracks"];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v27 = obj;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v91 objects:v103 count:16];
    if (v28)
    {
      v29 = *v92;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v92 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v91 + 1) + 8 * j);
          mediaType = [v31 mediaType];
          v33 = [(AVMutableMovie *)self _addMutableTrackWithMediaType:mediaType copySettingsFromTrack:v31 options:v74];

          if (v33)
          {
            [v26 setObject:v33 forKey:v31];
          }
        }

        v28 = [(NSArray *)v27 countByEnumeratingWithState:&v91 objects:v103 count:16];
      }

      while (v28);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v66 = v27;
    v64 = [(NSArray *)v66 countByEnumeratingWithState:&v87 objects:v102 count:16];
    if (v64)
    {
      v65 = *v88;
      do
      {
        for (k = 0; k != v64; ++k)
        {
          if (*v88 != v65)
          {
            objc_enumerationMutation(v66);
          }

          v34 = *(*(&v87 + 1) + 8 * k);
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          availableTrackAssociationTypes = [v34 availableTrackAssociationTypes];
          v35 = [availableTrackAssociationTypes countByEnumeratingWithState:&v83 objects:v101 count:16];
          if (v35)
          {
            v70 = *v84;
            do
            {
              v71 = v35;
              for (m = 0; m != v71; ++m)
              {
                if (*v84 != v70)
                {
                  objc_enumerationMutation(availableTrackAssociationTypes);
                }

                v37 = *(*(&v83 + 1) + 8 * m);
                v79 = 0u;
                v80 = 0u;
                v81 = 0u;
                v82 = 0u;
                v38 = [v34 associatedTracksOfType:v37];
                v39 = [v38 countByEnumeratingWithState:&v79 objects:v100 count:16];
                if (v39)
                {
                  v40 = *v80;
                  do
                  {
                    for (n = 0; n != v39; ++n)
                    {
                      if (*v80 != v40)
                      {
                        objc_enumerationMutation(v38);
                      }

                      v42 = *(*(&v79 + 1) + 8 * n);
                      v43 = [v26 objectForKey:v34];
                      v44 = [v26 objectForKey:v42];
                      v45 = v44;
                      if (v43 && v44)
                      {
                        [v43 addTrackAssociationToTrack:v44 type:v37];
                      }
                    }

                    v39 = [v38 countByEnumeratingWithState:&v79 objects:v100 count:16];
                  }

                  while (v39);
                }
              }

              v35 = [availableTrackAssociationTypes countByEnumeratingWithState:&v83 objects:v101 count:16];
            }

            while (v35);
          }
        }

        v64 = [(NSArray *)v66 countByEnumeratingWithState:&v87 objects:v102 count:16];
      }

      while (v64);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v46 = v66;
    v47 = [(NSArray *)v46 countByEnumeratingWithState:&v75 objects:v99 count:16];
    if (v47)
    {
      v48 = *v76;
      do
      {
        for (ii = 0; ii != v47; ++ii)
        {
          if (*v76 != v48)
          {
            objc_enumerationMutation(v46);
          }

          v50 = [v26 objectForKey:*(*(&v75 + 1) + 8 * ii)];
          if (v50)
          {
            [v69 addObject:v50];
          }
        }

        v47 = [(NSArray *)v46 countByEnumeratingWithState:&v75 objects:v99 count:16];
      }

      while (v47);
    }

    [(AVMutableMovie *)self didChangeValueForKey:@"tracks"];
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v69;
}

- (void)removeTrack:(AVMovieTrack *)track
{
  v10 = track;
  _mutableTracks = [(AVMutableMovie *)self _mutableTracks];
  v5 = [_mutableTracks indexOfObject:v10];
  if (v10 && _mutableTracks && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    asset = [(AVAssetTrack *)v10 asset];

    if (asset != self)
    {
      goto LABEL_9;
    }

    [(AVMutableMovie *)self willChangeValueForKey:@"duration"];
    _figMutableMovie = [(AVMutableMovie *)self _figMutableMovie];
    trackID = [(AVAssetTrack *)v10 trackID];
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v9 && !v9(_figMutableMovie, trackID))
    {
      dispatch_semaphore_wait(self->_mutableMovieInternal->trackWaitingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      [(AVMutableMovie *)self willChangeValueForKey:@"tracks"];
      [_mutableTracks removeObjectAtIndex:v5];
      [(AVMutableMovie *)self didChangeValueForKey:@"tracks"];
    }
  }

  [(AVMutableMovie *)self willChangeValueForKey:@"duration"];
LABEL_9:
}

- (id)availableMetadataFormats
{
  cf = 0;
  [(AVMutableMovie *)self _figMutableMovie];
  FigBaseObject = FigMutableMovieGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = v3(FigBaseObject, *MEMORY[0x1E6972010], *MEMORY[0x1E695E480], &cf);
    array = cf;
    if (v4)
    {
LABEL_10:
      if (array)
      {
        CFRelease(array);
      }

      goto LABEL_6;
    }

    if (cf)
    {
      v6 = CFGetTypeID(cf);
      TypeID = CFArrayGetTypeID();
      array = cf;
      if (v6 == TypeID)
      {
        cf = 0;
        if (array)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

LABEL_6:
  array = [MEMORY[0x1E695DEC8] array];
LABEL_7:

  return array;
}

- (NSArray)metadataForFormat:(AVMetadataFormat)format
{
  v4 = format;
  _copyFormatReader = [(AVMutableMovie *)self _copyFormatReader];
  v6 = _copyFormatReader;
  v7 = 0;
  cf = 0;
  theArray = 0;
  if (v4 && _copyFormatReader)
  {
    FigBaseObject = FigFormatReaderGetFigBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = *MEMORY[0x1E695E480];
    if (v9(FigBaseObject, *MEMORY[0x1E6971A68], *MEMORY[0x1E695E480], &theArray))
    {
      goto LABEL_14;
    }

    if (!theArray)
    {
      v17 = 0;
      goto LABEL_19;
    }

    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
LABEL_14:
      v7 = 0;
    }

    else
    {
      v12 = 0;
      v13 = *MEMORY[0x1E6971F98];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
        v15 = FigMetadataReaderGetFigBaseObject();
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v16)
        {
          if (!v16(v15, v13, v10, &cf) && [(NSString *)v4 isEqualToString:cf])
          {
            break;
          }
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (Count == ++v12)
        {
          goto LABEL_14;
        }
      }

      v21 = [AVMetadataEnumerator metadataEnumeratorWithMetadataReader:ValueAtIndex];
      v22 = MEMORY[0x1E695DF70];
      allObjects = [v21 allObjects];
      v7 = [v22 arrayWithArray:allObjects];

      if ([(NSString *)v4 isEqualToString:@"com.apple.quicktime.udta"]|| [(NSString *)v4 isEqualToString:@"org.mp4ra"])
      {
        v24 = [(NSString *)v4 isEqualToString:@"com.apple.quicktime.udta", cf];
        v25 = &AVMetadataKeySpaceQuickTimeUserData;
        if (!v24)
        {
          v25 = &AVMetadataKeySpaceISOUserData;
        }

        v26 = *v25;
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1835365473];
        v28 = [AVMetadataItem metadataItemsFromArray:v7 withKey:v27 keySpace:v26];

        if (v28 && [v28 count])
        {
          [v7 removeObjectsInArray:v28];
        }
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  v17 = v7;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v17)
  {
    array = v17;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v19 = array;

  return v19;
}

- (NSArray)metadata
{
  v16 = *MEMORY[0x1E69E9840];
  availableMetadataFormats = [(AVMutableMovie *)self availableMetadataFormats];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = availableMetadataFormats;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(AVMutableMovie *)self metadataForFormat:*(*(&v11 + 1) + 8 * i), v11];
        [array addObjectsFromArray:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)setMetadata:(NSArray *)metadata
{
  v7 = metadata;
  v4 = [AVMetadataItem _figMetadataPropertyFromMetadataItems:?];
  [(AVMutableMovie *)self _figMutableMovie];
  FigBaseObject = FigMutableMovieGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v6(FigBaseObject, *MEMORY[0x1E6972028], v4);
  }

  dispatch_semaphore_wait(self->_mutableMovieInternal->metadataWaitingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
}

@end