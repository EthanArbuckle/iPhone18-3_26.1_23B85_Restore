@interface PHLivePhotoExportSession
+ (BOOL)_canCreateLivePhotoWithURLs:(id)a3 outError:(id *)a4;
+ (BOOL)_identifyResourceURLs:(id)a3 outImageURL:(id *)a4 outVideoURL:(id *)a5 error:(id *)a6;
- (BOOL)_isOutputURLValid:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (PHLivePhotoExportSession)initWithResourceFileURLs:(id)a3;
- (id)writeToFileURL:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation PHLivePhotoExportSession

- (BOOL)_isOutputURLValid:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 isFileURL])
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v7 path];
    if ([v9 fileExistsAtPath:v10])
    {
      v11 = [v8 format];

      if (v11 != 1)
      {
        [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"destination already exists: '%@'", v7}];
        goto LABEL_7;
      }
    }

    else
    {
    }

    v16 = [v8 format];
    if (v16 != 1)
    {
      if (!v16)
      {
        v17 = [v7 pathExtension];
        v18 = *MEMORY[0x1E69C09D0];
        v19 = [v17 isEqualToString:*MEMORY[0x1E69C09D0]];

        if ((v19 & 1) == 0)
        {
          v20 = MEMORY[0x1E696ABC0];
          v21 = [v7 pathExtension];
          v22 = [v20 ph_genericErrorWithLocalizedDescription:{@"destination has extension '%@' but requires '%@'", v21, v18}];
          if (a5)
          {
            *a5 = v22;
          }

          goto LABEL_16;
        }
      }

LABEL_18:
      v15 = 1;
      goto LABEL_19;
    }

    if ([v7 hasDirectoryPath])
    {
      goto LABEL_18;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = @"destination is not directory, PHLivePhotoExportFormatResources requires a directory";
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v24 = v7;
    v13 = @"destination is not a file url: '%@'";
  }

  [v12 ph_genericErrorWithLocalizedDescription:{v13, v24}];
  v14 = LABEL_7:;
  if (!a5)
  {
LABEL_16:
    v15 = 0;
    goto LABEL_19;
  }

  v15 = 0;
  *a5 = v14;
LABEL_19:

  return v15;
}

