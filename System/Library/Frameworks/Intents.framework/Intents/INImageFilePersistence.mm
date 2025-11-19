@interface INImageFilePersistence
- (BOOL)canStoreImage:(id)a3;
- (INImageFilePersistence)init;
- (NSString)serviceIdentifier;
- (id)_deleteItemAtFilePath:(id)a3;
- (id)_filePathForImageWithFileName:(id)a3;
- (id)filePathForImageWithIdentifier:(id)a3 error:(id *)a4;
- (id)storeImage:(id)a3 scaled:(BOOL)a4 qualityOfService:(unsigned int)a5 storeType:(unint64_t)a6 error:(id *)a7;
- (void)purgeExpiredImagesInEphemeralStore:(BOOL)a3;
- (void)purgeImageWithIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveImageWithIdentifier:(id)a3 completion:(id)a4;
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

- (id)_deleteItemAtFilePath:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v12];
  v6 = v12;

  if (v5)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[INImageFilePersistence _deleteItemAtFilePath:]";
      v17 = 2112;
      v18 = v3;
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

- (id)_filePathForImageWithFileName:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v3;
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
        v18 = [MEMORY[0x1E696AC08] defaultManager];
        v19 = [v18 fileExistsAtPath:v17];

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

- (void)purgeImageWithIdentifier:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F01E0850];
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
  if (v6)
  {
    v6[2](v6, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)retrieveImageWithIdentifier:(id)a3 completion:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F01E0850];
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
        v24 = [v9 pathExtension];
        v25 = [v24 isEqualToString:@"png"];

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
          v7[2](v7, v22, v21);

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

    v18 = [MEMORY[0x1E695DF90] dictionary];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to retrieve image with identifier %@ from storage service %@", v9, self];
    [v18 setObject:v19 forKey:*MEMORY[0x1E696A578]];

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

      [v18 setObject:v20 forKey:*MEMORY[0x1E696AA08]];
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6004 userInfo:v18];

    v22 = 0;
    goto LABEL_18;
  }

  v9 = v6;
LABEL_19:

  v23 = *MEMORY[0x1E69E9840];
}

