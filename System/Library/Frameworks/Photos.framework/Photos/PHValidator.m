@interface PHValidator
+ (BOOL)isSupportedAudioAtPath:(id)a3;
+ (BOOL)isSupportedImageAtPath:(id)a3;
+ (BOOL)isSupportedMovieAtPath:(id)a3;
+ (unsigned)mediaTypeForContentType:(id)a3;
+ (unsigned)mediaTypeForURL:(id)a3;
- (BOOL)_validateImageSource:(CGImageSource *)a3 error:(id *)a4;
- (BOOL)_validateLivePhotoResourceURLs:(id)a3 videoComplementMetadata:(id)a4 error:(id *)a5;
- (BOOL)_validateVideoURL:(id)a3 error:(id *)a4;
- (BOOL)getLivePhotoVideoMetadataFromURL:(id)a3 videoComplementMetadata:(id)a4 pairingIdentifier:(id *)a5 videoDuration:(id *)a6 imageDisplayTime:(id *)a7 error:(id *)a8;
- (BOOL)isValidImagePathExtension:(id)a3;
- (BOOL)isValidVideoPathExtension:(id)a3;
- (BOOL)validateData:(id)a3 withOptions:(unint64_t)a4 error:(id *)a5;
- (BOOL)validateURL:(id)a3 withOptions:(unint64_t)a4 error:(id *)a5;
- (BOOL)validateURLs:(id)a3 withOptions:(unint64_t)a4 videoComplementMetadata:(id)a5 error:(id *)a6;
@end

@implementation PHValidator

+ (BOOL)isSupportedImageAtPath:(id)a3
{
  v3 = MEMORY[0x1E69C08F0];
  v4 = [a3 pathExtension];
  v5 = [MEMORY[0x1E69C08F0] supportedImageTypes];
  LOBYTE(v3) = [v3 filenameExtension:v4 conformsToOneOfTypes:v5];

  return v3;
}

+ (BOOL)isSupportedMovieAtPath:(id)a3
{
  v3 = MEMORY[0x1E69C08F0];
  v4 = [a3 pathExtension];
  v5 = [MEMORY[0x1E69C08F0] supportedMovieTypes];
  LOBYTE(v3) = [v3 filenameExtension:v4 conformsToOneOfTypes:v5];

  return v3;
}

+ (BOOL)isSupportedAudioAtPath:(id)a3
{
  v3 = MEMORY[0x1E69C08F0];
  v4 = [a3 pathExtension];
  v5 = [MEMORY[0x1E69C08F0] supportedAudioTypes];
  LOBYTE(v3) = [v3 filenameExtension:v4 conformsToOneOfTypes:v5];

  return v3;
}

+ (unsigned)mediaTypeForURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E69C08F0] typeForURL:v4 error:0];
    v6 = [a1 mediaTypeForContentType:v5];
    if (v6 == 4)
    {
      v8 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v4 options:0];
      v11 = [v8 isPlayable] == 0;
      v12 = 4;
      v13 = 8;
    }

    else
    {
      v7 = v6;
      if (v6 != 16)
      {
LABEL_11:

        goto LABEL_12;
      }

      v8 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v4 options:0];
      v9 = [MEMORY[0x1E69C0708] mainVideoTrackForAsset:v8];
      v10 = [v9 isDecodable];

      v11 = v10 == 0;
      v12 = 16;
      v13 = 32;
    }

    if (v11)
    {
      v7 = v12;
    }

    else
    {
      v7 = v13;
    }

    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

