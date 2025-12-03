@interface PHShare
+ (id)PHShareErrorFromError:(id)error;
+ (void)acceptShareWithUUID:(id)d photoLibrary:(id)library completion:(id)completion;
+ (void)fetchShareFromShareURL:(id)l ignoreExistingShare:(BOOL)share photoLibrary:(id)library completionHandler:(id)handler;
+ (void)publishShareWithUUID:(id)d photoLibrary:(id)library completion:(id)completion;
- (PHShare)init;
@end

@implementation PHShare

+ (id)PHShareErrorFromError:(id)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    v7 = 0;
    goto LABEL_66;
  }

  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"PHPhotosErrorDomain"];

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

  domain2 = [v4 domain];
  v12 = [domain2 isEqualToString:*MEMORY[0x1E6994990]];

  if (!v12)
  {
    domain3 = [v4 domain];
    v21 = [domain3 isEqualToString:*MEMORY[0x1E69BE900]];

    if (v21)
    {
      code = [v4 code];
      if ((code - 100) >= 3)
      {
        v19 = -1;
      }

      else
      {
        v19 = code + 5903;
      }
    }

    else
    {
      domain4 = [v4 domain];
      v24 = [domain4 isEqualToString:*MEMORY[0x1E69BFF48]];

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
        domain5 = [v4 domain];
        v26 = [domain5 isEqualToString:*MEMORY[0x1E6998040]];

        if (v26)
        {
          code2 = [v4 code];
          v28 = 11002;
          if (code2 != 20)
          {
            v28 = -1;
          }

          if (code2 == 19)
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

  userInfo = [v4 userInfo];
  v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69949A0]];
  [v10 setObject:v14 forKeyedSubscript:@"PHServerGeneratedLocalizedDescriptionErrorKey"];

  userInfo2 = [v4 userInfo];
  v16 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E6994998]];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DFF8] URLWithString:v16];
    [v10 setObject:v17 forKeyedSubscript:@"PHLearnMoreLinkErrorKey"];
  }

  code3 = [v4 code];
  v19 = -1;
  if (code3 > 999)
  {
    if (code3 <= 1007)
    {
      if (code3 > 1005)
      {
        if (code3 == 1006)
        {
          v19 = 6012;
        }

        else
        {
          v19 = 8500;
        }
      }

      else if (code3 == 1000)
      {
        v19 = 6010;
      }

      else if (code3 == 1002)
      {
        v19 = 9999;
      }
    }

    else if (code3 <= 2008)
    {
      if (code3 == 1008)
      {
        v19 = 8501;
      }

      else if (code3 == 2008)
      {
        v19 = 8502;
      }
    }

    else
    {
      switch(code3)
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

  if (code3 > 34)
  {
    if (code3 > 79)
    {
      if ((code3 - 80) < 3)
      {
        v19 = 6001;
      }
    }

    else
    {
      switch(code3)
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

  if (code3 > 24)
  {
    if (code3 != 25)
    {
      if (code3 == 30)
      {
        v19 = 6008;
      }

      else if (code3 == 34)
      {
        v19 = 6002;
      }

      goto LABEL_64;
    }

LABEL_51:
    v19 = 6003;
    goto LABEL_64;
  }

  if (code3 == 2)
  {
    v19 = 6006;
    goto LABEL_64;
  }

  if (code3 == 23)
  {
    goto LABEL_51;
  }

LABEL_64:

LABEL_65:
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:v19 userInfo:v10];

LABEL_66:

  return v7;
}

+ (void)publishShareWithUUID:(id)d photoLibrary:(id)library completion:(id)completion
{
  dCopy = d;
  libraryCopy = library;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHShare.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  cplStatus = [libraryCopy cplStatus];
  exitDeleteTime = [cplStatus exitDeleteTime];

  if (exitDeleteTime)
  {
    assetsdClient = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:6007 userInfo:0];
    v15 = [self PHShareErrorFromError:assetsdClient];
    completionCopy[2](completionCopy, 0, v15);
  }

  else
  {
    assetsdClient = [libraryCopy assetsdClient];
    cloudInternalClient = [assetsdClient cloudInternalClient];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__PHShare_publishShareWithUUID_photoLibrary_completion___block_invoke;
    v18[3] = &unk_1E75A9968;
    v19 = completionCopy;
    selfCopy = self;
    [cloudInternalClient publishShare:dCopy completionHandler:v18];
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

+ (void)acceptShareWithUUID:(id)d photoLibrary:(id)library completion:(id)completion
{
  dCopy = d;
  libraryCopy = library;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHShare.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  assetsdClient = [libraryCopy assetsdClient];
  cloudInternalClient = [assetsdClient cloudInternalClient];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PHShare_acceptShareWithUUID_photoLibrary_completion___block_invoke;
  v16[3] = &unk_1E75A9940;
  v17 = completionCopy;
  selfCopy = self;
  v14 = completionCopy;
  [cloudInternalClient acceptShare:dCopy completionHandler:v16];
}

void __55__PHShare_acceptShareWithUUID_photoLibrary_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2 == 0;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) PHShareErrorFromError:a2];
  (*(v3 + 16))(v3, v2, v4);
}

+ (void)fetchShareFromShareURL:(id)l ignoreExistingShare:(BOOL)share photoLibrary:(id)library completionHandler:(id)handler
{
  shareCopy = share;
  lCopy = l;
  libraryCopy = library;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHShare.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  assetsdClient = [libraryCopy assetsdClient];
  cloudInternalClient = [assetsdClient cloudInternalClient];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__PHShare_fetchShareFromShareURL_ignoreExistingShare_photoLibrary_completionHandler___block_invoke;
  v20[3] = &unk_1E75A9918;
  v21 = libraryCopy;
  v22 = lCopy;
  v24 = shareCopy;
  v23 = handlerCopy;
  v16 = handlerCopy;
  v17 = lCopy;
  v18 = libraryCopy;
  [cloudInternalClient fetchShareFromShareURL:v17 ignoreExistingShare:shareCopy completionHandler:v20];
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
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

@end