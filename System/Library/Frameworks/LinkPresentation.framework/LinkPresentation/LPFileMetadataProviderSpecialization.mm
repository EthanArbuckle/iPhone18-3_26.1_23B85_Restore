@interface LPFileMetadataProviderSpecialization
+ (id)_thumbnailQueue;
+ (id)specializedMetadataProviderForResourceWithContext:(id)context;
+ (id)specializedMetadataProviderForURLWithContext:(id)context;
- (void)cleanUpTemporaryFile;
- (void)complete;
- (void)fetchIconAndThumbnailFromQuickLookForURL:(id)l;
- (void)fetchMetadataForReachableFile:(id)file;
- (void)fetchMetadataFromURL:(id)l;
- (void)generateFallbackMetadataForUnreachableFile:(id)file;
- (void)metadataProviderSpecialization:(id)specialization didCompleteWithMetadata:(id)metadata;
- (void)requestQuickLookThumbnailForURL:(id)l size:(CGSize)size badgeType:(unint64_t)type image:(id *)image;
- (void)start;
- (void)updatePreliminaryMetadata;
@end

@implementation LPFileMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)context
{
  contextCopy = context;
  if (([contextCopy fetchIsNotUserInitiated] & 1) != 0 || (objc_msgSend(contextCopy, "postRedirectURL"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isFileURL"), v4, (v5 & 1) == 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(LPMetadataProviderSpecialization *)[LPFileMetadataProviderSpecialization alloc] initWithContext:contextCopy];
  }

  return v6;
}

+ (id)specializedMetadataProviderForResourceWithContext:(id)context
{
  contextCopy = context;
  if (([contextCopy fetchIsNotUserInitiated] & 1) != 0 || !objc_msgSend(contextCopy, "hasLoadedResource") || (objc_msgSend(contextCopy, "MIMEType"), v4 = objc_claimAutoreleasedReturnValue(), v5 = +[LPMIMETypeRegistry isWebPageType:](LPMIMETypeRegistry, "isWebPageType:", v4), v4, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(LPMetadataProviderSpecialization *)[LPFileMetadataProviderSpecialization alloc] initWithContext:contextCopy];
  }

  return v6;
}

+ (id)_thumbnailQueue
{
  if (+[LPFileMetadataProviderSpecialization _thumbnailQueue]::onceToken != -1)
  {
    +[LPFileMetadataProviderSpecialization _thumbnailQueue];
  }

  v3 = +[LPFileMetadataProviderSpecialization _thumbnailQueue]::queue;

  return v3;
}

void __55__LPFileMetadataProviderSpecialization__thumbnailQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.LinkPresentation.FileThumbnailQueue", v2);
  v1 = +[LPFileMetadataProviderSpecialization _thumbnailQueue]::queue;
  +[LPFileMetadataProviderSpecialization _thumbnailQueue]::queue = v0;
}

- (void)start
{
  context = [(LPMetadataProviderSpecialization *)self context];
  fetchIsNotUserInitiated = [context fetchIsNotUserInitiated];

  if (fetchIsNotUserInitiated)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__LPFileMetadataProviderSpecialization_start__block_invoke;
    block[3] = &unk_1E7A35450;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    context2 = [(LPMetadataProviderSpecialization *)self context];
    hasLoadedResource = [context2 hasLoadedResource];

    context3 = [(LPMetadataProviderSpecialization *)self context];
    v10 = context3;
    if (hasLoadedResource)
    {
      webView = [context3 webView];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __45__LPFileMetadataProviderSpecialization_start__block_invoke_2;
      v11[3] = &unk_1E7A375C8;
      v11[4] = self;
      [webView _getMainResourceDataWithCompletionHandler:v11];
    }

    else
    {
      postRedirectURL = [context3 postRedirectURL];
      [(LPFileMetadataProviderSpecialization *)self fetchMetadataFromURL:postRedirectURL];
    }
  }
}