- (id)storeImage:(id)a3 scaled:(BOOL)a4 qualityOfService:(unsigned int)a5 storeType:(unint64_t)a6 error:(id *)a7
{
  v9 = a4;
  v100[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (![(INImageFilePersistence *)self canStoreImage:v11])
  {
    if (!a7)
    {
      v30 = 0;
      goto LABEL_54;
    }

    v21 = MEMORY[0x1E696ABC0];
    v99 = *MEMORY[0x1E696A578];
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    v19 = NSStringFromClass(v23);
    v24 = [v22 stringWithFormat:@"Image class %@ not supported by store", v19];
    v100[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:&v99 count:1];
    *a7 = [v21 errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:v25];

    goto LABEL_32;
  }

  [(INImageFilePersistence *)self purgeExpiredImagesInEphemeralStore:0];
  v12 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
    v97 = 2112;
    v98 = v11;
    _os_log_impl(&dword_18E991000, v12, OS_LOG_TYPE_INFO, "%s Attempting to store image %@ using file persistence", buf, 0x16u);
  }

  v13 = [(_INDataImage *)v11 _imageData];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v11;
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
      v18 = [(_INDataImage *)v11 _imageData];
      v19 = [(_INDataImage *)v17 initWithImageData:v18];

      [(INImage *)v11 _preferredScaledSize];
      [(INImage *)v19 _setPreferredScaledSize:?];
      if (v9)
      {
LABEL_10:
        v20 = [(INImage *)v19 _in_downscaledImageForFilePersistence];
LABEL_35:
        v51 = v20;
        v52 = [(_INDataImage *)v20 _imageData];
        if (!v52 && v9)
        {
          v53 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
            v97 = 2112;
            v98 = v19;
            _os_log_error_impl(&dword_18E991000, v53, OS_LOG_TYPE_ERROR, "%s No scaled image data, falling back to unscaled data image: %@", buf, 0x16u);
          }

          v52 = [(_INDataImage *)v19 _imageData];
        }

        if (v52)
        {
          v90 = 0;
          v54 = [v52 _in_writeDataToPathForImage:v19 storeType:a6 error:&v90];
          v55 = v90;
          if (v54)
          {
            v56 = v54;
            v30 = v56;
LABEL_51:

LABEL_52:
            goto LABEL_53;
          }

          v62 = a7;
          v63 = [MEMORY[0x1E695DF90] dictionary];
          v64 = MEMORY[0x1E696AEC0];
          v65 = [(_INDataImage *)v11 description];
          v66 = [v64 stringWithFormat:@"Failed to store image %@ in service %@", v65, self];
          [v63 setObject:v66 forKey:*MEMORY[0x1E696A578]];

          if (v55)
          {
            [v63 setObject:v55 forKey:*MEMORY[0x1E696AA08]];
          }

          if (v62)
          {
            *v62 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:v63];
          }

          v56 = 0;
        }

        else
        {
          if (!a7)
          {
            v30 = 0;
            goto LABEL_52;
          }

          v57 = MEMORY[0x1E696ABC0];
          v93 = *MEMORY[0x1E696A578];
          v58 = a7;
          v59 = MEMORY[0x1E696AEC0];
          v55 = [(_INDataImage *)v11 description];
          v56 = [v59 stringWithFormat:@"Failed to store image %@ in service %@", v55, self];
          v94 = v56;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v61 = [v57 errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:v60];
          *v58 = v61;
        }

        v30 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v19 = 0;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    v20 = v19;
    goto LABEL_35;
  }

  v19 = [(INImage *)v11 _uri];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [(INImage *)v11 _sandboxExtensionData];
    if (v26)
    {
      v27 = v26;
      v28 = [(_INDataImage *)v19 startAccessingSecurityScopedResource];

      v29 = 1;
      if (!v19)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }
  }

  v29 = 0;
  v28 = 1;
  if (v19)
  {
LABEL_19:
    if (([(_INDataImage *)v19 isFileURL]& v28) != 1)
    {
      goto LABEL_28;
    }

    v31 = [MEMORY[0x1E696AC08] defaultManager];
    [(_INDataImage *)v19 path];
    v32 = v87 = a7;
    v33 = [v31 fileExistsAtPath:v32];

    a7 = v87;
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
      v98 = v11;
      _os_log_impl(&dword_18E991000, v34, OS_LOG_TYPE_INFO, "%s Copying file URL image to intents directory: %@", buf, 0x16u);
    }

    v35 = [(INImage *)v11 _in_writeableFilePersistenceConfigurationForStoreType:a6];
    v36 = [v35 filePath];
    v37 = [MEMORY[0x1E696AC08] defaultManager];
    v38 = [v37 fileExistsAtPath:v36];

    if (!v38)
    {
      goto LABEL_63;
    }

    v39 = [MEMORY[0x1E696AC08] defaultManager];
    v40 = [(_INDataImage *)v19 filePathURL];
    v41 = [v40 absoluteString];
    v42 = [v39 contentsEqualAtPath:v36 andPath:v41];

    v43 = INSiriLogContextIntents;
    v44 = os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO);
    if (v42)
    {
      if (v44)
      {
        *buf = 136315394;
        v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
        v97 = 2112;
        v98 = v11;
        _os_log_impl(&dword_18E991000, v43, OS_LOG_TYPE_INFO, "%s URL image already exists and is the same at destination path: %@, not copying (but updating modified date)", buf, 0x16u);
      }

      v45 = _INImageFilePersistenceUpdateModifiedDateAtFilePath(v36);
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
        v98 = v36;
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
      v98 = v11;
      _os_log_impl(&dword_18E991000, v43, OS_LOG_TYPE_INFO, "%s URL image already exists and is different at destination path: %@, removing the old one and copying", buf, 0x16u);
    }

    v69 = [MEMORY[0x1E696AC08] defaultManager];
    v70 = [v69 isDeletableFileAtPath:v36];

    v71 = v87;
    if ((v70 & 1) == 0)
    {
      v82 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v96 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
        v97 = 2112;
        v98 = v11;
        _os_log_error_impl(&dword_18E991000, v82, OS_LOG_TYPE_ERROR, "%s URL image at destination path is not deleteable: %@", buf, 0x16u);
      }

      goto LABEL_74;
    }

    v72 = [MEMORY[0x1E696AC08] defaultManager];
    v89 = 0;
    [v72 removeItemAtPath:v36 error:&v89];
    v73 = v89;

    if (v73)
    {
      v74 = 0;
    }

    else
    {
LABEL_63:
      v75 = [MEMORY[0x1E695DFF8] fileURLWithPath:v36];
      v76 = [MEMORY[0x1E696AC08] defaultManager];
      v88 = 0;
      [v76 copyItemAtURL:v19 toURL:v75 error:&v88];
      v73 = v88;

      if (!v73)
      {
        if (v9)
        {
          v77 = [INImage imageWithURL:v75];
          [(INImage *)v11 _preferredScaledSize];
          [v77 _setPreferredScaledSize:?];
          v78 = [v77 _in_downscaledImageForFilePersistence];
          v79 = [v78 _uri];
          if (!v79)
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

        v81 = _INImageFilePersistenceUpdateModifiedDateAtFilePath(v36);

        goto LABEL_71;
      }

      v74 = 0;
      v71 = v87;
    }

LABEL_77:
    v84 = [v35 identifier];
    if (v71)
    {
      v85 = v73;
      *v71 = v73;
    }

    if (v74)
    {
      v86 = v84;
    }

    else
    {
      v86 = 0;
    }

    v30 = v86;

    goto LABEL_53;
  }

