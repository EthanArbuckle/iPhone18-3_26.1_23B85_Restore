@interface AVMovie
+ (AVMovie)movieWithData:(NSData *)data options:(NSDictionary *)options;
+ (AVMovie)movieWithURL:(NSURL *)URL options:(NSDictionary *)options;
+ (NSArray)movieTypes;
- (AVMovie)init;
- (AVMovie)initWithData:(NSData *)data options:(NSDictionary *)options;
- (AVMovie)initWithData:(id)a3 contentType:(id)a4 options:(id)a5;
- (AVMovie)initWithURL:(NSURL *)URL options:(NSDictionary *)options;
- (AVMovieTrack)trackWithTrackID:(CMPersistentTrackID)trackID;
- (BOOL)canContainMovieFragments;
- (BOOL)containsMovieFragments;
- (BOOL)isCompatibleWithFileType:(AVFileType)fileType;
- (BOOL)isDefunct;
- (BOOL)writeMovieHeaderToURL:(NSURL *)URL fileType:(AVFileType)fileType options:(AVMovieWritingOptions)options error:(NSError *)outError;
- (NSArray)tracks;
- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (NSArray)tracksWithMediaType:(AVMediaType)mediaType;
- (NSData)movieHeaderWithFileType:(AVFileType)fileType error:(NSError *)outError;
- (OpaqueFigMutableMovie)_mutableMovieForFileType:(id)a3;
- (id)_absoluteURL;
- (id)_initWithFigAsset:(OpaqueFigAsset *)a3;
- (id)_initWithFigError:(int)a3 userInfo:(id)a4;
- (id)_initWithFormatReader:(OpaqueFigFormatReader *)a3 URL:(id)a4 data:(id)a5 options:(id)a6;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)trackReferences;
- (unint64_t)referenceRestrictions;
- (void)_startListeningToLoaderNotifications;
- (void)_stopListeningToLoaderNotifications;
- (void)dealloc;
@end

@implementation AVMovie

+ (NSArray)movieTypes
{
  if (movieTypes_makeMovieTypesArrayOnceToken != -1)
  {
    +[AVMovie movieTypes];
  }

  v3 = movieTypes_movieTypesArray;

  return v3;
}

uint64_t __21__AVMovie_movieTypes__block_invoke()
{
  movieTypes_movieTypesArray = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"com.apple.quicktime-movie", @"public.mpeg-4", @"com.apple.m4v-video", @"com.apple.m4a-audio", @"public.3gpp", @"com.apple.quicktime-audio", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (void)_startListeningToLoaderNotifications
{
  v3 = [(AVMovie *)self _assetInspectorLoader];
  if (v3)
  {
    v6 = v3;
    v4 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v5 = [(AVAsset *)self _weakReference];
    [v4 addListenerWithWeakReference:v5 callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EC8] object:v6 flags:0];
    [v4 addListenerWithWeakReference:v5 callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EC0] object:v6 flags:0];

    v3 = v6;
  }
}

- (void)_stopListeningToLoaderNotifications
{
  v3 = [(AVMovie *)self _assetInspectorLoader];
  if (v3)
  {
    v6 = v3;
    v4 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v5 = [(AVAsset *)self _weakReference];
    [v4 removeListenerWithWeakReference:v5 callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EC8] object:v6];
    [v4 removeListenerWithWeakReference:v5 callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EC0] object:v6];

    v3 = v6;
  }
}

