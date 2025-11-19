@interface PHShare
+ (id)PHShareErrorFromError:(id)a3;
+ (void)acceptShareWithUUID:(id)a3 photoLibrary:(id)a4 completion:(id)a5;
+ (void)fetchShareFromShareURL:(id)a3 ignoreExistingShare:(BOOL)a4 photoLibrary:(id)a5 completionHandler:(id)a6;
+ (void)publishShareWithUUID:(id)a3 photoLibrary:(id)a4 completion:(id)a5;
- (PHShare)init;
@end

@implementation PHShare

+ (id)PHShareErrorFromError:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_66;
  }

  v5 = [v3 domain];
  v6 = [v5 isEqualToString:@"PHPhotosErrorDomain"];

  if (v6)
  {
    v7 = v4;
    goto LABEL_66;
  }

  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v30 = *MEMORY[0x1E696AA08];
  v31[0] = v4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v10 = [v8 initWithDictionary:v9];

  v11 = [v4 domain];
  v12 = [v11 isEqualToString:*MEMORY[0x1E6994990]];

  if (!v12)
  {
    v20 = [v4 domain];
    v21 = [v20 isEqualToString:*MEMORY[0x1E69BE900]];

    if (v21)
    {
      v22 = [v4 code];
      if ((v22 - 100) >= 3)
      {
        v19 = -1;
      }

      else
      {
        v19 = v22 + 5903;
      }
    }

    else
    {
      v23 = [v4 domain];
      v24 = [v23 isEqualToString:*MEMORY[0x1E69BFF48]];

      if (v24)
      {
        if ([v4 code] == 81001)
        {
          v19 = 8505;
        }

        else
        {
          v19 = -1;
        }
      }

      else
      {
        v25 = [v4 domain];
        v26 = [v25 isEqualToString:*MEMORY[0x1E6998040]];

        if (v26)
        {
          v27 = [v4 code];
          v28 = 11002;
          if (v27 != 20)
          {
            v28 = -1;
          }

          if (v27 == 19)
          {
            v19 = 11001;
          }

          else
          {
            v19 = v28;
          }
        }

        else
        {
          v19 = -1;
        }
      }
    }

    goto LABEL_65;
  }

  v13 = [v4 userInfo];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69949A0]];
  [v10 setObject:v14 forKeyedSubscript:@"PHServerGeneratedLocalizedDescriptionErrorKey"];

  v15 = [v4 userInfo];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x1E6994998]];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DFF8] URLWithString:v16];
    [v10 setObject:v17 forKeyedSubscript:@"PHLearnMoreLinkErrorKey"];
  }

  v18 = [v4 code];
  v19 = -1;
  if (v18 > 999)
  {
    if (v18 <= 1007)
    {
      if (v18 > 1005)
      {
        if (v18 == 1006)
        {
          v19 = 6012;
        }

        else
        {
          v19 = 8500;
        }
      }

      else if (v18 == 1000)
      {
        v19 = 6010;
      }

      else if (v18 == 1002)
      {
        v19 = 9999;
      }
    }

    else if (v18 <= 2008)
    {
      if (v18 == 1008)
      {
        v19 = 8501;
      }

      else if (v18 == 2008)
      {
        v19 = 8502;
      }
    }

    else
    {
      switch(v18)
      {
        case 2009:
          v19 = 8503;
          break;
        case 2010:
          v19 = 8504;
          break;
        case 2011:
          v19 = 8507;
          break;
      }
    }

    goto LABEL_64;
  }

  if (v18 > 34)
  {
    if (v18 > 79)
    {
      if ((v18 - 80) < 3)
      {
        v19 = 6001;
      }
    }

    else
    {
      switch(v18)
      {
        case '#':
          v19 = 6009;
          break;
        case '$':
          v19 = 8001;
          break;
        case '%':
          v19 = 6011;
          break;
      }
    }

    goto LABEL_64;
  }

  if (v18 > 24)
  {
    if (v18 != 25)
    {
      if (v18 == 30)
      {
        v19 = 6008;
      }

      else if (v18 == 34)
      {
        v19 = 6002;
      }

      goto LABEL_64;
    }

LABEL_51:
    v19 = 6003;
    goto LABEL_64;
  }

  if (v18 == 2)
  {
    v19 = 6006;
    goto LABEL_64;
  }

  if (v18 == 23)
  {
    goto LABEL_51;
  }

