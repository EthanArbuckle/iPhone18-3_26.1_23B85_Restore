@interface AVMutableMovieTrack
+ (AVMutableMovieTrack)trackWithTrackID:(int)a3 forMovie:(id)a4;
- (AVMediaDataStorage)mediaDataStorage;
- (AVMutableMovieTrack)initWithTrackID:(int)a3 forMovie:(id)a4;
- (BOOL)appendMediaData:(id)a3 dataOffset:(int64_t *)a4;
- (BOOL)appendSampleBuffer:(CMSampleBufferRef)sampleBuffer decodeTime:(CMTime *)outDecodeTime presentationTime:(CMTime *)outPresentationTime error:(NSError *)outError;
- (BOOL)hasProtectedContent;
- (BOOL)insertMediaTimeRange:(CMTimeRange *)mediaTimeRange intoTimeRange:(CMTimeRange *)trackTimeRange;
- (BOOL)insertTimeRange:(CMTimeRange *)timeRange ofTrack:(AVAssetTrack *)track atTime:(CMTime *)startTime copySampleData:(BOOL)copySampleData error:(NSError *)outError;
- (BOOL)isCompatibleWithFormatDescription:(opaqueCMFormatDescription *)a3;
- (CGSize)cleanApertureDimensions;
- (CGSize)dimensions;
- (CGSize)encodedPixelsDimensions;
- (CGSize)naturalSize;
- (CGSize)productionApertureDimensions;
- (NSArray)formatDescriptions;
- (NSArray)metadata;
- (NSArray)metadataForFormat:(AVMetadataFormat)format;
- (id)availableMetadataFormats;
- (id)description;
- (id)locale;
- (void)_addFigAssetTrackNotifications;
- (void)_removeFigAssetTrackNotifications;
- (void)_setSize:(CGSize)a3 forProperty:(__CFString *)a4;
- (void)_setString:(id)a3 forProperty:(__CFString *)a4;
- (void)addTrackAssociationToTrack:(AVMovieTrack *)movieTrack type:(AVTrackAssociationType)trackAssociationType;
- (void)dealloc;
- (void)insertEmptyTimeRange:(CMTimeRange *)timeRange;
- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4;
- (void)removeTimeRange:(CMTimeRange *)timeRange;
- (void)removeTrackAssociationToTrack:(AVMovieTrack *)movieTrack type:(AVTrackAssociationType)trackAssociationType;
- (void)replaceFormatDescription:(CMFormatDescriptionRef)formatDescription withFormatDescription:(CMFormatDescriptionRef)newFormatDescription;
- (void)scaleTimeRange:(CMTimeRange *)timeRange toDuration:(CMTime *)duration;
- (void)setAlternateGroupID:(NSInteger)alternateGroupID;
- (void)setEnabled:(BOOL)enabled;
- (void)setMediaDataStorage:(AVMediaDataStorage *)mediaDataStorage;
- (void)setMetadata:(NSArray *)metadata;
- (void)setModified:(BOOL)modified;
- (void)setPreferredMediaChunkAlignment:(NSInteger)preferredMediaChunkAlignment;
- (void)setPreferredMediaChunkDuration:(CMTime *)preferredMediaChunkDuration;
- (void)setPreferredMediaChunkSize:(NSInteger)preferredMediaChunkSize;
- (void)setPreferredVolume:(float)preferredVolume;
- (void)setSampleReferenceBaseURL:(NSURL *)sampleReferenceBaseURL;
- (void)setTimescale:(CMTimeScale)timescale;
@end

@implementation AVMutableMovieTrack

+ (AVMutableMovieTrack)trackWithTrackID:(int)a3 forMovie:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithTrackID:v4 forMovie:v5];

  return v6;
}

