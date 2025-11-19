@interface MPModelLibrarySDKAddToPlaylistChangeRequestOperation
- (void)execute;
@end

@implementation MPModelLibrarySDKAddToPlaylistChangeRequestOperation

- (void)execute
{
  v41[1] = *MEMORY[0x1E69E9840];
  v3 = [(MPModelLibrarySDKAddToPlaylistChangeRequestOperation *)self request];
  v4 = [v3 productID];
  v5 = [v3 isCloudID];
  v6 = [v3 playlist];
  v7 = [(MPAsyncOperation *)self userIdentity];
  v8 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v7];

  if (+[MPMediaLibrary authorizationStatus]== MPMediaLibraryAuthorizationStatusAuthorized)
  {
    if (([v6 userEditableComponents] & 1) == 0)
    {
      if (self->_responseHandler)
      {
        v9 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
        v10 = [v9 localizedStringForKey:@"NOT_SUPPORTED" value:&stru_1F149ECA8 table:@"MediaPlayer"];

        if (v10)
        {
          v38 = *MEMORY[0x1E696A578];
          v39 = v10;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        }

        else
        {
          v11 = 0;
        }

        v27 = MEMORY[0x1E696ABC0];
        v28 = 5;
LABEL_23:
        v29 = [v27 errorWithDomain:@"MPErrorDomain" code:v28 userInfo:v11];
        (*(self->_responseHandler + 2))();

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v13 = [v8 libraryDataProvider];
    if (v5)
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [v6 identifiers];
        v15 = [v14 library];
        v16 = [v15 persistentID];

        v17 = [v4 longLongValue];
        if (v17)
        {
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __63__MPModelLibrarySDKAddToPlaylistChangeRequestOperation_execute__block_invoke_2;
          v32[3] = &unk_1E767D2A0;
          v32[4] = self;
          [v13 sdk_addItemWithSagaIdentifier:v17 toPlaylistWithIdentifier:v16 completionBlock:v32];
LABEL_31:

          goto LABEL_32;
        }

        if (self->_responseHandler)
        {
          v30 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
          v22 = [v30 localizedStringForKey:@"NOT_SUPPORTED" value:&stru_1F149ECA8 table:@"MediaPlayer"];

          if (v22)
          {
            v36 = *MEMORY[0x1E696A578];
            v37 = v22;
            v23 = MEMORY[0x1E695DF20];
            v24 = &v37;
            v25 = &v36;
            goto LABEL_18;
          }

          goto LABEL_28;
        }

        goto LABEL_30;
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v18 = [v6 identifiers];
      v19 = [v18 library];
      v20 = [v19 persistentID];

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __63__MPModelLibrarySDKAddToPlaylistChangeRequestOperation_execute__block_invoke;
      v33[3] = &unk_1E767D2A0;
      v33[4] = self;
      [v13 sdk_addItemWithOpaqueIdentifier:v4 toPlaylistWithIdentifier:v20 completionBlock:v33];
      goto LABEL_31;
    }

    if (self->_responseHandler)
    {
      v21 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
      v22 = [v21 localizedStringForKey:@"NOT_SUPPORTED" value:&stru_1F149ECA8 table:@"MediaPlayer"];

      if (v22)
      {
        v34 = *MEMORY[0x1E696A578];
        v35 = v22;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v35;
        v25 = &v34;
LABEL_18:
        v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
LABEL_29:
        v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:5 userInfo:v26];
        (*(self->_responseHandler + 2))();

        goto LABEL_30;
      }

LABEL_28:
      v26 = 0;
      goto LABEL_29;
    }

LABEL_30:
    [(MPAsyncOperation *)self finish];
    goto LABEL_31;
  }

  if (self->_responseHandler)
  {
    v12 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
    v10 = [v12 localizedStringForKey:@"PERMISSION_DENIED" value:&stru_1F149ECA8 table:@"MediaPlayer"];

    if ([v10 length])
    {
      v40 = *MEMORY[0x1E696A578];
      v41[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    }

    else
    {
      v11 = 0;
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = 1;
    goto LABEL_23;
  }

LABEL_24:
  [(MPAsyncOperation *)self finish];
LABEL_32:
}

void __63__MPModelLibrarySDKAddToPlaylistChangeRequestOperation_execute__block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[35])
  {
    if (v3)
    {
      v5 = [v3 domain];
      v6 = [v5 isEqualToString:@"MPErrorDomain"];

      if ((v6 & 1) == 0)
      {
        v7 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
        v8 = [v7 localizedStringForKey:@"UNKNOWN_ERROR" value:&stru_1F149ECA8 table:@"MediaPlayer"];

        if (v8)
        {
          v11 = *MEMORY[0x1E696A578];
          v12[0] = v8;
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
        }

        else
        {
          v9 = 0;
        }

        v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:0 userInfo:v9];

        v3 = v10;
      }
    }

    (*(*(*(a1 + 32) + 280) + 16))();
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __63__MPModelLibrarySDKAddToPlaylistChangeRequestOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[35])
  {
    if (v3)
    {
      v5 = [v3 domain];
      v6 = [v5 isEqualToString:@"MPErrorDomain"];

      if ((v6 & 1) == 0)
      {
        v7 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
        v8 = [v7 localizedStringForKey:@"UNKNOWN_ERROR" value:&stru_1F149ECA8 table:@"MediaPlayer"];

        if (v8)
        {
          v11 = *MEMORY[0x1E696A578];
          v12[0] = v8;
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
        }

        else
        {
          v9 = 0;
        }

        v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:0 userInfo:v9];

        v3 = v10;
      }
    }

    (*(*(*(a1 + 32) + 280) + 16))();
    v4 = *(a1 + 32);
  }

  [v4 finish];
}

@end