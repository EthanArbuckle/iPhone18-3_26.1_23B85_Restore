@interface PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation
@end

@implementation PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation

void __85___PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation_executeWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(a1 + 32);
  v11 = 0;
  v4 = [WeakRetained addGraphAvailabilityToAvailabilityStatus:v3 error:&v11];
  v5 = v11;

  *(*(*(a1 + 48) + 8) + 24) &= v4;
  v6 = *(*(a1 + 56) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  objc_storeStrong(v7, v10);
  dispatch_group_leave(*(a1 + 40));
}

void __85___PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation_executeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(a1 + 32);
  v11 = 0;
  v4 = [WeakRetained addIndexingStateToAvailabilityStatus:v3 error:&v11];
  v5 = v11;

  *(*(*(a1 + 48) + 8) + 24) &= v4;
  v6 = *(*(a1 + 56) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  objc_storeStrong(v7, v10);
  dispatch_group_leave(*(a1 + 40));
}

void __85___PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation_executeWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _updateFeatureAvailabilityForAvailabilityStatus:*(a1 + 32)];

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v3 = *(*(a1 + 40) + 16);
  }

  else
  {
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = v5;
      v7 = *(v4 + 40);
      *(v4 + 40) = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] ph_errorWithCode:-1 localizedDescription:@"Failed to get feature availability status"];
      v9 = *(*(a1 + 56) + 8);
      v7 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v3 = *(*(a1 + 40) + 16);
  }

  v3();
  v10 = *(a1 + 72);
  v11 = v10;
  v12 = *(a1 + 80);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v11, OS_SIGNPOST_INTERVAL_END, v12, "MemoriesCreationFeatureAvailability", byte_19CB567AE, v13, 2u);
  }
}

@end