- (AVMutableMovieTrack)initWithTrackID:(int)a3 forMovie:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = objc_alloc_init(AVMutableMovieTrackInternal);
  mutableMovieTrackInternal = self->_mutableMovieTrackInternal;
  self->_mutableMovieTrackInternal = v7;

  if (!self->_mutableMovieTrackInternal)
  {
    goto LABEL_34;
  }

  v9 = [v6 _figAsset];
  if (!v9)
  {
    goto LABEL_35;
  }

  v10 = self->_mutableMovieTrackInternal;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v11)
  {
    v11(v9, v4, &v10->figAssetTrack);
  }

  if (!self->_mutableMovieTrackInternal->figAssetTrack)
  {
LABEL_34:
    v9 = 0;
    goto LABEL_35;
  }

  v32.receiver = self;
  v32.super_class = AVMutableMovieTrack;
  v12 = [(AVAssetTrack *)&v32 _initWithAsset:v6 trackID:v4 trackIndex:-1];
  if (v12)
  {
    *(v12[3] + 8) = CFRetain([v6 _figMutableMovie]);
    *(v12[3] + 16) = v4;
    v13 = dispatch_semaphore_create(0);
    v14 = v12[3];
    v15 = *(v14 + 32);
    *(v14 + 32) = v13;

    if (*(v12[3] + 32))
    {
      cf = 0;
      CMBaseObject = FigAssetTrackGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v18 = *MEMORY[0x1E695E480];
      v19 = *(*(VTable + 8) + 48);
      if (v19)
      {
        v19(CMBaseObject, *MEMORY[0x1E6973938], v18, &cf);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v20 = FigAssetTrackGetCMBaseObject();
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v21)
      {
        v21(v20, *MEMORY[0x1E6971490], v18, &cf);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v22 = FigAssetTrackGetCMBaseObject();
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v23)
      {
        v23(v22, *MEMORY[0x1E69714F0], v18, &cf);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v24 = FigAssetTrackGetCMBaseObject();
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25)
      {
        v25(v24, *MEMORY[0x1E69714E0], v18, &cf);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v26 = FigAssetTrackGetCMBaseObject();
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v27)
      {
        v27(v26, *MEMORY[0x1E69714E8], v18, &cf);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v28 = FigAssetTrackGetCMBaseObject();
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v29)
      {
        v29(v28, *MEMORY[0x1E69714B0], v18, &cf);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      [v12 _addFigAssetTrackNotifications];
    }
  }

  self = v12;
  v9 = self;
LABEL_35:

  return v9;
}

- (void)dealloc
{
  if (self->_mutableMovieTrackInternal)
  {
    [(AVMutableMovieTrack *)self _removeFigAssetTrackNotifications];
    mutableMovieTrackInternal = self->_mutableMovieTrackInternal;
    figMutableMovie = mutableMovieTrackInternal->figMutableMovie;
    if (figMutableMovie)
    {
      CFRelease(figMutableMovie);
      mutableMovieTrackInternal = self->_mutableMovieTrackInternal;
    }

    figAssetTrack = mutableMovieTrackInternal->figAssetTrack;
    if (figAssetTrack)
    {
      CFRelease(figAssetTrack);
    }
  }

  v6.receiver = self;
  v6.super_class = AVMutableMovieTrack;
  [(AVAssetTrack *)&v6 dealloc];
}

- (void)_addFigAssetTrackNotifications
{
  v3 = [(AVMutableMovieTrack *)self _figAssetTrack];
  v4 = [(AVAssetTrack *)self _weakReference];
  if (v3 && v4)
  {
    obj = v4;
    v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    self->_mutableMovieTrackInternal->figAssetTrackNotificationSource = CFRetain(v3);
    objc_storeStrong(&self->_mutableMovieTrackInternal->figAssetTrackNotificationListenerWeakReference, obj);
    [v5 addListenerWithWeakReference:self->_mutableMovieTrackInternal->figAssetTrackNotificationListenerWeakReference callback:mutableMovieTrackNotificationHandler name:*MEMORY[0x1E6971480] object:self->_mutableMovieTrackInternal->figAssetTrackNotificationSource flags:0];

    v4 = obj;
  }
}

