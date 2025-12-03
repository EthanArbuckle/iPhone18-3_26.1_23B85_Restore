@interface INImageFilePersistence
- (BOOL)canStoreImage:(id)image;
- (INImageFilePersistence)init;
- (NSString)serviceIdentifier;
- (id)_deleteItemAtFilePath:(id)path;
- (id)_filePathForImageWithFileName:(id)name;
- (id)filePathForImageWithIdentifier:(id)identifier error:(id *)error;
- (id)storeImage:(id)image scaled:(BOOL)scaled qualityOfService:(unsigned int)service storeType:(unint64_t)type error:(id *)error;
- (void)purgeExpiredImagesInEphemeralStore:(BOOL)store;
- (void)purgeImageWithIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveImageWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation INImageFilePersistence

- (INImageFilePersistence)init
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = INImageFilePersistence;
  v2 = [(INImageFilePersistence *)&v6 init];
  if (v2)
  {
    v7[0] = objc_opt_class();
    v7[1] = objc_opt_class();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
    [(INImageFilePersistence *)v2 _setSupportedClasses:v3];
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSString)serviceIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"com.apple.intents.%@", v4];

  return v5;
}

- (id)_deleteItemAtFilePath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v5 = [defaultManager removeItemAtPath:pathCopy error:&v12];
  v6 = v12;

  if (v5)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[INImageFilePersistence _deleteItemAtFilePath:]";
      v17 = 2112;
      v18 = pathCopy;
      _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s Successfully deleted image data at file path %@", buf, 0x16u);
    }
  }

  else if (!v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A278];
    v14 = @"Could not find image";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v6 = [v8 errorWithDomain:@"IntentsErrorDomain" code:6004 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_filePathForImageWithFileName:(id)name
{
  v36 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = nameCopy;
  v6 = _INImageFilePersistenceDirectoryPathWithStoreTypeCreateIfNeeded(1);
  v7 = [v6 stringByAppendingPathComponent:v5];

  if (v7)
  {
    [v4 addObject:v7];
  }

  v8 = v5;
  v9 = _INImageFilePersistenceDirectoryPathWithStoreTypeCreateIfNeeded(2);
  v10 = [v9 stringByAppendingPathComponent:v8];

  if (v10)
  {
    [v4 addObject:v10];
  }

  if (![v4 count])
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[INImageFilePersistence _filePathForImageWithFileName:]";
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s No possible file paths for image with file name %@", buf, 0x16u);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v24 = v7;
    v15 = *v26;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v19 = [defaultManager fileExistsAtPath:v17];

        if (v19)
        {
          v21 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v30 = "[INImageFilePersistence _filePathForImageWithFileName:]";
            v31 = 2112;
            v32 = v8;
            v33 = 2112;
            v34 = v17;
            _os_log_impl(&dword_18E991000, v21, OS_LOG_TYPE_INFO, "%s Found image data for file name %@ at file path %@", buf, 0x20u);
          }

          v20 = v17;
          goto LABEL_20;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v20 = 0;
LABEL_20:
    v7 = v24;
  }

  else
  {
    v20 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)purgeImageWithIdentifier:(id)identifier completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = [identifier stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F01E0850];
  v8 = [v7 stringByReplacingOccurrencesOfString:@".." withString:&stru_1F01E0850];

  v9 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[INImageFilePersistence purgeImageWithIdentifier:completion:]";
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s Attempting to purge image with identifier %@ from file persistence", &v13, 0x16u);
  }

  v10 = [(INImageFilePersistence *)self _filePathForImageWithFileName:v8];
  v11 = [(INImageFilePersistence *)self _deleteItemAtFilePath:v10];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)retrieveImageWithIdentifier:(id)identifier completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [identifierCopy stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F01E0850];
    v9 = [v8 stringByReplacingOccurrencesOfString:@".." withString:&stru_1F01E0850];

    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v37 = "[INImageFilePersistence retrieveImageWithIdentifier:completion:]";
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&dword_18E991000, v10, OS_LOG_TYPE_INFO, "%s Attempting to retrieve image with identifier %@ using file persistence", buf, 0x16u);
    }

    v11 = [(INImageFilePersistence *)self _filePathForImageWithFileName:v9];
    if (v11)
    {
      v35 = 0;
      v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v11 options:1 error:&v35];
      v13 = v35;
      if (v13)
      {
        v14 = v13;
        v15 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v37 = "[INImageFilePersistence retrieveImageWithIdentifier:completion:]";
          v38 = 2112;
          v39 = v14;
          v40 = 2112;
          v41 = v9;
          v42 = 2112;
          v43 = v11;
          _os_log_error_impl(&dword_18E991000, v15, OS_LOG_TYPE_ERROR, "%s Encountered error %@ when reading image data for identifier %@ at file path %@", buf, 0x2Au);
        }

        v16 = 0;
        v17 = 1;
      }

      else if (v12)
      {
        pathExtension = [v9 pathExtension];
        v25 = [pathExtension isEqualToString:@"png"];

        if (v25)
        {
          v22 = [INImage imageWithImageData:v12];
          v26 = _INImageSizeProviderClass();
          if (v26)
          {
            [v26 imageSizeForImage:v22];
            [v22 _setImageSize:?];
          }

          v16 = 0;
        }

        else
        {
          v27 = MEMORY[0x1E696ACD0];
          v28 = MEMORY[0x1E695DFD8];
          v29 = +[INImage _classesInCluster];
          v30 = [v28 setWithArray:v29];
          v34 = 0;
          v31 = [v27 unarchivedObjectOfClasses:v30 fromData:v12 error:&v34];
          v16 = v34;

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = v31;
          }

          else
          {
            v32 = 0;
          }

          v22 = v32;
          if (v16)
          {
            v33 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v37 = "[INImageFilePersistence retrieveImageWithIdentifier:completion:]";
              v38 = 2112;
              v39 = v16;
              v40 = 2112;
              v41 = v9;
              v42 = 2112;
              v43 = v11;
              _os_log_error_impl(&dword_18E991000, v33, OS_LOG_TYPE_ERROR, "%s Encountered error %@ when unarchiving image data for identifier %@ at file path %@", buf, 0x2Au);
            }
          }
        }

        v14 = 0;
        if (v22)
        {
          v21 = 0;
LABEL_18:
          completionCopy[2](completionCopy, v22, v21);

          goto LABEL_19;
        }

        v17 = 0;
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v14 = 0;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v14 = 0;
      v12 = 0;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to retrieve image with identifier %@ from storage service %@", v9, self];
    [dictionary setObject:v19 forKey:*MEMORY[0x1E696A578]];

    if ((v17 & 1) != 0 || v16)
    {
      if (v17)
      {
        v20 = v14;
      }

      else
      {
        v20 = v16;
      }

      [dictionary setObject:v20 forKey:*MEMORY[0x1E696AA08]];
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6004 userInfo:dictionary];

    v22 = 0;
    goto LABEL_18;
  }

  v9 = identifierCopy;