- (AVMovie)init
{
  v16.receiver = self;
  v16.super_class = AVMovie;
  v2 = [(AVAsset *)&v16 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  v4 = v2;
  v18 = 0;
  cf = 0;
  v17 = 0;
  v5 = _figOptionsFromAVMovieOptions(0);
  Empty = FigMutableMovieRemoteCreateEmpty();
  if (Empty)
  {
    goto LABEL_8;
  }

  v7 = cf;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    Empty = 4294954514;
LABEL_8:
    v10 = [[AVUnreachableAssetInspectorLoader alloc] initWithFigError:Empty userInfo:0];
    goto LABEL_9;
  }

  Empty = v8(v7, 1, 0, &v18);
  if (Empty)
  {
    goto LABEL_8;
  }

  figAssetDefaultCreationFlags();
  AVAssetShouldPreferNominalDurations(0, @"AVAssetPreferNominalDurationsKey");
  Empty = FigAssetRemoteCreateWithFormatReader();
  if (Empty)
  {
    goto LABEL_8;
  }

  v9 = [AVFigAssetInspectorLoader alloc];
  v10 = [(AVFigAssetInspectorLoader *)v9 initWithFigAsset:v17 forAsset:v4];
LABEL_9:
  v11 = v10;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v12 = _createMovieStorageWithLoader(v11);
  movie = v4->_movie;
  v4->_movie = v12;

  if (!v4->_movie)
  {

    v14 = 0;
    goto LABEL_19;
  }

  [(AVMovie *)v4 _startListeningToLoaderNotifications];

LABEL_17:
  v14 = v3;
LABEL_19:

  return v14;
}

+ (AVMovie)movieWithURL:(NSURL *)URL options:(NSDictionary *)options
{
  v5 = URL;
  v6 = options;
  v7 = [objc_alloc(objc_opt_class()) initWithURL:v5 options:v6];

  return v7;
}

- (AVMovie)initWithURL:(NSURL *)URL options:(NSDictionary *)options
{
  v8 = URL;
  v14 = options;
  if (!v8)
  {
    v26 = MEMORY[0x1E695DF30];
    v27 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "URL != nil");
    v28 = [v26 exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0];
    v29 = v28;

    objc_exception_throw(v28);
  }

  v31.receiver = self;
  v31.super_class = AVMovie;
  v15 = [(AVAsset *)&v31 init];
  if (v15)
  {
    v30 = 0;
    v16 = _movieOptionsDictionaryToFigAssetOptionsDictionary(v14, &v30);
    v17 = [AVFigAssetInspectorLoader alloc];
    v18 = [(AVFigAssetInspectorLoader *)v17 initWithURL:v8 figAssetCreationFlags:v30 figAssetCreationOptions:v16 avAssetInitializationOptions:v14 forAsset:v15 figErr:0];
    v19 = _createMovieStorageWithLoader(v18);
    movie = v15->_movie;
    v15->_movie = v19;

    if (!v15->_movie)
    {

      v24 = 0;
      goto LABEL_7;
    }

    [(AVMovie *)v15 _startListeningToLoaderNotifications];
    objc_storeStrong(&v15->_movie->URL, URL);
    v21 = [(NSDictionary *)v14 copy];
    v22 = v15->_movie;
    initializationOptions = v22->initializationOptions;
    v22->initializationOptions = v21;
  }

  v24 = v15;
LABEL_7:

  return v24;
}

+ (AVMovie)movieWithData:(NSData *)data options:(NSDictionary *)options
{
  v5 = data;
  v6 = options;
  v7 = [objc_alloc(objc_opt_class()) initWithData:v5 options:v6];

  return v7;
}

- (AVMovie)initWithData:(NSData *)data options:(NSDictionary *)options
{
  v7 = data;
  v8 = options;
  if (![(NSData *)v7 length])
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "[data length] > 0");
    v31 = [v29 exceptionWithName:*MEMORY[0x1E695D940] reason:v30 userInfo:0];
    v32 = v31;

    objc_exception_throw(v31);
  }

  v33.receiver = self;
  v33.super_class = AVMovie;
  v14 = [(AVAsset *)&v33 init];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = [(NSData *)v7 copy];

  v7 = v15;
  v16 = v14;
  v35 = 0;
  cf = 0;
  v34 = 1;
  v17 = _movieOptionsDictionaryToFigAssetOptionsDictionary(v8, &v34);
  if (!v7)
  {
    BlockBufferWithCFDataNoCopy = 4294954516;
LABEL_8:
    v20 = [[AVUnreachableAssetInspectorLoader alloc] initWithFigError:BlockBufferWithCFDataNoCopy userInfo:0];
    goto LABEL_9;
  }

  [(NSData *)v7 length];
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_8;
  }

  BlockBufferWithCFDataNoCopy = FigAssetRemoteCreateWithBlockBuffer();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_8;
  }

  v19 = [AVFigAssetInspectorLoader alloc];
  v20 = [(AVFigAssetInspectorLoader *)v19 initWithFigAsset:cf forAsset:v16];