- (void)_removeFigAssetTrackNotifications
{
  mutableMovieTrackInternal = self->_mutableMovieTrackInternal;
  figAssetTrackNotificationSource = mutableMovieTrackInternal->figAssetTrackNotificationSource;
  if (figAssetTrackNotificationSource)
  {
    if (!mutableMovieTrackInternal->figAssetTrackNotificationListenerWeakReference || (+[AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:](AVCMNotificationDispatcher, "notificationDispatcherForCMNotificationCenter:", CMNotificationCenterGetDefaultLocalCenter()), v5 = objc_claimAutoreleasedReturnValue(), [v5 removeListenerWithWeakReference:self->_mutableMovieTrackInternal->figAssetTrackNotificationListenerWeakReference callback:mutableMovieTrackNotificationHandler name:*MEMORY[0x1E6971480] object:self->_mutableMovieTrackInternal->figAssetTrackNotificationSource], v5, mutableMovieTrackInternal = self->_mutableMovieTrackInternal, (figAssetTrackNotificationSource = mutableMovieTrackInternal->figAssetTrackNotificationSource) != 0))
    {
      CFRelease(figAssetTrackNotificationSource);
      mutableMovieTrackInternal = self->_mutableMovieTrackInternal;
    }
  }

  figAssetTrackNotificationListenerWeakReference = mutableMovieTrackInternal->figAssetTrackNotificationListenerWeakReference;
  mutableMovieTrackInternal->figAssetTrackNotificationListenerWeakReference = 0;

  self->_mutableMovieTrackInternal->figAssetTrackNotificationSource = 0;
}

- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  if (v4)
  {
    v4[2]();
  }
}

- (id)locale
{
  v3 = [(AVMutableMovieTrack *)self extendedLanguageTag];
  if (v3 || ([(AVMutableMovieTrack *)self languageCode], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = CFLocaleCreate(*MEMORY[0x1E695E480], v3);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)naturalSize
{
  [(AVMutableMovieTrack *)self _sizeForProperty:*MEMORY[0x1E6972088]];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)dimensions
{
  [(AVMutableMovieTrack *)self _sizeForProperty:*MEMORY[0x1E6972088]];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)cleanApertureDimensions
{
  [(AVMutableMovieTrack *)self _sizeForProperty:*MEMORY[0x1E6972080]];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)productionApertureDimensions
{
  [(AVMutableMovieTrack *)self _sizeForProperty:*MEMORY[0x1E6972108]];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)encodedPixelsDimensions
{
  [(AVMutableMovieTrack *)self _sizeForProperty:*MEMORY[0x1E6972090]];
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)hasProtectedContent
{
  v3.receiver = self;
  v3.super_class = AVMutableMovieTrack;
  return [(AVAssetTrack *)&v3 hasProtectedContent];
}

- (void)_setSize:(CGSize)a3 forProperty:(__CFString *)a4
{
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(a3);
  if (DictionaryRepresentation)
  {
    v7 = DictionaryRepresentation;
    v8 = [(AVMutableMovieTrack *)self _figMutableMovie];
    v9 = [(AVMutableMovieTrack *)self trackID];
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v10)
    {
      v10(v8, v9, a4, v7);
    }

    CFRelease(v7);
  }
}

- (void)_setString:(id)a3 forProperty:(__CFString *)a4
{
  v9 = a3;
  v6 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v7 = [(AVMutableMovieTrack *)self trackID];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v8(v6, v7, a4, v9);
  }
}

- (void)setSampleReferenceBaseURL:(NSURL *)sampleReferenceBaseURL
{
  v7 = sampleReferenceBaseURL;
  v4 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v5 = [(AVMutableMovieTrack *)self trackID];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v6(v4, v5, *MEMORY[0x1E6972110], v7);
  }
}

- (AVMediaDataStorage)mediaDataStorage
{
  cf = 0;
  v3 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v4 = [(AVMutableMovieTrack *)self trackID];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v5 || v5(v3, v4, *MEMORY[0x1E69720C0], *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_6;
  }

  if (!cf)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFURLGetTypeID())
  {
    v7 = [AVMediaDataStorage alloc];
    v8 = [(AVMediaDataStorage *)v7 initWithURL:cf options:0];
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_9:

  return v8;
}

- (void)setMediaDataStorage:(AVMediaDataStorage *)mediaDataStorage
{
  v8 = mediaDataStorage;
  v4 = [(AVMediaDataStorage *)v8 URL];
  v5 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v6 = [(AVMutableMovieTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    v7(v5, v6, *MEMORY[0x1E69720C0], v4);
  }
}

- (void)setPreferredVolume:(float)preferredVolume
{
  v5 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v6 = [(AVMutableMovieTrack *)self trackID];
  *&v7 = preferredVolume;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v9)
  {
    v10 = *MEMORY[0x1E6972120];

    v9(v5, v6, v10, v8);
  }
}

