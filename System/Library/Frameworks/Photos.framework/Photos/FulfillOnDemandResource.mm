@interface FulfillOnDemandResource
@end

@implementation FulfillOnDemandResource

void ___FulfillOnDemandResource_block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to fulfill on-demand resource: %@", *(a1 + 32)];
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] %@, error: %@", buf, 0x16u);
    }

    v6 = _PHResourceLocalAvailabilityRequestError(1, v3, v4);
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v4 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v11 = v9;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest] Did fulfill on-demand resource: %@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

@end