LABEL_64:

LABEL_65:
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:v19 userInfo:v10];

LABEL_66:

  return v7;
}

+ (void)publishShareWithUUID:(id)a3 photoLibrary:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PHShare.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v12 = [v10 cplStatus];
  v13 = [v12 exitDeleteTime];

  if (v13)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:6007 userInfo:0];
    v15 = [a1 PHShareErrorFromError:v14];
    v11[2](v11, 0, v15);
  }

  else
  {
    v14 = [v10 assetsdClient];
    v16 = [v14 cloudInternalClient];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__PHShare_publishShareWithUUID_photoLibrary_completion___block_invoke;
    v18[3] = &unk_1E75A9968;
    v19 = v11;
    v20 = a1;
    [v16 publishShare:v9 completionHandler:v18];
  }
}

void __56__PHShare_publishShareWithUUID_photoLibrary_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 PHShareErrorFromError:a3];
  (*(v4 + 16))(v4, v6, v7);
}

+ (void)acceptShareWithUUID:(id)a3 photoLibrary:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PHShare.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v12 = [v10 assetsdClient];
  v13 = [v12 cloudInternalClient];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PHShare_acceptShareWithUUID_photoLibrary_completion___block_invoke;
  v16[3] = &unk_1E75A9940;
  v17 = v11;
  v18 = a1;
  v14 = v11;
  [v13 acceptShare:v9 completionHandler:v16];
}

void __55__PHShare_acceptShareWithUUID_photoLibrary_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2 == 0;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) PHShareErrorFromError:a2];
  (*(v3 + 16))(v3, v2, v4);
}

+ (void)fetchShareFromShareURL:(id)a3 ignoreExistingShare:(BOOL)a4 photoLibrary:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PHShare.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v14 = [v12 assetsdClient];
  v15 = [v14 cloudInternalClient];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__PHShare_fetchShareFromShareURL_ignoreExistingShare_photoLibrary_completionHandler___block_invoke;
  v20[3] = &unk_1E75A9918;
  v21 = v12;
  v22 = v11;
  v24 = v8;
  v23 = v13;
  v16 = v13;
  v17 = v11;
  v18 = v12;
  [v15 fetchShareFromShareURL:v17 ignoreExistingShare:v8 completionHandler:v20];
}

void __85__PHShare_fetchShareFromShareURL_ignoreExistingShare_photoLibrary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  v8 = v7;
  if (v7 != *MEMORY[0x1E696A250])
  {

LABEL_6:
    (*(*(a1 + 48) + 16))();
    goto LABEL_7;
  }

  v9 = [v6 code];

  if (v9 != 4099)
  {
    goto LABEL_6;
  }

  v10 = objc_alloc(MEMORY[0x1E69BF198]);
  v11 = [*(a1 + 32) photoLibraryURL];
  v12 = [v10 initWithPhotoLibraryURL:v11];

  if (v12)
  {
    v13 = [v12 cloudInternalClient];
    v14 = *(a1 + 56);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __85__PHShare_fetchShareFromShareURL_ignoreExistingShare_photoLibrary_completionHandler___block_invoke_2;
    v16[3] = &unk_1E75A9D80;
    v15 = *(a1 + 40);
    v17 = *(a1 + 48);
    [v13 fetchShareFromShareURL:v15 ignoreExistingShare:v14 completionHandler:v16];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_7:
}

void __85__PHShare_fetchShareFromShareURL_ignoreExistingShare_photoLibrary_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = [v5 domain];
  v8 = v7;
  if (v7 != *MEMORY[0x1E696A250])
  {

    goto LABEL_6;
  }

  v9 = [v5 code];

  if (v9 != 4099)
  {
LABEL_6:
    v10 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315138;
      v15 = "+[PHShare fetchShareFromShareURL:ignoreExistingShare:photoLibrary:completionHandler:]_block_invoke";
      v11 = "XPC connection invalidated first time but worked on second try in %s";
      v12 = v10;
      v13 = OS_LOG_TYPE_FAULT;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = v5;
    v11 = "Unable to fetch moment share because XPC service returned an error on second attempt. (%@)";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
LABEL_8:
    _os_log_impl(&dword_19C86F000, v12, v13, v11, &v14, 0xCu);
  }

LABEL_9:

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
}

- (PHShare)init
{
  v2 = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

@end