LABEL_9:
  v21 = v20;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  v22 = _createMovieStorageWithLoader(v21);
  movie = v16->_movie;
  v16->_movie = v22;

  if (!v16->_movie)
  {

    v27 = 0;
    goto LABEL_17;
  }

  [(AVMovie *)v16 _startListeningToLoaderNotifications];
  objc_storeStrong(&v16->_movie->data, v15);
  v24 = [(NSDictionary *)v8 copy];
  v25 = v16->_movie;
  initializationOptions = v25->initializationOptions;
  v25->initializationOptions = v24;

LABEL_15:
  v27 = v14;
LABEL_17:

  return v27;
}

- (AVMovie)initWithData:(id)a3 contentType:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[AVMovie movieTypes];
  v13 = [v12 containsObject:v10];

  if ((v13 & 1) == 0)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v14, v15, v16, v17, v18, "[[AVMovie movieTypes] containsObject:contentType]");
    v23 = [v21 exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    v24 = v23;

    objc_exception_throw(v23);
  }

  v19 = [(AVMovie *)self initWithData:v9 options:v11];

  return v19;
}

- (id)_initWithFigAsset:(OpaqueFigAsset *)a3
{
  v10.receiver = self;
  v10.super_class = AVMovie;
  v4 = [(AVAsset *)&v10 init];
  if (v4)
  {
    v5 = [[AVFigAssetInspectorLoader alloc] initWithFigAsset:a3 forAsset:v4];
    v6 = _createMovieStorageWithLoader(v5);
    movie = v4->_movie;
    v4->_movie = v6;

    if (!v4->_movie)
    {

      v8 = 0;
      goto LABEL_6;
    }

    [(AVMovie *)v4 _startListeningToLoaderNotifications];
  }

  v8 = v4;
LABEL_6:

  return v8;
}

- (id)_initWithFormatReader:(OpaqueFigFormatReader *)a3 URL:(id)a4 data:(id)a5 options:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = AVMovie;
  v14 = [(AVAsset *)&v32 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_11;
  }

  v16 = v14;
  v33 = 0;
  cf = 0;
  v17 = _movieOptionsDictionaryToFigAssetOptionsDictionary(v13, &v33);
  if (!a3)
  {
    v18 = 4294954516;
    goto LABEL_6;
  }

  v18 = FigAssetRemoteCreateWithFormatReader();
  if (v18)
  {
LABEL_6:
    v20 = [[AVUnreachableAssetInspectorLoader alloc] initWithFigError:v18 userInfo:0];
    goto LABEL_7;
  }

  v19 = [AVFigAssetInspectorLoader alloc];
  v20 = [(AVFigAssetInspectorLoader *)v19 initWithFigAsset:cf forAsset:v16];
LABEL_7:
  v21 = v20;
  if (cf)
  {
    CFRelease(cf);
  }

  v22 = _createMovieStorageWithLoader(v21);
  movie = v16->_movie;
  v16->_movie = v22;

  if (!v16->_movie)
  {

    v30 = 0;
    goto LABEL_13;
  }

  [(AVMovie *)v16 _startListeningToLoaderNotifications];
  objc_storeStrong(&v16->_movie->URL, a4);
  v24 = [v12 copy];
  v25 = v16->_movie;
  data = v25->data;
  v25->data = v24;

  v27 = [v13 copy];
  v28 = v16->_movie;
  initializationOptions = v28->initializationOptions;
  v28->initializationOptions = v27;

LABEL_11:
  v30 = v15;
LABEL_13:

  return v30;
}