- (id)writeToFileURL:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v76[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v9)
  {
    v9 = objc_alloc_init(PHLivePhotoExportSessionOptions);
  }

  v75 = 0;
  v12 = [(PHLivePhotoExportSession *)self _isOutputURLValid:v8 withOptions:v9 error:&v75];
  v13 = v75;
  if (v12)
  {
    v66 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    v67 = self->_fileURLs;
    p_imageURL = &self->_imageURL;
    v15 = self->_imageURL;
    p_videoURL = &self->_videoURL;
    v17 = self->_videoURL;
    v18 = v17;
    if (v15 && v17)
    {
      v19 = v15;
      v20 = v17;
LABEL_19:
      if (*p_imageURL && *p_videoURL && !v13)
      {
        v29 = [(PHLivePhotoExportSessionOptions *)v9 format];
        if (v29 == 1)
        {
          v63 = v11;
          v65 = v20;
          v58 = v19;
          v35 = MEMORY[0x1E695DFF8];
          v36 = MEMORY[0x1E696AEC0];
          v37 = [MEMORY[0x1E696AFB0] UUID];
          [v37 UUIDString];
          v39 = v38 = v8;
          v40 = [(NSURL *)*p_imageURL pathExtension];
          v41 = [v36 stringWithFormat:@"%@.%@", v39, v40];
          v42 = [v35 fileURLWithPath:v41 relativeToURL:v38];

          v60 = MEMORY[0x1E695DFF8];
          v43 = MEMORY[0x1E696AEC0];
          v44 = [MEMORY[0x1E696AFB0] UUID];
          v45 = [v44 UUIDString];
          v46 = [(NSURL *)*p_videoURL pathExtension];
          v47 = [v43 stringWithFormat:@"%@.%@", v45, v46];
          v48 = v60;
          v61 = v38;
          v49 = [v48 fileURLWithPath:v47 relativeToURL:v38];

          v50 = [MEMORY[0x1E696AC08] defaultManager];
          v51 = *p_imageURL;
          v34 = v42;
          v69 = 0;
          [v50 copyItemAtURL:v51 toURL:v42 error:&v69];
          v13 = v69;

          if (!v13)
          {
            v52 = [MEMORY[0x1E696AC08] defaultManager];
            v53 = *p_videoURL;
            v68 = 0;
            [v52 copyItemAtURL:v53 toURL:v49 error:&v68];
            v13 = v68;

            if (!v13)
            {
              [v63 setObject:v42 forKeyedSubscript:@"PHLivePhotoExportSessionInfoPhotoURLKey"];
              [v63 setObject:v49 forKeyedSubscript:@"PHLivePhotoExportSessionInfoVideoURLKey"];
            }
          }

          v19 = v58;
          v8 = v61;

          v11 = v63;
          v20 = v65;
        }

        else
        {
          if (v29)
          {
            if (v10)
            {
              v21 = v66;
              [v66 setCompletedUnitCount:100];
              v13 = 0;
LABEL_33:
              v10[2](v10, v11);
LABEL_40:

              goto LABEL_41;
            }

            v13 = 0;
LABEL_39:
            v21 = v66;
            goto LABEL_40;
          }

          v30 = objc_alloc(MEMORY[0x1E69C0918]);
          [(NSURL *)*p_videoURL path];
          v32 = v31 = v20;
          v33 = [(NSURL *)*p_imageURL path];
          v34 = [v30 initWithPathToVideo:v32 pathToImage:v33];

          v20 = v31;
          v70 = 0;
          [v34 writeToBundleAtURL:v8 error:&v70];
          v13 = v70;
          [v11 setObject:v8 forKeyedSubscript:@"PHLivePhotoExportSessionInfoBundleURLKey"];
        }
      }

      if (v10)
      {
        v21 = v66;
        [v66 setCompletedUnitCount:100];
        if (v13)
        {
          [v11 setObject:v13 forKeyedSubscript:@"PHLivePhotoExportSessionInfoErrorKey"];
        }

        goto LABEL_33;
      }

      goto LABEL_39;
    }

    v59 = v8;
    v62 = v11;
    v73 = v17;
    v74 = v15;
    v72 = v13;
    v22 = [objc_opt_class() _identifyResourceURLs:v67 outImageURL:&v74 outVideoURL:&v73 error:&v72];
    obj = v74;
    v23 = v74;

    v24 = v73;
    v64 = v73;

    v25 = v72;
    if (v22)
    {
      v57 = v23;
      if (v23)
      {
        v55 = v24;
        v20 = v64;
        if (!v64)
        {
          v13 = v25;
          v19 = v23;
          v8 = v59;
          v11 = v62;
          goto LABEL_19;
        }

        v26 = objc_opt_class();
        v76[0] = v23;
        v76[1] = v64;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
        v71 = v25;
        v28 = [v26 _canCreateLivePhotoWithURLs:v27 outError:&v71];
        v13 = v71;

        v11 = v62;
        if (v28)
        {
          objc_storeStrong(p_imageURL, obj);
          objc_storeStrong(p_videoURL, v55);
        }

        v19 = v57;
        v8 = v59;
        goto LABEL_18;
      }

      v13 = v25;
      v19 = 0;
      v8 = v59;
    }

    else
    {
      v13 = v25;
      v8 = v59;
      v19 = v23;
    }

    v11 = v62;
LABEL_18:
    v20 = v64;
    goto LABEL_19;
  }

  [v11 setObject:v13 forKeyedSubscript:@"PHLivePhotoExportSessionInfoErrorKey"];
  if (v10)
  {
    v10[2](v10, v11);
  }

  v21 = 0;
LABEL_41:

  return v21;
}

- (PHLivePhotoExportSession)initWithResourceFileURLs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHLivePhotoExportSession;
  v6 = [(PHLivePhotoExportSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURLs, a3);
  }

  return v7;
}

