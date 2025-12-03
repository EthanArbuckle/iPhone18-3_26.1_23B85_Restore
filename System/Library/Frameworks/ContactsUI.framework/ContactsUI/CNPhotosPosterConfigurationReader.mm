@interface CNPhotosPosterConfigurationReader
+ (id)compoundLayerStackFromURL:(id)l;
+ (id)faceRectsFromUserInfo:(id)info;
+ (id)facesFromConfiguration:(id)configuration;
+ (id)userInfoFromConfiguration:(id)configuration;
- (BOOL)hasFaceRectInPosterSnapshot;
- (CGRect)denormalizeFaceRect:(CGRect)rect toOriginalImageSize:(CGSize)size;
- (CGRect)faceRect:(CGRect)rect forFullExtentImageSize:(CGSize)size fromOriginalImageSize:(CGSize)imageSize zoomOut:(BOOL)out;
- (CGRect)faceRectInPosterSnapshot;
- (CGRect)fullExtentPreviewImageFaceRect;
- (CGRect)fullExtentPreviewImageFaceRectFromConfiguration;
- (CGRect)transformFaceRectToTopLeftOrigin:(CGRect)origin withSize:(CGSize)size;
- (CGSize)fullExtentPreviewImageSize;
- (CNPhotosPosterConfigurationReader)initWithPosterConfiguration:(id)configuration;
- (NSData)fullExtentPreviewImageData;
- (double)faceRectInPosterSnapshotPercentFromTop;
- (id)faceRectInPosterSnapshotFromConfiguration;
- (id)fullExtentPreviewImageDataFromConfiguration;
@end

@implementation CNPhotosPosterConfigurationReader

- (CGRect)transformFaceRectToTopLeftOrigin:(CGRect)origin withSize:(CGSize)size
{
  height = size.height;
  v5 = origin.size.height;
  width = origin.size.width;
  y = origin.origin.y;
  x = origin.origin.x;
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, 1.0, -1.0);
  v9 = v11;
  CGAffineTransformTranslate(&v10, &v9, 0.0, -height);
  v11 = v10;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = v5;
  return CGRectApplyAffineTransform(v12, &v10);
}

- (CGRect)denormalizeFaceRect:(CGRect)rect toOriginalImageSize:(CGSize)size
{
  v4 = rect.origin.x * size.width;
  v5 = rect.origin.y * size.height;
  v6 = rect.size.width * size.width;
  v7 = rect.size.height * size.height;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)faceRectInPosterSnapshotFromConfiguration
{
  v3 = objc_opt_class();
  photosConfiguration = [(CNPhotosPosterConfigurationReader *)self photosConfiguration];
  v5 = [v3 facesFromConfiguration:photosConfiguration];

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_opt_class();
    wallpaperURL = [(CNPhotosPosterConfigurationReader *)self wallpaperURL];
    v9 = [v7 compoundLayerStackFromURL:wallpaperURL];

    if (v9)
    {
      portraitLayerStack = [v9 portraitLayerStack];
      v11 = portraitLayerStack;
      if (portraitLayerStack)
      {
        backgroundLayer = [portraitLayerStack backgroundLayer];
        objc_opt_class();
        v13 = backgroundLayer;
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        image = [v15 image];
        Width = CVPixelBufferGetWidth(image);
        Height = CVPixelBufferGetHeight(image);
        layout = [v11 layout];
        [layout imageSize];
        v21 = v20;
        v23 = v22;
        [layout visibleFrame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        firstObject = [v5 firstObject];
        memset(&v46, 0, sizeof(v46));
        CGRectMakeWithDictionaryRepresentation(firstObject, &v46);
        [(CNPhotosPosterConfigurationReader *)self denormalizeFaceRect:*&v46.origin toOriginalImageSize:*&v46.size, v21, v23];
        v46.origin.x = Width / v29 * (v33 - v25);
        v46.origin.y = Height / v31 * (v34 - v27);
        v46.size.width = Width / v29 * v35;
        v46.size.height = Height / v31 * v36;
        [(CNPhotosPosterConfigurationReader *)self transformFaceRectToTopLeftOrigin:*&v46.origin withSize:*&v46.size];
        [MEMORY[0x1E6996738] squareCropRect:v37 toFitSize:{v38, v39, v40}];
        v46.origin.x = v41;
        v46.origin.y = v42;
        v46.size.width = v43;
        v46.size.height = v44;
        v6 = objc_alloc_init(CNPhotosPosterConfigurationReaderFaceRectResult);
        [(CNPhotosPosterConfigurationReaderFaceRectResult *)v6 setPercentFromTop:v46.origin.y / Height];
        [(CNPhotosPosterConfigurationReaderFaceRectResult *)v6 setFaceRect:*&v46.origin, *&v46.size];
      }

      else
      {
        v13 = CNUILogPosters();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v46.origin.x) = 0;
          _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "Could not load portrait layer stack", &v46, 2u);
        }

        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)hasFaceRectInPosterSnapshot
{
  [(CNPhotosPosterConfigurationReader *)self faceRectInPosterSnapshot];
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  if (CGRectEqualToRect(v7, *MEMORY[0x1E695F058]))
  {
    return 0;
  }

  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return !CGRectIsNull(v8);
}

