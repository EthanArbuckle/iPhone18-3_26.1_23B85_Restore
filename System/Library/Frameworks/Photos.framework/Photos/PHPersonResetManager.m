@interface PHPersonResetManager
- (PHPersonResetManager)initWithPhotoLibrary:(id)a3;
- (id)resetPersonsWithCompletionHandler:(id)a3;
- (id)resetSocialGroupsWithCompletionHandler:(id)a3;
@end

@implementation PHPersonResetManager

- (id)resetSocialGroupsWithCompletionHandler:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PHPhotoLibrary *)self->_library assetsdClient];
  v7 = [v6 libraryClient];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __63__PHPersonResetManager_resetSocialGroupsWithCompletionHandler___block_invoke;
  v23[3] = &unk_1E75A84A0;
  v23[4] = self;
  v8 = v5;
  v24 = v8;
  v9 = [v7 resetSocialGroupsWithCompletionHandler:v23];
  if (v9)
  {
    v10 = _Block_copy(self->_progressHandler);
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E69BE6E8]);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __63__PHPersonResetManager_resetSocialGroupsWithCompletionHandler___block_invoke_2;
      v18[3] = &unk_1E75A84C8;
      v22 = a2;
      v19 = v9;
      v20 = self;
      v21 = v10;
      v12 = [v11 initWithSourceProgress:v19 progressHandler:v18];
      progressFollower = self->_progressFollower;
      self->_progressFollower = v12;
    }

    v14 = v9;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_8;
    }

    v15 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A278];
    v26[0] = @"Reset social groups failed: progress is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v16 = [v15 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v10];
    (*(v8 + 2))(v8, 0, v16);
  }

LABEL_8:

  return v9;
}

void __63__PHPersonResetManager_resetSocialGroupsWithCompletionHandler___block_invoke(uint64_t a1, _BOOL8 a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 32) + 8);
    v11 = v5;
    a2 = [PHLibraryScope removePersonRulesOnActiveLibraryScopeWithPhotoLibrary:v6 error:&v11];
    v7 = v11;

    v5 = v7;
  }

  [*(*(a1 + 32) + 24) invalidate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = 0;

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

uint64_t __63__PHPersonResetManager_resetSocialGroupsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 completedUnitCount] < 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PHPersonResetManager.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"progress.completedUnitCount >= 0"}];
  }

  if ([*(a1 + 32) totalUnitCount] < 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PHPersonResetManager.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"progress.totalUnitCount >= 0"}];
  }

  v5 = *(a1 + 48);
  v6 = [v4 completedUnitCount];
  v7 = [v4 totalUnitCount];

  v8 = *(v5 + 16);

  return v8(v5, v6, v7);
}

- (id)resetPersonsWithCompletionHandler:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PHPhotoLibrary *)self->_library assetsdClient];
  v7 = [v6 libraryClient];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __58__PHPersonResetManager_resetPersonsWithCompletionHandler___block_invoke;
  v23[3] = &unk_1E75A84A0;
  v23[4] = self;
  v8 = v5;
  v24 = v8;
  v9 = [v7 resetPersonsWithCompletionHandler:v23];
  if (v9)
  {
    v10 = _Block_copy(self->_progressHandler);
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E69BE6E8]);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __58__PHPersonResetManager_resetPersonsWithCompletionHandler___block_invoke_2;
      v18[3] = &unk_1E75A84C8;
      v22 = a2;
      v19 = v9;
      v20 = self;
      v21 = v10;
      v12 = [v11 initWithSourceProgress:v19 progressHandler:v18];
      progressFollower = self->_progressFollower;
      self->_progressFollower = v12;
    }

    v14 = v9;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_8;
    }

    v15 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A278];
    v26[0] = @"Reset persons failed: progress is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v16 = [v15 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v10];
    (*(v8 + 2))(v8, 0, v16);
  }

LABEL_8:

  return v9;
}

void __58__PHPersonResetManager_resetPersonsWithCompletionHandler___block_invoke(uint64_t a1, _BOOL8 a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 32) + 8);
    v11 = v5;
    a2 = [PHLibraryScope removePersonRulesOnActiveLibraryScopeWithPhotoLibrary:v6 error:&v11];
    v7 = v11;

    v5 = v7;
  }

  [*(*(a1 + 32) + 24) invalidate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = 0;

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

uint64_t __58__PHPersonResetManager_resetPersonsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 completedUnitCount] < 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PHPersonResetManager.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"progress.completedUnitCount >= 0"}];
  }

  if ([*(a1 + 32) totalUnitCount] < 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PHPersonResetManager.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"progress.totalUnitCount >= 0"}];
  }

  v5 = *(a1 + 48);
  v6 = [v4 completedUnitCount];
  v7 = [v4 totalUnitCount];

  v8 = *(v5 + 16);

  return v8(v5, v6, v7);
}

- (PHPersonResetManager)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHPersonResetManager;
  v6 = [(PHPersonResetManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, a3);
  }

  return v7;
}

@end