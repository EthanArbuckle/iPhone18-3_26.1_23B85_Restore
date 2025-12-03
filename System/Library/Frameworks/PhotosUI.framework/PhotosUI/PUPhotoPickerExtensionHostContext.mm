@interface PUPhotoPickerExtensionHostContext
- (BOOL)_isHEIFImageFormatFromData:(id)data url:(id)url;
- (PUPhotoPickerHostService)delegate;
- (id)_JPEGDataFromImageData:(id)data;
- (id)_UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:(id)dictionary;
- (id)_createURLFromPath:(id)path token:(id)token;
- (id)_pathExtensionFromData:(id)data url:(id)url exportPreset:(int64_t)preset;
- (id)_remote;
- (void)cancelPhotoPicker;
- (void)completeRequestReturningItems:(id)items completionHandler:(id)handler;
- (void)didDisplayPhotoPickerPreview;
- (void)didDisplayPhotoPickerSourceType:(id)type;
- (void)didSelectMediaWithInfoDictionary:(id)dictionary;
- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)dictionaries;
- (void)dismissCurrentViewControllerFromPhotoPickerAnimated:(id)animated;
- (void)initiatePhotoPickerSelection;
- (void)invalidatePhotoPickerHostServices;
- (void)performPhotoPickerPreviewOfFirstAsset;
- (void)performTraitCollectionUpdateUsingData:(id)data completion:(id)completion;
- (void)photoPickerIsReadyForDisplay;
- (void)setDelegate:(id)delegate;
@end

@implementation PUPhotoPickerExtensionHostContext

