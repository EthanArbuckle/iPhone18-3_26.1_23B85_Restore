@interface PHContentEditingOutput
+ (id)_renderURLWithExtensionForMediaType:(int64_t)type useHEICImage:(BOOL)image appropriateForURL:(id)l;
+ (id)_renderURLWithExtensionForUniformTypeIdentifierType:(id)type appropriateForURL:(id)l;
+ (id)defaultExtensionForUniformTypeIdentifierType:(id)type;
- (BOOL)isOnlyChangingOriginalChoice;
- (BOOL)shouldPreferHEICForRenderedImages;
- (NSArray)supportedRenderedContentTypes;
- (NSURL)renderedContentURLForType:(UTType *)type error:(NSError *)error;
- (PHAdjustmentData)adjustmentData;
- (PHContentEditingOutput)initWithAdjustmentBaseVersion:(int64_t)version mediaType:(int64_t)type appropriateForURL:(id)l;
- (PHContentEditingOutput)initWithCoder:(id)coder;
- (PHContentEditingOutput)initWithContentEditingInput:(id)input withOptions:(id)options;
- (PHContentEditingOutput)initWithPlaceholderForCreatedAsset:(PHObjectPlaceholder *)placeholderForCreatedAsset;
- (UTType)defaultRenderedContentType;
- (id)assetAdjustmentsWithEditorBundleID:(id)d;
- (id)debugDescription;
- (id)description;
- (id)renderURLWithExtensionForMediaType:(int64_t)type;
- (id)setAdjustmentsOptions;
- (int64_t)baseVersion;
- (void)_setupRequiredRenderedContentURLsWithEditingInput:(id)input options:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)setAdjustmentData:(PHAdjustmentData *)adjustmentData;
- (void)setBaseVersion:(int64_t)version;
- (void)setRenderedJPEGData:(id)data;
@end

@implementation PHContentEditingOutput

