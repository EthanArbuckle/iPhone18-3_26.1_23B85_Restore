@interface PHAssetCreationRequestBridge
+ (id)buildAdjustmentsPlistPathForPhotoKitIngestJob:(id)a3 withSourcePath:(id)a4;
- (BOOL)_executeCreationRequestWithImageJobDict:(id)a3 error:(id *)a4;
- (BOOL)_executeCreationRequestWithVideoJobDict:(id)a3 error:(id *)a4;
- (BOOL)_finalizeBurstImage:(id)a3;
- (BOOL)_handleVideoPreviewImageOnlyJob:(id)a3 previewImageSurface:(__IOSurface *)a4 error:(id *)a5;
- (id)executeCreationRequestWithBatchJobDictionaries:(id)a3;
- (id)executeCreationRequestWithJobDict:(id)a3 previewImageSurface:(__IOSurface *)a4;
- (void)_deleteImageJobFilesWithJobDictionary:(id)a3;
- (void)_deleteJobFileAtPath:(id)a3 withJobDict:(id)a4;
@end

@implementation PHAssetCreationRequestBridge

- (void)_deleteJobFileAtPath:(id)a3 withJobDict:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = v7;
  if (v5)
  {
    v13 = 0;
    v9 = [v7 removeItemAtPath:v5 error:&v13];
    v10 = v13;
    if ((v9 & 1) == 0 && (PLIsErrorFileNotFound() & 1) == 0)
    {
      v11 = PLPhotoKitIngestGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
        *buf = 138412802;
        v15 = v5;
        v16 = 2112;
        v17 = v12;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "PhotoKit Ingest Bridge: Failed to remove file at path: %@, for UUID:%@ %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v10 = 0;
  }
}

- (void)_deleteImageJobFilesWithJobDictionary:(id)a3
{
  v13 = a3;
  v4 = *MEMORY[0x1E69C0518];
  v5 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69C0518]];
  [(PHAssetCreationRequestBridge *)self _deleteJobFileAtPath:v5 withJobDict:v13];

  v6 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69C0378]];
  [(PHAssetCreationRequestBridge *)self _deleteJobFileAtPath:v6 withJobDict:v13];

  v7 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69C04B8]];
  [(PHAssetCreationRequestBridge *)self _deleteJobFileAtPath:v7 withJobDict:v13];

  v8 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69C04D8]];
  [(PHAssetCreationRequestBridge *)self _deleteJobFileAtPath:v8 withJobDict:v13];

  v9 = [v13 objectForKey:*MEMORY[0x1E69C0350]];

  if (v9)
  {
    v10 = [v13 objectForKeyedSubscript:v4];
    v11 = [PHAssetCreationRequestBridge buildAdjustmentsPlistPathForPhotoKitIngestJob:v13 withSourcePath:v10];
    [(PHAssetCreationRequestBridge *)self _deleteJobFileAtPath:v11 withJobDict:v13];
  }

  v12 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69C04D0]];
  [(PHAssetCreationRequestBridge *)self _deleteJobFileAtPath:v12 withJobDict:v13];
}