+ (unsigned)mediaTypeForContentType:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v4 = [MEMORY[0x1E69C08F0] supportedImageTypes];
    v5 = [v4 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v37;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v37 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([v3 conformsToType:*(*(&v36 + 1) + 8 * i)])
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v18 = [MEMORY[0x1E69C08F0] imageTypesUnsupportedForImport];
            v19 = [v18 countByEnumeratingWithState:&v32 objects:v42 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v33;
              while (2)
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v33 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  if ([v3 conformsToType:*(*(&v32 + 1) + 8 * j)])
                  {
                    v17 = 1;
                    goto LABEL_38;
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v32 objects:v42 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            v17 = 2;
LABEL_38:

            goto LABEL_41;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v36 objects:v43 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = [MEMORY[0x1E69C08F0] supportedMovieTypes];
    v9 = [v4 countByEnumeratingWithState:&v28 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      while (2)
      {
        for (k = 0; k != v10; ++k)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v4);
          }

          if ([v3 conformsToType:*(*(&v28 + 1) + 8 * k)])
          {
            v17 = 16;
            goto LABEL_41;
          }
        }

        v10 = [v4 countByEnumeratingWithState:&v28 objects:v41 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [MEMORY[0x1E69C08F0] supportedAudioTypes];
    v13 = [v4 countByEnumeratingWithState:&v24 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      while (2)
      {
        for (m = 0; m != v14; ++m)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v4);
          }

          if ([v3 conformsToType:*(*(&v24 + 1) + 8 * m)])
          {
            v17 = 4;
            goto LABEL_41;
          }
        }

        v14 = [v4 countByEnumeratingWithState:&v24 objects:v40 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_41:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)getLivePhotoVideoMetadataFromURL:(id)a3 videoComplementMetadata:(id)a4 pairingIdentifier:(id *)a5 videoDuration:(id *)a6 imageDisplayTime:(id *)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = [v13 path];
  v15 = PFVideoComplementMetadataForVideoAtPath();
  v16 = 0;

  if (a5)
  {
LABEL_3:
    *a5 = [v15 pairingIdentifier];
  }

LABEL_4:
  if (a6)
  {
    if (v15)
    {
      [v15 videoDuration];
    }

    else
    {
      v20 = 0uLL;
      v21 = 0;
    }

    *&a6->var0 = v20;
    a6->var3 = v21;
  }

  if (a7)
  {
    if (v15)
    {
      [v15 imageDisplayTime];
    }

    else
    {
      v20 = 0uLL;
      v21 = 0;
    }

    *&a7->var0 = v20;
    a7->var3 = v21;
  }

  if (a8)
  {
    v18 = v16;
    *a8 = v16;
  }

  return v15 != 0;
}

- (BOOL)_validateLivePhotoResourceURLs:(id)a3 videoComplementMetadata:(id)a4 error:(id *)a5
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v52 = a4;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__46751;
  v79 = __Block_byref_object_dispose__46752;
  v80 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PHValidator__validateLivePhotoResourceURLs_videoComplementMetadata_error___block_invoke;
  aBlock[3] = &unk_1E75A9E98;
  aBlock[4] = self;
  v68 = &v71;
  v69 = &v75;
  v70 = a2;
  v9 = v8;
  v67 = v9;
  v49 = _Block_copy(aBlock);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v62 objects:v85 count:16];
  if (!v10)
  {

    v11 = 0;
    goto LABEL_20;
  }

  v11 = 0;
  v12 = 0;
  v13 = *v63;
  v14 = @"Multiple image resources";
  v15 = 8;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v63 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v62 + 1) + 8 * i);
      v18 = [v17 pathExtension];
      if ([(PHValidator *)self isValidImagePathExtension:v18])
      {
        if (v12)
        {
          goto LABEL_18;
        }

        v12 = v17;
      }

      else
      {
        if (![(PHValidator *)self isValidVideoPathExtension:v18])
        {
          goto LABEL_13;
        }

        if (v11)
        {
          v15 = 9;
          v14 = @"Multiple video resources";
LABEL_18:
          v49[2](v49, 3302, v15, v14, 0);

          goto LABEL_19;
        }

        v11 = v17;
      }

      v19 = v17;
LABEL_13:
    }

    v10 = [obj countByEnumeratingWithState:&v62 objects:v85 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_19:

  if (!v12)
  {
LABEL_20:
    v49[2](v49, 3303, 10, @"Missing image resource", 0);
    v12 = 0;
  }

  if (!v11)
  {
    v49[2](v49, 3303, 11, @"Missing video resource", 0);
  }

  v51 = v11;
  v20 = *(v72 + 24);
  if (v20 != 1)
  {
    v28 = v76[5];
    goto LABEL_62;
  }

  v21 = 0;
  while (1)
  {
    v22 = v20;

    v23 = [v12 path];
    v60 = 0;
    v61 = 0;
    v24 = PFReadPairingIdentifierFromImageAtPath();
    v25 = 0;
    v21 = 0;

    if ((v25 != 0) | v24 & 1)
    {
      break;
    }

    v26 = PLBackendGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v82 = 0;
      *&v82[4] = 2112;
      *&v82[6] = v21;
      _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_ERROR, "RETRY: Read metadata success: %{BOOL}d Invalid image metadata. (Error: %@)", buf, 0x12u);
    }

    LOBYTE(v20) = 0;
    if ((v22 & 1) == 0)
    {
      v27 = 12;
      goto LABEL_35;
    }
  }

  if (v25)
  {
    goto LABEL_36;
  }

  if (v24)
  {
    v27 = 13;
  }

  else
  {
    v27 = 12;
  }