- (id)setAdjustmentsOptions
{
  v3 = objc_alloc_init(MEMORY[0x1E69BE5D8]);
  [v3 setFullSizeRenderSize:{-[PHContentEditingOutput fullSizeRenderWidth](self, "fullSizeRenderWidth"), -[PHContentEditingOutput fullSizeRenderHeight](self, "fullSizeRenderHeight")}];
  [(PHContentEditingOutput *)self fullSizeRenderDuration];
  [v3 setFullSizeRenderDuration:?];
  [v3 setShouldGenerateThumbnails:1];
  adjustmentSecondaryDataURL = [(PHContentEditingOutput *)self adjustmentSecondaryDataURL];
  [v3 setAdjustmentSecondaryDataURL:adjustmentSecondaryDataURL];

  if ([(PHContentEditingOutput *)self isAsyncAdjustment])
  {
    renderedPreviewContentURL = [(PHContentEditingOutput *)self renderedPreviewContentURL];
    [v3 setRenderedContentURL:renderedPreviewContentURL];

    [v3 setSubstandardRender:1];
    [v3 setDeferred:1];
    renderedVideoPosterURL = [(PHContentEditingOutput *)self renderedVideoPosterURL];
    [v3 setRenderedVideoPosterContentURL:renderedVideoPosterURL];
  }

  else
  {
    renderedContentURL = [(PHContentEditingOutput *)self renderedContentURL];
    [v3 setRenderedContentURL:renderedContentURL];

    penultimateRenderedJPEGData = [(PHContentEditingOutput *)self penultimateRenderedJPEGData];
    [v3 setPenultimateRenderedJPEGData:penultimateRenderedJPEGData];

    penultimateRenderedVideoContentURL = [(PHContentEditingOutput *)self penultimateRenderedVideoContentURL];
    [v3 setPenultimateRenderedVideoContentURL:penultimateRenderedVideoContentURL];

    [v3 setSubstandardRender:{-[PHContentEditingOutput isSubstandardRender](self, "isSubstandardRender")}];
    renderedVideoComplementContentURL = [(PHContentEditingOutput *)self renderedVideoComplementContentURL];
    [v3 setRenderedVideoComplementContentURL:renderedVideoComplementContentURL];

    penultimateRenderedVideoComplementContentURL = [(PHContentEditingOutput *)self penultimateRenderedVideoComplementContentURL];
    [v3 setPenultimateRenderedVideoComplementContentURL:penultimateRenderedVideoComplementContentURL];

    renderedVideoPosterURL2 = [(PHContentEditingOutput *)self renderedVideoPosterURL];
    [v3 setRenderedVideoPosterContentURL:renderedVideoPosterURL2];

    [v3 setShouldUpdateAttributes:1];
  }

  return v3;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_isAsyncAdjustment)
  {
    v7 = @" (async)";
  }

  else
  {
    v7 = &stru_1F0FC60C8;
  }

  [v3 appendFormat:@"<%@ %p>%@\n", v5, self, v7];

  v8 = self->_mediaType - 1;
  if (v8 > 2)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E75A7238[v8];
  }

  v10 = v9;
  v11 = v10;
  if (self->_loopingLivePhoto)
  {
    v12 = @" (looping)";
  }

  else
  {
    v12 = &stru_1F0FC60C8;
  }

  [v3 appendFormat:@"  mediaType: %@%@\n", v10, v12];

  [v3 appendFormat:@"  adjustmentData: %@\n", self->_adjustmentData];
  originalResourceChoice = self->_originalResourceChoice;
  if (originalResourceChoice)
  {
    integerValue = [(NSNumber *)originalResourceChoice integerValue];
    if (integerValue > 3)
    {
      v15 = 0;
    }

    else
    {
      v15 = off_1E75A71C8[integerValue];
    }

    v16 = v15;
    [v3 appendFormat:@"  originalChoice: %@\n", v16];
  }

  if (self->_isAsyncAdjustment)
  {
    [v3 appendFormat:@"  renderedPreviewContentURL: %@\n", self->_renderedPreviewContentURL];
  }

  return v3;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = PHContentEditingOutput;
  v3 = [(PHContentEditingOutput *)&v9 description];
  adjustmentData = [(PHContentEditingOutput *)self adjustmentData];
  renderedContentURL = [(PHContentEditingOutput *)self renderedContentURL];
  renderedPreviewContentURL = [(PHContentEditingOutput *)self renderedPreviewContentURL];
  v7 = [v3 stringByAppendingFormat:@" adjustmentData=%@, renderedContentURL=%@, renderedPreviewContentURL=%@", adjustmentData, renderedContentURL, renderedPreviewContentURL];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  mediaType = self->_mediaType;
  coderCopy = coder;
  [coderCopy encodeInteger:mediaType forKey:@"mediaType"];
  [coderCopy encodeBool:self->_loopingLivePhoto forKey:@"loopingLivePhoto"];
  [coderCopy encodeObject:self->_adjustmentData forKey:@"adjustmentData"];
  v5 = OutboundURLForURL(self->_renderedContentURL);
  [coderCopy encodeObject:v5 forKey:@"renderedContentURL"];

  v6 = OutboundURLForURL(self->_renderedVideoComplementContentURL);
  [coderCopy encodeObject:v6 forKey:@"renderedVideoComplementContentURL"];

  v7 = OutboundURLForURL(self->_renderedPreviewContentURL);
  [coderCopy encodeObject:v7 forKey:@"renderedPreviewContentURL"];

  v8 = OutboundURLForURL(self->_adjustmentSecondaryDataURL);
  [coderCopy encodeObject:v8 forKey:@"adjustmentSecondaryDataURL"];

  [coderCopy encodeObject:self->_penultimateRenderedJPEGData forKey:@"penultimateRenderedJPEGData"];
  v9 = OutboundURLForURL(self->_penultimateRenderedVideoContentURL);
  [coderCopy encodeObject:v9 forKey:@"penultimateRenderedVideoContentURL"];

  v10 = OutboundURLForURL(self->_penultimateRenderedVideoComplementContentURL);
  [coderCopy encodeObject:v10 forKey:@"penultimateRenderedVideoComplementContentURL"];

  [coderCopy encodeBool:self->_isSubstandardRender forKey:@"isSubstandardRender"];
  [coderCopy encodeInteger:self->_fullSizeRenderWidth forKey:@"fullSizeRenderWidth"];
  [coderCopy encodeInteger:self->_fullSizeRenderHeight forKey:@"fullSizeRenderHeight"];
  [coderCopy encodeDouble:@"fullSizeRenderDuration" forKey:self->_fullSizeRenderDuration];
  v11 = OutboundURLForURL(self->_editorBundleURL);
  [coderCopy encodeObject:v11 forKey:@"editorBundleURL"];

  [coderCopy encodeObject:self->_originalResourceChoice forKey:@"originalResourceChoice"];
  [coderCopy encodeBool:self->_isAsyncAdjustment forKey:@"isAsyncAdjustment"];
  v12 = OutboundURLForURL(self->_renderedVideoPosterURL);
  [coderCopy encodeObject:v12 forKey:@"renderedVideoPosterURL"];

  [coderCopy encodeObject:self->_playbackVariation forKey:@"playbackVariation"];
  [coderCopy encodeObject:self->_videoDuration forKey:@"videoDuration"];
  [coderCopy encodeObject:self->_accessibilityDescription forKey:@"accessibilityDescription"];
  [coderCopy encodeObject:self->_requestOptions forKey:@"requestOptions"];
}