void __45__LPFileMetadataProviderSpecialization_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metadataProviderSpecializationDidFail:*(a1 + 32)];
}

void __45__LPFileMetadataProviderSpecialization_start__block_invoke_2(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = [*(a1 + 32) context];
  v4 = [v3 MIMEType];
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = v4;

  v7 = [LPMIMETypeRegistry fileExtensionForMIMEType:*(*(a1 + 32) + 64)];
  if (![v7 length])
  {
    v8 = [*(a1 + 32) context];
    v9 = [v8 postRedirectURL];
    v10 = [v9 pathExtension];

    v7 = v10;
  }

  v11 = MEMORY[0x1E695DFF8];
  v12 = NSTemporaryDirectory();
  v13 = [MEMORY[0x1E696AFB0] UUID];
  v14 = [v13 UUIDString];
  v15 = [v12 stringByAppendingPathComponent:v14];
  v16 = [v11 fileURLWithPath:v15];
  v17 = *(a1 + 32);
  v18 = *(v17 + 32);
  *(v17 + 32) = v16;

  if ([v7 length])
  {
    v19 = [*(*(a1 + 32) + 32) URLByAppendingPathExtension:v7];
    v20 = *(a1 + 32);
    v21 = *(v20 + 32);
    *(v20 + 32) = v19;
  }

  v22 = [*(a1 + 32) context];
  v23 = [v22 webView];
  v24 = [v23 _isDisplayingStandaloneImageDocument];

  if (v24)
  {
    v25 = [[LPImage alloc] initWithData:v28 MIMEType:*(*(a1 + 32) + 64)];
    v26 = *(a1 + 32);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  [v28 writeToURL:*(*(a1 + 32) + 32) atomically:0];
  [*(a1 + 32) fetchMetadataFromURL:*(*(a1 + 32) + 32)];
}

- (void)requestQuickLookThumbnailForURL:(id)l size:(CGSize)size badgeType:(unint64_t)type image:(id *)image
{
  height = size.height;
  width = size.width;
  lCopy = l;
  v12 = [objc_alloc(MEMORY[0x1E697A0E0]) initWithFileAtURL:lCopy size:4 scale:width representationTypes:{height, 3.0}];
  [v12 setBadgeType:type];
  dispatch_group_enter(self->_fetchGroup);
  mEMORY[0x1E697A0E8] = [MEMORY[0x1E697A0E8] sharedGenerator];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__LPFileMetadataProviderSpecialization_requestQuickLookThumbnailForURL_size_badgeType_image___block_invoke;
  v14[3] = &unk_1E7A375F0;
  v14[4] = self;
  v14[5] = image;
  [mEMORY[0x1E697A0E8] generateBestRepresentationForRequest:v12 completionHandler:v14];
}

void __93__LPFileMetadataProviderSpecialization_requestQuickLookThumbnailForURL_size_badgeType_image___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 CGImage])
  {
    v7 = LPLogChannelFetching();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __93__LPFileMetadataProviderSpecialization_requestQuickLookThumbnailForURL_size_badgeType_image___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v8 = LPLogChannelFetching();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1AE886000, v8, OS_LOG_TYPE_DEFAULT, "LPFileMetadataProviderSpecialization retrieved a thumbnail from QuickLookThumbnailing", v12, 2u);
    }

    v9 = -[LPImage _initWithCGImage:]([LPImage alloc], "_initWithCGImage:", [v5 CGImage]);
    v10 = *(a1 + 40);
    v11 = *v10;
    *v10 = v9;
  }

  dispatch_group_leave(*(*(a1 + 32) + 96));
}