- (void)setTimescale:(CMTimeScale)timescale
{
  v3 = *&timescale;
  v5 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v6 = [(AVMutableMovieTrack *)self trackID];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v9 = *MEMORY[0x1E69720D8];

    v8(v5, v6, v9, v7);
  }
}

- (void)setAlternateGroupID:(NSInteger)alternateGroupID
{
  valuePtr = alternateGroupID;
  if (alternateGroupID < 0x8000)
  {
    v4 = [(AVAssetTrack *)self asset];
    [v4 willChangeValueForKey:@"trackGroups"];

    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
    if (v5)
    {
      v6 = v5;
      v7 = [(AVMutableMovieTrack *)self _figMutableMovie];
      v8 = [(AVMutableMovieTrack *)self trackID];
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v9)
      {
        v9(v7, v8, *MEMORY[0x1E6972070], v6);
      }

      v10 = [(AVAssetTrack *)self asset];
      [v10 didChangeValueForKey:@"trackGroups"];

      CFRelease(v6);
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v3 = enabled;
  v5 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v6 = [(AVMutableMovieTrack *)self trackID];
  if (v3)
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v9 = *MEMORY[0x1E69720A8];
    v10 = *v7;

    v8(v5, v6, v9, v10);
  }
}

- (void)setModified:(BOOL)modified
{
  v3 = modified;
  v5 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v6 = [(AVMutableMovieTrack *)self trackID];
  if (v3)
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v9 = *MEMORY[0x1E69720E8];
    v10 = *v7;

    v8(v5, v6, v9, v10);
  }
}

- (void)setPreferredMediaChunkSize:(NSInteger)preferredMediaChunkSize
{
  v5 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v6 = [(AVMutableMovieTrack *)self trackID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:preferredMediaChunkSize];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v9 = *MEMORY[0x1E6972100];

    v8(v5, v6, v9, v7);
  }
}

- (void)setPreferredMediaChunkDuration:(CMTime *)preferredMediaChunkDuration
{
  v4 = *MEMORY[0x1E695E480];
  v9 = *preferredMediaChunkDuration;
  v5 = CMTimeCopyAsDictionary(&v9, v4);
  v6 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v7 = [(AVMutableMovieTrack *)self trackID];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v8(v6, v7, *MEMORY[0x1E69720F8], v5);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)setPreferredMediaChunkAlignment:(NSInteger)preferredMediaChunkAlignment
{
  v5 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v6 = [(AVMutableMovieTrack *)self trackID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:preferredMediaChunkAlignment];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v9 = *MEMORY[0x1E69720F0];

    v8(v5, v6, v9, v7);
  }
}

- (id)description
{
  v3 = [(AVMutableMovieTrack *)self sampleReferenceBaseURL];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3)
  {
    v7 = [(AVMutableMovieTrack *)self trackID];
    v8 = [(AVAssetTrack *)self mediaType];
    v9 = [(AVMutableMovieTrack *)self sampleReferenceBaseURL];
    v10 = [v4 stringWithFormat:@"<%@: %p, trackID = %d, mediaType = %@, sampleReferenceBaseURL = %@>", v6, self, v7, v8, v9];
  }

  else
  {
    v11 = [(AVMutableMovieTrack *)self trackID];
    v8 = [(AVAssetTrack *)self mediaType];
    v10 = [v4 stringWithFormat:@"<%@: %p, trackID = %d, mediaType = %@>", v6, self, v11, v8];
  }

  return v10;
}