- (PHContentEditingOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = PHContentEditingOutput;
  v5 = [(PHContentEditingOutput *)&v39 init];
  if (v5)
  {
    v5->_mediaType = [coderCopy decodeIntegerForKey:@"mediaType"];
    v5->_loopingLivePhoto = [coderCopy decodeBoolForKey:@"loopingLivePhoto"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adjustmentData"];
    adjustmentData = v5->_adjustmentData;
    v5->_adjustmentData = v6;

    v8 = objc_opt_class();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"renderedContentURL"];
    renderedContentURL = v5->_renderedContentURL;
    v5->_renderedContentURL = v9;

    v11 = [coderCopy decodeObjectOfClass:v8 forKey:@"renderedVideoComplementContentURL"];
    renderedVideoComplementContentURL = v5->_renderedVideoComplementContentURL;
    v5->_renderedVideoComplementContentURL = v11;

    v13 = [coderCopy decodeObjectOfClass:v8 forKey:@"renderedPreviewContentURL"];
    renderedPreviewContentURL = v5->_renderedPreviewContentURL;
    v5->_renderedPreviewContentURL = v13;

    v15 = [coderCopy decodeObjectOfClass:v8 forKey:@"adjustmentSecondaryDataURL"];
    adjustmentSecondaryDataURL = v5->_adjustmentSecondaryDataURL;
    v5->_adjustmentSecondaryDataURL = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"penultimateRenderedJPEGData"];
    penultimateRenderedJPEGData = v5->_penultimateRenderedJPEGData;
    v5->_penultimateRenderedJPEGData = v17;

    v19 = [coderCopy decodeObjectOfClass:v8 forKey:@"penultimateRenderedVideoContentURL"];
    penultimateRenderedVideoContentURL = v5->_penultimateRenderedVideoContentURL;
    v5->_penultimateRenderedVideoContentURL = v19;

    v21 = [coderCopy decodeObjectOfClass:v8 forKey:@"penultimateRenderedVideoComplementContentURL"];
    penultimateRenderedVideoComplementContentURL = v5->_penultimateRenderedVideoComplementContentURL;
    v5->_penultimateRenderedVideoComplementContentURL = v21;

    v5->_isSubstandardRender = [coderCopy decodeBoolForKey:@"isSubstandardRender"];
    v5->_fullSizeRenderWidth = [coderCopy decodeIntegerForKey:@"fullSizeRenderWidth"];
    v5->_fullSizeRenderHeight = [coderCopy decodeIntegerForKey:@"fullSizeRenderHeight"];
    [coderCopy decodeDoubleForKey:@"fullSizeRenderDuration"];
    v5->_fullSizeRenderDuration = v23;
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"editorBundleURL"];
    editorBundleURL = v5->_editorBundleURL;
    v5->_editorBundleURL = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalResourceChoice"];
    originalResourceChoice = v5->_originalResourceChoice;
    v5->_originalResourceChoice = v26;

    v5->_isAsyncAdjustment = [coderCopy decodeBoolForKey:@"isAsyncAdjustment"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"renderedVideoPosterURL"];
    renderedVideoPosterURL = v5->_renderedVideoPosterURL;
    v5->_renderedVideoPosterURL = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playbackVariation"];
    playbackVariation = v5->_playbackVariation;
    v5->_playbackVariation = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"videoDuration"];
    videoDuration = v5->_videoDuration;
    v5->_videoDuration = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityDescription"];
    accessibilityDescription = v5->_accessibilityDescription;
    v5->_accessibilityDescription = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestOptions"];
    requestOptions = v5->_requestOptions;
    v5->_requestOptions = v36;
  }

  return v5;
}