- (BOOL)_finalizeBurstImage:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = [MEMORY[0x1E69BE670] systemPhotoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PHAssetCreationRequestBridge__finalizeBurstImage___block_invoke;
  v9[3] = &unk_1E75AA3F8;
  v5 = v3;
  v10 = v5;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  [v6 performTransactionAndWait:v9];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __52__PHAssetCreationRequestBridge__finalizeBurstImage___block_invoke(uint64_t a1)
{
  v22 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C03B8]];
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0328]];
  v3 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0330]];
  v4 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0338]];
  if ([v2 count] >= 2)
  {
    v5 = MEMORY[0x1E69BE2B0];
    v6 = [*(a1 + 40) managedObjectContext];
    v21 = [v5 assetsWithAvalancheUUID:v22 sourceType:1 inManagedObjectContext:v6];

    v20 = [MEMORY[0x1E69BE540] assetsWithUUIDs:v3 options:3 inLibrary:*(a1 + 40)];
    v19 = [MEMORY[0x1E69BE540] assetWithUUID:v4 inLibrary:*(a1 + 40)];
    v7 = MEMORY[0x1E69BE2B0];
    v8 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v21];
    v9 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v20];
    LOBYTE(v18) = 1;
    v10 = [v7 updatePropertiesForAssets:v8 autoPicks:v9 stackAsset:v19 userFavorites:0 deleteNonPicks:0 setFirstPick:1 allowDissolve:v18];

    v11 = [objc_alloc(MEMORY[0x1E69BE2B0]) initWithUUID:v22 sourceType:1 photoLibrary:*(a1 + 40)];
    v12 = [v11 stackAsset];
    [v12 generateLargeThumbnailFileIfNecessary];

    v13 = MEMORY[0x1E69BE2B0];
    v14 = [v11 assets];
    v15 = [v11 autoPicks];
    v16 = [v11 stackAsset];
    v17 = [v11 userFavorites];
    [v13 updateMembershipForAssets:v14 autoPicks:v15 stackAsset:v16 userFavorites:v17 deleteNonPicks:0 allowDissolve:1 inLibrary:*(a1 + 40)];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)_handleVideoPreviewImageOnlyJob:(id)a3 previewImageSurface:(__IOSurface *)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = PLPhotoKitIngestGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "PhotoKit Ingest Bridge: Beginning timelapse video placeholder job dictionary request creation for asset with UUID: %@", &buf, 0xCu);
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__17572;
  v39 = __Block_byref_object_dispose__17573;
  v40 = 0;
  v10 = +[PHPhotoLibrary sharedPhotoLibrary];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __90__PHAssetCreationRequestBridge__handleVideoPreviewImageOnlyJob_previewImageSurface_error___block_invoke;
  v21[3] = &unk_1E75A60D8;
  v11 = v7;
  v22 = v11;
  p_buf = &buf;
  v24 = &v26;
  v25 = a4;
  v12 = *(&buf + 1);
  obj = *(*(&buf + 1) + 40);
  v13 = [v10 performChangesAndWait:v21 error:&obj];
  objc_storeStrong((v12 + 40), obj);
  if (v13 && (v27[3] & 1) != 0)
  {
    v14 = *(*(&buf + 1) + 40);
    v15 = 1;
  }

  else
  {
    v16 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
      v18 = *(v27 + 24);
      *v30 = 138412802;
      v31 = v17;
      v32 = 1024;
      v33 = v13;
      v34 = 1024;
      v35 = v18;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "PhotoKit Ingest Bridge: Failed to perform performChangesAndWait block on previewImage creation request for asset %@ with success performing changes: %d and success creating request: %d", v30, 0x18u);
    }

    v14 = *(*(&buf + 1) + 40);
    if (a5)
    {
      v14 = v14;
      v15 = 0;
      *a5 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v26, 8);

  return v15;
}

void __90__PHAssetCreationRequestBridge__handleVideoPreviewImageOnlyJob_previewImageSurface_error___block_invoke(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [PHAssetCreationRequest creationRequestForAssetFromVideoPreviewJobDict:a1[4] withPreviewImageSurface:a1[7]];
  if (v2)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E69BFF48];
    v9 = *MEMORY[0x1E696A278];
    v10[0] = @"Timelapse preview job creation request returned nil";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 errorWithDomain:v4 code:41005 userInfo:v5];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (BOOL)_executeCreationRequestWithVideoJobDict:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLPhotoKitIngestGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 objectForKeyedSubscript:@"captureLogID"];
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "PhotoKit Ingest Bridge: %{public}@ Beginning video job dictionary request creation for asset with UUID: %{public}@", buf, 0x16u);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v45 = __Block_byref_object_copy__17572;
  v46 = __Block_byref_object_dispose__17573;
  v47 = 0;
  v10 = +[PHPhotoLibrary sharedPhotoLibrary];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __78__PHAssetCreationRequestBridge__executeCreationRequestWithVideoJobDict_error___block_invoke;
  v28[3] = &unk_1E75AA678;
  v11 = v6;
  v29 = v11;
  v30 = buf;
  v31 = &v32;
  v12 = *&buf[8];
  obj = *(*&buf[8] + 40);
  v13 = [v10 performChangesAndWait:v28 error:&obj];
  objc_storeStrong((v12 + 40), obj);
  if (v13 && (v33[3] & 1) != 0)
  {
    v14 = *MEMORY[0x1E69C05A0];
    v15 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69C05A0]];
    [(PHAssetCreationRequestBridge *)self _deleteJobFileAtPath:v15 withJobDict:v11];

    v16 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69C04D8]];
    [(PHAssetCreationRequestBridge *)self _deleteJobFileAtPath:v16 withJobDict:v11];

    v17 = [v11 objectForKey:*MEMORY[0x1E69C0350]];

    if (v17)
    {
      v18 = [v11 objectForKeyedSubscript:v14];
      v19 = [PHAssetCreationRequestBridge buildAdjustmentsPlistPathForPhotoKitIngestJob:v11 withSourcePath:v18];
      [(PHAssetCreationRequestBridge *)self _deleteJobFileAtPath:v19 withJobDict:v11];
    }

    v20 = *(*&buf[8] + 40);
    v21 = 1;
  }

  else
  {
    v22 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [v11 objectForKeyedSubscript:@"captureLogID"];
      v24 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
      v25 = *(v33 + 24);
      *v36 = 138544130;
      v37 = v23;
      v38 = 2112;
      v39 = v24;
      v40 = 1024;
      v41 = v13;
      v42 = 1024;
      v43 = v25;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "PhotoKit Ingest Bridge: %{public}@ Failed to perform performChangesAndWait block on video creation request for asset %@ with success performing changes: %d and success creating request: %d", v36, 0x22u);
    }

    v20 = *(*&buf[8] + 40);
    if (a4)
    {
      v20 = v20;
      v21 = 0;
      *a4 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v32, 8);

  return v21;
}