- (void)fetchIconAndThumbnailFromQuickLookForURL:(id)l
{
  lCopy = l;
  if (!self->_originalImage)
  {
    UTI = self->_UTI;
    v5 = self->_MIMEType;
    v6 = UTI;
    if ([LPMIMETypeRegistry isARAssetType:v5])
    {
      v7 = 225.0;
    }

    else
    {
      v7 = [(NSString *)v6 _lp_isEqualIgnoringCase:@"com.apple.watchface"]? 300.0 : 600.0;
    }

    [(LPFileMetadataProviderSpecialization *)self requestQuickLookThumbnailForURL:lCopy size:0 badgeType:&self->_quickLookThumbnail image:300.0, v7];
    if ([LPMIMETypeRegistry isARAssetType:self->_MIMEType])
    {
      [(LPFileMetadataProviderSpecialization *)self requestQuickLookThumbnailForURL:lCopy size:1 badgeType:&self->_smallQuickLookThumbnail image:75.0, 75.0];
    }
  }
}

- (void)fetchMetadataFromURL:(id)l
{
  lCopy = l;
  v5 = [(LPMetadataProviderSpecialization *)self createMetadataWithSpecialization:0];
  metadata = self->_metadata;
  self->_metadata = v5;

  v7 = objc_alloc_init(LPFileMetadata);
  fileMetadata = self->_fileMetadata;
  self->_fileMetadata = v7;

  if (self->_originalImage)
  {
    [(LPFileMetadata *)self->_fileMetadata setThumbnail:?];
  }

  v9 = dispatch_group_create();
  fetchGroup = self->_fetchGroup;
  self->_fetchGroup = v9;

  v11 = self->_fetchGroup;
  v12 = +[LPFileMetadataProviderSpecialization _thumbnailQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__LPFileMetadataProviderSpecialization_fetchMetadataFromURL___block_invoke;
  block[3] = &unk_1E7A35478;
  v17 = lCopy;
  selfCopy = self;
  v13 = lCopy;
  dispatch_group_async(v11, v12, block);

  v14 = self->_fetchGroup;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__LPFileMetadataProviderSpecialization_fetchMetadataFromURL___block_invoke_2;
  v15[3] = &unk_1E7A35450;
  v15[4] = self;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], v15);
}

void __61__LPFileMetadataProviderSpecialization_fetchMetadataFromURL___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) URLByResolvingSymlinksInPath];
  v2 = [v4 checkPromisedItemIsReachableAndReturnError:0];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 fetchMetadataForReachableFile:v4];
  }

  else
  {
    [v3 generateFallbackMetadataForUnreachableFile:v4];
  }
}

uint64_t __61__LPFileMetadataProviderSpecialization_fetchMetadataFromURL___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    [*(v2 + 88) setThumbnail:?];
    v2 = *(a1 + 32);
  }

  if (*(v2 + 56))
  {
    [*(v2 + 88) setSmallThumbnail:?];
    v2 = *(a1 + 32);
  }

  [*(v2 + 80) setSpecialization:*(v2 + 88)];
  v3 = *(a1 + 32);

  return [v3 complete];
}