- (id)_initWithFigError:(int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v13.receiver = self;
  v13.super_class = AVMovie;
  v7 = [(AVAsset *)&v13 init];
  if (v7)
  {
    v8 = [[AVUnreachableAssetInspectorLoader alloc] initWithFigError:v4 userInfo:v6];
    v9 = _createMovieStorageWithLoader(v8);
    movie = v7->_movie;
    v7->_movie = v9;

    if (!v7->_movie)
    {

      v11 = 0;
      goto LABEL_6;
    }

    [(AVMovie *)v7 _startListeningToLoaderNotifications];
  }

  v11 = v7;
LABEL_6:

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(AVMovie *)self _copyFormatReader];
  v5 = [AVMutableMovie alloc];
  v6 = [(AVMovie *)self URL];
  v7 = [(AVMovie *)self data];
  v8 = [(AVMovie *)self _initializationOptions];
  v9 = [(AVMutableMovie *)v5 _initWithFormatReader:v4 URL:v6 data:v7 options:v8];

  if (v4)
  {
    CFRelease(v4);
  }

  return v9;
}

- (void)dealloc
{
  if (self->_movie)
  {
    [(AVMovie *)self _stopListeningToLoaderNotifications];
  }

  v3.receiver = self;
  v3.super_class = AVMovie;
  [(AVAsset *)&v3 dealloc];
}

- (id)_absoluteURL
{
  v2 = [(AVMovie *)self URL];
  v3 = [v2 absoluteURL];

  return v3;
}

- (NSArray)tracks
{
  makeTracksArrayOnce = self->_movie->makeTracksArrayOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __17__AVMovie_tracks__block_invoke;
  v5[3] = &unk_1E7465EB0;
  v5[4] = self;
  [(AVDispatchOnce *)makeTracksArrayOnce runBlockOnce:v5];
  return self->_movie->tracks;
}

void __17__AVMovie_tracks__block_invoke(uint64_t a1)
{
  v9 = [MEMORY[0x1E695DF70] array];
  v2 = [*(a1 + 32) _assetInspector];
  v3 = [v2 trackCount];

  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [objc_alloc(objc_msgSend(*(a1 + 32) "_classForMovieTracks"))];
      if (v5)
      {
        [v9 addObject:v5];
      }
    }
  }

  v6 = [v9 copy];
  v7 = *(*(a1 + 32) + 16);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (AVMovieTrack)trackWithTrackID:(CMPersistentTrackID)trackID
{
  v5.receiver = self;
  v5.super_class = AVMovie;
  v3 = [(AVAsset *)&v5 trackWithTrackID:*&trackID];

  return v3;
}

- (NSArray)tracksWithMediaType:(AVMediaType)mediaType
{
  v5.receiver = self;
  v5.super_class = AVMovie;
  v3 = [(AVAsset *)&v5 tracksWithMediaType:mediaType];

  return v3;
}

- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v5.receiver = self;
  v5.super_class = AVMovie;
  v3 = [(AVAsset *)&v5 tracksWithMediaCharacteristic:mediaCharacteristic];

  return v3;
}

- (id)trackReferences
{
  v4.receiver = self;
  v4.super_class = AVMovie;
  v2 = [(AVAsset *)&v4 trackReferences];

  return v2;
}