- (BOOL)shouldPreferHEICForRenderedImages
{
  requestOptions = self->_requestOptions;
  if (!requestOptions || ![(PHContentEditingOutputRequestOptions *)requestOptions preferHEICForRenderedImages])
  {
    return 0;
  }

  v3 = objc_opt_class();

  return [v3 _currentDeviceSupportsHEICEncoding];
}

- (void)_setupRequiredRenderedContentURLsWithEditingInput:(id)input options:(id)options
{
  v34 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  optionsCopy = options;
  if ([optionsCopy isAsyncAdjustment])
  {
    v8 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      mediaType = [inputCopy mediaType];
      if ((mediaType - 1) > 2)
      {
        v10 = @"unknown";
      }

      else
      {
        v10 = off_1E75A7238[mediaType - 1];
      }

      v21 = v10;
      v32 = 138543362;
      v33 = v21;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "Preparing async content editing output URLs for %{public}@", &v32, 0xCu);
    }

    v22 = [(PHContentEditingOutput *)self renderURLWithExtensionForMediaType:1];
    renderedPreviewContentURL = self->_renderedPreviewContentURL;
    self->_renderedPreviewContentURL = v22;

    if ([inputCopy mediaType] == 2)
    {
      v20 = [(PHContentEditingOutput *)self renderURLWithExtensionForMediaType:1];
LABEL_25:
      v24 = 120;
LABEL_26:
      v25 = *(&self->super.isa + v24);
      *(&self->super.isa + v24) = v20;
    }
  }

  else
  {
    if ([optionsCopy playbackStyle])
    {
      v11 = optionsCopy;
    }

    else
    {
      v11 = inputCopy;
    }

    playbackStyle = [v11 playbackStyle];
    shouldPreferHEICForRenderedImages = [(PHContentEditingOutput *)self shouldPreferHEICForRenderedImages];
    v14 = [inputCopy mediaType] == 1 && playbackStyle == 5;
    v15 = v14;
    if (v14 || [inputCopy mediaType] == 2)
    {
      v16 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = @"normal video";
        if (v15)
        {
          v17 = @"looping live photo";
        }

        v32 = 138543362;
        v33 = v17;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "Preparing video-based content editing output URLs for %{public}@", &v32, 0xCu);
      }

      self->_loopingLivePhoto = v15;
      v18 = [(PHContentEditingOutput *)self renderURLWithExtensionForMediaType:2];
      renderedContentURL = self->_renderedContentURL;
      self->_renderedContentURL = v18;

      v20 = [objc_opt_class() imageRenderURLUsingHEICFormat:shouldPreferHEICForRenderedImages appropriateForURL:self->_appropriateURLForDerivingRenderedContentURLs];
      goto LABEL_25;
    }

    v26 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      livePhoto = [inputCopy livePhoto];
      v28 = @"live photo";
      if (!livePhoto)
      {
        v28 = @"still photo";
      }

      v32 = 138543362;
      v33 = v28;
      _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, "Preparing photo-based content editing output URLs for %{public}@", &v32, 0xCu);
    }

    v29 = [objc_opt_class() _renderURLWithExtensionForMediaType:self->_mediaType useHEICImage:shouldPreferHEICForRenderedImages appropriateForURL:self->_appropriateURLForDerivingRenderedContentURLs];
    v30 = self->_renderedContentURL;
    self->_renderedContentURL = v29;

    livePhoto2 = [inputCopy livePhoto];

    if (livePhoto2)
    {
      v20 = [(PHContentEditingOutput *)self renderURLWithExtensionForMediaType:2];
      v24 = 128;
      goto LABEL_26;
    }
  }
}

