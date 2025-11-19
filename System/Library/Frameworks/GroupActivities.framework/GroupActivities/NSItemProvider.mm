@interface NSItemProvider
@end

@implementation NSItemProvider

void __91__NSItemProvider_GroupActivities_LinkPresentation__registerTUConversationActivityMetadata___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = lpLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v25 = 138412290;
    v26 = v5;
    _os_log_impl(&dword_1AEE80000, v4, OS_LOG_TYPE_INFO, "Started loading link metadata for TUConversationActivityMetadata from NSItemProvider: %@", &v25, 0xCu);
  }

  v6 = CUTWeakLinkClass();
  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  v9 = [v8 linkMetadatablob];

  v10 = lpLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = *v7;
      v25 = 138412290;
      v26 = v12;
      _os_log_impl(&dword_1AEE80000, v10, OS_LOG_TYPE_INFO, "TUConversationActivityMetadata had linkMetadatablob, using that to derive link metadata for NSItemProvider load: %@", &v25, 0xCu);
    }

    v13 = [*v7 linkMetadatablob];
    v14 = [v6 metadataWithDataRepresentation:v13];
    goto LABEL_11;
  }

  if (v11)
  {
    v15 = *v7;
    v25 = 138412290;
    v26 = v15;
    _os_log_impl(&dword_1AEE80000, v10, OS_LOG_TYPE_INFO, "TUConversationActivityMetadata did not have a linkMetadatablob, deriving link metadata directly from TUConversationActivityMetadata properties for NSItemProvider load: %@", &v25, 0xCu);
  }

  v14 = objc_alloc_init(v6);
  v16 = [*v7 title];
  [v14 setTitle:v16];

  v17 = [*v7 subTitle];
  [v14 setSummary:v17];

  v18 = [*v7 imageData];

  if (v18)
  {
    v19 = objc_alloc(CUTWeakLinkClass());
    v13 = [*v7 imageData];
    v20 = [v19 initWithData:v13 MIMEType:@"image/jpeg"];
    [v14 setImage:v20];

LABEL_11:
  }

  v21 = lpLog();
  v22 = v21;
  if (v3)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = *v7;
      v25 = 138412290;
      v26 = v23;
      _os_log_impl(&dword_1AEE80000, v22, OS_LOG_TYPE_INFO, "Finished loading link metadata for TUConversationActivityMetadata from NSItemProvider: %@", &v25, 0xCu);
    }

    v3[2](v3, v14, 0);
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __91__NSItemProvider_GroupActivities_LinkPresentation__registerTUConversationActivityMetadata___block_invoke_cold_1(v7, v22);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __91__NSItemProvider_GroupActivities_LinkPresentation__registerTUConversationActivityMetadata___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1AEE80000, a2, OS_LOG_TYPE_ERROR, "NSItemProvider completionHandler was unexpectedly nil. Not loading link metadata for TUConversationActivityMetadata: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end