LABEL_35:
  (v49)[2](v49, 3302, v27, @"Invalid image metadata", v21);
  v25 = 0;
LABEL_36:
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v58 = 0uLL;
  v59 = 0;
  v56 = 0uLL;
  v57 = 0;
  v50 = 1;
  do
  {
    v33 = v32;

    v58 = *MEMORY[0x1E6960C70];
    v59 = *(MEMORY[0x1E6960C70] + 16);
    v56 = v58;
    v57 = v59;

    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v54 = 0;
    v55 = 0;
    v35 = [(PHValidator *)self getLivePhotoVideoMetadataFromURL:v51 videoComplementMetadata:v52 pairingIdentifier:&v55 videoDuration:&v58 imageDisplayTime:&v56 error:&v54];
    v31 = v55;
    v30 = v54;
    if (!v35)
    {
      v50 &= PLErrorOrUnderlyingErrorHasDomainAndCode() ^ 1;
    }

    if (!v31)
    {
      [v34 addObject:@"pairing identifier"];
    }

    if ((BYTE12(v58) & 0x1D) != 1)
    {
      v36 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v82 = v30;
        _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_ERROR, "PHValidator: NON-FATAL error, invalid or missing video duration. (Error: %@)", buf, 0xCu);
      }
    }

    if ((BYTE12(v56) & 0x1D) != 1)
    {
      v37 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v82 = v30;
        _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_ERROR, "PHValidator: NON-FATAL error, invalid or missing image display time. (Error: %@)", buf, 0xCu);
      }
    }

    if ([v34 count] == 0 || v35)
    {
      break;
    }

    v38 = PLBackendGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [v34 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      *v82 = @"N";
      *&v82[8] = 2114;
      *&v82[10] = v39;
      v83 = 2112;
      v84 = v30;
      _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_ERROR, "RETRY: Read metadata success: %{public}@ Invalid video metadata (%{public}@). (Error: %@)", buf, 0x20u);
    }

    v32 = 0;
    v29 = v34;
  }

  while ((v33 & 1) != 0);
  if ([v34 count])
  {
    if (v50)
    {
      v40 = 15;
    }

    else
    {
      v40 = 14;
    }

    v41 = MEMORY[0x1E696AEC0];
    v42 = [v34 componentsJoinedByString:{@", "}];
    v43 = [v41 stringWithFormat:@"Invalid video metadata: %@", v42];
    (v49)[2](v49, 3302, v40, v43, v30);
  }

  if (!v76[5] && ([v25 isEqualToString:v31] & 1) == 0)
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid image/video pairing, image identifier (%@) does not match video identifier (%@)", v25, v31];
    v49[2](v49, 3302, 16, v44, 0);
  }

  v45 = *(v72 + 24);
  v28 = v76[5];
  if ((v45 & 1) == 0)
  {
LABEL_62:
    if (a5)
    {
      v28 = v28;
      *a5 = v28;
    }
  }

  v46 = *(v72 + 24);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);

  return v46 & 1;
}