- (BOOL)isOnlyChangingOriginalChoice
{
  adjustmentData = [(PHContentEditingOutput *)self adjustmentData];
  if (adjustmentData)
  {
    v4 = 0;
  }

  else
  {
    originalResourceChoice = [(PHContentEditingOutput *)self originalResourceChoice];
    v4 = originalResourceChoice != 0;
  }

  return v4;
}

- (id)assetAdjustmentsWithEditorBundleID:(id)d
{
  dCopy = d;
  adjustmentData = [(PHContentEditingOutput *)self adjustmentData];
  formatIdentifier = [adjustmentData formatIdentifier];

  adjustmentData2 = [(PHContentEditingOutput *)self adjustmentData];
  formatVersion = [adjustmentData2 formatVersion];

  adjustmentData3 = [(PHContentEditingOutput *)self adjustmentData];
  baseVersion = [adjustmentData3 baseVersion];

  adjustmentData4 = [(PHContentEditingOutput *)self adjustmentData];
  data = [adjustmentData4 data];

  adjustmentData5 = [(PHContentEditingOutput *)self adjustmentData];
  adjustmentRenderTypes = [adjustmentData5 adjustmentRenderTypes];

  v15 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:formatIdentifier formatVersion:formatVersion data:data baseVersion:baseVersion editorBundleID:dCopy renderTypes:adjustmentRenderTypes];

  return v15;
}

- (void)setRenderedJPEGData:(id)data
{
  dataCopy = data;
  renderedContentURL = [(PHContentEditingOutput *)self renderedContentURL];
  [dataCopy writeToURL:renderedContentURL options:1073741825 error:0];
}

- (void)setBaseVersion:(int64_t)version
{
  obj = self;
  objc_sync_enter(obj);
  obj->_baseVersion = version;
  [(PHAdjustmentData *)obj->_adjustmentData setBaseVersion:version];
  objc_sync_exit(obj);
}

- (int64_t)baseVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  baseVersion = selfCopy->_baseVersion;
  objc_sync_exit(selfCopy);

  return baseVersion;
}

- (void)setAdjustmentData:(PHAdjustmentData *)adjustmentData
{
  v4 = adjustmentData;
  [(PHAdjustmentData *)v4 setBaseVersion:self->_baseVersion];
  formatIdentifier = [(PHAdjustmentData *)v4 formatIdentifier];

  if (!formatIdentifier)
  {
    [(PHAdjustmentData *)v4 setFormatIdentifier:&stru_1F0FC60C8];
  }

  formatVersion = [(PHAdjustmentData *)v4 formatVersion];

  if (!formatVersion)
  {
    [(PHAdjustmentData *)v4 setFormatVersion:&stru_1F0FC60C8];
  }

  data = [(PHAdjustmentData *)v4 data];
  v8 = [data length];
  v9 = +[PHContentEditingOutput maximumAdjustmentDataLength];

  if (v8 > v9 && (PLIsAssetsd() & 1) == 0 && (PLIsProcessWithAppleBundleIdentifier() & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Adjustment data is too large" userInfo:0];
    objc_exception_throw(v11);
  }

  obj = self;
  objc_sync_enter(obj);
  v10 = obj->_adjustmentData;
  obj->_adjustmentData = v4;

  objc_sync_exit(obj);
}

- (PHAdjustmentData)adjustmentData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_adjustmentData;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)renderURLWithExtensionForMediaType:(int64_t)type
{
  shouldPreferHEICForRenderedImages = [(PHContentEditingOutput *)self shouldPreferHEICForRenderedImages];
  v6 = objc_opt_class();
  appropriateURLForDerivingRenderedContentURLs = self->_appropriateURLForDerivingRenderedContentURLs;

  return [v6 _renderURLWithExtensionForMediaType:type useHEICImage:shouldPreferHEICForRenderedImages appropriateForURL:appropriateURLForDerivingRenderedContentURLs];
}