void __78__PHAssetCreationRequestBridge__executeCreationRequestWithVideoJobDict_error___block_invoke(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [PHAssetCreationRequest creationRequestForAssetFromVideoJobDictionary:a1[4]];
  if (v2)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E69BFF48];
    v9 = *MEMORY[0x1E696A278];
    v10[0] = @"Video job creation request returned nil";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 errorWithDomain:v4 code:41005 userInfo:v5];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (BOOL)_executeCreationRequestWithImageJobDict:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLPhotoKitIngestGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 objectForKeyedSubscript:@"captureLogID"];
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "PhotoKit Ingest Bridge: %{public}@ Beginning image job dictionary request creation for asset with UUID: %{public}@", buf, 0x16u);
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = __Block_byref_object_copy__17572;
  v40 = __Block_byref_object_dispose__17573;
  v41 = 0;
  v10 = +[PHPhotoLibrary sharedPhotoLibrary];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __78__PHAssetCreationRequestBridge__executeCreationRequestWithImageJobDict_error___block_invoke;
  v22[3] = &unk_1E75AA678;
  v11 = v6;
  v23 = v11;
  v24 = buf;
  v25 = &v26;
  v12 = *&buf[8];
  obj = *(*&buf[8] + 40);
  v13 = [v10 performChangesAndWait:v22 error:&obj];
  objc_storeStrong((v12 + 40), obj);
  if (v13 && (v27[3] & 1) != 0)
  {
    [(PHAssetCreationRequestBridge *)self _deleteImageJobFilesWithJobDictionary:v11];
    v14 = *(*&buf[8] + 40);
    v15 = 1;
  }

  else
  {
    v16 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v11 objectForKeyedSubscript:@"captureLogID"];
      v18 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
      v19 = *(v27 + 24);
      *v30 = 138544130;
      v31 = v17;
      v32 = 2114;
      v33 = v18;
      v34 = 1024;
      v35 = v13;
      v36 = 1024;
      v37 = v19;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "PhotoKit Ingest Bridge: %{public}@ Failed to perform performChangesAndWait block on image creation request for asset %{public}@ with success performing changes: %d and success creating request: %d", v30, 0x22u);
    }

    v14 = *(*&buf[8] + 40);
    if (a4)
    {
      v14 = v14;
      v15 = 0;
      *a4 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v26, 8);

  return v15;
}

