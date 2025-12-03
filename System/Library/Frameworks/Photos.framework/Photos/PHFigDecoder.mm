@interface PHFigDecoder
+ (id)sharedDecoder;
- (id)decodeImageFromData:(id)data orFileURL:(id)l options:(id)options completion:(id)completion;
- (void)cancelInFlightAsyncDecodeForRequestHandle:(id)handle;
@end

@implementation PHFigDecoder

+ (id)sharedDecoder
{
  if (sharedDecoder_s_onceToken_50341 != -1)
  {
    dispatch_once(&sharedDecoder_s_onceToken_50341, &__block_literal_global_50342);
  }

  v3 = sharedDecoder_s_shared_50343;

  return v3;
}

uint64_t __29__PHFigDecoder_sharedDecoder__block_invoke()
{
  sharedDecoder_s_shared_50343 = objc_alloc_init(PHFigDecoder);

  return MEMORY[0x1EEE66BB8]();
}

- (void)cancelInFlightAsyncDecodeForRequestHandle:(id)handle
{
  handleCopy = handle;
  if ([handleCopy figRequestID] && objc_msgSend(handleCopy, "figDecompressionContainer"))
  {
    [handleCopy figRequestID];
    CMPhotoDecompressionContainerCancelAsyncRequest();
    [handleCopy figGainMapRequestID];
    CMPhotoDecompressionContainerCancelAsyncRequest();
  }
}

- (id)decodeImageFromData:(id)data orFileURL:(id)l options:(id)options completion:(id)completion
{
  v65 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  lCopy = l;
  optionsCopy = options;
  completionCopy = completion;
  PFSharedFigDecodeSession();
  shouldLoadGainMap = [optionsCopy shouldLoadGainMap];
  if (lCopy)
  {
    v15 = lCopy;
  }

  else
  {
    v15 = dataCopy;
  }

  v59 = v15;
  v16 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A0040365111DBuLL);
  objc_storeStrong(v16 + 6, options);
  *v16 = [optionsCopy maximumLongSideLength];
  *(v16 + 1) = [optionsCopy resizeMode];
  *(v16 + 16) = [optionsCopy optimizeForDrawing];
  *(v16 + 17) = [optionsCopy highPriority];
  *(v16 + 18) = [optionsCopy waitUntilComplete];
  v17 = shouldLoadGainMap;
  objc_storeStrong(v16 + 8, data);
  lCopy2 = l;
  v19 = completionCopy;
  objc_storeStrong(v16 + 7, lCopy2);
  v20 = _Block_copy(completionCopy);
  v21 = *(v16 + 9);
  *(v16 + 9) = v20;

  *(v16 + 11) = 0;
  *(v16 + 19) = [optionsCopy allowFallbackDecoder];
  *(v16 + 20) = [optionsCopy preferSWDecode];
  *(v16 + 21) = [optionsCopy useLowMemoryMode];
  *(v16 + 12) = 0;
  if (shouldLoadGainMap)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  *(v16 + 8) = v22;
  atomic_store(0, v16 + 9);
  CMPhotoDecompressionSessionReserveRequestID();
  v23 = _figDecodeOptionsFromContext(v16, 0, 0);
  if (![optionsCopy waitUntilComplete])
  {
    cf = 0;
    Container = CMPhotoDecompressionSessionCreateContainer();
    if (Container)
    {
      v35 = Container;
      v36 = PLImageManagerGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 138412546;
        *&buf[1] = v59;
        v63 = 1024;
        v64 = v35;
        _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_DEFAULT, "[RM] PHFigDecoder - failed to open container for image: %@, status code: %d", buf, 0x12u);
      }

      v19[2](v19, 0, 0, 0, 0);
      goto LABEL_46;
    }

    v55 = v19;
    v38 = [[PHImageDecoderAsyncDecodeRequestHandle alloc] initWithFigRequestID:0 container:cf figDecoder:self];
    CFRelease(cf);
    objc_storeStrong(v16 + 10, v38);
    v39 = CMPhotoDecompressionContainerDecodeImageForIndexAsyncF();
    if (v39)
    {
      v40 = v39;
      v41 = PLImageManagerGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 138412546;
        *&buf[1] = v59;
        v63 = 1024;
        v64 = v40;
        _os_log_impl(&dword_19C86F000, v41, OS_LOG_TYPE_DEFAULT, "[RM] PHFigDecoder - failed to start decode for image: %@, status code: %d", buf, 0x12u);
      }

      if (*(v16 + 19) == 1)
      {
        v42 = +[PHImageIODecoder sharedDecoder];
        v43 = [v42 decodeImageFromData:dataCopy orFileURL:lCopy options:optionsCopy completion:v55];
      }

      else
      {
        v55[2](v55, 0, 0, 0, 0);
        v43 = 0;
      }

      v19 = v55;
      goto LABEL_47;
    }

    v43 = v38;
    v19 = v55;
    if (v17)
    {
      v60 = 0x7FFFFFFFFFFFFFFFLL;
      v44 = _indexOfGainMapInContainer(cf, &v60);
      if (v44)
      {
        v45 = v44;
        v46 = PLImageManagerGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          buf[0] = 138412546;
          *&buf[1] = v59;
          v63 = 1024;
          v64 = v45;
          _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_ERROR, "[RM] PHFigDecoder - failed to determine index of gain map: %@, status code: %d", buf, 0x12u);
        }
      }

      else if (v60 != 0x7FFFFFFFFFFFFFFFLL)
      {
        CMPhotoDecompressionSessionReserveRequestID();
        [*(v16 + 10) setFigGainMapRequestID:0];
        v48 = _figDecodeOptionsFromContext(v16, 0, 1);
        v49 = CMPhotoDecompressionContainerDecodeAuxiliaryImageForIndexAsyncF();
        v50 = PLImageManagerGetLog();
        v51 = v50;
        if (!v49)
        {
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_19C86F000, v51, OS_LOG_TYPE_DEBUG, "[RM] PHFigDecoder - started async gain map decode", buf, 2u);
          }

          v19 = v55;
          goto LABEL_44;
        }

        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          buf[0] = 138412546;
          *&buf[1] = v59;
          v63 = 1024;
          v64 = v49;
          _os_log_impl(&dword_19C86F000, v51, OS_LOG_TYPE_ERROR, "[RM] PHFigDecoder - failed to start decode for gain map: %@, status code: %d", buf, 0x12u);
        }

        v19 = v55;
      }

      atomic_fetch_add(v16 + 9, 1u);
    }