- (PUPhotoPickerHostService)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_pathExtensionFromData:(id)data url:(id)url exportPreset:(int64_t)preset
{
  dataCopy = data;
  urlCopy = url;
  v11 = urlCopy;
  if (dataCopy | urlCopy)
  {
    if (dataCopy)
    {
      v12 = CGImageSourceCreateWithData(dataCopy, 0);
LABEL_6:
      v13 = v12;
      if (v12)
      {
        v14 = CGImageSourceGetType(v12);
        v15 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v14];
        preferredFilenameExtension = [v15 preferredFilenameExtension];

        CFRelease(v13);
        if (preferredFilenameExtension)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_8;
    }

    if (urlCopy)
    {
      v12 = CGImageSourceCreateWithURL(urlCopy, 0);
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoPickerExtensionHostContext.m" lineNumber:437 description:@"Provide one of data or url"];
  }

LABEL_8:
  pathExtension = [v11 pathExtension];
  if (!pathExtension)
  {
    v18 = MEMORY[0x1E6982E10];
    if (preset != 1)
    {
      v18 = MEMORY[0x1E6982E58];
    }

    pathExtension = [*v18 preferredFilenameExtension];
  }

  preferredFilenameExtension = pathExtension;
LABEL_13:

  return preferredFilenameExtension;
}

- (id)_JPEGDataFromImageData:(id)data
{
  v4 = MEMORY[0x1E69DCAB8];
  dataCopy = data;
  v6 = [[v4 alloc] initWithData:dataCopy];

  v7 = [(PUPhotoPickerExtensionHostContext *)self _JPEGDataFromImage:v6];

  return v7;
}

- (BOOL)_isHEIFImageFormatFromData:(id)data url:(id)url
{
  dataCopy = data;
  urlCopy = url;
  v9 = urlCopy;
  if (!(dataCopy | urlCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoPickerExtensionHostContext.m" lineNumber:412 description:@"Provide one of data or url"];
    v13 = 0;
    goto LABEL_8;
  }

  if (dataCopy)
  {
    v10 = CGImageSourceCreateWithData(dataCopy, 0);
  }

  else
  {
    if (!urlCopy)
    {
LABEL_9:
      v13 = 0;
      goto LABEL_10;
    }

    v10 = CGImageSourceCreateWithURL(urlCopy, 0);
  }

  v11 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  currentHandler = [MEMORY[0x1E69C08F0] typeWithIdentifier:CGImageSourceGetType(v10)];
  v13 = [currentHandler conformsToType:*MEMORY[0x1E6983138]];
  CFRelease(v11);
LABEL_8:

LABEL_10:
  return v13;
}

- (id)_createURLFromPath:(id)path token:(id)token
{
  pathCopy = path;
  tokenCopy = token;
  v9 = tokenCopy;
  if (pathCopy)
  {
    if (tokenCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoPickerExtensionHostContext.m" lineNumber:401 description:@"path cannot be nil"];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerExtensionHostContext.m" lineNumber:402 description:@"token cannot be nil"];

LABEL_3:
  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  v11 = [objc_alloc(MEMORY[0x1E69BF2E8]) initWithURL:v10 sandboxExtensionToken:v9 consume:1];
  if (!v11)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerExtensionHostContext.m" lineNumber:405 description:{@"A sandboxed url could not be created for %@ %@", v10, v9}];
  }

  return v11;
}

- (id)_UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:(id)dictionary
{
  v142[1] = *MEMORY[0x1E69E9840];
  v4 = [dictionary mutableCopy];
  v5 = *MEMORY[0x1E69DE968];
  v116 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DE968]];
  if (v116)
  {
    [v4 setObject:0 forKeyedSubscript:v5];
    if (([MEMORY[0x1E69789A8] authorizationStatusForAccessLevel:2] - 3) <= 1)
    {
      imagePickerPhotoLibrary = [MEMORY[0x1E69789A8] imagePickerPhotoLibrary];
      v7 = [MEMORY[0x1E6978830] fetchOptionsWithInclusiveDefaultsForPhotoLibrary:imagePickerPhotoLibrary];
      v8 = MEMORY[0x1E6978630];
      v142[0] = v116;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:1];
      v10 = [v8 fetchAssetsWithLocalIdentifiers:v9 options:v7];

      firstObject = [v10 firstObject];
      if (firstObject)
      {
        [v4 setObject:firstObject forKeyedSubscript:*MEMORY[0x1E69DDE18]];
      }
    }
  }

  v12 = [v4 objectForKeyedSubscript:@"PUPhotoPickerSavingOptions"];
  integerValue = [v12 integerValue];

  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerSavingOptions"];
  v14 = *MEMORY[0x1E69DE940];
  v15 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DE940]];
  v114 = v15;
  if (v15)
  {
    integerValue2 = [v15 integerValue];
  }

  else
  {
    integerValue2 = 0;
  }

  [v4 setObject:0 forKeyedSubscript:v14];
  v17 = *MEMORY[0x1E69DDE10];
  v18 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDE10]];
  if (v18)
  {
    v132 = 0;
    v19 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v18 error:&v132];
    v20 = v132;
    if (v20)
    {
      v21 = PLUIGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v135 = "[PUPhotoPickerExtensionHostContext _UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:]";
        v136 = 2112;
        v137 = v20;
        _os_log_impl(&dword_1D2128000, v21, OS_LOG_TYPE_ERROR, "%s Unable to create image %@", buf, 0x16u);
      }
    }

    [v4 setObject:v19 forKeyedSubscript:v17];
  }

  v22 = MEMORY[0x1E695DFF8];
  v23 = NSTemporaryDirectory();
  v121 = [v22 fileURLWithPath:v23];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v25 = [v4 objectForKeyedSubscript:@"PUPhotoPickerOriginalImagePath"];
  v115 = v18;
  v113 = v25;
  if (!v25)
  {
    v122 = 0;
    v32 = 0;
    goto LABEL_57;
  }

  v26 = v25;
  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerOriginalImagePath"];
  v27 = [MEMORY[0x1E695DFF8] fileURLWithPath:v26];
  [v4 objectForKeyedSubscript:@"PUPhotoPickerOriginalImagePathSandboxExtensionToken"];
  v118 = v123 = v27;
  v28 = [objc_alloc(MEMORY[0x1E69BF2E8]) initWithURL:v27 sandboxExtensionToken:v118 consume:1];
  if ((integerValue & 2) != 0 && ([v4 objectForKeyedSubscript:v17], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
  {
    v30 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v28];
    if (v30)
    {
      selfCopy = self;
      v34 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v30];
      if (v34)
      {
        [v4 setObject:v34 forKeyedSubscript:v17];
      }

      self = selfCopy;
    }
  }

  else
  {
    v30 = 0;
  }

  if ((integerValue & 4) == 0)
  {
    if (integerValue2)
    {
      v31 = 0;
LABEL_35:
      selfCopy3 = self;
      v37 = v30;
      v38 = v28;
      v39 = integerValue2;
LABEL_45:
      v42 = [(PUPhotoPickerExtensionHostContext *)selfCopy3 _pathExtensionFromData:v37 url:v38 exportPreset:v39];
      v41 = 0;
      goto LABEL_46;
    }

LABEL_37:
    v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUPhotoPickerExtensionHostContext _isHEIFImageFormatFromData:url:](self, "_isHEIFImageFormatFromData:url:", v30, v28)}];
    goto LABEL_38;
  }

  if (!v30)
  {
    v30 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v28];
  }

  v30 = v30;
  if (integerValue2)
  {
    v31 = 0;
  }

  else
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUPhotoPickerExtensionHostContext _isHEIFImageFormatFromData:url:](self, "_isHEIFImageFormatFromData:url:", v30, v28)}];
    if ([v31 BOOLValue])
    {
      v35 = [(PUPhotoPickerExtensionHostContext *)self _JPEGDataFromImageData:v30];

      goto LABEL_34;
    }
  }

  v35 = v30;