- (void)replaceFormatDescription:(CMFormatDescriptionRef)formatDescription withFormatDescription:(CMFormatDescriptionRef)newFormatDescription
{
  v37[2] = *MEMORY[0x1E69E9840];
  if (!formatDescription)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", newFormatDescription, v4, v5, v6, v7, "formatDescription != NULL");
    v29 = [v27 exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
    v30 = v29;
    goto LABEL_19;
  }

  if (!newFormatDescription)
  {
    v31 = MEMORY[0x1E695DF30];
    v28 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", 0, v4, v5, v6, v7, "newFormatDescription != NULL");
    v29 = [v31 exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
    v32 = v29;
    goto LABEL_19;
  }

  if (formatDescription == newFormatDescription)
  {
    return;
  }

  MediaType = CMFormatDescriptionGetMediaType(formatDescription);
  if (MediaType != CMFormatDescriptionGetMediaType(newFormatDescription))
  {
    v33 = MEMORY[0x1E695DF30];
    v28 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Media type of the new format description must match that of the existing format description", v13, v14, v15, v16, v17, v35);
    v29 = [v33 exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
    v34 = v29;
LABEL_19:

    objc_exception_throw(v29);
  }

  v36 = [(AVMutableMovieTrack *)self formatDescriptions];
  if ([v36 containsObject:formatDescription])
  {
    v18 = [MEMORY[0x1E695DF70] arrayWithArray:v36];
    v19 = 0;
    v20 = *MEMORY[0x1E69600D0];
    v21 = *MEMORY[0x1E69600C8];
    while (v19 < [v18 count])
    {
      v22 = [v18 objectAtIndex:v19];
      v37[0] = v20;
      v37[1] = v21;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      if (CMFormatDescriptionEqualIgnoringExtensionKeys(v22, formatDescription, v23, 0))
      {
        [v18 replaceObjectAtIndex:v19 withObject:newFormatDescription];
      }

      ++v19;
    }

    v24 = [(AVMutableMovieTrack *)self _figMutableMovie];
    v25 = [(AVMutableMovieTrack *)self trackID];
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v26)
    {
      v26(v24, v25, *MEMORY[0x1E69720A0], v18);
    }
  }
}

- (NSArray)formatDescriptions
{
  cf = 0;
  v3 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v4 = [(AVMutableMovieTrack *)self trackID];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v5)
  {
    v6 = v5(v3, v4, *MEMORY[0x1E69720A0], *MEMORY[0x1E695E480], &cf);
    v7 = cf;
    if (v6)
    {
LABEL_10:
      if (v7)
      {
        CFRelease(v7);
      }

      goto LABEL_6;
    }

    if (cf)
    {
      v8 = CFGetTypeID(cf);
      TypeID = CFArrayGetTypeID();
      v7 = cf;
      if (v8 == TypeID)
      {
        cf = 0;
        if (v7)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

LABEL_6:
  v7 = [MEMORY[0x1E695DEC8] array];
LABEL_7:

  return v7;
}

- (BOOL)isCompatibleWithFormatDescription:(opaqueCMFormatDescription *)a3
{
  v5 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v6 = [(AVMutableMovieTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  return v7 && v7(v5, v6, a3) != 0;
}

- (BOOL)insertTimeRange:(CMTimeRange *)timeRange ofTrack:(AVAssetTrack *)track atTime:(CMTime *)startTime copySampleData:(BOOL)copySampleData error:(NSError *)outError
{
  LODWORD(v8) = copySampleData;
  v38[1] = *MEMORY[0x1E69E9840];
  v12 = track;
  v13 = [(AVAssetTrack *)v12 asset];
  v14 = [v13 providesPreciseDurationAndTiming];

  if (v14)
  {
    [(AVMutableMovieTrack *)self willChangeValueForKey:@"segments"];
    if (![(AVAssetTrack *)self isEqual:v12]|| (v8 & 1) != 0)
    {
      v22 = [(AVAssetTrack *)v12 _figFormatReader];
      v23 = [(AVAssetTrack *)v12 _figTrackReader];
      if (!v23)
      {
        v20 = AVLocalizedError(@"AVFoundationErrorDomain", -11838, 0);
        v21 = 0;
        v18 = 0;
        if (!outError)
        {
          goto LABEL_23;
        }

LABEL_17:
        if (!v21)
        {
          if (v20)
          {
            v30 = v20;
            v31 = v20;
LABEL_22:
            *outError = v31;
            goto LABEL_23;
          }

          if (v18)
          {
            v31 = AVLocalizedErrorWithUnderlyingOSStatus(v18, 0);
            goto LABEL_22;
          }
        }

LABEL_23:
        [(AVMutableMovieTrack *)self didChangeValueForKey:@"segments", *&v33.start.value, v33.start.epoch];
        goto LABEL_24;
      }

      v24 = [(AVAssetTrack *)v12 asset];
      v25 = [v24 _prefersNominalDurations];

      if (v25)
      {
        v8 = v8 | 0x100;
      }

      else
      {
        v8 = v8;
      }

      v26 = [(AVMutableMovieTrack *)self _figMutableMovie];
      v27 = [(AVMutableMovieTrack *)self trackID];
      v28 = *&timeRange->start.epoch;
      *&duration.start.value = *&timeRange->start.value;
      *&duration.start.epoch = v28;
      *&duration.duration.timescale = *&timeRange->duration.timescale;
      *&v33.start.value = *&startTime->value;
      v33.start.epoch = startTime->epoch;
      v29 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (v29)
      {
        start = duration;
        *&v34.start.value = *&v33.start.value;
        v34.start.epoch = v33.start.epoch;
        v18 = v29(v26, v27, v22, v23, &start, &v34, v8);
        goto LABEL_16;
      }
    }

    else
    {
      v15 = [(AVMutableMovieTrack *)self _figMutableMovie];
      v16 = [(AVMutableMovieTrack *)self trackID];
      *&start.start.value = *&startTime->value;
      start.start.epoch = startTime->epoch;
      *&duration.start.value = *&timeRange->duration.value;
      duration.start.epoch = timeRange->duration.epoch;
      CMTimeRangeMake(&v34, &start.start, &duration.start);
      *&v33.start.value = *&timeRange->start.value;
      *&v33.start.epoch = *&timeRange->start.epoch;
      *&v33.duration.timescale = *&timeRange->duration.timescale;
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v17)
      {
        start = v34;
        duration = v33;
        v18 = v17(v15, v16, &start, &duration);
        goto LABEL_16;
      }
    }

    v18 = -12782;
LABEL_16:
    v20 = 0;
    v21 = v18 == 0;
    if (!outError)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (outError)
  {
    v37 = *MEMORY[0x1E695E618];
    v38[0] = @"Source asset must have a value of YES for providesPreciseDurationAndTiming";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    *outError = AVLocalizedError(@"AVFoundationErrorDomain", -11838, v19);
  }

  v20 = 0;
  v21 = 0;
LABEL_24:

  return v21;
}

- (void)insertEmptyTimeRange:(CMTimeRange *)timeRange
{
  [(AVMutableMovieTrack *)self willChangeValueForKey:@"segments"];
  v5 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v6 = [(AVMutableMovieTrack *)self trackID];
  v8 = *timeRange;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v7)
  {
    v9 = v8;
    v7(v5, v6, &v9);
  }

  [(AVMutableMovieTrack *)self didChangeValueForKey:@"segments", *&v8.start.value, *&v8.start.epoch, *&v8.duration.timescale];
}

- (void)removeTimeRange:(CMTimeRange *)timeRange
{
  [(AVMutableMovieTrack *)self willChangeValueForKey:@"segments"];
  v5 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v6 = [(AVMutableMovieTrack *)self trackID];
  v8 = *timeRange;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (v7)
  {
    v9 = v8;
    v7(v5, v6, &v9);
  }

  [(AVMutableMovieTrack *)self didChangeValueForKey:@"segments", *&v8.start.value, *&v8.start.epoch, *&v8.duration.timescale];
}

- (void)scaleTimeRange:(CMTimeRange *)timeRange toDuration:(CMTime *)duration
{
  [(AVMutableMovieTrack *)self willChangeValueForKey:@"segments"];
  v7 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v8 = [(AVMutableMovieTrack *)self trackID];
  v11 = *timeRange;
  v10 = *duration;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (v9)
  {
    v13 = v11;
    v12 = v10;
    v9(v7, v8, &v13, &v12);
  }

  [(AVMutableMovieTrack *)self didChangeValueForKey:@"segments", *&v10.value, v10.epoch];
}

- (BOOL)appendSampleBuffer:(CMSampleBufferRef)sampleBuffer decodeTime:(CMTime *)outDecodeTime presentationTime:(CMTime *)outPresentationTime error:(NSError *)outError
{
  if (!sampleBuffer)
  {
    v33 = MEMORY[0x1E695DF30];
    v34 = *MEMORY[0x1E695D940];
    v35 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", outDecodeTime, outPresentationTime, outError, v6, v7, "sampleBuffer != NULL");
    v36 = [v33 exceptionWithName:v34 reason:v35 userInfo:0];
LABEL_20:
    v41 = v36;
    v42 = v36;
    goto LABEL_21;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(sampleBuffer);
  if (FormatDescription)
  {
    v15 = FormatDescription;
    v16 = [(AVAssetTrack *)self mediaType];
    v17 = CMMediaTypeFromAVMediaType(v16);

    if (CMFormatDescriptionGetMediaType(v15) != v17)
    {
      v43 = MEMORY[0x1E695DF30];
      v35 = [(AVAssetTrack *)self mediaType];
      v49 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Media type of sample buffer must match receiver's media type (%@)", v44, v45, v46, v47, v48, v35);
      v41 = [v43 exceptionWithName:*MEMORY[0x1E695D940] reason:v49 userInfo:0];
      v50 = v41;

LABEL_21:
      objc_exception_throw(v41);
    }
  }

  if (CMSampleBufferGetImageBuffer(sampleBuffer))
  {
    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
    v35 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"CMSampleBuffers containing image buffers are not supported you must provide CMSampleBuffers containing encoded video", v18, v19, v20, v21, v22, v51);;
    v36 = [v37 exceptionWithName:v38 reason:v35 userInfo:0];
    goto LABEL_20;
  }

  if (FigSampleBufferGetCaptionGroup())
  {
    v39 = MEMORY[0x1E695DF30];
    v40 = *MEMORY[0x1E695D940];
    v35 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"CMSampleBuffers containing caption groups are not supported you must provide CMSampleBuffers containing encoded media data", v23, v24, v25, v26, v27, v51);;
    v36 = [v39 exceptionWithName:v40 reason:v35 userInfo:0];
    goto LABEL_20;
  }

  v54 = *MEMORY[0x1E6960C70];
  v55 = *(MEMORY[0x1E6960C70] + 16);
  v52 = v54;
  v53 = v55;
  v28 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v29 = [(AVMutableMovieTrack *)self trackID];
  v30 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v30)
  {
    v31 = -12782;
    if (!outDecodeTime)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v31 = v30(v28, v29, sampleBuffer, 0, &v54, &v52);
  if (outDecodeTime)
  {
LABEL_10:
    *&outDecodeTime->value = v54;
    outDecodeTime->epoch = v55;
  }

LABEL_11:
  if (outPresentationTime)
  {
    *&outPresentationTime->value = v52;
    outPresentationTime->epoch = v53;
  }

  if (outError && v31)
  {
    *outError = AVLocalizedErrorWithUnderlyingOSStatus(v31, 0);
  }

  return v31 == 0;
}

- (BOOL)insertMediaTimeRange:(CMTimeRange *)mediaTimeRange intoTimeRange:(CMTimeRange *)trackTimeRange
{
  v7 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v8 = [(AVMutableMovieTrack *)self trackID];
  v12 = *trackTimeRange;
  v11 = *mediaTimeRange;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v9)
  {
    return 0;
  }

  v14 = v12;
  v13 = v11;
  return v9(v7, v8, &v14, &v13) == 0;
}

- (BOOL)appendMediaData:(id)a3 dataOffset:(int64_t *)a4
{
  v6 = a3;
  v12 = v6;
  v19 = 0;
  cf = 0;
  if (!v6)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v7, v8, v9, v10, v11, "data != nil");
    v17 = [v15 exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    v18 = v17;

    objc_exception_throw(v17);
  }

  [v6 length];
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();

  return BlockBufferWithCFDataNoCopy == 0;
}

- (id)availableMetadataFormats
{
  cf = 0;
  v3 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v4 = [(AVMutableMovieTrack *)self trackID];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v5)
  {
    v6 = v5(v3, v4, *MEMORY[0x1E6972078], *MEMORY[0x1E695E480], &cf);
    v7 = cf;
    if (v6)
    {
LABEL_10:
      if (v7)
      {
        CFRelease(v7);
      }

      goto LABEL_6;
    }

    if (cf)
    {
      v8 = CFGetTypeID(cf);
      TypeID = CFArrayGetTypeID();
      v7 = cf;
      if (v8 == TypeID)
      {
        cf = 0;
        if (v7)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

LABEL_6:
  v7 = [MEMORY[0x1E695DEC8] array];
LABEL_7:

  return v7;
}

- (NSArray)metadataForFormat:(AVMetadataFormat)format
{
  v4 = format;
  v5 = [(AVAssetTrack *)self _figTrackReader];
  v6 = 0;
  cf = 0;
  theArray = 0;
  if (v4 && v5)
  {
    FigBaseObject = FigTrackReaderGetFigBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v8)
    {
      goto LABEL_24;
    }

    v9 = *MEMORY[0x1E695E480];
    if (v8(FigBaseObject, *MEMORY[0x1E6973AB0], *MEMORY[0x1E695E480], &theArray))
    {
      goto LABEL_24;
    }

    if (!theArray)
    {
      v25 = 0;
      goto LABEL_29;
    }

    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
LABEL_24:
      v6 = 0;
    }

    else
    {
      v11 = 0;
      v6 = 0;
      v12 = *MEMORY[0x1E6971F98];
      v29 = @"org.mp4ra";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
        v14 = FigMetadataReaderGetFigBaseObject();
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v15 && !v15(v14, v12, v9, &cf) && [(NSString *)v4 isEqualToString:cf])
        {
          v16 = [AVMetadataEnumerator metadataEnumeratorWithMetadataReader:ValueAtIndex];
          v17 = MEMORY[0x1E695DF70];
          v18 = [v16 allObjects];
          v19 = [v17 arrayWithArray:v18];

          if ([(NSString *)v4 isEqualToString:@"com.apple.quicktime.udta"]|| [(NSString *)v4 isEqualToString:v29])
          {
            v20 = [(NSString *)v4 isEqualToString:@"com.apple.quicktime.udta", v29];
            v21 = @"udta";
            if (!v20)
            {
              v21 = @"uiso";
            }

            v22 = v21;
            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1835365473];
            v24 = [AVMetadataItem metadataItemsFromArray:v19 withKey:v23 keySpace:v22];

            if (v24 && [v24 count])
            {
              [v19 removeObjectsInArray:v24];
            }
          }

          v6 = v19;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        ++v11;
      }

      while (Count != v11);
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  v25 = v6;
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = [MEMORY[0x1E695DEC8] array];
  }

  v27 = v26;

  return v27;
}