- (NSURL)renderedContentURLForType:(UTType *)type error:(NSError *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = type;
  if (!self->_deliveredRenderedContentURLs)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    deliveredRenderedContentURLs = self->_deliveredRenderedContentURLs;
    self->_deliveredRenderedContentURLs = v7;
  }

  supportedRenderedContentTypes = [(PHContentEditingOutput *)self supportedRenderedContentTypes];
  v10 = [supportedRenderedContentTypes containsObject:v6];

  if (!v10)
  {
    v13 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A278];
    v22 = *MEMORY[0x1E696A278];
    v23[0] = @"Unsupported UTType";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v11 = [v13 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];

    if ([(NSMutableSet *)self->_deliveredRenderedContentURLs count]!= 1)
    {
LABEL_8:

      v18 = 0;
      goto LABEL_9;
    }

LABEL_7:
    v15 = MEMORY[0x1E696ABC0];
    v20 = v12;
    v21 = @"Cannot request another rendered content URL for UTType";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = [v15 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v16];

    v11 = v17;
    goto LABEL_8;
  }

  if ([(NSMutableSet *)self->_deliveredRenderedContentURLs count]== 1)
  {
    v11 = 0;
    v12 = *MEMORY[0x1E696A278];
    goto LABEL_7;
  }

  v18 = [objc_opt_class() _renderURLWithExtensionForUniformTypeIdentifierType:v6 appropriateForURL:self->_appropriateURLForDerivingRenderedContentURLs];
  [(NSMutableSet *)self->_deliveredRenderedContentURLs addObject:v18];
  objc_storeStrong(&self->_renderedContentURL, v18);
  if (error)
  {
    *error = 0;
  }

LABEL_9:

  return v18;
}

- (UTType)defaultRenderedContentType
{
  mediaType = self->_mediaType;
  if (mediaType == 1)
  {
    v4 = MEMORY[0x1E6982E58];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (mediaType == 2)
  {
    v4 = MEMORY[0x1E6982F80];
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (NSArray)supportedRenderedContentTypes
{
  v11[2] = *MEMORY[0x1E69E9840];
  mediaType = self->_mediaType;
  if (mediaType == 2)
  {
    v9 = *MEMORY[0x1E6982F80];
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v9;
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  if (mediaType != 1)
  {
    v7 = MEMORY[0x1E695E0F0];
    goto LABEL_10;
  }

  if (![objc_opt_class() _currentDeviceSupportsHEICEncoding])
  {
    v10 = *MEMORY[0x1E6982E58];
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v10;
    goto LABEL_8;
  }

  v3 = *MEMORY[0x1E6982E00];
  v11[0] = *MEMORY[0x1E6982E58];
  v11[1] = v3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = v11;
  v6 = 2;
LABEL_9:
  v7 = [v4 arrayWithObjects:v5 count:v6];
LABEL_10:

  return v7;
}

- (PHContentEditingOutput)initWithAdjustmentBaseVersion:(int64_t)version mediaType:(int64_t)type appropriateForURL:(id)l
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = PHContentEditingOutput;
  v10 = [(PHContentEditingOutput *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_baseVersion = version;
    v10->_mediaType = type;
    v12 = [(PHContentEditingOutput *)v10 renderURLWithExtensionForMediaType:type];
    renderedContentURL = v11->_renderedContentURL;
    v11->_renderedContentURL = v12;

    objc_storeStrong(&v11->_appropriateURLForDerivingRenderedContentURLs, l);
  }

  return v11;
}

- (PHContentEditingOutput)initWithPlaceholderForCreatedAsset:(PHObjectPlaceholder *)placeholderForCreatedAsset
{
  v5 = placeholderForCreatedAsset;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHContentEditingOutput.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"placeholderForCreatedAsset != nil"}];
  }

  v13.receiver = self;
  v13.super_class = PHContentEditingOutput;
  v6 = [(PHContentEditingOutput *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_baseVersion = 0;
    assetMediaType = [(PHObjectPlaceholder *)v5 assetMediaType];
    v7->_mediaType = assetMediaType;
    v9 = [(PHContentEditingOutput *)v7 renderURLWithExtensionForMediaType:assetMediaType];
    renderedContentURL = v7->_renderedContentURL;
    v7->_renderedContentURL = v9;
  }

  return v7;
}

- (PHContentEditingOutput)initWithContentEditingInput:(id)input withOptions:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  optionsCopy = options;
  if (!inputCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHContentEditingOutput.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"contentEditingInput != nil"}];
  }

  v20.receiver = self;
  v20.super_class = PHContentEditingOutput;
  v9 = [(PHContentEditingOutput *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestOptions, options);
    v10->_baseVersion = [inputCopy baseVersion];
    v10->_mediaType = [inputCopy mediaType];
    appropriateURLForDerivingRenderedContentURLs = [inputCopy appropriateURLForDerivingRenderedContentURLs];
    appropriateURLForDerivingRenderedContentURLs = v10->_appropriateURLForDerivingRenderedContentURLs;
    v10->_appropriateURLForDerivingRenderedContentURLs = appropriateURLForDerivingRenderedContentURLs;

    if (([optionsCopy isAsyncAdjustment] & 1) != 0 || objc_msgSend(optionsCopy, "isOnlyChangingOriginalChoice"))
    {
      v10->_isAsyncAdjustment = 1;
    }

    [(PHContentEditingOutput *)v10 _setupRequiredRenderedContentURLsWithEditingInput:inputCopy options:optionsCopy];
    originalResourceChoice = [inputCopy originalResourceChoice];

    if (originalResourceChoice)
    {
      if (v10->_baseVersion)
      {
        p_super = PLPhotoKitGetLog();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_ERROR, "Original resource choice is only valid for an unadjusted base version", buf, 2u);
        }
      }

      else
      {
        originalResourceChoice2 = [inputCopy originalResourceChoice];
        p_super = &v10->_originalResourceChoice->super.super;
        v10->_originalResourceChoice = originalResourceChoice2;
      }
    }

    v16 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(PHContentEditingOutput *)v10 debugDescription];
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "Initialized content editing output:\n%@", buf, 0xCu);
    }
  }

  return v10;
}