LABEL_44:

    goto LABEL_48;
  }

  v24 = optionsCopy;
  v25 = dataCopy;
  v58 = lCopy;
  v56 = v19;
  cf = 0;
  CGImageForIndex = CMPhotoDecompressionCreateCGImageForIndex();
  if (CGImageForIndex)
  {
    if (*(v16 + 19) == 1)
    {
      v27 = CGImageForIndex;
      v54 = dataCopy;
      v28 = v25;
      v29 = PLImageManagerGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 138412546;
        *&buf[1] = v59;
        v63 = 1024;
        v64 = v27;
        _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_DEFAULT, "[RM] PHFigDecoder - failed sync decode of image: %@, status code: %d", buf, 0x12u);
      }

      v30 = +[PHImageIODecoder sharedDecoder];
      v31 = [v30 decodeImageFromData:v28 orFileURL:v58 options:v24 completion:v56];

      v25 = v28;
      v32 = v56;
      dataCopy = v54;
      v33 = v24;
    }

    else
    {
      v32 = v56;
      v33 = v24;
      if (*(v16 + 9))
      {
        (*(v56 + 2))(v56, 0, 0, 0, 0);
      }
    }
  }

  else
  {
    v33 = v24;
    if ([v24 shouldLoadGainMap])
    {
      v53 = v25;
      v60 = 0;
      v37 = CMPhotoDecompressionSessionCreateContainer();
      v47 = PLImageManagerGetLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 138412546;
        *&buf[1] = v59;
        v63 = 1024;
        v64 = v37;
        _os_log_impl(&dword_19C86F000, v47, OS_LOG_TYPE_ERROR, "[RM] PHFigDecoder - failed to open decompression container for gain map: %@, status code: %d", buf, 0x12u);
      }

      v25 = v53;
    }

    v32 = v56;
    (v32)[2](v32, cf, 0, 1, 0);
    CGImageRelease(cf);
  }

LABEL_46:
  v43 = 0;
LABEL_47:
  _cleanupContext(v16);
LABEL_48:

  return v43;
}

@end