- (double)faceRectInPosterSnapshotPercentFromTop
{
  faceRectInPosterSnapshotPercentFromTop = self->_faceRectInPosterSnapshotPercentFromTop;
  if (faceRectInPosterSnapshotPercentFromTop == 0.0)
  {
    faceRectInPosterSnapshotFromConfiguration = [(CNPhotosPosterConfigurationReader *)self faceRectInPosterSnapshotFromConfiguration];
    [faceRectInPosterSnapshotFromConfiguration faceRect];
    self->_faceRectInPosterSnapshot.origin.x = v5;
    self->_faceRectInPosterSnapshot.origin.y = v6;
    self->_faceRectInPosterSnapshot.size.width = v7;
    self->_faceRectInPosterSnapshot.size.height = v8;
    [faceRectInPosterSnapshotFromConfiguration percentFromTop];
    faceRectInPosterSnapshotPercentFromTop = v9;
    self->_faceRectInPosterSnapshotPercentFromTop = v9;
  }

  return faceRectInPosterSnapshotPercentFromTop;
}

- (CGRect)faceRectInPosterSnapshot
{
  if (CGRectEqualToRect(self->_faceRectInPosterSnapshot, *MEMORY[0x1E695F058]))
  {
    faceRectInPosterSnapshotFromConfiguration = [(CNPhotosPosterConfigurationReader *)self faceRectInPosterSnapshotFromConfiguration];
    [faceRectInPosterSnapshotFromConfiguration faceRect];
    self->_faceRectInPosterSnapshot.origin.x = v4;
    self->_faceRectInPosterSnapshot.origin.y = v5;
    self->_faceRectInPosterSnapshot.size.width = v6;
    self->_faceRectInPosterSnapshot.size.height = v7;
    [faceRectInPosterSnapshotFromConfiguration percentFromTop];
    self->_faceRectInPosterSnapshotPercentFromTop = v8;
    x = self->_faceRectInPosterSnapshot.origin.x;
    y = self->_faceRectInPosterSnapshot.origin.y;
    width = self->_faceRectInPosterSnapshot.size.width;
    height = self->_faceRectInPosterSnapshot.size.height;
  }

  else
  {
    x = self->_faceRectInPosterSnapshot.origin.x;
    y = self->_faceRectInPosterSnapshot.origin.y;
    width = self->_faceRectInPosterSnapshot.size.width;
    height = self->_faceRectInPosterSnapshot.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)faceRect:(CGRect)rect forFullExtentImageSize:(CGSize)size fromOriginalImageSize:(CGSize)imageSize zoomOut:(BOOL)out
{
  outCopy = out;
  height = imageSize.height;
  width = imageSize.width;
  v9 = size.height;
  v10 = size.width;
  [(CNPhotosPosterConfigurationReader *)self denormalizeFaceRect:rect.origin.x toOriginalImageSize:rect.origin.y, rect.size.width, rect.size.height, imageSize.width, imageSize.height];
  [CNPhotosPosterConfigurationReader transformFaceRectToTopLeftOrigin:"transformFaceRectToTopLeftOrigin:withSize:" withSize:?];
  if (width != v10 || height != v9)
  {
    v12 = v10 / width * v12;
    v13 = v10 / width * v13;
    v14 = v10 / width * v14;
    v15 = v10 / width * v15;
  }

  if (outCopy)
  {
    v14 = v14 * 3.0;
    v17 = v15 * 3.0;
    if (v14 >= v17)
    {
      v14 = v17;
    }

    v12 = v12 - v14 * 0.3;
    v13 = v13 - v14 * 0.3;
    v15 = v14;
  }

  v18 = MEMORY[0x1E6996738];

  [v18 squareCropRect:v12 toFitSize:{v13, v14, v15, v10, v9}];
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)fullExtentPreviewImageFaceRectFromConfiguration
{
  v3 = objc_opt_class();
  photosConfiguration = [(CNPhotosPosterConfigurationReader *)self photosConfiguration];
  v5 = [v3 facesFromConfiguration:photosConfiguration];

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v10 = objc_opt_class();
    wallpaperURL = [(CNPhotosPosterConfigurationReader *)self wallpaperURL];
    v12 = [v10 compoundLayerStackFromURL:wallpaperURL];

    if (v12)
    {
      layout = [v12 layout];
      [layout imageSize];
      v15 = v14;
      v17 = v16;
      firstObject = [v5 firstObject];
      memset(&v29, 0, sizeof(v29));
      CGRectMakeWithDictionaryRepresentation(firstObject, &v29);
      [(CNPhotosPosterConfigurationReader *)self fullExtentPreviewImageSize];
      [(CNPhotosPosterConfigurationReader *)self faceRect:1 forFullExtentImageSize:*&v29.origin fromOriginalImageSize:*&v29.size zoomOut:v19, v20, v15, v17];
      v6 = v21;
      v7 = v22;
      v8 = v23;
      v9 = v24;
    }

    else
    {
      v6 = *MEMORY[0x1E695F058];
      v7 = *(MEMORY[0x1E695F058] + 8);
      v8 = *(MEMORY[0x1E695F058] + 16);
      v9 = *(MEMORY[0x1E695F058] + 24);
    }
  }

  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)fullExtentPreviewImageDataFromConfiguration
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v3 = getPISegmentationClass_softClass;
  v19 = getPISegmentationClass_softClass;
  if (!getPISegmentationClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v21 = __getPISegmentationClass_block_invoke;
    v22 = &unk_1E74E7518;
    v23 = &v16;
    __getPISegmentationClass_block_invoke(&buf);
    v3 = v17[3];
  }

  v4 = v3;
  _Block_object_dispose(&v16, 8);
  wallpaperURL = [(CNPhotosPosterConfigurationReader *)self wallpaperURL];
  v15 = 0;
  v6 = [v3 createFullExtentPreviewImageForWallpaperAtURL:wallpaperURL error:&v15];
  v7 = v15;

  if (v6)
  {
    v8 = objc_opt_new();
    v9 = CGImageDestinationCreateWithData(v8, @"public.jpeg", 1uLL, 0);
    CGImageDestinationAddImage(v9, v6, 0);
    CGImageDestinationFinalize(v9);
    if (v9)
    {
      CFRelease(v9);
    }

    Width = CGImageGetWidth(v6);
    Height = CGImageGetHeight(v6);
    CFRelease(v6);
    v12 = objc_alloc_init(CNPhotosPosterConfigurationReaderPreviewImageResult);
    v13 = [(__CFData *)v8 copy];
    [(CNPhotosPosterConfigurationReaderPreviewImageResult *)v12 setImageData:v13];

    [(CNPhotosPosterConfigurationReaderPreviewImageResult *)v12 setImageSize:Width, Height];
  }

  else
  {
    v8 = CNUILogPosters();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "[PISegmentation createFullSizePreviewImageForWallpaperAtURL:error:] failed: %@", &buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (CGRect)fullExtentPreviewImageFaceRect
{
  if (CGRectEqualToRect(self->_fullExtentPreviewImageFaceRect, *MEMORY[0x1E695F058]))
  {
    [(CNPhotosPosterConfigurationReader *)self fullExtentPreviewImageFaceRectFromConfiguration];
    self->_fullExtentPreviewImageFaceRect.origin.x = x;
    self->_fullExtentPreviewImageFaceRect.origin.y = y;
    self->_fullExtentPreviewImageFaceRect.size.width = width;
    self->_fullExtentPreviewImageFaceRect.size.height = height;
  }

  else
  {
    width = self->_fullExtentPreviewImageFaceRect.size.width;
    height = self->_fullExtentPreviewImageFaceRect.size.height;
    x = self->_fullExtentPreviewImageFaceRect.origin.x;
    y = self->_fullExtentPreviewImageFaceRect.origin.y;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)fullExtentPreviewImageSize
{
  width = self->_fullExtentPreviewImageSize.width;
  height = self->_fullExtentPreviewImageSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    fullExtentPreviewImageDataFromConfiguration = [(CNPhotosPosterConfigurationReader *)self fullExtentPreviewImageDataFromConfiguration];
    imageData = [fullExtentPreviewImageDataFromConfiguration imageData];
    fullExtentPreviewImageData = self->_fullExtentPreviewImageData;
    self->_fullExtentPreviewImageData = imageData;

    [fullExtentPreviewImageDataFromConfiguration imageSize];
    width = v9;
    height = v10;
    self->_fullExtentPreviewImageSize.width = v9;
    self->_fullExtentPreviewImageSize.height = v10;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (NSData)fullExtentPreviewImageData
{
  v3 = self->_fullExtentPreviewImageData;
  if (!v3)
  {
    fullExtentPreviewImageDataFromConfiguration = [(CNPhotosPosterConfigurationReader *)self fullExtentPreviewImageDataFromConfiguration];
    imageData = [fullExtentPreviewImageDataFromConfiguration imageData];
    fullExtentPreviewImageData = self->_fullExtentPreviewImageData;
    self->_fullExtentPreviewImageData = imageData;

    [fullExtentPreviewImageDataFromConfiguration imageSize];
    self->_fullExtentPreviewImageSize.width = v7;
    self->_fullExtentPreviewImageSize.height = v8;
    v3 = self->_fullExtentPreviewImageData;
  }

  return v3;
}

- (CNPhotosPosterConfigurationReader)initWithPosterConfiguration:(id)configuration
{
  v26 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = CNPhotosPosterConfigurationReader;
  v6 = [(CNPhotosPosterConfigurationReader *)&v21 init];
  if (v6)
  {
    assetDirectory = [configurationCopy assetDirectory];
    v20 = 0;
    v8 = [MEMORY[0x1E69C07E8] loadFromURL:assetDirectory error:&v20];
    v9 = v20;
    if (v8)
    {
      objc_storeStrong(&v6->_photosConfiguration, v8);
      media = [v8 media];
      v11 = [media count];

      if (v11 != 1)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v6 file:@"CNPhotosPosterConfigurationReader.m" lineNumber:70 description:@"ERROR: expected the poster config to have exactly one media"];
      }

      media2 = [v8 media];
      v13 = [media2 objectAtIndexedSubscript:0];

      subpath = [v13 subpath];
      v15 = [assetDirectory URLByAppendingPathComponent:subpath];

      if (v15)
      {
        objc_storeStrong(&v6->_wallpaperURL, v15);
        v16 = v6;
      }

      else
      {
        v17 = CNUILogPosters();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = configurationCopy;
          _os_log_error_impl(&dword_199A75000, v17, OS_LOG_TYPE_ERROR, "Error finding wallpaper URL for posterConfig: %@", buf, 0xCu);
        }

        v16 = 0;
      }
    }

    else
    {
      v13 = CNUILogPosters();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = assetDirectory;
        v24 = 2112;
        v25 = v9;
        _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "Failed to load photos poster config at %@: error %@", buf, 0x16u);
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)facesFromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [objc_opt_class() userInfoFromConfiguration:configurationCopy];

  if (v4)
  {
    v5 = [objc_opt_class() faceRectsFromUserInfo:v4];
    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

+ (id)faceRectsFromUserInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:@"regions"];
  v5 = [v4 objectForKeyedSubscript:@"faces"];

  v6 = *MEMORY[0x1E6996530];
  if ((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], v5))
  {
    v7 = [infoCopy objectForKeyedSubscript:@"regions"];
    v8 = [v7 objectForKeyedSubscript:@"pets"];

    v5 = v8;
  }

  if ((*(v6 + 16))(v6, v5))
  {
    v9 = CNUILogPosters();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_debug_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEBUG, "No face rect found, userInfo contained no faces", v12, 2u);
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

+ (id)compoundLayerStackFromURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = getPISegmentationLoaderClass_softClass;
  v15 = getPISegmentationLoaderClass_softClass;
  if (!getPISegmentationLoaderClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPISegmentationLoaderClass_block_invoke;
    v17 = &unk_1E74E7518;
    v18 = &v12;
    __getPISegmentationLoaderClass_block_invoke(buf);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  v11 = 0;
  v6 = [v4 loadCompoundLayerStackFromWallpaperURL:lCopy options:0 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = CNUILogPosters();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = lCopy;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "Could not could not load layer stack at %@: error %@", buf, 0x16u);
    }
  }

  return v6;
}

+ (id)userInfoFromConfiguration:(id)configuration
{
  userInfo = [configuration userInfo];
  v4 = userInfo;
  if (userInfo)
  {
    v5 = userInfo;
  }

  else
  {
    v6 = CNUILogPosters();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_199A75000, v6, OS_LOG_TYPE_ERROR, "Could not find poster configuration userInfo", v8, 2u);
    }
  }

  return v4;
}

@end