void __76__PHValidator__validateLivePhotoResourceURLs_videoComplementMetadata_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a1[8] object:a1[4] file:@"PHValidator.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v11 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v19 = v9;
    _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "invalid live photo resource: %{public}@", buf, 0xCu);
  }

  *(*(a1[6] + 8) + 24) = 0;
  if (!*(*(a1[7] + 8) + 40))
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    [v12 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A278]];
    [v12 setObject:a1[5] forKeyedSubscript:@"_PHResourceUrlsErrorKey"];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v12 setObject:v13 forKeyedSubscript:@"PHValidationFailureTypeErrorKey"];

    v14 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:a2 userInfo:v12];
    v15 = *(a1[7] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

- (BOOL)_validateVideoURL:(id)a3 error:(id *)a4
{
  v44[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E69BE670];
    v8 = [v5 path];
    v9 = [v7 canSaveVideoToLibrary:v8];

    if (v9)
    {
      v10 = [MEMORY[0x1E6987E28] assetWithURL:v5];
      v11 = dispatch_semaphore_create(0);
      v12 = MEMORY[0x1E6987E60];
      v13 = *MEMORY[0x1E69872E8];
      v14 = *MEMORY[0x1E69874B8];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __39__PHValidator__validateVideoURL_error___block_invoke;
      v27[3] = &unk_1E75A9E68;
      v29 = &v30;
      v15 = v11;
      v28 = v15;
      [v12 determineCompatibilityOfExportPreset:v13 withAsset:v10 outputFileType:v14 completionHandler:v27];
      v16 = dispatch_time(0, 20000000000);
      v17 = dispatch_semaphore_wait(v15, v16) != 0;
    }

    else
    {
      v17 = 0;
    }

    if (v31[3])
    {
      v18 = 0;
    }

    else
    {
      v19 = MEMORY[0x1E696ABC0];
      v43[0] = *MEMORY[0x1E696A278];
      v43[1] = @"PHValidationFailureTypeErrorKey";
      v44[0] = @"Incompatible video";
      v44[1] = &unk_1F102D988;
      v43[2] = @"_PHResourceUrlsErrorKey";
      v42 = v5;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      v44[2] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
      v18 = [v19 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v21];

      v22 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(v31 + 24);
        *buf = 138413058;
        v35 = v5;
        v36 = 1024;
        v37 = v9;
        v38 = 1024;
        v39 = v23;
        v40 = 1024;
        v41 = v17;
        _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Incompatible video %@ (compatible=%d, valid=%d, timeout=%d)", buf, 0x1Eu);
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v18 = PHValidatorError(3303, 7, @"Missing video URL");
  }

  v24 = *(v31 + 24);
  if (a4 && (v31[3] & 1) == 0)
  {
    v25 = v18;
    *a4 = v18;
    v24 = *(v31 + 24);
  }

  _Block_object_dispose(&v30, 8);
  return v24 & 1;
}

- (BOOL)_validateImageSource:(CGImageSource *)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = [MEMORY[0x1E69C08F0] typeWithIdentifier:CGImageSourceGetType(a3)];
    if ([v6 conformsToType:*MEMORY[0x1E6982E30]])
    {
      if (CGImageSourceGetCount(a3))
      {
        v7 = 0;
        v8 = 1;
        goto LABEL_10;
      }

      v7 = PHValidatorError(3302, 6, @"Empty image source");
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalidate image type (%@)", v6];
      v7 = PHValidatorError(3302, 6, v9);
    }

    v8 = 0;
LABEL_10:

    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v7 = PHValidatorError(3303, 6, @"Missing image source");
  v8 = 0;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v8)
  {
    v10 = v7;
    *a4 = v7;
  }

LABEL_13:

  return v8;
}

- (BOOL)isValidVideoPathExtension:(id)a3
{
  v3 = MEMORY[0x1E69C08F0];
  v4 = a3;
  v5 = [v3 supportedMovieTypes];
  LOBYTE(v3) = [v3 filenameExtension:v4 conformsToOneOfTypes:v5];

  return v3;
}

- (BOOL)isValidImagePathExtension:(id)a3
{
  v3 = MEMORY[0x1E69C08F0];
  v4 = a3;
  v5 = [v3 supportedImageTypes];
  LOBYTE(v3) = [v3 filenameExtension:v4 conformsToOneOfTypes:v5];

  return v3;
}

- (BOOL)validateData:(id)a3 withOptions:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [[_PHValidation alloc] initWithOptions:a4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__PHValidator_validateData_withOptions_error___block_invoke;
  v13[3] = &unk_1E75AB248;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  [(_PHValidation *)v10 validateOption:16 usingBlock:v13];
  LOBYTE(a5) = [(_PHValidation *)v10 isValid:a5];

  return a5;
}

void __46__PHValidator_validateData_withOptions_error___block_invoke(uint64_t a1)
{
  v2 = CGImageSourceCreateWithData(*(a1 + 32), 0);
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v3 _validateImageSource:v2 error:&v6];
  v5 = v6;
  [*(a1 + 48) assert:v4 error:v5];
  if (v2)
  {
    CFRelease(v2);
  }
}