LABEL_34:
  [v4 setObject:v35 forKeyedSubscript:*MEMORY[0x1E69DE960]];

  if (integerValue2)
  {
    goto LABEL_35;
  }

  if (!v31)
  {
    goto LABEL_37;
  }

LABEL_38:
  if (![v31 BOOLValue])
  {
    selfCopy3 = self;
    v37 = v30;
    v38 = v28;
    v39 = 0;
    goto LABEL_45;
  }

  v40 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DE960]];
  if (!v40)
  {
    if (!v30)
    {
      v30 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v28];
    }

    v40 = [(PUPhotoPickerExtensionHostContext *)self _JPEGDataFromImageData:v30];
  }

  v41 = v40;
  v42 = [(PUPhotoPickerExtensionHostContext *)self _pathExtensionFromData:v40 url:0 exportPreset:0];
LABEL_46:
  selfCopy4 = self;
  v44 = [v121 URLByAppendingPathComponent:uUIDString];
  v32 = v42;
  v45 = [v44 URLByAppendingPathExtension:v42];

  v122 = v45;
  if (v41)
  {
    v131 = 0;
    v46 = [v41 writeToURL:v45 options:1 error:&v131];
    v47 = v131;
    if ((v46 & 1) == 0)
    {
      v48 = PLUIGetLog();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
LABEL_55:

        goto LABEL_56;
      }

      [v47 localizedDescription];
      v50 = v49 = v31;
      *buf = 136315394;
      v135 = "[PUPhotoPickerExtensionHostContext _UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:]";
      v136 = 2112;
      v137 = v50;
      _os_log_impl(&dword_1D2128000, v48, OS_LOG_TYPE_ERROR, "%s Unable to copy data with error: %@", buf, 0x16u);

LABEL_54:
      v31 = v49;
      goto LABEL_55;
    }
  }

  else
  {
    v49 = v31;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v52 = v45;
    v53 = defaultManager;
    v130 = 0;
    v54 = [defaultManager copyItemAtURL:v28 toURL:v52 error:&v130];
    v47 = v130;

    if ((v54 & 1) == 0)
    {
      v48 = PLUIGetLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v135 = "[PUPhotoPickerExtensionHostContext _UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:]";
        v136 = 2112;
        v137 = v28;
        v138 = 2112;
        v139 = v122;
        v140 = 2112;
        v141 = v47;
        _os_log_impl(&dword_1D2128000, v48, OS_LOG_TYPE_ERROR, "%s Unable to copy from %@ to %@ %@", buf, 0x2Au);
      }

      goto LABEL_54;
    }

    v31 = v49;
  }

LABEL_56:

  [v4 setObject:v122 forKeyedSubscript:*MEMORY[0x1E69DDDF0]];
  v18 = v115;
  self = selfCopy4;