LABEL_19:

  v23 = *MEMORY[0x1E69E9840];
}

- (id)storeImage:(id)image scaled:(BOOL)scaled qualityOfService:(unsigned int)service storeType:(unint64_t)type error:(id *)error
{
  scaledCopy = scaled;
  v100[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (![(INImageFilePersistence *)self canStoreImage:imageCopy])
  {
    if (!error)
    {
      v30 = 0;
      goto LABEL_54;
    }

    v21 = MEMORY[0x1E696ABC0];
    v99 = *MEMORY[0x1E696A578];
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    _uri = NSStringFromClass(v23);
    v24 = [v22 stringWithFormat:@"Image class %@ not supported by store", _uri];
    v100[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:&v99 count:1];
    *error = [v21 errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:v25];

    goto LABEL_32;
  }

  [(INImageFilePersistence *)self purgeExpiredImagesInEphemeralStore:0];
  v12 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
    v97 = 2112;
    v98 = imageCopy;
    _os_log_impl(&dword_18E991000, v12, OS_LOG_TYPE_INFO, "%s Attempting to store image %@ using file persistence", buf, 0x16u);
  }

  _imageData = [(_INDataImage *)imageCopy _imageData];

  if (_imageData)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = imageCopy;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    if (v15)
    {
      v16 = v15;
      v17 = [_INDataImage alloc];
      _imageData2 = [(_INDataImage *)imageCopy _imageData];
      _uri = [(_INDataImage *)v17 initWithImageData:_imageData2];

      [(INImage *)imageCopy _preferredScaledSize];
      [(INImage *)_uri _setPreferredScaledSize:?];
      if (scaledCopy)
      {
LABEL_10:
        _in_downscaledImageForFilePersistence = [(INImage *)_uri _in_downscaledImageForFilePersistence];
LABEL_35:
        v51 = _in_downscaledImageForFilePersistence;
        _imageData3 = [(_INDataImage *)_in_downscaledImageForFilePersistence _imageData];
        if (!_imageData3 && scaledCopy)
        {
          v53 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
            v97 = 2112;
            v98 = _uri;
            _os_log_error_impl(&dword_18E991000, v53, OS_LOG_TYPE_ERROR, "%s No scaled image data, falling back to unscaled data image: %@", buf, 0x16u);
          }

          _imageData3 = [(_INDataImage *)_uri _imageData];
        }

        if (_imageData3)
        {
          v90 = 0;
          v54 = [_imageData3 _in_writeDataToPathForImage:_uri storeType:type error:&v90];
          v55 = v90;
          if (v54)
          {
            v56 = v54;
            v30 = v56;
LABEL_51:

LABEL_52:
            goto LABEL_53;
          }

          errorCopy = error;
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v64 = MEMORY[0x1E696AEC0];
          v65 = [(_INDataImage *)imageCopy description];
          v66 = [v64 stringWithFormat:@"Failed to store image %@ in service %@", v65, self];
          [dictionary setObject:v66 forKey:*MEMORY[0x1E696A578]];

          if (v55)
          {
            [dictionary setObject:v55 forKey:*MEMORY[0x1E696AA08]];
          }

          if (errorCopy)
          {
            *errorCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:dictionary];
          }

          v56 = 0;
        }

        else
        {
          if (!error)
          {
            v30 = 0;
            goto LABEL_52;
          }

          v57 = MEMORY[0x1E696ABC0];
          v93 = *MEMORY[0x1E696A578];
          errorCopy2 = error;
          v59 = MEMORY[0x1E696AEC0];
          v55 = [(_INDataImage *)imageCopy description];
          v56 = [v59 stringWithFormat:@"Failed to store image %@ in service %@", v55, self];
          v94 = v56;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v61 = [v57 errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:v60];
          *errorCopy2 = v61;
        }

        v30 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      _uri = 0;
      if (scaledCopy)
      {
        goto LABEL_10;
      }
    }

    _in_downscaledImageForFilePersistence = _uri;
    goto LABEL_35;
  }

  _uri = [(INImage *)imageCopy _uri];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _sandboxExtensionData = [(INImage *)imageCopy _sandboxExtensionData];
    if (_sandboxExtensionData)
    {
      v27 = _sandboxExtensionData;
      startAccessingSecurityScopedResource = [(_INDataImage *)_uri startAccessingSecurityScopedResource];

      v29 = 1;
      if (!_uri)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }
  }

  v29 = 0;
  startAccessingSecurityScopedResource = 1;
  if (_uri)
  {
LABEL_19:
    if (([(_INDataImage *)_uri isFileURL]& startAccessingSecurityScopedResource) != 1)
    {
      goto LABEL_28;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [(_INDataImage *)_uri path];
    v32 = v87 = error;
    v33 = [defaultManager fileExistsAtPath:v32];

    error = v87;
    if (!v33)
    {
      goto LABEL_28;
    }

    v34 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
      v97 = 2112;
      v98 = imageCopy;
      _os_log_impl(&dword_18E991000, v34, OS_LOG_TYPE_INFO, "%s Copying file URL image to intents directory: %@", buf, 0x16u);
    }

    v35 = [(INImage *)imageCopy _in_writeableFilePersistenceConfigurationForStoreType:type];
    filePath = [v35 filePath];
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v38 = [defaultManager2 fileExistsAtPath:filePath];

    if (!v38)
    {
      goto LABEL_63;
    }

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    filePathURL = [(_INDataImage *)_uri filePathURL];
    absoluteString = [filePathURL absoluteString];
    v42 = [defaultManager3 contentsEqualAtPath:filePath andPath:absoluteString];

    v43 = INSiriLogContextIntents;
    v44 = os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO);
    if (v42)
    {
      if (v44)
      {
        *buf = 136315394;
        v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
        v97 = 2112;
        v98 = imageCopy;
        _os_log_impl(&dword_18E991000, v43, OS_LOG_TYPE_INFO, "%s URL image already exists and is the same at destination path: %@, not copying (but updating modified date)", buf, 0x16u);
      }

      v45 = _INImageFilePersistenceUpdateModifiedDateAtFilePath(filePath);
LABEL_71:
      v71 = v87;
LABEL_74:
      v83 = INSiriLogContextIntents;
      v74 = 1;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
        v97 = 2112;
        v98 = filePath;
        _os_log_impl(&dword_18E991000, v83, OS_LOG_TYPE_INFO, "%s URL image now available at file path: %@", buf, 0x16u);
      }

      v73 = 0;
      goto LABEL_77;
    }

    if (v44)
    {
      *buf = 136315394;
      v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
      v97 = 2112;
      v98 = imageCopy;
      _os_log_impl(&dword_18E991000, v43, OS_LOG_TYPE_INFO, "%s URL image already exists and is different at destination path: %@, removing the old one and copying", buf, 0x16u);
    }

    defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
    v70 = [defaultManager4 isDeletableFileAtPath:filePath];

    v71 = v87;
    if ((v70 & 1) == 0)
    {
      v82 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
        v97 = 2112;
        v98 = imageCopy;
        _os_log_error_impl(&dword_18E991000, v82, OS_LOG_TYPE_ERROR, "%s URL image at destination path is not deleteable: %@", buf, 0x16u);
      }

      goto LABEL_74;
    }

    defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
    v89 = 0;
    [defaultManager5 removeItemAtPath:filePath error:&v89];
    v73 = v89;

    if (v73)
    {
      v74 = 0;
    }

    else
    {
LABEL_63:
      v75 = [MEMORY[0x1E695DFF8] fileURLWithPath:filePath];
      defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
      v88 = 0;
      [defaultManager6 copyItemAtURL:_uri toURL:v75 error:&v88];
      v73 = v88;

      if (!v73)
      {
        if (scaledCopy)
        {
          v77 = [INImage imageWithURL:v75];
          [(INImage *)imageCopy _preferredScaledSize];
          [v77 _setPreferredScaledSize:?];
          _in_downscaledImageForFilePersistence2 = [v77 _in_downscaledImageForFilePersistence];
          _uri2 = [_in_downscaledImageForFilePersistence2 _uri];
          if (!_uri2)
          {
            v80 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
              v97 = 2112;
              v98 = v75;
              _os_log_error_impl(&dword_18E991000, v80, OS_LOG_TYPE_ERROR, "%s Failed to scale image at URL %@", buf, 0x16u);
            }
          }
        }

        v81 = _INImageFilePersistenceUpdateModifiedDateAtFilePath(filePath);

        goto LABEL_71;
      }

      v74 = 0;
      v71 = v87;
    }