void __78__PHAssetCreationRequestBridge__executeCreationRequestWithImageJobDict_error___block_invoke(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [PHAssetCreationRequest creationRequestForAssetFromImageJobDictionary:a1[4] holdingDirectoryPath:0];
  if (v2)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E69BFF48];
    v9 = *MEMORY[0x1E696A278];
    v10[0] = @"Image job creation request returned nil";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 errorWithDomain:v4 code:41005 userInfo:v5];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)executeCreationRequestWithJobDict:(id)a3 previewImageSurface:(__IOSurface *)a4
{
  v67[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *MEMORY[0x1E69C0390];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
  if (v8)
  {
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0328]];

    if (!v9)
    {
      v37 = PLPhotoKitIngestGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
        *buf = 138543362;
        v59 = v38;
        _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_ERROR, "PhotoKit Ingest Bridge: Asset UUID(s) for job %{public}@ nil.", buf, 0xCu);
      }

      v39 = MEMORY[0x1E69BF2D0];
      v40 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E69BFF48];
      v66 = *MEMORY[0x1E696A278];
      v67[0] = @"The asset UUID(s) for job dictionaries cannot be nil";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
      v25 = [v40 errorWithDomain:v41 code:41005 userInfo:v17];
      v26 = [v39 failureWithError:v25];
      goto LABEL_27;
    }
  }

  v10 = *MEMORY[0x1E69C0410];
  v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
  if ([v11 isEqualToString:*MEMORY[0x1E69C0478]])
  {

LABEL_7:
    v55 = 0;
    v14 = [(PHAssetCreationRequestBridge *)self _executeCreationRequestWithVideoJobDict:v6 error:&v55];
    v15 = v55;
    goto LABEL_8;
  }

  v12 = [v6 objectForKeyedSubscript:v10];
  v13 = [v12 isEqualToString:*MEMORY[0x1E69C0470]];

  if (v13)
  {
    goto LABEL_7;
  }

  v35 = [v6 objectForKeyedSubscript:v10];
  v36 = [v35 isEqualToString:*MEMORY[0x1E69C0458]];

  if (v36)
  {
    v54 = 0;
    v14 = [(PHAssetCreationRequestBridge *)self _executeCreationRequestWithImageJobDict:v6 error:&v54];
    v15 = v54;
    goto LABEL_8;
  }

  v43 = [v6 objectForKeyedSubscript:v10];
  v44 = [v43 isEqualToString:*MEMORY[0x1E69C0420]];

  if ((v44 & 1) == 0)
  {
    v45 = [v6 objectForKeyedSubscript:v10];
    v46 = [v45 isEqualToString:*MEMORY[0x1E69C0480]];

    if (!v46)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not start processing the asset with job dictionary: %@", v6];
      v48 = MEMORY[0x1E69BF2D0];
      v49 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E69BFF48];
      v56 = *MEMORY[0x1E696A278];
      v57 = v17;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v52 = [v49 errorWithDomain:v50 code:41005 userInfo:v51];
      v34 = [v48 failureWithError:v52];

      goto LABEL_28;
    }

    if (!MEMORY[0x19EAF1D50]())
    {
      v53 = 0;
      v14 = [(PHAssetCreationRequestBridge *)self _handleVideoPreviewImageOnlyJob:v6 previewImageSurface:a4 error:&v53];
      v15 = v53;
LABEL_8:
      v16 = v15;
      v17 = v16;
      if (v14)
      {
LABEL_9:
        v18 = PLPhotoKitIngestGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v6 objectForKeyedSubscript:@"captureLogID"];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = @"(unkown capture ID)";
          }

          v22 = [v6 objectForKeyedSubscript:v10];
          v23 = [v6 objectForKeyedSubscript:v7];
          *buf = 138543874;
          v59 = v21;
          v60 = 2114;
          v61 = v22;
          v62 = 2114;
          v63 = v23;
          _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "PhotoKit Ingest Bridge: %{public}@ Successfully completed %{public}@ with UUID: %{public}@", buf, 0x20u);
        }

        v24 = MEMORY[0x1E69BF2D0];
        v25 = [MEMORY[0x1E695DFB0] null];
        v26 = [v24 successWithResult:v25];
LABEL_27:
        v34 = v26;

        goto LABEL_28;
      }

      if (v16)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v47 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v47, OS_LOG_TYPE_DEFAULT, "PhotoKit Ingest Bridge: Skipping Camera preview image job due to duplicate job from nebulad", buf, 2u);
    }

LABEL_39:
    v17 = 0;
    goto LABEL_9;
  }

  if ([(PHAssetCreationRequestBridge *)self _finalizeBurstImage:v6])
  {
    goto LABEL_39;
  }

LABEL_16:
  v27 = MEMORY[0x1E696ABC0];
  v28 = *MEMORY[0x1E69BFF48];
  v64 = *MEMORY[0x1E696A278];
  v65 = @"Failure during creation of the asset.";
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v17 = [v27 errorWithDomain:v28 code:41005 userInfo:v29];

LABEL_17:
  v30 = PLPhotoKitIngestGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = [v6 objectForKeyedSubscript:@"captureLogID"];
    v32 = v31;
    v33 = @"(unkown capture ID)";
    *buf = 138543874;
    if (v31)
    {
      v33 = v31;
    }

    v59 = v33;
    v60 = 2112;
    v61 = v6;
    v62 = 2112;
    v63 = v17;
    _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "PhotoKit Ingest Bridge: %{public}@  Failed to create asset with job dictionary %@ \nError: %@", buf, 0x20u);
  }

  v34 = [MEMORY[0x1E69BF2D0] failureWithError:v17];
LABEL_28:

  return v34;
}