LABEL_28:
  if (a7)
  {
    v46 = MEMORY[0x1E696ABC0];
    v91 = *MEMORY[0x1E696A578];
    v47 = MEMORY[0x1E696AEC0];
    v48 = [(_INDataImage *)v11 description];
    v49 = [v47 stringWithFormat:@"No valid data to store for image %@ in service %@", v48, self];
    v92 = v49;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    *a7 = [v46 errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:v50];
  }

  if ((v29 & v28) == 1)
  {
    [(_INDataImage *)v19 stopAccessingSecurityScopedResource];
  }

LABEL_32:
  v30 = 0;
LABEL_53:

LABEL_54:
  v67 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)filePathForImageWithIdentifier:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(INImageFilePersistence *)self _filePathForImageWithFileName:v6];
  if (v7)
  {
    a4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
    goto LABEL_6;
  }

  v8 = INSiriLogContextIntents;
  if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *buf = 136315394;
  v16 = "[INImageFilePersistence filePathForImageWithIdentifier:error:]";
  v17 = 2112;
  v18 = v6;
  _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s Failed to retrieve file path for image: %@", buf, 0x16u);
  if (a4)
  {
LABEL_5:
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to retrieve image file path with identifier %@ from storage service %@", v6, self, *MEMORY[0x1E696A578]];
    v14 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6004 userInfo:v10];

    a4 = 0;
  }

LABEL_6:

  v11 = *MEMORY[0x1E69E9840];

  return a4;
}

- (BOOL)canStoreImage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(INImageFilePersistence *)self _supportedClasses];
    if ([v5 containsObject:objc_opt_class()])
    {
      v6 = [v4 _in_writeableFilePersistenceConfigurationForStoreType:0];
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

- (void)purgeExpiredImagesInEphemeralStore:(BOOL)a3
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

  v5 = [objc_opt_class() lastEphemeralStorePurgingDate];
  v6 = v5;
  if (!v5 || ([v5 timeIntervalSinceNow], v7 <= -180.0))
  {
    v46 = v6;
    v45 = _INImageFilePersistenceDirectoryPathWithStoreTypeCreateIfNeeded(1);
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = *MEMORY[0x1E695DB78];
    v11 = *MEMORY[0x1E695DA98];
    v66[0] = *MEMORY[0x1E695DB78];
    v66[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    v55 = 0;
    v44 = v8;
    v13 = [v9 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v12 options:5 error:&v55];
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
            v24 = [v23 BOOLValue];

            if ((v24 & 1) == 0)
            {
              v25 = [v19 path];
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
                    v59 = v25;
                    v60 = 2112;
                    v61 = &unk_1F02D8468;
                    v62 = 2112;
                    v63 = v33;
                    _os_log_impl(&dword_18E991000, v32, OS_LOG_TYPE_INFO, "%s Deleting item at path %@ as it has exceeded the expiration duration interval of %@ with an interval of %@", buf, 0x2Au);
                  }

                  v34 = [(INImageFilePersistence *)self _deleteItemAtFilePath:v25];
                  if (v34)
                  {
                    v35 = INSiriLogContextIntents;
                    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      v57 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
                      v58 = 2112;
                      v59 = v25;
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
                  v59 = v25;
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
              v38 = [v19 path];
              *buf = 136315650;
              v57 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
              v58 = 2112;
              v59 = v38;
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
    v41 = [MEMORY[0x1E695DF00] date];
    [v40 setLastEphemeralStorePurgingDate:v41];

    v6 = v46;
  }

  v42 = *MEMORY[0x1E69E9840];
}

@end