LABEL_57:
  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerOriginalImagePathSandboxExtensionToken"];
  v55 = *MEMORY[0x1E69DDDE8];
  v119 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDDE8]];
  if (v119)
  {
    v129 = 0;
    v56 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v119 error:&v129];
    v57 = v129;
    if (v57)
    {
      v58 = PLUIGetLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v135 = "[PUPhotoPickerExtensionHostContext _UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:]";
        v136 = 2112;
        v137 = v57;
        _os_log_impl(&dword_1D2128000, v58, OS_LOG_TYPE_ERROR, "%s Unable to create edited image %@", buf, 0x16u);
      }
    }

    [v4 setObject:v56 forKeyedSubscript:v55];
  }

  v59 = *MEMORY[0x1E69DE938];
  v60 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DE938]];
  if (v60)
  {
    v128 = 0;
    v61 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v60 error:&v128];
    v62 = v128;
    if (v62)
    {
      v63 = v32;
      v64 = v60;
      v65 = PLUIGetLog();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v135 = "[PUPhotoPickerExtensionHostContext _UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:]";
        v136 = 2112;
        v137 = v62;
        _os_log_impl(&dword_1D2128000, v65, OS_LOG_TYPE_ERROR, "%s Unable to create fullScreenImage %@", buf, 0x16u);
      }

      v60 = v64;
      v32 = v63;
    }

    [v4 setObject:v61 forKeyedSubscript:v59];
  }

  v66 = [v4 objectForKeyedSubscript:@"PUPhotoPickerCropRectData"];
  if (v66)
  {
    v127 = 0;
    v67 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v66 error:&v127];
    v68 = v127;
    if (v68)
    {
      v69 = PLUIGetLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v135 = "[PUPhotoPickerExtensionHostContext _UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:]";
        v136 = 2112;
        v137 = v68;
        _os_log_impl(&dword_1D2128000, v69, OS_LOG_TYPE_ERROR, "%s Unable to create crop rect %@", buf, 0x16u);
      }
    }

    [v4 setObject:v67 forKeyedSubscript:*MEMORY[0x1E69DDDE0]];
    [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerCropRectData"];
  }

  v70 = [v4 objectForKeyedSubscript:@"PUPhotoPickerReferencePath"];
  if (v70)
  {
    v71 = [MEMORY[0x1E695DFF8] URLWithString:v70];
    [v4 setObject:v71 forKeyedSubscript:*MEMORY[0x1E69DDE20]];
    [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerReferencePath"];
  }

  v72 = [v4 objectForKeyedSubscript:@"PUPhotoPickerMediaPath"];
  v124 = v72;
  if (v72)
  {
    v73 = [v4 objectForKeyedSubscript:@"PUPhotoPickerMediaPathSandboxExtensionToken"];
    v74 = [(PUPhotoPickerExtensionHostContext *)self _createURLFromPath:v72 token:v73];
    [v4 setObject:v74 forKeyedSubscript:*MEMORY[0x1E69DDE08]];

    v72 = v124;
  }

  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerMediaPath"];
  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerMediaPathSandboxExtensionToken"];
  v75 = [v4 objectForKeyedSubscript:@"PUPhotoPickerOriginalIrisVideoFilePath"];
  if (v75)
  {
    v76 = [v4 objectForKeyedSubscript:@"PUPhotoPickerOriginalIrisVideoFilePathSandboxExtensionToken"];
    v77 = [(PUPhotoPickerExtensionHostContext *)self _createURLFromPath:v75 token:v76];
    [v4 setObject:v77 forKeyedSubscript:*MEMORY[0x1E69DE948]];

    v72 = v124;
  }

  v112 = v75;
  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerOriginalIrisVideoFilePath"];
  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerOriginalIrisVideoFilePathSandboxExtensionToken"];
  v78 = [v4 objectForKeyedSubscript:@"PUPhotoPickerGIFPath"];
  if (v78)
  {
    v79 = [MEMORY[0x1E695DFF8] fileURLWithPath:v78];
    [v4 setObject:v79 forKeyedSubscript:*MEMORY[0x1E69DE8E0]];
  }

  v111 = v78;
  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerGIFPath"];
  v117 = [v4 objectForKeyedSubscript:@"_UIImagePickerDebugSidecarFileURLsData"];
  if (v117)
  {
    selfCopy5 = self;
    v81 = v32;
    v82 = v70;
    v83 = MEMORY[0x1E696ACD0];
    v84 = MEMORY[0x1E695DFD8];
    v85 = objc_opt_class();
    v86 = [v84 setWithObjects:{v85, objc_opt_class(), 0}];
    v126 = 0;
    v87 = [v83 unarchivedObjectOfClasses:v86 fromData:v117 error:&v126];
    v88 = v126;
    [v4 setObject:v87 forKeyedSubscript:@"_UIImagePickerDebugSidecarFileURLs"];

    if (v88)
    {
      v89 = PLUIGetLog();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v135 = "[PUPhotoPickerExtensionHostContext _UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:]";
        v136 = 2112;
        v137 = v88;
        _os_log_impl(&dword_1D2128000, v89, OS_LOG_TYPE_ERROR, "%s Unable to create debug sidecar files %@", buf, 0x16u);
      }
    }

    [v4 removeObjectForKey:@"_UIImagePickerDebugSidecarFileURLsData"];

    v70 = v82;
    v32 = v81;
    self = selfCopy5;
    v72 = v124;
  }

  v90 = [v4 objectForKeyedSubscript:@"PUPhotoPickerLivePhotoExists"];
  if (v90)
  {
    v108 = v70;
    v109 = v66;
    v110 = v60;
    v91 = [v4 objectForKeyedSubscript:@"PUPhotoPickerLivePhotoImagePath"];
    v92 = [v4 objectForKeyedSubscript:@"PUPhotoPickerLivePhotoImagePathSandboxExtensionToken"];
    v93 = [v4 objectForKeyedSubscript:@"PUPhotoPickerLivePhotoVideoPath"];
    v94 = [v4 objectForKeyedSubscript:@"PUPhotoPickerLivePhotoVideoPathSandboxExtensionToken"];
    v107 = v92;
    v95 = [(PUPhotoPickerExtensionHostContext *)self _createURLFromPath:v91 token:v92];
    v106 = v93;
    v96 = [(PUPhotoPickerExtensionHostContext *)self _createURLFromPath:v93 token:v94];
    v133[0] = v95;
    v133[1] = v96;
    v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:2];
    v125 = 0;
    v98 = [MEMORY[0x1E69788C8] livePhotoWithResourceFileURLs:v97 error:&v125];
    v99 = v125;
    if (v99)
    {
      v105 = v91;
      v100 = v32;
      v101 = PLUIGetLog();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v135 = "[PUPhotoPickerExtensionHostContext _UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:]";
        v136 = 2112;
        v137 = v99;
        _os_log_impl(&dword_1D2128000, v101, OS_LOG_TYPE_ERROR, "%s Unable to create live photo - %@", buf, 0x16u);
      }

      v32 = v100;
      v91 = v105;
    }

    if (v98)
    {
      [v4 setObject:v98 forKeyedSubscript:*MEMORY[0x1E69DDDF8]];
    }

    v18 = v115;
    v66 = v109;
    v60 = v110;
    v70 = v108;
    v72 = v124;
  }

  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerLivePhotoExists"];
  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerLivePhotoImagePath"];
  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerLivePhotoImagePathSandboxExtensionToken"];
  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerLivePhotoVideoPath"];
  [v4 setObject:0 forKeyedSubscript:@"PUPhotoPickerLivePhotoVideoPathSandboxExtensionToken"];
  v102 = [v4 copy];

  v103 = *MEMORY[0x1E69E9840];

  return v102;
}