- (NSArray)metadata
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(AVMutableMovieTrack *)self availableMetadataFormats];
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
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

        v9 = [(AVMutableMovieTrack *)self metadataForFormat:*(*(&v11 + 1) + 8 * i), v11];
        [v4 addObjectsFromArray:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)setMetadata:(NSArray *)metadata
{
  v8 = metadata;
  v4 = [AVMetadataItem _figMetadataPropertyFromMetadataItems:?];
  v5 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v6 = [(AVMutableMovieTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    v7(v5, v6, *MEMORY[0x1E69720E0], v4);
  }

  dispatch_semaphore_wait(self->_mutableMovieTrackInternal->metadataWaitingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)addTrackAssociationToTrack:(AVMovieTrack *)movieTrack type:(AVTrackAssociationType)trackAssociationType
{
  v25 = movieTrack;
  v7 = trackAssociationType;
  v8 = [(AVAssetTrack *)self asset];
  v9 = [(AVAssetTrack *)v25 asset];

  if (v8 != v9)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"the tracks being associated must belong to the same movie", v10, v11, v12, v13, v14, v24);
    v22 = [v20 exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    v23 = v22;

    objc_exception_throw(v22);
  }

  v15 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v16 = AVOSTypeForString(v7);
  v17 = [(AVMutableMovieTrack *)self trackID];
  v18 = [(AVAssetTrack *)v25 trackID];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 184);
  if (v19)
  {
    v19(v15, v16, v17, v18);
  }
}

- (void)removeTrackAssociationToTrack:(AVMovieTrack *)movieTrack type:(AVTrackAssociationType)trackAssociationType
{
  v25 = movieTrack;
  v7 = trackAssociationType;
  v8 = [(AVAssetTrack *)self asset];
  v9 = [(AVAssetTrack *)v25 asset];

  if (v8 != v9)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"the tracks being dissociated must belong to the same movie", v10, v11, v12, v13, v14, v24);
    v22 = [v20 exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    v23 = v22;

    objc_exception_throw(v22);
  }

  v15 = [(AVMutableMovieTrack *)self _figMutableMovie];
  v16 = AVOSTypeForString(v7);
  v17 = [(AVMutableMovieTrack *)self trackID];
  v18 = [(AVAssetTrack *)v25 trackID];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 192);
  if (v19)
  {
    v19(v15, v16, v17, v18);
  }
}

@end