- (BOOL)validateURLs:(id)a3 withOptions:(unint64_t)a4 videoComplementMetadata:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if ((a4 & 0x70) != 0)
  {
    a4 |= 2uLL;
  }

  v12 = [[_PHValidation alloc] initWithOptions:(a4 >> 1) & 1 | a4];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke;
  v57[3] = &unk_1E75AAEB0;
  v13 = v10;
  v58 = v13;
  v14 = v12;
  v59 = v14;
  [(_PHValidation *)v14 validateOption:1 usingBlock:v57];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_2;
  v54[3] = &unk_1E75AAEB0;
  v15 = v13;
  v55 = v15;
  v16 = v14;
  v56 = v16;
  [(_PHValidation *)v16 validateOption:2 usingBlock:v54];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_3;
  v50[3] = &unk_1E75AB248;
  v17 = v15;
  v51 = v17;
  v18 = v16;
  v52 = v18;
  v53 = self;
  [(_PHValidation *)v18 validateOption:4 usingBlock:v50];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_4;
  v46[3] = &unk_1E75AB248;
  v19 = v17;
  v47 = v19;
  v20 = v18;
  v48 = v20;
  v49 = self;
  [(_PHValidation *)v20 validateOption:8 usingBlock:v46];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_5;
  v42[3] = &unk_1E75AB248;
  v21 = v19;
  v43 = v21;
  v44 = self;
  v22 = v20;
  v45 = v22;
  [(_PHValidation *)v22 validateOption:16 usingBlock:v42];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_6;
  v38[3] = &unk_1E75AB248;
  v23 = v21;
  v39 = v23;
  v40 = self;
  v24 = v22;
  v41 = v24;
  [(_PHValidation *)v24 validateOption:32 usingBlock:v38];
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_7;
  v33 = &unk_1E75A9E40;
  v34 = self;
  v35 = v23;
  v36 = v11;
  v37 = v24;
  v25 = v24;
  v26 = v11;
  v27 = v23;
  [(_PHValidation *)v25 validateOption:64 usingBlock:&v30];
  v28 = [(_PHValidation *)v25 isValid:a6, v30, v31, v32, v33, v34];

  return v28;
}

void __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) assert:objc_msgSend(*(*(&v7 + 1) + 8 * v6) code:"isFileURL") failureType:3302 format:{1, @"not a file URL: %@", *(*(&v7 + 1) + 8 * v6)}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        v11 = 0;
        v7 = [MEMORY[0x1E696AC08] defaultManager];
        v8 = [v6 path];
        v9 = [v7 fileExistsAtPath:v8 isDirectory:&v11];

        [*(a1 + 40) assert:v9 code:3303 failureType:2 format:{@"file doesn't exist: %@", v6}];
        [*(a1 + 40) assert:(v11 & 1) == 0 code:3302 failureType:3 format:{@"URL is directory: %@", v6}];
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

void __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = [v7 pathExtension];
        [v8 assert:objc_msgSend(v9 code:"isValidImagePathExtension:" failureType:v10) format:{3302, 4, @"invalid image path extension: %@", v7}];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = [v7 pathExtension];
        [v8 assert:objc_msgSend(v9 code:"isValidVideoPathExtension:" failureType:v10) format:{3302, 5, @"invalid video path extension: %@", v7}];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_5(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = CGImageSourceCreateWithURL(*(*(&v12 + 1) + 8 * v6), 0);
        v8 = *(a1 + 40);
        v11 = 0;
        v9 = [v8 _validateImageSource:v7 error:&v11];
        v10 = v11;
        [*(a1 + 48) assert:v9 error:v10];
        if (v7)
        {
          CFRelease(v7);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_6(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v11 = 0;
        v9 = [v8 _validateVideoURL:v7 error:&v11];
        v10 = v11;
        [*(a1 + 48) assert:v9 error:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void __70__PHValidator_validateURLs_withOptions_videoComplementMetadata_error___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = 0;
  v5 = [v2 _validateLivePhotoResourceURLs:v3 videoComplementMetadata:v4 error:&v7];
  v6 = v7;
  [*(a1 + 56) assert:v5 error:v6];
}

- (BOOL)validateURL:(id)a3 withOptions:(unint64_t)a4 error:(id *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a3;
  v10 = [v8 arrayWithObjects:&v12 count:1];

  LOBYTE(a5) = [(PHValidator *)self validateURLs:v10 withOptions:a4 videoComplementMetadata:0 error:a5, v12, v13];
  return a5;
}

@end