LABEL_77:
    identifier = [v35 identifier];
    if (v71)
    {
      v85 = v73;
      *v71 = v73;
    }

    if (v74)
    {
      v86 = identifier;
    }

    else
    {
      v86 = 0;
    }

    v30 = v86;

    goto LABEL_53;
  }

LABEL_28:
  if (error)
  {
    v46 = MEMORY[0x1E696ABC0];
    v91 = *MEMORY[0x1E696A578];
    v47 = MEMORY[0x1E696AEC0];
    v48 = [(_INDataImage *)imageCopy description];
    v49 = [v47 stringWithFormat:@"No valid data to store for image %@ in service %@", v48, self];
    v92 = v49;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    *error = [v46 errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:v50];
  }

  if ((v29 & startAccessingSecurityScopedResource) == 1)
  {
    [(_INDataImage *)_uri stopAccessingSecurityScopedResource];
  }

LABEL_32:
  v30 = 0;
LABEL_53:

LABEL_54:
  v67 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)filePathForImageWithIdentifier:(id)identifier error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [(INImageFilePersistence *)self _filePathForImageWithFileName:identifierCopy];
  if (v7)
  {
    error = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
    goto LABEL_6;
  }

  v8 = INSiriLogContextIntents;
  if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *buf = 136315394;
  v16 = "[INImageFilePersistence filePathForImageWithIdentifier:error:]";
  v17 = 2112;
  v18 = identifierCopy;
  _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s Failed to retrieve file path for image: %@", buf, 0x16u);
  if (error)
  {
LABEL_5:
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to retrieve image file path with identifier %@ from storage service %@", identifierCopy, self, *MEMORY[0x1E696A578]];
    v14 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6004 userInfo:v10];

    error = 0;
  }