- (void)fetchMetadataForReachableFile:(id)file
{
  v99[3] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (!self->_UTI)
  {
    if (!self->_MIMEType || ([LPMIMETypeRegistry UTIForMIMEType:?], v11 = objc_claimAutoreleasedReturnValue(), v12 = self->_UTI, self->_UTI = v11, v12, !self->_UTI))
    {
      v96 = 0;
      [fileCopy getPromisedItemResourceValue:&v96 forKey:*MEMORY[0x1E695DC68] error:0];
      v13 = v96;
      v14 = v96;
      objc_storeStrong(&self->_UTI, v13);
      MIMEType = self->_MIMEType;
      if (MIMEType)
      {
        v16 = MIMEType;
      }

      else
      {
        v16 = [LPMIMETypeRegistry MIMETypeForUTI:v14];
      }

      v46 = self->_MIMEType;
      self->_MIMEType = v16;

      if (!self->_UTI)
      {
        pathExtension = [fileCopy pathExtension];
        v48 = [LPMIMETypeRegistry UTIForFileExtension:pathExtension];
        UTI = self->_UTI;
        self->_UTI = v48;

        v50 = self->_MIMEType;
        if (v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = [LPMIMETypeRegistry MIMETypeForUTI:self->_UTI];
        }

        v80 = self->_MIMEType;
        self->_MIMEType = v51;
      }
    }
  }

  context = [(LPMetadataProviderSpecialization *)self context];
  if ([context shouldFetchSubresources])
  {
    shouldUseQuickLookForFileType = [(LPFileMetadataProviderSpecialization *)self shouldUseQuickLookForFileType];

    if (shouldUseQuickLookForFileType)
    {
      [(LPFileMetadataProviderSpecialization *)self fetchIconAndThumbnailFromQuickLookForURL:fileCopy];
    }
  }

  else
  {
  }

  v6 = self->_UTI;
  identifier = [*MEMORY[0x1E6982DC8] identifier];
  v8 = [(NSString *)v6 isEqualToString:identifier];

  if (!v8)
  {
    v9 = [MEMORY[0x1E69CDA18] interactionControllerWithURL:fileCopy];
    icon = [(LPFileMetadata *)self->_fileMetadata icon];
    if (icon)
    {

LABEL_16:
      goto LABEL_17;
    }

    context2 = [(LPMetadataProviderSpecialization *)self context];
    shouldFetchSubresources = [context2 shouldFetchSubresources];

    if (!shouldFetchSubresources)
    {
      goto LABEL_16;
    }

    icons = [(LPImageProperties *)v9 icons];
    lastObject = [icons lastObject];
    v21 = CGImageRetain([lastObject _lp_CGImage]);

    if (v21)
    {
      v9 = objc_alloc_init(LPImageProperties);
      [(LPImageProperties *)v9 setType:5];
      v22 = [[LPImage alloc] _initWithCGImage:v21 properties:v9];
      [(LPFileMetadata *)self->_fileMetadata setIcon:v22];

      CGImageRelease(v21);
      goto LABEL_16;
    }
  }

LABEL_17:
  v23 = *MEMORY[0x1E695DB50];
  v24 = *MEMORY[0x1E695DAA8];
  v99[0] = *MEMORY[0x1E695DB50];
  v99[1] = v24;
  v83 = v24;
  v82 = *MEMORY[0x1E695DB78];
  v99[2] = *MEMORY[0x1E695DB78];
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:3];
  v95 = 0;
  v87 = [fileCopy promisedItemResourceValuesForKeys:v25 error:&v95];
  v84 = v95;

  if (!v87)
  {
    v26 = LPLogChannelFetching();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(LPFileMetadataProviderSpecialization *)v84 fetchMetadataForReachableFile:v26];
    }
  }

  context3 = [(LPMetadataProviderSpecialization *)self context];
  postRedirectURL = [context3 postRedirectURL];
  isFileURL = [postRedirectURL isFileURL];

  if (!isFileURL)
  {
    context4 = [(LPMetadataProviderSpecialization *)self context];
    postRedirectURL2 = [context4 postRedirectURL];
    path = [postRedirectURL2 path];
    lastPathComponent = [path lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    [(LPFileMetadata *)self->_fileMetadata setName:stringByDeletingPathExtension];
LABEL_26:

    goto LABEL_37;
  }

  context5 = [(LPMetadataProviderSpecialization *)self context];
  postRedirectURL3 = [context5 postRedirectURL];
  v33 = *MEMORY[0x1E695DB60];
  v98[0] = *MEMORY[0x1E695DC10];
  v32 = v98[0];
  v98[1] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
  context4 = [postRedirectURL3 promisedItemResourceValuesForKeys:v34 error:0];

  v36 = [context4 objectForKey:v32];
  v37 = v36;
  if (!v36)
  {
    path = [MEMORY[0x1E696AC08] defaultManager];
    lastPathComponent = [(LPMetadataProviderSpecialization *)self context];
    stringByDeletingPathExtension = [lastPathComponent postRedirectURL];
    path2 = [stringByDeletingPathExtension path];
    v43 = [path displayNameAtPath:path2];
    [(LPFileMetadata *)self->_fileMetadata setName:v43];

    postRedirectURL2 = 0;
    goto LABEL_26;
  }

  if (v8)
  {
    postRedirectURL2 = v36;
  }

  else
  {
    v44 = [context4 objectForKey:v33];
    v45 = v44;
    if (v44 && ([v44 BOOLValue] & 1) == 0)
    {
      postRedirectURL2 = [v37 stringByDeletingPathExtension];
    }

    else
    {
      postRedirectURL2 = v37;
    }
  }

  [(LPFileMetadata *)self->_fileMetadata setName:postRedirectURL2];
LABEL_37:

  [(LPFileMetadata *)self->_fileMetadata setType:self->_UTI];
  v52 = [v87 objectForKeyedSubscript:v83];
  [(LPFileMetadata *)self->_fileMetadata setCreationDate:v52];

  v53 = [v87 objectForKeyedSubscript:v23];
  -[LPFileMetadata setSize:](self->_fileMetadata, "setSize:", [v53 unsignedLongLongValue]);

  if (![(LPFileMetadata *)self->_fileMetadata size])
  {
    v54 = [v87 objectForKeyedSubscript:v82];
    bOOLValue = [v54 BOOLValue];

    if (bOOLValue)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v57 = [MEMORY[0x1E695DEC8] arrayWithObject:v23];
      v58 = [defaultManager enumeratorAtURL:fileCopy includingPropertiesForKeys:v57 options:0 errorHandler:0];

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v59 = v58;
      v60 = 0;
      v61 = [v59 countByEnumeratingWithState:&v91 objects:v97 count:16];
      if (v61)
      {
        v62 = *v92;
        do
        {
          for (i = 0; i != v61; ++i)
          {
            if (*v92 != v62)
            {
              objc_enumerationMutation(v59);
            }

            v64 = *(*(&v91 + 1) + 8 * i);
            v90 = 0;
            v65 = [v64 getResourceValue:&v90 forKey:v23 error:0];
            v66 = v90;
            v67 = v66;
            if (v65)
            {
              v60 += [v66 integerValue];
            }
          }

          v61 = [v59 countByEnumeratingWithState:&v91 objects:v97 count:16];
        }

        while (v61);
      }

      [(LPFileMetadata *)self->_fileMetadata setSize:v60];
    }
  }

  [(LPLinkMetadata *)self->_metadata setSpecialization:self->_fileMetadata];
  [(LPFileMetadataProviderSpecialization *)self updatePreliminaryMetadata];
  if ([LPMIMETypeRegistry isMediaType:self->_MIMEType])
  {
    v68 = [LPMetadataProviderSpecializationContext alloc];
    originalURL = [(LPLinkMetadata *)self->_metadata originalURL];
    v69 = self->_MIMEType;
    context6 = [(LPMetadataProviderSpecialization *)self context];
    webView = [context6 webView];
    context7 = [(LPMetadataProviderSpecialization *)self context];
    shouldFetchSubresources2 = [context7 shouldFetchSubresources];
    context8 = [(LPMetadataProviderSpecialization *)self context];
    allowedSpecializations = [context8 allowedSpecializations];
    context9 = [(LPMetadataProviderSpecialization *)self context];
    LOBYTE(v81) = [context9 fetchIsNotUserInitiated];
    v77 = [(LPMetadataProviderSpecializationContext *)v68 initWithOriginalURL:originalURL postRedirectURL:fileCopy MIMEType:v69 webView:webView hasLoadedResource:1 shouldFetchSubresources:shouldFetchSubresources2 allowedSpecializations:allowedSpecializations fetchIsNotUserInitiated:v81];

    v78 = [LPStreamingMediaMetadataProviderSpecialization specializedMetadataProviderForResourceWithContext:v77];
    [v78 setDelegate:self];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__LPFileMetadataProviderSpecialization_fetchMetadataForReachableFile___block_invoke;
    block[3] = &unk_1E7A35450;
    v89 = v78;
    v79 = v78;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    dispatch_group_enter(self->_fetchGroup);
  }
}