+ (id)_renderURLWithExtensionForUniformTypeIdentifierType:(id)type appropriateForURL:(id)l
{
  lCopy = l;
  v7 = [self defaultExtensionForUniformTypeIdentifierType:type];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F0FC60C8;
  }

  v9 = [MEMORY[0x1E69BF2A0] temporaryRenderContentURLForInternalRendersWithExtension:v8 appropriateForURL:lCopy];

  return v9;
}

+ (id)defaultExtensionForUniformTypeIdentifierType:(id)type
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (type)
  {
    v3 = *MEMORY[0x1E6982E00];
    v10[0] = *MEMORY[0x1E6982E58];
    v10[1] = v3;
    v11[0] = @"JPG";
    v11[1] = @"HEIC";
    v4 = *MEMORY[0x1E6983090];
    v10[2] = *MEMORY[0x1E6982F80];
    v10[3] = v4;
    v11[2] = @"MOV";
    v11[3] = @"WAV";
    v5 = MEMORY[0x1E695DF20];
    typeCopy = type;
    v7 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:4];
    v8 = [v7 objectForKeyedSubscript:typeCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_renderURLWithExtensionForMediaType:(int64_t)type useHEICImage:(BOOL)image appropriateForURL:(id)l
{
  switch(type)
  {
    case 3:
      v7 = MEMORY[0x1E6983090];
      goto LABEL_9;
    case 2:
      v7 = MEMORY[0x1E6982F80];
LABEL_9:
      v8 = *v7;
      goto LABEL_11;
    case 1:
      v7 = MEMORY[0x1E6982E00];
      if (!image)
      {
        v7 = MEMORY[0x1E6982E58];
      }

      goto LABEL_9;
  }

  v8 = 0;
LABEL_11:
  v9 = [self _renderURLWithExtensionForUniformTypeIdentifierType:v8 appropriateForURL:l];

  return v9;
}

@end