+ (BOOL)_canCreateLivePhotoWithURLs:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PHValidator);
  v12 = 0;
  v7 = [(PHValidator *)v6 validateURLs:v5 withOptions:66 videoComplementMetadata:0 error:&v12];

  v8 = v12;
  v9 = v8;
  if (a4 && !v7)
  {
    v10 = v8;
    *a4 = v9;
  }

  return v7;
}

+ (BOOL)_identifyResourceURLs:(id)a3 outImageURL:(id *)a4 outVideoURL:(id *)a5 error:(id *)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__52212;
  v52 = __Block_byref_object_dispose__52213;
  v53 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PHLivePhotoExportSession__identifyResourceURLs_outImageURL_outVideoURL_error___block_invoke;
  aBlock[3] = &unk_1E75AACF8;
  aBlock[4] = &v48;
  v7 = _Block_copy(aBlock);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (!v8)
  {

    v9 = 0;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
  v11 = *v44;
  v12 = *MEMORY[0x1E69C09D0];
  v41 = *MEMORY[0x1E6982E30];
  v40 = *MEMORY[0x1E6982EE8];
  do
  {
    v13 = 0;
    do
    {
      if (*v44 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v43 + 1) + 8 * v13);
      v15 = [v14 pathExtension];
      v16 = [v15 isEqualToString:v12];

      if (v16)
      {
        v17 = [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:v14];
        v18 = v17;
        if (v17)
        {
          v19 = MEMORY[0x1E695DFF8];
          v20 = [v17 imagePath];
          v21 = [v19 fileURLWithPath:v20];

          v22 = MEMORY[0x1E695DFF8];
          v23 = [v18 videoPath];
          v24 = [v22 fileURLWithPath:v23];

          v9 = v24;
          v10 = v21;
        }

        else
        {
          v23 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:{@"Bundle at url %@ is corrupted", v14}];
          v7[2](v7, v23);
        }
      }

      else
      {
        v25 = MEMORY[0x1E6982C40];
        v26 = [v14 pathExtension];
        v18 = [v25 typeWithFilenameExtension:v26];

        if (v18)
        {
          if ([v18 conformsToType:v41])
          {
            if (v10)
            {
              v27 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Multiple image fileURLs"];
              v7[2](v7, v27);
            }

            else
            {
              v10 = v14;
            }
          }

          else if ([v18 conformsToType:v40])
          {
            if (v9)
            {
              v28 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Multiple video fileURLs"];
              v7[2](v7, v28);
            }

            else
            {
              v9 = v14;
            }
          }

          else
          {
            v29 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:{@"Unknown type for fileURL %@", v14}];
            v7[2](v7, v29);
          }
        }
      }

      ++v13;
    }

    while (v8 != v13);
    v30 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
    v8 = v30;
  }

  while (v30);

  if (!v10)
  {
LABEL_28:
    v31 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3303 localizedDescription:@"Missing image fileURL"];
    v7[2](v7, v31);

    v10 = 0;
    if (v9)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v9)
  {
    goto LABEL_30;
  }

LABEL_29:
  v32 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3303 localizedDescription:@"Missing video fileURL"];
  v7[2](v7, v32);

LABEL_30:
  v33 = v49[5];
  if (v33)
  {
    v34 = v49[5];
    a5 = a6;
    if (!a6)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (a4)
  {
    v35 = v10;
    *a4 = v10;
  }

  v34 = v9;
  if (a5)
  {
LABEL_36:
    *a5 = v34;
  }

LABEL_37:

  _Block_object_dispose(&v48, 8);
  return v33 == 0;
}

void __80__PHLivePhotoExportSession__identifyResourceURLs_outImageURL_outVideoURL_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Failed to export live photo: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  if (!*(v5 + 40))
  {
    if (v3)
    {
      v6 = v3;
      v7 = *(v5 + 40);
      *(v5 + 40) = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
      v9 = *(*(a1 + 32) + 8);
      v7 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

@end