LABEL_6:

  v11 = *MEMORY[0x1E69E9840];

  return error;
}

- (BOOL)canStoreImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    _supportedClasses = [(INImageFilePersistence *)self _supportedClasses];
    if ([_supportedClasses containsObject:objc_opt_class()])
    {
      v6 = [imageCopy _in_writeableFilePersistenceConfigurationForStoreType:0];
      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)purgeExpiredImagesInEphemeralStore:(BOOL)store
{
  v66[2] = *MEMORY[0x1E69E9840];
  p_info = &OBJC_METACLASS___INCodableAttributeDialog.info;
  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v57 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
    _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s Looking for images that have expired in the ephemeral store", buf, 0xCu);
  }

  lastEphemeralStorePurgingDate = [objc_opt_class() lastEphemeralStorePurgingDate];
  v6 = lastEphemeralStorePurgingDate;
  if (!lastEphemeralStorePurgingDate || ([lastEphemeralStorePurgingDate timeIntervalSinceNow], v7 <= -180.0))
  {
    v46 = v6;
    v45 = _INImageFilePersistenceDirectoryPathWithStoreTypeCreateIfNeeded(1);
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = *MEMORY[0x1E695DB78];
    v11 = *MEMORY[0x1E695DA98];
    v66[0] = *MEMORY[0x1E695DB78];
    v66[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    v55 = 0;
    v44 = v8;
    v13 = [defaultManager contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v12 options:5 error:&v55];
    v14 = v55;

    if (!v13)
    {
      v15 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v57 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
        v58 = 2112;
        v59 = v14;
        _os_log_error_impl(&dword_18E991000, v15, OS_LOG_TYPE_ERROR, "%s Failed to purge ephemeral images with error: %@", buf, 0x16u);
      }
    }

    v43 = v14;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v13;
    v16 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v16)
    {
      v17 = v16;
      v49 = *v52;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v52 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v51 + 1) + 8 * i);
          v64[0] = v10;
          v64[1] = v11;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:{2, v43}];
          v50 = 0;
          v21 = [v19 resourceValuesForKeys:v20 error:&v50];
          v22 = v50;

          if (v21)
          {
            v23 = [v21 objectForKeyedSubscript:v10];
            bOOLValue = [v23 BOOLValue];

            if ((bOOLValue & 1) == 0)
            {
              path = [v19 path];
              v26 = [v21 objectForKeyedSubscript:v11];
              v27 = v26;
              if (v26)
              {
                [v26 timeIntervalSinceNow];
                v29 = fabs(v28);
                if (v29 > 7776000.0)
                {
                  v30 = p_info[350];
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                  {
                    v31 = MEMORY[0x1E696AD98];
                    v32 = v30;
                    v33 = [v31 numberWithDouble:v29];
                    *buf = 136315906;
                    v57 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
                    v58 = 2112;
                    v59 = path;
                    v60 = 2112;
                    v61 = &unk_1F02D8468;
                    v62 = 2112;
                    v63 = v33;
                    _os_log_impl(&dword_18E991000, v32, OS_LOG_TYPE_INFO, "%s Deleting item at path %@ as it has exceeded the expiration duration interval of %@ with an interval of %@", buf, 0x2Au);
                  }

                  v34 = [(INImageFilePersistence *)self _deleteItemAtFilePath:path];
                  if (v34)
                  {
                    v35 = INSiriLogContextIntents;
                    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      v57 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
                      v58 = 2112;
                      v59 = path;
                      v60 = 2112;
                      v61 = v34;
                      _os_log_error_impl(&dword_18E991000, v35, OS_LOG_TYPE_ERROR, "%s Failed to delete file at path %@: %@", buf, 0x20u);
                    }
                  }

                  p_info = (&OBJC_METACLASS___INCodableAttributeDialog + 32);
                }
              }

              else
              {
                v39 = p_info[350];
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v57 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
                  v58 = 2112;
                  v59 = path;
                  _os_log_error_impl(&dword_18E991000, v39, OS_LOG_TYPE_ERROR, "%s Item %@ has no creation date", buf, 0x16u);
                }
              }
            }
          }

          else
          {
            v36 = p_info[350];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = v36;
              path2 = [v19 path];
              *buf = 136315650;
              v57 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
              v58 = 2112;
              v59 = path2;
              v60 = 2112;
              v61 = v22;
              _os_log_error_impl(&dword_18E991000, v37, OS_LOG_TYPE_ERROR, "%s Attributes for path %@ could not be gathered: %@", buf, 0x20u);
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v17);
    }

    v40 = objc_opt_class();
    date = [MEMORY[0x1E695DF00] date];
    [v40 setLastEphemeralStorePurgingDate:date];

    v6 = v46;
  }

  v42 = *MEMORY[0x1E69E9840];
}

@end