- (void)performTraitCollectionUpdateUsingData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  _remote = [(PUPhotoPickerExtensionHostContext *)self _remote];
  [_remote performTraitCollectionUpdateUsingData:dataCopy completion:completionCopy];
}

- (void)performPhotoPickerPreviewOfFirstAsset
{
  _remote = [(PUPhotoPickerExtensionHostContext *)self _remote];
  [_remote performPhotoPickerPreviewOfFirstAsset];
}

- (void)initiatePhotoPickerSelection
{
  _remote = [(PUPhotoPickerExtensionHostContext *)self _remote];
  [_remote initiatePhotoPickerSelection];
}

- (void)photoPickerIsReadyForDisplay
{
  delegate = [(PUPhotoPickerExtensionHostContext *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PUPhotoPickerExtensionHostContext *)self delegate];
    [delegate2 photoPickerIsReadyForDisplay];
  }
}

- (void)didSelectMediaWithInfoDictionary:(id)dictionary
{
  v7 = [(PUPhotoPickerExtensionHostContext *)self _UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:dictionary];
  delegate = [(PUPhotoPickerExtensionHostContext *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PUPhotoPickerExtensionHostContext *)self delegate];
    [delegate2 didSelectMediaWithInfoDictionary:v7];
  }
}

- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)dictionaries
{
  v30 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  v5 = PLPhotoPickerGetLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 134349056;
    v29 = [dictionariesCopy count];
    _os_signpost_emit_with_name_impl(&dword_1D2128000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ReceivingSelections", "%{public}ld", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dictionariesCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = dictionariesCopy;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(PUPhotoPickerExtensionHostContext *)self _UIImagePickerControllerInfoDictionaryFromPhotoPickerInfoDictionary:*(*(&v23 + 1) + 8 * i), v23];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v16 = v8;
  v17 = v16;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D2128000, v17, OS_SIGNPOST_INTERVAL_END, v6, "ReceivingSelections", &unk_1D215F091, buf, 2u);
  }

  delegate = [(PUPhotoPickerExtensionHostContext *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [v9 copy];
    delegate2 = [(PUPhotoPickerExtensionHostContext *)self delegate];
    [delegate2 didSelectMultipleMediaItemsWithInfoDictionaries:v20];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)didDisplayPhotoPickerPreview
{
  delegate = [(PUPhotoPickerExtensionHostContext *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PUPhotoPickerExtensionHostContext *)self delegate];
    [delegate2 didDisplayPhotoPickerPreview];
  }

  else
  {

    [(PUPhotoPickerExtensionHostContext *)self setCachedDidDisplayPhotoPickerPreview:1];
  }
}