- (unint64_t)referenceRestrictions
{
  v2 = [(AVMovie *)self _initializationOptions];
  v3 = [v2 objectForKey:@"AVMovieReferenceRestrictionsKey"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (BOOL)canContainMovieFragments
{
  v3.receiver = self;
  v3.super_class = AVMovie;
  return [(AVAsset *)&v3 canContainFragments];
}

- (BOOL)containsMovieFragments
{
  v3.receiver = self;
  v3.super_class = AVMovie;
  return [(AVAsset *)&v3 containsFragments];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>", v5, self];

  return v6;
}

- (BOOL)isDefunct
{
  v8 = 0;
  v2 = [(AVAsset *)self _figAsset];
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
      LOBYTE(v4) = v4(v2, &v8) == 0;
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

- (OpaqueFigMutableMovie)_mutableMovieForFileType:(id)a3
{
  v4 = a3;
  v5 = [(AVMovie *)self _copyFormatReader];
  v6 = _figOptionsFromAVMovieOptions(0);
  if (v5)
  {
    FigMutableMovieRemoteCreateFromFormatReader();
    CFRelease(v5);
  }

  else if (self->_movie->data)
  {
    FigMutableMovieRemoteCreateFromData();
  }

  return 0;
}

- (NSData)movieHeaderWithFileType:(AVFileType)fileType error:(NSError *)outError
{
  v7 = fileType;
  v24 = 0;
  v8 = [(AVMovie *)self _figMutableMovie];
  if (!v7)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "fileType != nil");
    v22 = [v20 exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    v23 = v22;

    objc_exception_throw(v22);
  }

  if (v8)
  {
    v14 = CFRetain(v8);
  }

  else
  {
    v14 = [(AVMovie *)self _mutableMovieForFileType:v7];
  }

  v15 = v14;
  if (v14)
  {
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v16)
    {
      v17 = v16(v15, v7, 0, *MEMORY[0x1E695E480], &v24);
      if (!outError)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = -12782;
      if (!outError)
      {
LABEL_12:
        CFRelease(v15);
        v18 = v24;
        goto LABEL_13;
      }
    }

    if (v17)
    {
      *outError = AVLocalizedErrorWithUnderlyingOSStatus(v17, 0);
    }

    goto LABEL_12;
  }

  v18 = 0;
LABEL_13:

  return v18;
}

- (BOOL)writeMovieHeaderToURL:(NSURL *)URL fileType:(AVFileType)fileType options:(AVMovieWritingOptions)options error:(NSError *)outError
{
  v7 = options;
  v11 = URL;
  v12 = fileType;
  v13 = [(AVMovie *)self _figMutableMovie];
  if (!v11)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v14, v15, v16, v17, v18, "URL != nil");
    v26 = [v24 exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
    goto LABEL_18;
  }

  if (!v12)
  {
    v27 = MEMORY[0x1E695DF30];
    v25 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v14, v15, v16, v17, v18, "fileType != nil");
    v26 = [v27 exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
LABEL_18:
    v28 = v26;
    v29 = v26;

    objc_exception_throw(v28);
  }

  if (v13)
  {
    v19 = CFRetain(v13);
  }

  else
  {
    v19 = [(AVMovie *)self _mutableMovieForFileType:v12];
  }

  v20 = v19;
  if (!v19)
  {
    v22 = 0;
    goto LABEL_14;
  }

  v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v21)
  {
    v22 = v21(v20, v12, v11, 0, v7 & 1);
    if (!outError)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (v22)
    {
      *outError = AVLocalizedErrorWithUnderlyingOSStatus(v22, 0);
    }

    goto LABEL_13;
  }

  v22 = -12782;
  if (outError)
  {
    goto LABEL_11;
  }

LABEL_13:
  CFRelease(v20);
LABEL_14:

  return v22 == 0;
}

- (BOOL)isCompatibleWithFileType:(AVFileType)fileType
{
  v31 = *MEMORY[0x1E69E9840];
  v19 = fileType;
  v4 = [(AVAsset *)self _chapterTracks];
  v5 = [AVMediaFileType mediaFileTypeWithFileTypeIdentifier:v19];
  [v5 figFormatReaderFileFormat];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(AVMovie *)self tracks];
  v20 = v6;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      v9 = 0;
      v18 = v7;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [v10 formatDescriptions];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = *v22;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v12);
              }

              [v4 containsObject:v10];
              if (!FigMovieFormatWriterCanFileTypeSupportFormatDescription())
              {

                v16 = 0;
                v6 = v20;
                goto LABEL_19;
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        ++v9;
        v6 = v20;
      }

      while (v9 != v18);
      v7 = [v20 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v16 = 1;
    }

    while (v7);
  }

  else
  {
    v16 = 1;
  }

LABEL_19:

  return v16;
}

@end