- (void)generateFallbackMetadataForUnreachableFile:(id)file
{
  fileCopy = file;
  pathExtension = [fileCopy pathExtension];
  v5 = [LPMIMETypeRegistry UTIForFileExtension:pathExtension];
  UTI = self->_UTI;
  self->_UTI = v5;

  [(LPFileMetadata *)self->_fileMetadata setType:self->_UTI];
  context = [(LPMetadataProviderSpecialization *)self context];
  postRedirectURL = [context postRedirectURL];
  path = [postRedirectURL path];
  lastPathComponent = [path lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  [(LPFileMetadata *)self->_fileMetadata setName:stringByDeletingPathExtension];

  context2 = [(LPMetadataProviderSpecialization *)self context];
  LODWORD(postRedirectURL) = [context2 shouldFetchSubresources];

  if (postRedirectURL)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69CDA18]);
    [v13 setUTI:self->_UTI];
    icons = [v13 icons];
    lastObject = [icons lastObject];
    v16 = CGImageRetain([lastObject _lp_CGImage]);

    if (v16)
    {
      v17 = objc_alloc_init(LPImageProperties);
      [(LPImageProperties *)v17 setType:5];
      v18 = [[LPImage alloc] _initWithCGImage:v16 properties:v17];
      [(LPFileMetadata *)self->_fileMetadata setIcon:v18];

      CGImageRelease(v16);
    }
  }
}