- (id)executeCreationRequestWithBatchJobDictionaries:(id)a3
{
  v51[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    *v37 = 0;
    v38 = v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__17572;
    v41 = __Block_byref_object_dispose__17573;
    v42 = 0;
    v5 = +[PHPhotoLibrary sharedPhotoLibrary];
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C0360]];

    v8 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "PhotoKit Ingest Bridge: Beginning burst image creation requests with camera avalanche UUID: %{public}@", buf, 0xCu);
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __79__PHAssetCreationRequestBridge_executeCreationRequestWithBatchJobDictionaries___block_invoke;
    v33[3] = &unk_1E75AA678;
    v9 = v4;
    v34 = v9;
    v35 = v37;
    v36 = &v43;
    v10 = (v38 + 40);
    obj = *(v38 + 5);
    v11 = [v5 performChangesAndWait:v33 error:&obj];
    objc_storeStrong(v10, obj);
    v12 = MEMORY[0x1E69BF2D0];
    if (v44[3] & v11)
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      v14 = [v12 successWithResult:v13];
    }

    else
    {
      v14 = [MEMORY[0x1E69BF2D0] failureWithError:*(v38 + 5)];
    }

    if ([v14 isSuccess])
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v21 = v9;
      v22 = [v21 countByEnumeratingWithState:&v28 objects:v47 count:16];
      if (v22)
      {
        v23 = *v29;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(v21);
            }

            [(PHAssetCreationRequestBridge *)self _deleteImageJobFilesWithJobDictionary:*(*(&v28 + 1) + 8 * i), v28];
          }

          v22 = [v21 countByEnumeratingWithState:&v28 objects:v47 count:16];
        }

        while (v22);
      }

      v25 = PLPhotoKitIngestGetLog();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 138543362;
      v49 = v7;
      v26 = "PhotoKit Ingest Bridge: Successfully completed burst job with camera avalanche UUID: %{public}@";
    }

    else
    {
      v25 = PLPhotoKitIngestGetLog();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
LABEL_23:

        v18 = v14;
        _Block_object_dispose(v37, 8);

        _Block_object_dispose(&v43, 8);
        v20 = v18;
        goto LABEL_24;
      }

      *buf = 138543362;
      v49 = v7;
      v26 = "PhotoKit Ingest Bridge: Failed to complete burst job with camera avalanche UUID: %{public}@";
    }

    _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
    goto LABEL_23;
  }

  v15 = PLPhotoKitIngestGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *v37 = 0;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "PhotoKit Ingest Bridge: No incoming jobs present.", v37, 2u);
  }

  v16 = MEMORY[0x1E69BF2D0];
  v17 = MEMORY[0x1E696ABC0];
  v50 = *MEMORY[0x1E696A278];
  v51[0] = @"The batch of job dictionaries for a burst job must contain job dictionaries";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  v19 = [v17 errorWithDomain:*MEMORY[0x1E69BFF48] code:41005 userInfo:v18];
  v20 = [v16 failureWithError:v19];

LABEL_24:

  return v20;
}

void __79__PHAssetCreationRequestBridge_executeCreationRequestWithBatchJobDictionaries___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v23;
    v21 = *MEMORY[0x1E69BFF48];
    v20 = *MEMORY[0x1E696A278];
    *&v4 = 138543618;
    v19 = v4;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v22 + 1) + 8 * v8);
        v6 = [PHAssetCreationRequest creationRequestForAssetFromImageJobDictionary:v10 holdingDirectoryPath:0, v19];

        if (v6)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        else
        {
          v11 = MEMORY[0x1E696ABC0];
          v30 = v20;
          v31 = @"Image job creation request returned nil";
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v13 = [v11 errorWithDomain:v21 code:41005 userInfo:v12];
          v14 = *(*(a1 + 40) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;

          v16 = PLPhotoKitIngestGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [v10 objectForKeyedSubscript:@"captureLogID"];
            v18 = *(*(*(a1 + 40) + 8) + 40);
            *buf = v19;
            v27 = v17;
            v28 = 2112;
            v29 = v18;
            _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "PhotoKit Ingest Bridge: %{public}@ Burst creation request failed with error: %@", buf, 0x16u);
          }
        }

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v2 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);
  }
}

+ (id)buildAdjustmentsPlistPathForPhotoKitIngestJob:(id)a3 withSourcePath:(id)a4
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:a4];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v4 pathExtension];
  v7 = [v5 stringWithFormat:@".%@", v6];

  v8 = [v4 URLByDeletingLastPathComponent];
  v9 = [v8 absoluteString];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"file://" withString:&stru_1F0FC60C8];

  v11 = [v4 lastPathComponent];
  v12 = [v11 stringByReplacingOccurrencesOfString:v7 withString:&stru_1F0FC60C8];

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@_Adjustments.plist", v10, v12];

  return v13;
}

@end