- (void)didDisplayPhotoPickerSourceType:(id)type
{
  typeCopy = type;
  delegate = [(PUPhotoPickerExtensionHostContext *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PUPhotoPickerExtensionHostContext *)self delegate];
    [delegate2 didDisplayPhotoPickerSourceType:typeCopy];
  }

  else
  {
    [(PUPhotoPickerExtensionHostContext *)self setCachedDidDisplayPhotoPickerSourceType:typeCopy];
  }
}

- (void)dismissCurrentViewControllerFromPhotoPickerAnimated:(id)animated
{
  animatedCopy = animated;
  delegate = [(PUPhotoPickerExtensionHostContext *)self delegate];
  [delegate dismissCurrentViewControllerFromPhotoPickerAnimated:animatedCopy];
}

- (void)invalidatePhotoPickerHostServices
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.mobileslideshow.photo-picker" code:0 userInfo:MEMORY[0x1E695E0F8]];
  [(PUPhotoPickerExtensionHostContext *)self cancelRequestWithError:v3];
  _remote = [(PUPhotoPickerExtensionHostContext *)self _remote];
  [_remote invalidatePhotoPickerRemoteServices];

  v5.receiver = self;
  v5.super_class = PUPhotoPickerExtensionHostContext;
  [(PUPhotoPickerAbstractExtensionContext *)&v5 invalidateContext];
}

- (void)cancelPhotoPicker
{
  delegate = [(PUPhotoPickerExtensionHostContext *)self delegate];
  [delegate cancelPhotoPicker];
}

- (id)_remote
{
  v4.receiver = self;
  v4.super_class = PUPhotoPickerExtensionHostContext;
  proxy = [(PUPhotoPickerAbstractExtensionContext *)&v4 proxy];

  return proxy;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    cachedDidDisplayPhotoPickerSourceType = [(PUPhotoPickerExtensionHostContext *)self cachedDidDisplayPhotoPickerSourceType];
    if (cachedDidDisplayPhotoPickerSourceType)
    {
      delegate = [(PUPhotoPickerExtensionHostContext *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        delegate2 = [(PUPhotoPickerExtensionHostContext *)self delegate];
        [delegate2 didDisplayPhotoPickerSourceType:cachedDidDisplayPhotoPickerSourceType];
      }
    }

    if ([(PUPhotoPickerExtensionHostContext *)self cachedDidDisplayPhotoPickerPreview])
    {
      delegate3 = [(PUPhotoPickerExtensionHostContext *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        delegate4 = [(PUPhotoPickerExtensionHostContext *)self delegate];
        [delegate4 didDisplayPhotoPickerPreview];
      }
    }

    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)completeRequestReturningItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__PUPhotoPickerExtensionHostContext_completeRequestReturningItems_completionHandler___block_invoke;
  v9[3] = &unk_1E83F73F8;
  v8 = handlerCopy;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [(PUPhotoPickerAbstractExtensionContext *)self firstPayloadFromExtensionItems:itemsCopy completion:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

void __85__PUPhotoPickerExtensionHostContext_completeRequestReturningItems_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained delegate];
    [v6 didSelectMediaWithInfoDictionary:v7];
  }

  (*(*(a1 + 32) + 16))();
}

@end