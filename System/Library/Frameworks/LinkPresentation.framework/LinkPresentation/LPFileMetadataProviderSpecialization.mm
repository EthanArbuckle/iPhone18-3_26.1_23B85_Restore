@interface LPFileMetadataProviderSpecialization
+ (id)_thumbnailQueue;
+ (id)specializedMetadataProviderForResourceWithContext:(id)a3;
+ (id)specializedMetadataProviderForURLWithContext:(id)a3;
- (void)cleanUpTemporaryFile;
- (void)complete;
- (void)fetchIconAndThumbnailFromQuickLookForURL:(id)a3;
- (void)fetchMetadataForReachableFile:(id)a3;
- (void)fetchMetadataFromURL:(id)a3;
- (void)generateFallbackMetadataForUnreachableFile:(id)a3;
- (void)metadataProviderSpecialization:(id)a3 didCompleteWithMetadata:(id)a4;
- (void)requestQuickLookThumbnailForURL:(id)a3 size:(CGSize)a4 badgeType:(unint64_t)a5 image:(id *)a6;
- (void)start;
- (void)updatePreliminaryMetadata;
@end

@implementation LPFileMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)a3
{
  v3 = a3;
  if (([v3 fetchIsNotUserInitiated] & 1) != 0 || (objc_msgSend(v3, "postRedirectURL"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isFileURL"), v4, (v5 & 1) == 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(LPMetadataProviderSpecialization *)[LPFileMetadataProviderSpecialization alloc] initWithContext:v3];
  }

  return v6;
}

+ (id)specializedMetadataProviderForResourceWithContext:(id)a3
{
  v3 = a3;
  if (([v3 fetchIsNotUserInitiated] & 1) != 0 || !objc_msgSend(v3, "hasLoadedResource") || (objc_msgSend(v3, "MIMEType"), v4 = objc_claimAutoreleasedReturnValue(), v5 = +[LPMIMETypeRegistry isWebPageType:](LPMIMETypeRegistry, "isWebPageType:", v4), v4, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(LPMetadataProviderSpecialization *)[LPFileMetadataProviderSpecialization alloc] initWithContext:v3];
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
  v3 = [(LPMetadataProviderSpecialization *)self context];
  v4 = [v3 fetchIsNotUserInitiated];

  if (v4)
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
    v5 = [(LPMetadataProviderSpecialization *)self context];
    v6 = [v5 hasLoadedResource];

    v7 = [(LPMetadataProviderSpecialization *)self context];
    v10 = v7;
    if (v6)
    {
      v8 = [v7 webView];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __45__LPFileMetadataProviderSpecialization_start__block_invoke_2;
      v11[3] = &unk_1E7A375C8;
      v11[4] = self;
      [v8 _getMainResourceDataWithCompletionHandler:v11];
    }

    else
    {
      v9 = [v7 postRedirectURL];
      [(LPFileMetadataProviderSpecialization *)self fetchMetadataFromURL:v9];
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

- (void)requestQuickLookThumbnailForURL:(id)a3 size:(CGSize)a4 badgeType:(unint64_t)a5 image:(id *)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = [objc_alloc(MEMORY[0x1E697A0E0]) initWithFileAtURL:v11 size:4 scale:width representationTypes:{height, 3.0}];
  [v12 setBadgeType:a5];
  dispatch_group_enter(self->_fetchGroup);
  v13 = [MEMORY[0x1E697A0E8] sharedGenerator];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__LPFileMetadataProviderSpecialization_requestQuickLookThumbnailForURL_size_badgeType_image___block_invoke;
  v14[3] = &unk_1E7A375F0;
  v14[4] = self;
  v14[5] = a6;
  [v13 generateBestRepresentationForRequest:v12 completionHandler:v14];
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

- (void)fetchIconAndThumbnailFromQuickLookForURL:(id)a3
{
  v8 = a3;
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

    [(LPFileMetadataProviderSpecialization *)self requestQuickLookThumbnailForURL:v8 size:0 badgeType:&self->_quickLookThumbnail image:300.0, v7];
    if ([LPMIMETypeRegistry isARAssetType:self->_MIMEType])
    {
      [(LPFileMetadataProviderSpecialization *)self requestQuickLookThumbnailForURL:v8 size:1 badgeType:&self->_smallQuickLookThumbnail image:75.0, 75.0];
    }
  }
}

- (void)fetchMetadataFromURL:(id)a3
{
  v4 = a3;
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
  v17 = v4;
  v18 = self;
  v13 = v4;
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

- (void)fetchMetadataForReachableFile:(id)a3
{
  v99[3] = *MEMORY[0x1E69E9840];
  v86 = a3;
  if (!self->_UTI)
  {
    if (!self->_MIMEType || ([LPMIMETypeRegistry UTIForMIMEType:?], v11 = objc_claimAutoreleasedReturnValue(), v12 = self->_UTI, self->_UTI = v11, v12, !self->_UTI))
    {
      v96 = 0;
      [v86 getPromisedItemResourceValue:&v96 forKey:*MEMORY[0x1E695DC68] error:0];
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
        v47 = [v86 pathExtension];
        v48 = [LPMIMETypeRegistry UTIForFileExtension:v47];
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

  v4 = [(LPMetadataProviderSpecialization *)self context];
  if ([v4 shouldFetchSubresources])
  {
    v5 = [(LPFileMetadataProviderSpecialization *)self shouldUseQuickLookForFileType];

    if (v5)
    {
      [(LPFileMetadataProviderSpecialization *)self fetchIconAndThumbnailFromQuickLookForURL:v86];
    }
  }

  else
  {
  }

  v6 = self->_UTI;
  v7 = [*MEMORY[0x1E6982DC8] identifier];
  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
    v9 = [MEMORY[0x1E69CDA18] interactionControllerWithURL:v86];
    v10 = [(LPFileMetadata *)self->_fileMetadata icon];
    if (v10)
    {

LABEL_16:
      goto LABEL_17;
    }

    v17 = [(LPMetadataProviderSpecialization *)self context];
    v18 = [v17 shouldFetchSubresources];

    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = [(LPImageProperties *)v9 icons];
    v20 = [v19 lastObject];
    v21 = CGImageRetain([v20 _lp_CGImage]);

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
  v87 = [v86 promisedItemResourceValuesForKeys:v25 error:&v95];
  v84 = v95;

  if (!v87)
  {
    v26 = LPLogChannelFetching();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(LPFileMetadataProviderSpecialization *)v84 fetchMetadataForReachableFile:v26];
    }
  }

  v27 = [(LPMetadataProviderSpecialization *)self context];
  v28 = [v27 postRedirectURL];
  v29 = [v28 isFileURL];

  if (!v29)
  {
    v35 = [(LPMetadataProviderSpecialization *)self context];
    v38 = [v35 postRedirectURL];
    v39 = [v38 path];
    v40 = [v39 lastPathComponent];
    v41 = [v40 stringByDeletingPathExtension];
    [(LPFileMetadata *)self->_fileMetadata setName:v41];
LABEL_26:

    goto LABEL_37;
  }

  v30 = [(LPMetadataProviderSpecialization *)self context];
  v31 = [v30 postRedirectURL];
  v33 = *MEMORY[0x1E695DB60];
  v98[0] = *MEMORY[0x1E695DC10];
  v32 = v98[0];
  v98[1] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
  v35 = [v31 promisedItemResourceValuesForKeys:v34 error:0];

  v36 = [v35 objectForKey:v32];
  v37 = v36;
  if (!v36)
  {
    v39 = [MEMORY[0x1E696AC08] defaultManager];
    v40 = [(LPMetadataProviderSpecialization *)self context];
    v41 = [v40 postRedirectURL];
    v42 = [v41 path];
    v43 = [v39 displayNameAtPath:v42];
    [(LPFileMetadata *)self->_fileMetadata setName:v43];

    v38 = 0;
    goto LABEL_26;
  }

  if (v8)
  {
    v38 = v36;
  }

  else
  {
    v44 = [v35 objectForKey:v33];
    v45 = v44;
    if (v44 && ([v44 BOOLValue] & 1) == 0)
    {
      v38 = [v37 stringByDeletingPathExtension];
    }

    else
    {
      v38 = v37;
    }
  }

  [(LPFileMetadata *)self->_fileMetadata setName:v38];
LABEL_37:

  [(LPFileMetadata *)self->_fileMetadata setType:self->_UTI];
  v52 = [v87 objectForKeyedSubscript:v83];
  [(LPFileMetadata *)self->_fileMetadata setCreationDate:v52];

  v53 = [v87 objectForKeyedSubscript:v23];
  -[LPFileMetadata setSize:](self->_fileMetadata, "setSize:", [v53 unsignedLongLongValue]);

  if (![(LPFileMetadata *)self->_fileMetadata size])
  {
    v54 = [v87 objectForKeyedSubscript:v82];
    v55 = [v54 BOOLValue];

    if (v55)
    {
      v56 = [MEMORY[0x1E696AC08] defaultManager];
      v57 = [MEMORY[0x1E695DEC8] arrayWithObject:v23];
      v58 = [v56 enumeratorAtURL:v86 includingPropertiesForKeys:v57 options:0 errorHandler:0];

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
    v85 = [(LPLinkMetadata *)self->_metadata originalURL];
    v69 = self->_MIMEType;
    v70 = [(LPMetadataProviderSpecialization *)self context];
    v71 = [v70 webView];
    v72 = [(LPMetadataProviderSpecialization *)self context];
    v73 = [v72 shouldFetchSubresources];
    v74 = [(LPMetadataProviderSpecialization *)self context];
    v75 = [v74 allowedSpecializations];
    v76 = [(LPMetadataProviderSpecialization *)self context];
    LOBYTE(v81) = [v76 fetchIsNotUserInitiated];
    v77 = [(LPMetadataProviderSpecializationContext *)v68 initWithOriginalURL:v85 postRedirectURL:v86 MIMEType:v69 webView:v71 hasLoadedResource:1 shouldFetchSubresources:v73 allowedSpecializations:v75 fetchIsNotUserInitiated:v81];

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

- (void)generateFallbackMetadataForUnreachableFile:(id)a3
{
  v19 = a3;
  v4 = [v19 pathExtension];
  v5 = [LPMIMETypeRegistry UTIForFileExtension:v4];
  UTI = self->_UTI;
  self->_UTI = v5;

  [(LPFileMetadata *)self->_fileMetadata setType:self->_UTI];
  v7 = [(LPMetadataProviderSpecialization *)self context];
  v8 = [v7 postRedirectURL];
  v9 = [v8 path];
  v10 = [v9 lastPathComponent];
  v11 = [v10 stringByDeletingPathExtension];
  [(LPFileMetadata *)self->_fileMetadata setName:v11];

  v12 = [(LPMetadataProviderSpecialization *)self context];
  LODWORD(v8) = [v12 shouldFetchSubresources];

  if (v8)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69CDA18]);
    [v13 setUTI:self->_UTI];
    v14 = [v13 icons];
    v15 = [v14 lastObject];
    v16 = CGImageRetain([v15 _lp_CGImage]);

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
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    [v3 removeItemAtURL:self->_temporaryFileURL error:0];
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

- (void)metadataProviderSpecialization:(id)a3 didCompleteWithMetadata:(id)a4
{
  v9 = a4;
  v5 = [v9 video];
  [(LPLinkMetadata *)self->_metadata setVideo:v5];

  v6 = [v9 videoMetadata];
  [(LPLinkMetadata *)self->_metadata setVideoMetadata:v6];

  v7 = [v9 audio];
  [(LPLinkMetadata *)self->_metadata setAudio:v7];

  v8 = [v9 audioMetadata];
  [(LPLinkMetadata *)self->_metadata setAudioMetadata:v8];

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