- (void)cleanUpTemporaryFile
{
  if (self->_temporaryFileURL)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:self->_temporaryFileURL error:0];
  }
}

- (void)updatePreliminaryMetadata
{
  v3 = [(LPLinkMetadata *)self->_metadata copy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__LPFileMetadataProviderSpecialization_updatePreliminaryMetadata__block_invoke;
  v5[3] = &unk_1E7A35478;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __65__LPFileMetadataProviderSpecialization_updatePreliminaryMetadata__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metadataProviderSpecialization:*(a1 + 32) didFetchPreliminaryMetadata:*(a1 + 40)];
}

- (void)complete
{
  [(LPFileMetadataProviderSpecialization *)self cleanUpTemporaryFile];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__LPFileMetadataProviderSpecialization_complete__block_invoke;
  block[3] = &unk_1E7A35450;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__LPFileMetadataProviderSpecialization_complete__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metadataProviderSpecialization:*(a1 + 32) didCompleteWithMetadata:*(*(a1 + 32) + 80)];
}

- (void)metadataProviderSpecialization:(id)specialization didCompleteWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  video = [metadataCopy video];
  [(LPLinkMetadata *)self->_metadata setVideo:video];

  videoMetadata = [metadataCopy videoMetadata];
  [(LPLinkMetadata *)self->_metadata setVideoMetadata:videoMetadata];

  audio = [metadataCopy audio];
  [(LPLinkMetadata *)self->_metadata setAudio:audio];

  audioMetadata = [metadataCopy audioMetadata];
  [(LPLinkMetadata *)self->_metadata setAudioMetadata:audioMetadata];

  dispatch_group_leave(self->_fetchGroup);
}

void __93__LPFileMetadataProviderSpecialization_requestQuickLookThumbnailForURL_size_badgeType_image___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "LPFileMetadataProviderSpecialization failed to retrieve a thumbnail from QuickLookThumbnailing (%@)", &v2, 0xCu);
}

- (void)fetchMetadataForReachableFile:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve size and creation date of file: %@", &v2, 0xCu);
}

@end